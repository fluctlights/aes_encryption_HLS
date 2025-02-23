# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name data_out_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_1_read \
    op interface \
    ports { data_out_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name data_out_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_2_read \
    op interface \
    ports { data_out_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name data_out_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_3_read \
    op interface \
    ports { data_out_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name data_out_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_5_read \
    op interface \
    ports { data_out_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name data_out_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_6_read \
    op interface \
    ports { data_out_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name data_out_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_7_read \
    op interface \
    ports { data_out_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name data_out_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_9_read \
    op interface \
    ports { data_out_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name data_out_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_10_read \
    op interface \
    ports { data_out_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name data_out_119_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_119_read \
    op interface \
    ports { data_out_119_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name data_out_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_13_read \
    op interface \
    ports { data_out_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name data_out_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_14_read \
    op interface \
    ports { data_out_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name data_out_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_15_read \
    op interface \
    ports { data_out_15_read { I 8 vector } } \
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
    ports { ap_ready { O 1 bit } } \
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



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


