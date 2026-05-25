module xor_block(
	input logic [127:0] A, B,
	output logic [127:0] C
);
	assign C = A ^ B;
endmodule

module aes_256_ctr(
    input logic clk,
    input logic rst_n,
    //
    input  logic start,
    input  logic vld_in,
    input  logic last_block,
    input  logic [255:0] key,
    input  logic [95:0] nonce,
    input  logic [127:0] plaintext,
    //
    output logic ready,
    output logic vld_out,
    output logic [127:0] ciphertext,
    output logic done
);
    //
    logic [127:0] current_cnt_val;
    logic [127:0] keystream;
    logic aes_load, aes_ready, cnt_en, cnt_rst;
    //
    aes_controller fsm (
        .clk(clk), .rst_n(rst_n),
        .start_i(start), .data_valid_i(vld_in), .last_block_i(last_block),
        .ready_o(ready), .done_o(done),
        .aes_load_en(aes_load), .cnt_en(cnt_en), .cnt_rst_n(cnt_rst),
        .aes_ready_in(aes_ready)
    );
    //
    counter_block u_counter (
        .clk(clk), .cnt_rst_n(cnt_rst), .cnt_en(cnt_en),
        .nonce(nonce), .count_value(current_cnt_val)
    );
    //
    aes_256 u_aes_256(
        .clk(clk), .rst_n(rst_n),
        .load_en(aes_load),
        .key(key), .data_in(current_cnt_val),
        .key_stream(keystream),
        .ready_out(aes_ready)
    );
    //
    xor_block result(.A(plaintext), .B(keystream), .C(ciphertext));
    assign vld_out = aes_ready; //cipertext xong
endmodule
	