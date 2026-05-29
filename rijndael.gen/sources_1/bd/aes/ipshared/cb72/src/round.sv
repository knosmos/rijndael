`timescale 1ns / 1ps
`default_nettype none
module round #(
    parameter [127:0] ROUND_KEY,
    parameter USE_MIX_COLUMNS = 1,
    parameter IDX = 0
) (
    input wire clk,
    input wire rst,
    input wire [256*8-1:0] sbox,
    input wire input_valid,
    input wire [127:0] state_in,
    output logic output_valid,
    output logic [127:0] state_out
);
    logic [127:0] state_sb2sr;
    logic [127:0] state_sr2mc;
    logic [127:0] state_mc2ark;
    logic [127:0] state_ark2out;
    integer i;
    integer j;
    integer base;
    logic [7:0] col[0:3];
    logic [7:0] col_b[0:3];
    logic [7:0] col_out[0:3];

    logic [127:0] gfmul2;

    function automatic logic [7:0] sbox_lookup(input int index);
        sbox_lookup = sbox[(255 - index)*8 +: 8];
    endfunction

    always_comb begin
        // SubBytes
        for (i = 0; i < 16; i++) begin
            state_sb2sr[i*8 +: 8] = sbox_lookup(state_in[i*8 +: 8]);
        end

        // ShiftRows
        state_sr2mc[15*8 - 0*8 +: 8]  = state_sb2sr[15*8 - 0*8  +: 8];
        state_sr2mc[15*8 - 1*8 +: 8]  = state_sb2sr[15*8 - 5*8  +: 8];
        state_sr2mc[15*8 - 2*8 +: 8]  = state_sb2sr[15*8 - 10*8 +: 8];
        state_sr2mc[15*8 - 3*8 +: 8]  = state_sb2sr[15*8 - 15*8 +: 8];
        state_sr2mc[15*8 - 4*8 +: 8]  = state_sb2sr[15*8 - 4*8  +: 8];
        state_sr2mc[15*8 - 5*8 +: 8]  = state_sb2sr[15*8 - 9*8  +: 8];
        state_sr2mc[15*8 - 6*8 +: 8]  = state_sb2sr[15*8 - 14*8 +: 8];
        state_sr2mc[15*8 - 7*8 +: 8]  = state_sb2sr[15*8 - 3*8  +: 8];
        state_sr2mc[15*8 - 8*8 +: 8]  = state_sb2sr[15*8 - 8*8  +: 8];
        state_sr2mc[15*8 - 9*8 +: 8]  = state_sb2sr[15*8 - 13*8 +: 8];
        state_sr2mc[15*8 - 10*8 +: 8] = state_sb2sr[15*8 - 2*8  +: 8];
        state_sr2mc[15*8 - 11*8 +: 8] = state_sb2sr[15*8 - 7*8  +: 8];
        state_sr2mc[15*8 - 12*8 +: 8] = state_sb2sr[15*8 - 12*8 +: 8];
        state_sr2mc[15*8 - 13*8 +: 8] = state_sb2sr[15*8 - 1*8  +: 8];
        state_sr2mc[15*8 - 14*8 +: 8] = state_sb2sr[15*8 - 6*8  +: 8];
        state_sr2mc[15*8 - 15*8 +: 8] = state_sb2sr[15*8 - 11*8 +: 8];

        // MixColumns
        if (USE_MIX_COLUMNS) begin
            for (j = 0; j < 4; j++) begin
                base = j*4;
                // Read bytes using MSB-first mapping to match C indexing
                // Beware verilog's packed arrays for many have met a poor end(ian)
                col[0] = state_sr2mc[(15-(base+0))*8 +: 8];
                col[1] = state_sr2mc[(15-(base+1))*8 +: 8];
                col[2] = state_sr2mc[(15-(base+2))*8 +: 8];
                col[3] = state_sr2mc[(15-(base+3))*8 +: 8];

                col_b[0] = col[0][7] ? ((col[0] << 1) ^ 8'h1b) : (col[0] << 1);
                col_b[1] = col[1][7] ? ((col[1] << 1) ^ 8'h1b) : (col[1] << 1);
                col_b[2] = col[2][7] ? ((col[2] << 1) ^ 8'h1b) : (col[2] << 1);
                col_b[3] = col[3][7] ? ((col[3] << 1) ^ 8'h1b) : (col[3] << 1);

                col_out[0] = col_b[0] ^ (col[1] ^ col_b[1]) ^ col[2] ^ col[3];
                col_out[1] = col[0] ^ col_b[1] ^ (col[2] ^ col_b[2]) ^ col[3];
                col_out[2] = col[0] ^ col[1] ^ col_b[2] ^ (col[3] ^ col_b[3]);
                col_out[3] = (col[0] ^ col_b[0]) ^ col[1] ^ col[2] ^ col_b[3];

                // $display("round :: %0d COL %0d in=%02h%02h%02h%02h out=%02h%02h%02h%02h", IDX, j,
                //     col[0], col[1], col[2], col[3], col_out[0], col_out[1], col_out[2], col_out[3]);

                // Write bytes back using MSB-first mapping
                state_mc2ark[(15-(base+0))*8 +: 8] = col_out[0];
                state_mc2ark[(15-(base+1))*8 +: 8] = col_out[1];
                state_mc2ark[(15-(base+2))*8 +: 8] = col_out[2];
                state_mc2ark[(15-(base+3))*8 +: 8] = col_out[3];
            end
        end else begin
            state_mc2ark = state_sr2mc;
        end

        // if (input_valid) begin
        //     $display("round :: %0d preMC=%032h postMC=%032h", IDX, state_sr2mc, state_mc2ark);
        // end

        // AddRoundKey
        for (i = 0; i < 16; i++) begin
            state_ark2out[i*8 +: 8] = state_mc2ark[i*8 +: 8] ^ ROUND_KEY[i*8 +: 8];
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            state_out <= '0;
            // $display("round :: key (idx = %d), %h", IDX, ROUND_KEY);
            output_valid <= 1'b0;
        end else begin
            state_out <= state_ark2out;
            output_valid <= input_valid;
        end
    end
endmodule
`default_nettype wire