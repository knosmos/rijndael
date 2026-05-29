vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_21
vlib modelsim_lib/msim/processing_system7_vip_v1_0_23
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_10
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_35

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 modelsim_lib/msim/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 modelsim_lib/msim/processing_system7_vip_v1_0_23
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_10 modelsim_lib/msim/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 modelsim_lib/msim/axi_register_slice_v2_1_35

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"F:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"F:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_processing_system7_0_0/sim/aes_processing_system7_0_0.v" \
"../../../bd/aes/ipshared/cb72/hdl/aes_core_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/aes/ipshared/cb72/hdl/aes_core.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ipshared/cb72/src/aes.sv" \
"../../../bd/aes/ipshared/cb72/src/aes_bridge.sv" \
"../../../bd/aes/ipshared/cb72/src/round.sv" \
"../../../bd/aes/ip/aes_aes_core_0_2/sim/aes_aes_core_0_2.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/sim/bd_bc9e.v" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_0/sim/bd_bc9e_one_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_1/sim/bd_bc9e_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_2/sim/bd_bc9e_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_3/sim/bd_bc9e_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_4/sim/bd_bc9e_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_5/sim/bd_bc9e_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_6/sim/bd_bc9e_sarn_0.sv" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_7/sim/bd_bc9e_srn_0.sv" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_8/sim/bd_bc9e_sawn_0.sv" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_9/sim/bd_bc9e_swn_0.sv" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_10/sim/bd_bc9e_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_11/sim/bd_bc9e_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/bd_0/ip/ip_12/sim/bd_bc9e_m00e_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_35  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../rijndael.gen/sources_1/bd/aes/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/ip/aes_axi_smc_2/sim/aes_axi_smc_2.sv" \

vcom -work xil_defaultlib  -93  \
"../../../bd/aes/ip/aes_rst_ps7_0_50M_2/sim/aes_rst_ps7_0_50M_2.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/ec67/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/6cfa/hdl" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rijndael.gen/sources_1/bd/aes/ipshared/a8e4/hdl/verilog" "+incdir+F:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+F:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/aes/sim/aes.v" \

vlog -work xil_defaultlib \
"glbl.v"

