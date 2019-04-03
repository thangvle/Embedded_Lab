set moduleName Mat2Array
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Mat2Array}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ fb int 8 regular {axi_master 1}  }
	{ fb_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "fb", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fb_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_data_stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_fb_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_fb_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_fb_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_fb_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_fb_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_fb_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_fb_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_fb_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_fb_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_fb_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_fb_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_fb_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_fb_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_fb_WDATA sc_out sc_lv 8 signal 1 } 
	{ m_axi_fb_WSTRB sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_fb_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_fb_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_fb_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_fb_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_fb_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_fb_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_fb_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_fb_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_fb_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_fb_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_fb_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_fb_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_fb_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_fb_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_fb_RDATA sc_in sc_lv 8 signal 1 } 
	{ m_axi_fb_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_fb_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_fb_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_fb_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_fb_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_fb_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_fb_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_fb_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_fb_BUSER sc_in sc_lv 1 signal 1 } 
	{ fb_offset sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "read" }} , 
 	{ "name": "m_axi_fb_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "AWVALID" }} , 
 	{ "name": "m_axi_fb_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "AWREADY" }} , 
 	{ "name": "m_axi_fb_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fb", "role": "AWADDR" }} , 
 	{ "name": "m_axi_fb_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "AWID" }} , 
 	{ "name": "m_axi_fb_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fb", "role": "AWLEN" }} , 
 	{ "name": "m_axi_fb_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fb", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_fb_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fb", "role": "AWBURST" }} , 
 	{ "name": "m_axi_fb_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fb", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_fb_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fb", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_fb_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fb", "role": "AWPROT" }} , 
 	{ "name": "m_axi_fb_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fb", "role": "AWQOS" }} , 
 	{ "name": "m_axi_fb_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fb", "role": "AWREGION" }} , 
 	{ "name": "m_axi_fb_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "AWUSER" }} , 
 	{ "name": "m_axi_fb_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "WVALID" }} , 
 	{ "name": "m_axi_fb_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "WREADY" }} , 
 	{ "name": "m_axi_fb_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fb", "role": "WDATA" }} , 
 	{ "name": "m_axi_fb_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "WSTRB" }} , 
 	{ "name": "m_axi_fb_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "WLAST" }} , 
 	{ "name": "m_axi_fb_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "WID" }} , 
 	{ "name": "m_axi_fb_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "WUSER" }} , 
 	{ "name": "m_axi_fb_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "ARVALID" }} , 
 	{ "name": "m_axi_fb_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "ARREADY" }} , 
 	{ "name": "m_axi_fb_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fb", "role": "ARADDR" }} , 
 	{ "name": "m_axi_fb_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "ARID" }} , 
 	{ "name": "m_axi_fb_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fb", "role": "ARLEN" }} , 
 	{ "name": "m_axi_fb_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fb", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_fb_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fb", "role": "ARBURST" }} , 
 	{ "name": "m_axi_fb_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fb", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_fb_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fb", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_fb_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fb", "role": "ARPROT" }} , 
 	{ "name": "m_axi_fb_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fb", "role": "ARQOS" }} , 
 	{ "name": "m_axi_fb_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fb", "role": "ARREGION" }} , 
 	{ "name": "m_axi_fb_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "ARUSER" }} , 
 	{ "name": "m_axi_fb_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "RVALID" }} , 
 	{ "name": "m_axi_fb_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "RREADY" }} , 
 	{ "name": "m_axi_fb_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fb", "role": "RDATA" }} , 
 	{ "name": "m_axi_fb_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "RLAST" }} , 
 	{ "name": "m_axi_fb_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "RID" }} , 
 	{ "name": "m_axi_fb_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "RUSER" }} , 
 	{ "name": "m_axi_fb_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fb", "role": "RRESP" }} , 
 	{ "name": "m_axi_fb_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "BVALID" }} , 
 	{ "name": "m_axi_fb_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "BREADY" }} , 
 	{ "name": "m_axi_fb_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fb", "role": "BRESP" }} , 
 	{ "name": "m_axi_fb_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "BID" }} , 
 	{ "name": "m_axi_fb_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fb", "role": "BUSER" }} , 
 	{ "name": "fb_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fb_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Mat2Array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2083321", "EstimateLatencyMax" : "2083321",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fb", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fb_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "fb_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "fb_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "fb_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Mat2Array {
		img_data_stream_V {Type I LastRead 4 FirstWrite -1}
		fb {Type O LastRead 4 FirstWrite 5}
		fb_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2083321", "Max" : "2083321"}
	, {"Name" : "Interval", "Min" : "2083321", "Max" : "2083321"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_data_stream_V { ap_fifo {  { img_data_stream_V_dout fifo_data 0 8 }  { img_data_stream_V_empty_n fifo_status 0 1 }  { img_data_stream_V_read fifo_update 1 1 } } }
	fb { m_axi {  { m_axi_fb_AWVALID VALID 1 1 }  { m_axi_fb_AWREADY READY 0 1 }  { m_axi_fb_AWADDR ADDR 1 32 }  { m_axi_fb_AWID ID 1 1 }  { m_axi_fb_AWLEN LEN 1 32 }  { m_axi_fb_AWSIZE SIZE 1 3 }  { m_axi_fb_AWBURST BURST 1 2 }  { m_axi_fb_AWLOCK LOCK 1 2 }  { m_axi_fb_AWCACHE CACHE 1 4 }  { m_axi_fb_AWPROT PROT 1 3 }  { m_axi_fb_AWQOS QOS 1 4 }  { m_axi_fb_AWREGION REGION 1 4 }  { m_axi_fb_AWUSER USER 1 1 }  { m_axi_fb_WVALID VALID 1 1 }  { m_axi_fb_WREADY READY 0 1 }  { m_axi_fb_WDATA DATA 1 8 }  { m_axi_fb_WSTRB STRB 1 1 }  { m_axi_fb_WLAST LAST 1 1 }  { m_axi_fb_WID ID 1 1 }  { m_axi_fb_WUSER USER 1 1 }  { m_axi_fb_ARVALID VALID 1 1 }  { m_axi_fb_ARREADY READY 0 1 }  { m_axi_fb_ARADDR ADDR 1 32 }  { m_axi_fb_ARID ID 1 1 }  { m_axi_fb_ARLEN LEN 1 32 }  { m_axi_fb_ARSIZE SIZE 1 3 }  { m_axi_fb_ARBURST BURST 1 2 }  { m_axi_fb_ARLOCK LOCK 1 2 }  { m_axi_fb_ARCACHE CACHE 1 4 }  { m_axi_fb_ARPROT PROT 1 3 }  { m_axi_fb_ARQOS QOS 1 4 }  { m_axi_fb_ARREGION REGION 1 4 }  { m_axi_fb_ARUSER USER 1 1 }  { m_axi_fb_RVALID VALID 0 1 }  { m_axi_fb_RREADY READY 1 1 }  { m_axi_fb_RDATA DATA 0 8 }  { m_axi_fb_RLAST LAST 0 1 }  { m_axi_fb_RID ID 0 1 }  { m_axi_fb_RUSER USER 0 1 }  { m_axi_fb_RRESP RESP 0 2 }  { m_axi_fb_BVALID VALID 0 1 }  { m_axi_fb_BREADY READY 1 1 }  { m_axi_fb_BRESP RESP 0 2 }  { m_axi_fb_BID ID 0 1 }  { m_axi_fb_BUSER USER 0 1 } } }
	fb_offset { ap_none {  { fb_offset in_data 0 32 } } }
}
