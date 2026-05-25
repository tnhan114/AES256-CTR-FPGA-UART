module aes_controller(
    input logic clk,
    input logic rst_n,
    //tin hieu ben ngoai
    input logic start_i, //bat dau file moi
    input logic data_valid_i, //dang nap 128bit plaintext
    input logic last_block_i, //block plaintext cuoi
    output logic ready_o, //san sang nhan du lieu moi
    output logic done_o, //xong toan bo dile
    //control aes và counter
    output logic aes_load_en,
    output logic cnt_en,
    output logic cnt_rst_n, //reset bo dem khi co file moi
    input logic aes_ready_in //tin hieu san sang ma hoa counter moi tu aes
);

    //cac trang thai cua fsm
    typedef enum logic [2:0] {
        ST_IDLE = 3'b000, //trang thai nghi
        ST_INIT = 3'b001, //khoi tao nonce va key
        ST_WAIT_DATA = 3'b010, //cho nap plaintext
        ST_PROCESS = 3'b011, //dang ma hoa bang aes
        ST_CLEANUP = 3'b100  //reset cho file moi
    } state_t;

    state_t state, next_state;

    //khoi chuyen trang thai
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= ST_IDLE;
        else        state <= next_state;
    end

    //
    always_comb begin
        next_state  = state;
        ready_o     = 1'b0;
        aes_load_en = 1'b0;
        cnt_en      = 1'b0;
        cnt_rst_n   = 1'b1;
        done_o      = 1'b0;
        case (state)
            ST_IDLE: begin
                ready_o = 1'b1;
                if (start_i) next_state = ST_INIT;
            end

            ST_INIT: begin
                cnt_rst_n = 1'b0; //reset counter cho file moi
                next_state = ST_WAIT_DATA;
            end

            ST_WAIT_DATA: begin
                ready_o = 1'b1; //san sang nhan 128bit plaintext
                if (data_valid_i) begin
                    aes_load_en = 1'b1; //cho phep aes nap counter de tinh keystream
                    next_state  = ST_PROCESS;
                end
            end

            ST_PROCESS: begin
                if (aes_ready_in) begin
                    cnt_en = 1'b1; //tang bo dem cho block tiep theo
                    if (last_block_i) next_state = ST_CLEANUP;
                    else              next_state = ST_WAIT_DATA;
                end
            end

            ST_CLEANUP: begin
                done_o = 1'b1;
                next_state = ST_IDLE;
            end
            default: next_state = ST_IDLE;
        endcase
    end
endmodule