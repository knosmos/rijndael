`timescale 1ns / 1ps
`default_nettype none
module top_level (
    input wire clk,
    input wire rst,
    input wire input_valid,
    input wire [127:0] state_in,
    output logic output_valid,
    output logic [127:0] state_out
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