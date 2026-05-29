`timescale 1ns / 1ps
`default_nettype none
module aes_bridge (
    input wire clk,
    input wire rst,
    input wire input_valid,
    input wire [31:0] in_0,
    input wire [31:0] in_1,
    input wire [31:0] in_2,
    input wire [31:0] in_3,
    output logic output_valid,
    output logic [31:0] out_0,
    output logic [31:0] out_1,
    output logic [31:0] out_2,
    output logic [31:0] out_3
);
    localparam [15*128-1:0] ROUND_KEYS = {
        128'hab76366d5cfbfd53f4d56213422b549e,
        128'h6860cf6f0c31f08c792bd25dcbfbe5a5,
        128'he4af3072f78dcb3ea82e9f40b6fe368d,
        128'h26dbca3264513fe3751a22d1b2d037f8,
        128'hb43571451322fb4c5fa3547e1ed0a9cd,
        128'h54ab198f428af5d1114b1d32c7ca1529,
        128'hd06cd483a7178a094c81af324173fdb3,
        128'hd7244de21621ec5e53c1e8e3d681081b,
        128'hd45c7b75777b5e8aeb96253b0df25281,
        128'h00ad4deec105a1bc45e004bd8540e0f8,
        128'hd9bd3ae2a32725ff9ced7bb1e66477ba,
        128'h8eeeb81ac1a8ec5284e5a501c0a0e445,
        128'h3bd454587a9a1f1d3fca5e4e7a890c0b,
        128'h544946314f465448454d495344454144,
        128'h54574f43414e4b454550415345435245
    };

    logic [127:0] state_in;
    logic [127:0] state_out;

    assign state_in = {in_0, in_1, in_2, in_3};
    assign {out_0, out_1, out_2, out_3} = state_out;

    aes #(
        .ROUND_KEYS(ROUND_KEYS)
    ) aes_inst (
        .clk(clk),
        .rst(rst),
        .input_valid(input_valid),
        .state_in(state_in),
        .output_valid(output_valid),
        .state_out(state_out)
    );

endmodule
`default_nettype wire