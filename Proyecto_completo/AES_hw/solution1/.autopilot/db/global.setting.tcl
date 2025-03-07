
set TopModule "AES_Encrypt_axi"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix AES_Encrypt_axi_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu3eg:-sbva484:-1-i
set SourceFiles {sc {} c ../DIseno/AES_accel.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {}
set TBFiles {verilog {../Test/AESfunctions.cpp ../Test/AESfunctions.h ../Test/AESkeys.h ../Test/AEStables.h ../Test/test_AES_full.cpp} bc {../Test/AESfunctions.cpp ../Test/AESfunctions.h ../Test/AESkeys.h ../Test/AEStables.h ../Test/test_AES_full.cpp} vhdl {../Test/AESfunctions.cpp ../Test/AESfunctions.h ../Test/AESkeys.h ../Test/AEStables.h ../Test/test_AES_full.cpp} sc {../Test/AESfunctions.cpp ../Test/AESfunctions.h ../Test/AESkeys.h ../Test/AEStables.h ../Test/test_AES_full.cpp} cas {../Test/AESfunctions.cpp ../Test/AESfunctions.h ../Test/AESkeys.h ../Test/AEStables.h ../Test/test_AES_full.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
