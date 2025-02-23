#define AES_KEYLEN 16
#define AES_keyExpSize 176
#define ECB 1


struct AES_ctx
{
  unsigned char RoundKey[AES_keyExpSize];
};
