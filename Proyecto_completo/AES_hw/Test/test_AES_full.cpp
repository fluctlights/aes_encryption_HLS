
#include "AESfunctions.h"

void AES_encrypt_reference(unsigned char plaintext[stt_lng], unsigned char key[stt_lng], unsigned char ciphertext[stt_lng]);
void AES_Encrypt_axi(hls::stream<AXI_VAL> &INPUT_STREAM, hls::stream<AXI_VAL> &OUTPUT_STREAM);
void convert2array(WORD_MEM a, T out[NUM_ELEMS_WORD]);
void convert2word(WORD_MEM &a, T out[NUM_ELEMS_WORD]);

int main() {

	using namespace std;
	bool transmit_data = true; //choose between data or key
	unsigned char pointer; //to transmit the key
	unsigned short CipherKeyLenghth, ExtdCipherKeyLenghth;
	int err; //tests between sw reference and hw acceleration
	short i;
	unsigned char plaintext[4][stt_lng] =
	{
			{'1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', '0'}, //block 1
			{'0', 'F', 'E', 'D', 'C', 'B', 'A', '9', '8', '7', '6', '5', '4', '3', '2', '1'}, //block 2
			{'1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', '0'}, //block 3
			{'A', 'N', 'T', 'O', 'N', 'I', 'O', 'F', 'E', 'R', 'N', 'A', 'N', 'D', 'O', '1'}  //key to cipher blocks
	};

	// variable to store one single block of plaintext and the key
	unsigned char block[stt_lng];
	unsigned char key[stt_lng];

	// variable arrays for ciphertext
	T ciphertext[stt_lng]; //hw version
	unsigned char ciphered[stt_lng]; //sw version

	// variable arrays for decrypted plaintext
	T decrypted_plaintext[stt_lng]; //hw version
	unsigned char deciphered[stt_lng]; //sw version

	for(int k=0; k<10; k++) {

		err=0;

		//selecting the values chosen for each test
		CipherKeyLenghth = Nk * rows; // bytes (16 bytes, 128bit AES)
		//Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10 rounds, 128bit AES, we defined it, easier
		ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key, 128bit AES

		cout << "**********************************************************" << "\n\t\t\t\t\tTEST " << k
			<< "\n\t\tCipher key columns chosen: " << Nk
			<< "\n\t\tRounds chosen to manipulate text: " << Nr
			<< "\n**********************************************************"
			<< endl << endl;


		/*
		* 	Here comes the software reference execution
		*/

		cout << "--- SW REFERENCE VERSION :: AES ENCRYPT ---" << endl << endl;

		// encryption - sw reference
		for (short j=0; j<3; j++) {
			for (i=0; i<stt_lng; i++) {
				block[i] = plaintext[j][i];
				key[i] = plaintext[3][i]; //LAST ROW OF PLAINTEXT HAS THE KEY TO CIPHER
			}
			AES_encrypt_reference(block, key, ciphered);

			cout << "Ciphered Block " << dec << (int) (j+1) << endl;
			for (unsigned short i = 0; i < stt_lng; i++) {
				cout << dec << (int)ciphered[i] << " ";
			}
			cout << endl << endl;
		}

		/*
		* Here comes the Hardware-accelerated execution
		*/

		AXI_VAL e;
		hls::stream<AXI_VAL> inp_stream("INSW");
		hls::stream<AXI_VAL> out_stream("OUTSW");

		cout << "--- HW ACCELERATED VERSION :: AES ENCRYPT ---" << endl << endl;

		for (short j=0; j<3; j++) {
			for (i=0; i<stt_lng; i++) {
				block[i] = plaintext[j][i];

			}

			pointer = 0;

			//getting input array to use into the hw accelerated function
			for(int i=0; i<(stt_lng*2); i+=NUM_ELEMS_WORD) {
				if(i < stt_lng) {
					convert2word(e.data,&block[i]);
					e.strb = -1;
					e.keep = 15; //e.strb;
					e.user = 0;
					e.last = (i==((stt_lng)-NUM_ELEMS_WORD-1));
					e.id = 1;
					e.dest = 2;
					inp_stream.write(e);
				}else {
					convert2word(e.data,&key[pointer]);
					e.strb = -1;
					e.keep = 15; //e.strb;
					e.user = 0;
					e.last = (pointer==((stt_lng)-NUM_ELEMS_WORD-1));
					e.id = 1;
					e.dest = 2;
					inp_stream.write(e);
					pointer+=NUM_ELEMS_WORD;
				}
			}

			// encryption hw acceleration
			AES_Encrypt_axi(inp_stream, out_stream);

			// extract the output matrix from the out stream
			for(int i=0; i<stt_lng; i+=NUM_ELEMS_WORD) {
				e = out_stream.read();
				convert2array(e.data,&ciphertext[i]);
			}

			cout << "Ciphered Block " << dec << (int) (j+1) << endl;
			for (unsigned short i = 0; i < stt_lng; i++) {
				cout << dec << (int) ciphertext[i] << " ";
			}
			cout << endl << endl;
		}

		for (unsigned short i = 0; i < stt_lng; i++) {
			if (ciphered[i] == ciphertext[i]) {

			}else
				err++;
		}

		cout << "\t\tERRORS FOUND = " << (int) err << endl << endl;
	}
	return 0;
}

void convert2array(WORD_MEM w, T out[NUM_ELEMS_WORD]) {
	char word;
	convert2array_label1:for (int k=0; k<NUM_ELEMS_WORD;k++) {
		word = w((k+1)*8-1,k*8);
		out[k] = word;
	}
}

void convert2word(WORD_MEM &w, T in[NUM_ELEMS_WORD]) {
	WORD_MEM _w;
	char word;
	convert2word_label0:for (int k=0; k<NUM_ELEMS_WORD;k++) {
		word = in[k];
		_w((k+1)*8-1,k*8)= word;
	}
	w = _w;
}
