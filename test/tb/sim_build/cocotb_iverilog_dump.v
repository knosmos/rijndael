module cocotb_iverilog_dump();
initial begin
    $dumpfile("C:/proj/aes/tb/sim_build/top_level.fst");
    $dumpvars(0, top_level);
end
endmodule
