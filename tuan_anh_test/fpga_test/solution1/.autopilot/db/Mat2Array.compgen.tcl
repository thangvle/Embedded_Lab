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
    id 30 \
    name img_data_stream_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_V \
    op interface \
    ports { img_data_stream_V_dout { I 8 vector } img_data_stream_V_empty_n { I 1 bit } img_data_stream_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name fb \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fb \
    op interface \
    ports { m_axi_fb_AWVALID { O 1 bit } m_axi_fb_AWREADY { I 1 bit } m_axi_fb_AWADDR { O 32 vector } m_axi_fb_AWID { O 1 vector } m_axi_fb_AWLEN { O 32 vector } m_axi_fb_AWSIZE { O 3 vector } m_axi_fb_AWBURST { O 2 vector } m_axi_fb_AWLOCK { O 2 vector } m_axi_fb_AWCACHE { O 4 vector } m_axi_fb_AWPROT { O 3 vector } m_axi_fb_AWQOS { O 4 vector } m_axi_fb_AWREGION { O 4 vector } m_axi_fb_AWUSER { O 1 vector } m_axi_fb_WVALID { O 1 bit } m_axi_fb_WREADY { I 1 bit } m_axi_fb_WDATA { O 8 vector } m_axi_fb_WSTRB { O 1 vector } m_axi_fb_WLAST { O 1 bit } m_axi_fb_WID { O 1 vector } m_axi_fb_WUSER { O 1 vector } m_axi_fb_ARVALID { O 1 bit } m_axi_fb_ARREADY { I 1 bit } m_axi_fb_ARADDR { O 32 vector } m_axi_fb_ARID { O 1 vector } m_axi_fb_ARLEN { O 32 vector } m_axi_fb_ARSIZE { O 3 vector } m_axi_fb_ARBURST { O 2 vector } m_axi_fb_ARLOCK { O 2 vector } m_axi_fb_ARCACHE { O 4 vector } m_axi_fb_ARPROT { O 3 vector } m_axi_fb_ARQOS { O 4 vector } m_axi_fb_ARREGION { O 4 vector } m_axi_fb_ARUSER { O 1 vector } m_axi_fb_RVALID { I 1 bit } m_axi_fb_RREADY { O 1 bit } m_axi_fb_RDATA { I 8 vector } m_axi_fb_RLAST { I 1 bit } m_axi_fb_RID { I 1 vector } m_axi_fb_RUSER { I 1 vector } m_axi_fb_RRESP { I 2 vector } m_axi_fb_BVALID { I 1 bit } m_axi_fb_BREADY { O 1 bit } m_axi_fb_BRESP { I 2 vector } m_axi_fb_BID { I 1 vector } m_axi_fb_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name fb_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fb_offset \
    op interface \
    ports { fb_offset { I 32 vector } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


