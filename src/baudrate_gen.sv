module baudrate_gen(
	input logic clk, rst_n,
	output logic rx_en, tx_en
);
	logic [12:0] tx_counter;
	logic [8:0] rx_counter;
	always_ff @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			rx_en <= 1'b0;
			tx_en <= 1'b0;
			tx_counter <= 13'b0;
			rx_counter <= 9'b0;
		end
		else begin
			if (tx_counter == 13'd5208) begin
				tx_counter <= 13'b0;
				tx_en <= 1'b1;
				end
			else begin
				tx_counter <= tx_counter + 1'b1;
				tx_en <= 1'b0;
				end
			
			if (rx_counter == 9'd325) begin
				rx_counter <= 9'b0;
				rx_en <= 1'b1;
				end
			else begin
				rx_counter <= rx_counter + 1'b1;
				rx_en <= 1'b0;
				end
		end
	end
endmodule	