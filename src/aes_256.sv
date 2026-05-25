//AES
module s_box(
    input  logic [7:0] in,
    output logic [7:0] out
);
    always_comb begin
        case (in)
            8'h00: out = 8'h63;
            8'h01: out = 8'h7C;
            8'h02: out = 8'h77;
            8'h03: out = 8'h7B;
            8'h04: out = 8'hF2;
            8'h05: out = 8'h6B;
            8'h06: out = 8'h6F;
            8'h07: out = 8'hC5;
            8'h08: out = 8'h30;
            8'h09: out = 8'h01;
            8'h0A: out = 8'h67;
            8'h0B: out = 8'h2B;
            8'h0C: out = 8'hFE;
            8'h0D: out = 8'hD7;
            8'h0E: out = 8'hAB;
            8'h0F: out = 8'h76;
            8'h10: out = 8'hCA;
            8'h11: out = 8'h82;
            8'h12: out = 8'hC9;
            8'h13: out = 8'h7D;
            8'h14: out = 8'hFA;
            8'h15: out = 8'h59;
            8'h16: out = 8'h47;
            8'h17: out = 8'hF0;
            8'h18: out = 8'hAD;
            8'h19: out = 8'hD4;
            8'h1A: out = 8'hA2;
            8'h1B: out = 8'hAF;
            8'h1C: out = 8'h9C;
            8'h1D: out = 8'hA4;
            8'h1E: out = 8'h72;
            8'h1F: out = 8'hC0;
            8'h20: out = 8'hB7;
            8'h21: out = 8'hFD;
            8'h22: out = 8'h93;
            8'h23: out = 8'h26;
            8'h24: out = 8'h36;
            8'h25: out = 8'h3F;
            8'h26: out = 8'hF7;
            8'h27: out = 8'hCC;
            8'h28: out = 8'h34;
            8'h29: out = 8'hA5;
            8'h2A: out = 8'hE5;
            8'h2B: out = 8'hF1;
            8'h2C: out = 8'h71;
            8'h2D: out = 8'hD8;
            8'h2E: out = 8'h31;
            8'h2F: out = 8'h15;
            8'h30: out = 8'h04;
            8'h31: out = 8'hC7;
            8'h32: out = 8'h23;
            8'h33: out = 8'hC3;
            8'h34: out = 8'h18;
            8'h35: out = 8'h96;
            8'h36: out = 8'h05;
            8'h37: out = 8'h9A;
            8'h38: out = 8'h07;
            8'h39: out = 8'h12;
            8'h3A: out = 8'h80;
            8'h3B: out = 8'hE2;
            8'h3C: out = 8'hEB;
            8'h3D: out = 8'h27;
            8'h3E: out = 8'hB2;
            8'h3F: out = 8'h75;
            8'h40: out = 8'h09;
            8'h41: out = 8'h83;
            8'h42: out = 8'h2C;
            8'h43: out = 8'h1A;
            8'h44: out = 8'h1B;
            8'h45: out = 8'h6E;
            8'h46: out = 8'h5A;
            8'h47: out = 8'hA0;
            8'h48: out = 8'h52;
            8'h49: out = 8'h3B;
            8'h4A: out = 8'hD6;
            8'h4B: out = 8'hB3;
            8'h4C: out = 8'h29;
            8'h4D: out = 8'hE3;
            8'h4E: out = 8'h2F;
            8'h4F: out = 8'h84;
            8'h50: out = 8'h53;
            8'h51: out = 8'hD1;
            8'h52: out = 8'h00;
            8'h53: out = 8'hED;
            8'h54: out = 8'h20;
            8'h55: out = 8'hFC;
            8'h56: out = 8'hB1;
            8'h57: out = 8'h5B;
            8'h58: out = 8'h6A;
            8'h59: out = 8'hCB;
            8'h5A: out = 8'hBE;
            8'h5B: out = 8'h39;
            8'h5C: out = 8'h4A;
            8'h5D: out = 8'h4C;
            8'h5E: out = 8'h58;
            8'h5F: out = 8'hCF;
            8'h60: out = 8'hD0;
            8'h61: out = 8'hEF;
            8'h62: out = 8'hAA;
            8'h63: out = 8'hFB;
            8'h64: out = 8'h43;
            8'h65: out = 8'h4D;
            8'h66: out = 8'h33;
            8'h67: out = 8'h85;
            8'h68: out = 8'h45;
            8'h69: out = 8'hF9;
            8'h6A: out = 8'h02;
            8'h6B: out = 8'h7F;
            8'h6C: out = 8'h50;
            8'h6D: out = 8'h3C;
            8'h6E: out = 8'h9F;
            8'h6F: out = 8'hA8;
            8'h70: out = 8'h51;
            8'h71: out = 8'hA3;
            8'h72: out = 8'h40;
            8'h73: out = 8'h8F;
            8'h74: out = 8'h92;
            8'h75: out = 8'h9D;
            8'h76: out = 8'h38;
            8'h77: out = 8'hF5;
            8'h78: out = 8'hBC;
            8'h79: out = 8'hB6;
            8'h7A: out = 8'hDA;
            8'h7B: out = 8'h21;
            8'h7C: out = 8'h10;
            8'h7D: out = 8'hFF;
            8'h7E: out = 8'hF3;
            8'h7F: out = 8'hD2;
            8'h80: out = 8'hCD;
            8'h81: out = 8'h0C;
            8'h82: out = 8'h13;
            8'h83: out = 8'hEC;
            8'h84: out = 8'h5F;
            8'h85: out = 8'h97;
            8'h86: out = 8'h44;
            8'h87: out = 8'h17;
            8'h88: out = 8'hC4;
            8'h89: out = 8'hA7;
            8'h8A: out = 8'h7E;
            8'h8B: out = 8'h3D;
            8'h8C: out = 8'h64;
            8'h8D: out = 8'h5D;
            8'h8E: out = 8'h19;
            8'h8F: out = 8'h73;
            8'h90: out = 8'h60;
            8'h91: out = 8'h81;
            8'h92: out = 8'h4F;
            8'h93: out = 8'hDC;
            8'h94: out = 8'h22;
            8'h95: out = 8'h2A;
            8'h96: out = 8'h90;
            8'h97: out = 8'h88;
            8'h98: out = 8'h46;
            8'h99: out = 8'hEE;
            8'h9A: out = 8'hB8;
            8'h9B: out = 8'h14;
            8'h9C: out = 8'hDE;
            8'h9D: out = 8'h5E;
            8'h9E: out = 8'h0B;
            8'h9F: out = 8'hDB;
            8'hA0: out = 8'hE0;
            8'hA1: out = 8'h32;
            8'hA2: out = 8'h3A;
            8'hA3: out = 8'h0A;
            8'hA4: out = 8'h49;
            8'hA5: out = 8'h06;
            8'hA6: out = 8'h24;
            8'hA7: out = 8'h5C;
            8'hA8: out = 8'hC2;
            8'hA9: out = 8'hD3;
            8'hAA: out = 8'hAC;
            8'hAB: out = 8'h62;
            8'hAC: out = 8'h91;
            8'hAD: out = 8'h95;
            8'hAE: out = 8'hE4;
            8'hAF: out = 8'h79;
            8'hB0: out = 8'hE7;
            8'hB1: out = 8'hC8;
            8'hB2: out = 8'h37;
            8'hB3: out = 8'h6D;
            8'hB4: out = 8'h8D;
            8'hB5: out = 8'hD5;
            8'hB6: out = 8'h4E;
            8'hB7: out = 8'hA9;
            8'hB8: out = 8'h6C;
            8'hB9: out = 8'h56;
            8'hBA: out = 8'hF4;
            8'hBB: out = 8'hEA;
            8'hBC: out = 8'h65;
            8'hBD: out = 8'h7A;
            8'hBE: out = 8'hAE;
            8'hBF: out = 8'h08;
            8'hC0: out = 8'hBA;
            8'hC1: out = 8'h78;
            8'hC2: out = 8'h25;
            8'hC3: out = 8'h2E;
            8'hC4: out = 8'h1C;
            8'hC5: out = 8'hA6;
            8'hC6: out = 8'hB4;
            8'hC7: out = 8'hC6;
            8'hC8: out = 8'hE8;
            8'hC9: out = 8'hDD;
            8'hCA: out = 8'h74;
            8'hCB: out = 8'h1F;
            8'hCC: out = 8'h4B;
            8'hCD: out = 8'hBD;
            8'hCE: out = 8'h8B;
            8'hCF: out = 8'h8A;
            8'hD0: out = 8'h70;
            8'hD1: out = 8'h3E;
            8'hD2: out = 8'hB5;
            8'hD3: out = 8'h66;
            8'hD4: out = 8'h48;
            8'hD5: out = 8'h03;
            8'hD6: out = 8'hF6;
            8'hD7: out = 8'h0E;
            8'hD8: out = 8'h61;
            8'hD9: out = 8'h35;
            8'hDA: out = 8'h57;
            8'hDB: out = 8'hB9;
            8'hDC: out = 8'h86;
            8'hDD: out = 8'hC1;
            8'hDE: out = 8'h1D;
            8'hDF: out = 8'h9E;
            8'hE0: out = 8'hE1;
            8'hE1: out = 8'hF8;
            8'hE2: out = 8'h98;
            8'hE3: out = 8'h11;
            8'hE4: out = 8'h69;
            8'hE5: out = 8'hD9;
            8'hE6: out = 8'h8E;
            8'hE7: out = 8'h94;
            8'hE8: out = 8'h9B;
            8'hE9: out = 8'h1E;
            8'hEA: out = 8'h87;
            8'hEB: out = 8'hE9;
            8'hEC: out = 8'hCE;
            8'hED: out = 8'h55;
            8'hEE: out = 8'h28;
            8'hEF: out = 8'hDF;
            8'hF0: out = 8'h8C;
            8'hF1: out = 8'hA1;
            8'hF2: out = 8'h89;
            8'hF3: out = 8'h0D;
            8'hF4: out = 8'hBF;
            8'hF5: out = 8'hE6;
            8'hF6: out = 8'h42;
            8'hF7: out = 8'h68;
            8'hF8: out = 8'h41;
            8'hF9: out = 8'h99;
            8'hFA: out = 8'h2D;
            8'hFB: out = 8'h0F;
            8'hFC: out = 8'hB0;
            8'hFD: out = 8'h54;
            8'hFE: out = 8'hBB;
            8'hFF: out = 8'h16;
        endcase
    end
endmodule

module sub_word(
    input  logic [31:0] in,
    output logic [31:0] out
);
    s_box s0(.in(in[31:24]), .out(out[31:24]));
    s_box s1(.in(in[23:16]), .out(out[23:16]));
    s_box s2(.in(in[15:8]),  .out(out[15:8]));
    s_box s3(.in(in[7:0]),   .out(out[7:0]));
endmodule

module g_function(
    input  logic [5:0]  i,
    input  logic [31:0] w,
    output logic [31:0] g_w
);
    logic [31:0] RCon;
    logic [31:0] rot_word_out;
    logic [31:0] sub_word_out;
    
    always_comb begin
        case(i)
            6'd7:  RCon = 32'h01000000;
            6'd15: RCon = 32'h02000000;
            6'd23: RCon = 32'h04000000;
            6'd31: RCon = 32'h08000000;
            6'd39: RCon = 32'h10000000;
            6'd47: RCon = 32'h20000000;
            6'd55: RCon = 32'h40000000;
            default: RCon = 32'b0;
        endcase
    end
    //
    assign rot_word_out = {w[23:16], w[15:8], w[7:0], w[31:24]}; 
    //
	 sub_word sb1(.in(rot_word_out), .out(sub_word_out));
    //
    assign g_w = sub_word_out ^ RCon;
endmodule

module key_expansion(
    input  logic [255:0] key,
    output logic [127:0] key0, key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14
);
    //
    logic [59:0] [31:0] w;
    //
    assign w[0] = key[255:224];
    assign w[1] = key[223:192];
    assign w[2] = key[191:160];
    assign w[3] = key[159:128];
    assign w[4] = key[127:96];
    assign w[5] = key[95:64];
    assign w[6] = key[63:32];
    assign w[7] = key[31:0];
	 //
    genvar i;
    generate
        for (i=8; i<60; i++) begin : key_gen_loop
            
            if (i % 8 == 0) begin : gen_g_func
                logic [31:0] gw_out;
                g_function u_g (
                    .i   (i[5:0] - 6'd1),
                    .w   (w[i-1]),
                    .g_w (gw_out)
                );
                assign w[i] = gw_out ^ w[i-8];
            end
            else if (i % 8 == 4) begin : gen_sub_word
                logic [31:0] sw_out;
                sub_word u_sw (
                    .in  (w[i-1]),
                    .out (sw_out)
                );
                assign w[i] = sw_out ^ w[i-8];
            end
            else begin : gen_xor
                assign w[i] = w[i-1] ^ w[i-8];
            end
        end
    endgenerate
    // 
    assign key0  = {w[0],  w[1],  w[2],  w[3]};
    assign key1  = {w[4],  w[5],  w[6],  w[7]};
    assign key2  = {w[8],  w[9],  w[10], w[11]};
    assign key3  = {w[12], w[13], w[14], w[15]};
    assign key4  = {w[16], w[17], w[18], w[19]};
    assign key5  = {w[20], w[21], w[22], w[23]};
    assign key6  = {w[24], w[25], w[26], w[27]};
    assign key7  = {w[28], w[29], w[30], w[31]};
    assign key8  = {w[32], w[33], w[34], w[35]};
    assign key9  = {w[36], w[37], w[38], w[39]};
    assign key10 = {w[40], w[41], w[42], w[43]};
    assign key11 = {w[44], w[45], w[46], w[47]};
    assign key12 = {w[48], w[49], w[50], w[51]};
    assign key13 = {w[52], w[53], w[54], w[55]};
    assign key14 = {w[56], w[57], w[58], w[59]};

endmodule

//aes round
module add_round_key(
	input logic [127:0] state,
	input logic [127:0] key,
	output logic [127:0] state_xor
);
	assign state_xor = state ^ key;
endmodule

module sub_bytes(
	input logic [127:0] state,
	output logic [127:0] state_sub
);
	sub_word s0(.in(state[127:96]), .out(state_sub[127:96]));
	sub_word s1(.in(state[95:64]), .out(state_sub[95:64]));
	sub_word s2(.in(state[63:32]), .out(state_sub[63:32]));
	sub_word s3(.in(state[31:0]), .out(state_sub[31:0]));
endmodule

module shift_rows(
    input  logic [127:0] state,
    output logic [127:0] state_shift
);
    // k0  k4    k8    k12
    // k1  k5    k9    k13
    // k2  k6    k10   k14
    // k3  k7    k11   k15
    
    
    // k0  k4    k8    k12
    // k5  k9    k13   k1
    // k10 k14   k2    k6
    // k15 k3    k7    k11

    logic [15:0] [7:0] k;
	 //
    assign k[0]  = state[127:120];
    assign k[1]  = state[119:112];
    assign k[2]  = state[111:104];
    assign k[3]  = state[103:96];
    assign k[4]  = state[95:88];
    assign k[5]  = state[87:80];
    assign k[6]  = state[79:72];
    assign k[7]  = state[71:64];
    assign k[8]  = state[63:56];
    assign k[9]  = state[55:48];
    assign k[10] = state[47:40];
    assign k[11] = state[39:32];
    assign k[12] = state[31:24];
    assign k[13] = state[23:16];
    assign k[14] = state[15:8];
    assign k[15] = state[7:0];
	 //
    assign state_shift = {
			k[0], k[5], k[10], k[15],
         k[4], k[9], k[14], k[3],
			k[8], k[13], k[2], k[7],
			k[12], k[1], k[6], k[11]
    };
endmodule
	//mix_columns
module xtime(
    input  logic [7:0] in,
    output logic [7:0] out
);
    assign out = in[7] ? ((in << 1) ^ 8'h1B) : (in << 1);
endmodule

module mix_single_column(
    input  logic [31:0] col_in,
    output logic [31:0] col_out
);
    logic [7:0] s0, s1, s2, s3;
    logic [7:0] x0, x1, x2, x3;
	 //
    assign {s0, s1, s2, s3} = col_in;
	 //
    xtime u_x0(.in(s0), .out(x0));
    xtime u_x1(.in(s1), .out(x1));
    xtime u_x2(.in(s2), .out(x2));
    xtime u_x3(.in(s3), .out(x3));
    // a x 3 = xtime(a) ^ a
    assign col_out[31:24] = x0 ^ (x1 ^ s1) ^ s2 ^ s3;
    assign col_out[23:16] = s0 ^ x1 ^ (x2 ^ s2) ^ s3;
    assign col_out[15:8] = s0 ^ s1 ^ x2 ^ (x3 ^ s3);
    assign col_out[7:0] = (x0 ^ s0) ^ s1 ^ s2 ^ x3;
endmodule

module mix_columns(
    input  logic [127:0] state_in,
    output logic [127:0] state_mix
);
    //cot 0 
    mix_single_column col0(
        .col_in(state_in[127:96]), 
        .col_out(state_mix[127:96])
    );
    
    //cot 1
    mix_single_column col1(
        .col_in(state_in[95:64]),  
        .col_out(state_mix[95:64])
    ); 
    //cot 2
    mix_single_column col2(
        .col_in(state_in[63:32]),  
        .col_out(state_mix[63:32])
    );  
    
	 //cot 3
    mix_single_column col3(
        .col_in(state_in[31:0]),   
        .col_out(state_mix[31:0])
    );
endmodule

//round 1-13
module aes_round(
    input logic [127:0] state_in,
    input logic [127:0] round_key,
    output logic [127:0] state_out
);
    logic [127:0] after_sub, after_shift, after_mix;

    sub_bytes u_sub(.state(state_in), .state_sub(after_sub));
    shift_rows u_shift(.state(after_sub), .state_shift(after_shift));
    mix_columns u_mix(.state_in(after_shift), .state_mix(after_mix));
    add_round_key u_add(.state(after_mix), .key(round_key), .state_xor(state_out));
endmodule

//round 14
module aes_round_final(
    input logic [127:0] state_in,
    input logic [127:0] round_key,
    output logic [127:0] state_out
);
    logic [127:0] after_sub, after_shift;

    sub_bytes u_sub(.state(state_in), .state_sub(after_sub));
    shift_rows u_shift(.state(after_sub), .state_shift(after_shift));
    add_round_key u_add(.state(after_shift), .key(round_key), .state_xor(state_out));
endmodule


module aes_fsm (
    input logic clk,
    input logic rst_n,
    input logic load_en,
    output logic [3:0] round_cnt,
    output logic update_state, //cho phep ghi du lieu moi vao thanh ghi
    output logic load_init, //chon mux: =1 nap (data_in ^ key0), =0 nạp vòng lặp
    output logic done //cbao hieu xong round 14
);
    typedef enum logic {IDLE = 1'b0, CALC = 1'b1} state_t;
    state_t state, next_state;
    logic [3:0] next_round_cnt;

    //
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state     <= IDLE;
            round_cnt <= 4'd0;
        end else begin
            state     <= next_state;
            round_cnt <= next_round_cnt;
        end
    end

    // Logic chuyển trạng thái & xuất tín hiệu điều khiển
    always_comb begin
        next_state     = state;
        next_round_cnt = round_cnt;
        update_state   = 1'b0;
        load_init      = 1'b0;
        done           = 1'b0;

        case (state)
            IDLE: begin
                if (load_en) begin
                    load_init      = 1'b1;
                    update_state   = 1'b1;
                    next_round_cnt = 4'd1;
                    next_state     = CALC;
                end
            end
            CALC: begin
                if (round_cnt < 4'd14) begin
                    update_state   = 1'b1;
                    next_round_cnt = round_cnt + 1'b1;
                end else begin
                    done           = 1'b1;
                    next_state     = IDLE;
                end
            end
        endcase
    end
endmodule

module aes_256 (
    input  logic clk,
    input  logic rst_n,
    input  logic load_en, 
    input  logic [255:0] key,
    input  logic [127:0] data_in, 
    output logic [127:0] key_stream,
    output logic ready_out   
);
    //
    logic [127:0] rkey [0:14];
    logic [127:0] current_state_data;
    logic [127:0] round_out_normal;
    logic [127:0] round_out_final;
    //
    logic [3:0] round_cnt;
    logic update_state;
    logic load_init;
    logic done;
    //
    key_expansion u_key_ext(
        .key(key),
        .key0(rkey[0]), .key1(rkey[1]), .key2(rkey[2]), .key3(rkey[3]),
        .key4(rkey[4]), .key5(rkey[5]), .key6(rkey[6]), .key7(rkey[7]),
        .key8(rkey[8]), .key9(rkey[9]), .key10(rkey[10]),  .key11(rkey[11]),
        .key12(rkey[12]), .key13(rkey[13]), .key14(rkey[14])
    );
    //
    aes_fsm u_fsm (
        .clk(clk),
        .rst_n(rst_n),
        .load_en(load_en),
        .round_cnt(round_cnt),
        .update_state(update_state),
        .load_init(load_init),
        .done(done)
    );
    //
    aes_round u_round_normal (
        .state_in(current_state_data),
        .round_key(rkey[round_cnt]),
        .state_out(round_out_normal)
    );

    aes_round_final u_round_final (
        .state_in(current_state_data),
        .round_key(rkey[14]),
        .state_out(round_out_final)
    );

    //
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_state_data <= 128'd0;
            key_stream         <= 128'd0;
            ready_out          <= 1'b0;
        end else begin
            //
            ready_out <= done;
            //
            if (update_state) begin
                if (load_init)
                    current_state_data <= data_in ^ rkey[0]; // Vòng 0
                else
                    current_state_data <= round_out_normal;  // Vòng 1 đến 13
            end
				//
            if (done) begin
                key_stream <= round_out_final;
            end
        end
    end
endmodule