# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name s_box \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename s_box \
    op interface \
    ports { s_box_address0 { O 8 vector } s_box_ce0 { O 1 bit } s_box_q0 { I 8 vector } s_box_address1 { O 8 vector } s_box_ce1 { O 1 bit } s_box_q1 { I 8 vector } s_box_address2 { O 8 vector } s_box_ce2 { O 1 bit } s_box_q2 { I 8 vector } s_box_address3 { O 8 vector } s_box_ce3 { O 1 bit } s_box_q3 { I 8 vector } s_box_address4 { O 8 vector } s_box_ce4 { O 1 bit } s_box_q4 { I 8 vector } s_box_address5 { O 8 vector } s_box_ce5 { O 1 bit } s_box_q5 { I 8 vector } s_box_address6 { O 8 vector } s_box_ce6 { O 1 bit } s_box_q6 { I 8 vector } s_box_address7 { O 8 vector } s_box_ce7 { O 1 bit } s_box_q7 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_box'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name data_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_0_read \
    op interface \
    ports { data_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name data_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_read \
    op interface \
    ports { data_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name data_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_read \
    op interface \
    ports { data_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name data_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_read \
    op interface \
    ports { data_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name data_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_read \
    op interface \
    ports { data_4_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name data_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_read \
    op interface \
    ports { data_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name data_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_read \
    op interface \
    ports { data_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name data_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_read \
    op interface \
    ports { data_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name data_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_8_read \
    op interface \
    ports { data_8_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name data_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_9_read \
    op interface \
    ports { data_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name data_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_10_read \
    op interface \
    ports { data_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name data_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_11_read \
    op interface \
    ports { data_11_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name data_1213_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1213_read \
    op interface \
    ports { data_1213_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name data_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_13_read \
    op interface \
    ports { data_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name data_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_14_read \
    op interface \
    ports { data_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name data_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_15_read \
    op interface \
    ports { data_15_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


