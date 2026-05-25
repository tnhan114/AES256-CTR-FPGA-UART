module counter_block(
	input logic [95:0] nonce,
	input logic cnt_rst_n, clk, cnt_en,
	output logic [127:0] count_value
);
	logic [31:0] counter;
	
	always_ff@(posedge clk or negedge cnt_rst_n ) begin
		if (~cnt_rst_n) begin
			counter <= 32'b0;
		end
		else if (cnt_en) begin
			counter <= counter +1'b1;
		end
	end
	
	assign count_value = {nonce[95:0], counter[31:0]};
endmodule 