
/*
 * CODE WITH IMPROVEMENTS WHILE DOING THE HW VERSION OF AES
 */

#include "../Test/AESfunctions.h"


void rotate(unsigned char *in) {
	unsigned char a,c;
	a = in[0];

	for(c=0;c<3;c++)
	#pragma HLS UNROLL factor=3
			in[c] = in[c + 1];
	in[3] = a;
	return;
}

/* This is the core key expansion, which, given a 4-byte value,
 * does some scrambling */
void schedule_core(unsigned char *in, unsigned short i) {
	char a;

	/* Rotate the input 8 bits to the left */
	rotate(in);
	/* Apply Rijndael's s-box on all 4 bytes */

	for(a = 0; a < 4; a++)
	#pragma HLS UNROLL factor=4
			in[a] = s_box[in[a]];
	/* On just the first byte, add 2^i to the byte */
	in[0] ^= r_con[i];
}

/* Calculate the rcon used in key expansion */
unsigned char rcon(unsigned char in) {
	unsigned char c=1;

	if(in == 0) return 0;

	while(in != 1) {
		unsigned char b;
		b = c & 0x80;
		c <<= 1;
		if(b == 0x80) {
			c ^= 0x1b;
		}
		in--;
	}
	return c;
}

void expand_key(unsigned char *in) {
    unsigned char t[4];
    unsigned char c = 16;
    unsigned char i = 1;
    unsigned char a;

    /* We need 11 sets of sixteen bytes each for 128-bit mode */
    while(c < 176) {

        #pragma HLS PIPELINE
        /* Copy the temporary variable over from the last 4-byte block */
        for(a = 0; a < 4; a++) {
            #pragma HLS UNROLL factor=4
            t[a] = in[a + c - 4];
        }

        /* Every four blocks (of four bytes), do a complex calculation */
        if(c % 16 == 0) {
            #pragma HLS INLINE
            schedule_core(t, i);  // schedule_core may be optimized too
            i++;
        }

        /* XOR operation for the next key */
        for(a = 0; a < 4; a++) {
            #pragma HLS UNROLL factor=4
            in[c] = in[c - 16] ^ t[a];
            c++;
        }
    }
}

// MixColumns function mixes the columns of the state matrix
static void MixColumns(unsigned char *data_in)
{

	unsigned char Tmp, Tm, t;
	unsigned char word;
	short i;
	AXI_VAL e;

	#pragma HLS PIPELINE
	for (i = 0; i < 4; ++i)
	{
		t   = data_in[i * 4 + 0];
		Tmp = data_in[i * 4 + 0] ^ data_in[i * 4 + 1] ^ data_in[i * 4 + 2] ^ data_in[i * 4 + 3] ;
		Tm  = data_in[i * 4 + 0] ^ data_in[i * 4 + 1] ;
		Tm = ((Tm<<1) ^ (((Tm>>7) & 1) * 0x1b));
		data_in[i * 4 + 0] ^= Tm ^ Tmp ;
		Tm  = data_in[i * 4 + 1] ^ data_in[i * 4 + 2] ;
		Tm = ((Tm<<1) ^ (((Tm>>7) & 1) * 0x1b));
		data_in[i * 4 + 1] ^= Tm ^ Tmp ;
		Tm  = data_in[i * 4 + 2] ^ data_in[i * 4 + 3] ;
		Tm = ((Tm<<1) ^ (((Tm>>7) & 1) * 0x1b));
		data_in[i * 4 + 2] ^= Tm ^ Tmp ;
		Tm  = data_in[i * 4 + 3] ^ t ;
		Tm = ((Tm<<1) ^ (((Tm>>7) & 1) * 0x1b));
		data_in[i * 4 + 3] ^= Tm ^ Tmp ;
	}
}

void SubBytes(unsigned char *data) {

	SUBBYTES: for (int i = 0; i < stt_lng; i++) {
	#pragma HLS UNROLL
		data[i] = s_box[data[i]];
	}
}

void ShiftRows(unsigned char *data_out) {

	unsigned char data_in[stt_lng];

	for (unsigned char i = 0; i < stt_lng; i++) {
		#pragma HLS unroll
		data_in[i] = data_out[i];
	}

	data_out[0] = data_in[0];
	data_out[1] = data_in[5];
	data_out[2] = data_in[10];
	data_out[3] = data_in[15];

	data_out[4] = data_in[4];
	data_out[5] = data_in[9];
	data_out[6] = data_in[14];
	data_out[7] = data_in[3];

	data_out[8] = data_in[8];
	data_out[9] = data_in[13];
	data_out[10] = data_in[2];
	data_out[11] = data_in[7];

	data_out[12] = data_in[12];
	data_out[13] = data_in[1];
	data_out[14] = data_in[6];
	data_out[15] = data_in[11];
}


// This function produces Nb(Nr+1) round keys. The round keys are used in each round to decrypt the states.
static void KeyExpansion(unsigned char* RoundKey, const unsigned char* Key)
{
  unsigned i, j, k;
  unsigned char tempa[4]; // Used for the column/row operations

  // The first round key is the key itself.

  #pragma HLS PIPELINE
  for (i = 0; i < Nk; ++i)
  {
    RoundKey[(i * 4) + 0] = Key[(i * 4) + 0];
    RoundKey[(i * 4) + 1] = Key[(i * 4) + 1];
    RoundKey[(i * 4) + 2] = Key[(i * 4) + 2];
    RoundKey[(i * 4) + 3] = Key[(i * 4) + 3];
  }

  // All other round keys are found from the previous round keys.
  for (i = Nk; i < Nb * (Nr + 1); ++i)
  {
	#pragma HLS UNROLL
    k = (i - 1) * 4;
    tempa[0] = RoundKey[k + 0];
    tempa[1] = RoundKey[k + 1];
    tempa[2] = RoundKey[k + 2];
    tempa[3] = RoundKey[k + 3];

    if (i % Nk == 0)
    {
      // This function shifts the 4 bytes in a word to the left once.
      // [a0,a1,a2,a3] becomes [a1,a2,a3,a0]
      {
        const unsigned char u8tmp = tempa[0];
        tempa[0] = tempa[1];
        tempa[1] = tempa[2];
        tempa[2] = tempa[3];
        tempa[3] = u8tmp;
      }

      // SubWord() is a function that takes a four-byte input word and
      // applies the S-box to each of the four bytes to produce an output word.

      {
        tempa[0] = s_box[tempa[0]];
        tempa[1] = s_box[tempa[1]];
        tempa[2] = s_box[tempa[2]];
        tempa[3] = s_box[tempa[3]];
      }

      tempa[0] = tempa[0] ^ r_con[i/Nk];
    }

    j = i * 4;
    k = (i - Nk) * 4;

    // XOR with the previous round key to generate the new round key
    RoundKey[j + 0] = RoundKey[k + 0] ^ tempa[0];
    RoundKey[j + 1] = RoundKey[k + 1] ^ tempa[1];
    RoundKey[j + 2] = RoundKey[k + 2] ^ tempa[2];
    RoundKey[j + 3] = RoundKey[k + 3] ^ tempa[3];
  }
}

// This function adds the round key to state.
// The round key is added to the state by an XOR function.
static void AddRoundKey(unsigned char round, unsigned char *data_in, const unsigned char* RoundKey)
{
	#pragma HLS PIPELINE
	ADDROUNDKEY: for (int i = 0; i < 4; ++i)
	{
		data_in[i * 4 + 0] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 0];
		data_in[i * 4 + 1] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 1];
		data_in[i * 4 + 2] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 2];
		data_in[i * 4 + 3] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 3];
	}
}


//// AES Full 8-bit AXI4 stream
void AES_Encrypt_axi(
		hls::stream<AXI_VAL> &INPUT_STREAM,
		hls::stream<AXI_VAL> &OUTPUT_STREAM)
{

#pragma HLS pipeline II=24
#pragma HLS INTERFACE s_axilite port=return     bundle=CONTROL_BUS
#pragma HLS INTERFACE axis      port=INPUT_STREAM
#pragma HLS INTERFACE axis      port=OUTPUT_STREAM


	// streams de datos para las distintas fases

	T data[stt_lng];
	T key[stt_lng];
	unsigned char word; //storing and getting each char of the arrays
	struct AES_ctx ctx;
	unsigned char i;
	unsigned char round = 0;
	unsigned char pointer = 0;

	#pragma HLS PIPELINE
	for(i=0; i<(stt_lng*2); i+=NUM_ELEMS_WORD) {
		#pragma HLS UNROLL factor=8
		WORD_MEM  w = INPUT_STREAM.read().data; //reads 4 chars in one iteration

		if(i < stt_lng) {
			//Processing for catching each char of the input array
			for (int k=0; k<NUM_ELEMS_WORD;k++) {
				word = w((k+1)*8-1,k*8);
				data[i+k] = word;
			}
		}
		else {
			//Processing for catching each char of the input array
			for (int k=0; k<NUM_ELEMS_WORD;k++) {
				word = w((k+1)*8-1,k*8);
				key[pointer+k] = word;
			}
			pointer+=NUM_ELEMS_WORD;
		}

	}

	KeyExpansion(ctx.RoundKey, key);

	// Add the First round key to the state before starting the rounds.
	AddRoundKey(0, data, ctx.RoundKey);

	for (round = 1; round < Nr; round++)
	{
		SubBytes(data);
		ShiftRows(data);
		MixColumns(data);
		AddRoundKey(round, data, ctx.RoundKey);
	}

	SubBytes(data);
	ShiftRows(data);
	// Add round key to last round
	AddRoundKey(Nr, data, ctx.RoundKey);

	//sending to the output stream the results stored into data_out variable
	AXI_VAL e;

	#pragma HLS PIPELINE
	for(i=0; i<stt_lng; i+=NUM_ELEMS_WORD) {
		WORD_MEM w; //reads 4 chars in one iteration

		#pragma HLS PIPELINE
		for (int k=0; k<NUM_ELEMS_WORD;k++) {

			word = data[i+k];
			w((k+1)*8-1,k*8) = word;
		}

		e.data = w;
		e.strb = -1;
		e.keep = 15; //e.strb;
		e.user = U;
		e.last = (i==(stt_lng-NUM_ELEMS_WORD));
		e.id = TI;
		e.dest = TD;
		OUTPUT_STREAM.write(e);
	}
	return;
}
