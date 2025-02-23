// https://en.wikipedia.org/wiki/Advanced_Encryption_Standard

#include "AESfunctions.h"


void rotate_sw(unsigned char *in) {
	unsigned char a,c;
	a = in[0];

	for(c=0;c<3;c++)
		in[c] = in[c + 1];
	in[3] = a;
	return;
}

/* This is the core key expansion, which, given a 4-byte value,
 * does some scrambling */
void schedule_core_sw(unsigned char *in, unsigned short i) {
	char a;

	/* Rotate the input 8 bits to the left */
	rotate_sw(in);
	/* Apply Rijndael's s-box on all 4 bytes */

	for(a = 0; a < 4; a++)
		in[a] = s_box[in[a]];
	/* On just the first byte, add 2^i to the byte */
	in[0] ^= r_con[i];
}

/* Calculate the rcon used in key expansion */
unsigned char rcon_sw(unsigned char in) {
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

void expand_key_sw(unsigned char *in) {
    unsigned char t[4];
    unsigned char c = 16;
    unsigned char i = 1;
    unsigned char a;

    /* We need 11 sets of sixteen bytes each for 128-bit mode */
    while(c < 176) {

        /* Copy the temporary variable over from the last 4-byte block */
        for(a = 0; a < 4; a++) {
            t[a] = in[a + c - 4];
        }

        /* Every four blocks (of four bytes), do a complex calculation */
        if(c % 16 == 0) {
            schedule_core_sw(t, i);  // schedule_core may be optimized too
            i++;
        }

        /* XOR operation for the next key */
        for(a = 0; a < 4; a++) {
            in[c] = in[c - 16] ^ t[a];
            c++;
        }
    }
}

// MixColumns function mixes the columns of the state matrix
static void MixColumns_sw(unsigned char *data_in)
{

	unsigned char Tmp, Tm, t;
	short i;
	AXI_VAL e;

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

void SubBytes_sw(unsigned char *data) {
	for (int i = 0; i < stt_lng; i++) {
		data[i] = s_box[data[i]];
	}
}

void ShiftRows_sw(unsigned char *data_out) {

	unsigned char data_in[stt_lng];

	for (unsigned char i = 0; i < stt_lng; i++) {
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
static void KeyExpansion_sw(unsigned char* RoundKey, const unsigned char* Key)
{
  unsigned i, j, k;
  unsigned char tempa[4]; // Used for the column/row operations

  // The first round key is the key itself.

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
static void AddRoundKey_sw(unsigned char round, unsigned char *data_in, const unsigned char* RoundKey)
{
	for (int i = 0; i < 4; ++i)
	{
		data_in[i * 4 + 0] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 0];
		data_in[i * 4 + 1] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 1];
		data_in[i * 4 + 2] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 2];
		data_in[i * 4 + 3] ^= RoundKey[(round * Nb * 4) + (i * Nb) + 3];
	}
}

//// AES SOFTWARE REFERENCE VERSION
void AES_encrypt_reference(unsigned char plaintext[stt_lng], unsigned char key[stt_lng], unsigned char ciphertext[stt_lng]) {

	struct AES_ctx ctx;
	unsigned char i;
	unsigned char round = 0;
	unsigned char pointer = 0;

	// Copy plaintext into state
	unsigned char data[stt_lng];
	for (unsigned char i = 0; i < stt_lng; i++) {
		data[i] = plaintext[i];
	}

	KeyExpansion_sw(ctx.RoundKey, key);

	// Add the First round key to the state before starting the rounds.
	AddRoundKey_sw(0, data, ctx.RoundKey);

	for (round = 1; round < Nr; round++)
	{
		SubBytes_sw(data);
		ShiftRows_sw(data);
		MixColumns_sw(data);
		AddRoundKey_sw(round, data, ctx.RoundKey);
	}

	SubBytes_sw(data);
	ShiftRows_sw(data);
	// Add round key to last round
	AddRoundKey_sw(Nr, data, ctx.RoundKey);

	// Copy state to ciphertext
	for (unsigned char i = 0; i < stt_lng; i++) {
		ciphertext[i] = data[i];
	}
}
