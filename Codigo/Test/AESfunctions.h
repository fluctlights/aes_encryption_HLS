
#include <cstdlib>
#include <iostream>
#include <assert.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <math.h>

#include "AESkeys.h"
#include "AEStables.h"

#define U 4
#define TI 5
#define TD 5
#define WORD_SIZE 32
#define Nk 4        // The number of 32 bit words in a key.
#define Nr 10       // The number of rounds in AES Cipher.
#define Nb 4		// columns (could be changed to a larger number in the future)

typedef unsigned char T;
typedef ap_axiu<WORD_SIZE,U,TI,TD> AXI_VAL;
typedef ap_uint<WORD_SIZE> WORD_MEM;

#define NUM_ELEMS_WORD ((WORD_SIZE/8)/sizeof(T))

using namespace std;

// These are AES constants for AES 128, 192, 256
const unsigned char rows = 4; // rows
const unsigned char stt_lng = Nb * rows; // state length

// This will allocate (hardware and memory) resources to accommodate all AES at the same time up to max
const unsigned char Nk_max = 8; // =(4, 6 or 8), max [32-bit words] columns in cipher key
const unsigned char CipherKeyLenghth_max = Nk_max * rows; // max bytes in key length
const unsigned char Nr_max = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned char ExtdCipherKeyLenghth_max = (Nr_max + 1) * stt_lng; // max bytes in extended key length

void AES_init_ctx(const unsigned char* RoundKey, const uint8_t* key);

#if (ECB == 1)
	// buffer size is exactly AES_BLOCKLEN bytes;
	// you need only AES_init_ctx as IV is not used in ECB
	// NB: ECB is considered insecure for most uses
	void AES_ECB_encrypt(const unsigned char* RoundKey, unsigned char* buf);
	void AES_ECB_decrypt(const unsigned char* RoundKey, unsigned char* buf);
#endif // #if defined(ECB) && (ECB == !)
