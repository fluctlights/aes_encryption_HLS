set SynModuleInfo {
  {SRCNAME KeyExpansion MODELNAME KeyExpansion RTLNAME AES_Encrypt_axi_KeyExpansion}
  {SRCNAME AddRoundKey MODELNAME AddRoundKey RTLNAME AES_Encrypt_axi_AddRoundKey}
  {SRCNAME SubBytes MODELNAME SubBytes RTLNAME AES_Encrypt_axi_SubBytes}
  {SRCNAME ShiftRows MODELNAME ShiftRows RTLNAME AES_Encrypt_axi_ShiftRows}
  {SRCNAME MixColumns MODELNAME MixColumns RTLNAME AES_Encrypt_axi_MixColumns}
  {SRCNAME AES_Encrypt_axi MODELNAME AES_Encrypt_axi RTLNAME AES_Encrypt_axi IS_TOP 1
    SUBMODULES {
      {MODELNAME AES_Encrypt_axi_s_box_ROM_AUTO_1R RTLNAME AES_Encrypt_axi_s_box_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME AES_Encrypt_axi_ctx_RAM_AUTO_1R1W RTLNAME AES_Encrypt_axi_ctx_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME AES_Encrypt_axi_CONTROL_BUS_s_axi RTLNAME AES_Encrypt_axi_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME AES_Encrypt_axi_regslice_both RTLNAME AES_Encrypt_axi_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME AES_Encrypt_axi_regslice_both_U}
    }
  }
}
