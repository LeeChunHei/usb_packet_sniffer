module spi_register_bus
(
	input			rst_n,
	
	output		reg_clk,
	output reg	req,
	output reg	rw,	// 0: read req, 1: write req
	input			ack,
	output reg	[6:0]adr,
	input			[7:0]rdata,
	output reg	[7:0]wdata,
	
	// IO
	input			sck,
	inout			spi_data	// As only half duplex
);

	/*
	 * SPI in mode 0, rising edge sample
	 * Format for the spi bus
	 * 0th packet: bit 7-1 -> register address, bit 0 -> rw (0 is read, 1 is write)
	 * idle packet: 0x00
	 * magic packet: 0b10101010
	 * 1th packet: 
	 */

	localparam IDLE = 0;
	localparam WR_DATA = 1;
	localparam WAIT_ACK = 2;
	localparam SEND_RESULT = 3;

	// SPI
	reg	miso;
	wire	mosi;
	reg	[7:0]in_fifo;
	reg	[7:0]out_fifo;
	reg	spi_direction;	// 0: slave read, 1: slave write
	reg	[7:0]bit_shift;
	
	// Register Bus
	reg [7:0]state;
	
	// SPI
	assign spi_data = spi_direction ? miso : 1'bz;
	assign mosi = spi_data;
	
	// Register Bus
	assign reg_clk = sck;
	
	always @(posedge sck or negedge rst_n) begin
		if (!rst_n) begin
			in_fifo <= 0;
		end
		else begin
			in_fifo[7-bit_shift] <= mosi;
		end
	end
	
	always @(negedge sck or negedge rst_n) begin
		if (!rst_n) begin
			miso <= 0;
		end
		else begin
			miso <= out_fifo[7-bit_shift];
		end
	end
	
	always @(posedge sck or negedge rst_n) begin
		if (!rst_n) begin
			out_fifo <= 0;
			spi_direction <= 0;
			bit_shift <= 0;
			state <= IDLE;
			req <= 0;
			rw <= 0;
			adr <= 0;
			wdata <= 0;
		end
		else begin
			bit_shift <= bit_shift + 1;
			if (bit_shift >= 7) begin
				bit_shift <= 0;
				case(state)
					IDLE: begin
						req <= 0;
						adr <= in_fifo[7:1];
						rw <= in_fifo[0];
						spi_direction <= 0;
						if (in_fifo[0]) begin
							// write register
							state <= WR_DATA;
						end
						else begin
							// read register
							req <= 1;
							spi_direction <= 1;
							out_fifo <= 0;
							state <= WAIT_ACK;
						end
					end
					WR_DATA: begin
						wdata <= in_fifo;
						req <= 1;
						spi_direction <= 1;
						out_fifo <= 0;
						state <= WAIT_ACK;
					end
					WAIT_ACK: begin
						if (ack) begin
							spi_direction <= 1;
							out_fifo <= 8'b10101010;
							state <= rw ? IDLE : SEND_RESULT;
						end
					end
					SEND_RESULT: begin
						spi_direction <= 1;
						out_fifo <= rdata;
						state <= IDLE;
					end
				endcase
			end
		end
	end
	 
//	localparam IDLE = 0;
//	localparam WR_DATA = 1;
//	localparam WAIT_ACK = 2;
//	localparam SEND_RESULT = 3;
//
//	// SPI
//	reg	miso;
//	wire	mosi;
//	reg	mosi_temp;
//	reg	[7:0]spi_temp_data;
//	reg	spi_direction;	// 0: slave read, 1: slave write
//	reg	[7:0]spi_bit_shift;
//	
//	// Register Bus
//	reg [7:0]state;
//	
//	// SPI
//	assign spi_data = spi_direction ? miso : 1'bz;
//	assign mosi = spi_data;
//	
//	// Register Bus
//	assign reg_clk = sck;
//	
//	always @(posedge sck) begin
//		mosi_temp <= mosi;
//	end
//	
//	always @(negedge sck or negedge rst_n) begin
//		if (!rst_n) begin
//			miso <= 0;
//			spi_temp_data <= 0;
//			spi_direction <= 0;
//			spi_bit_shift <= 0;
//			state <= IDLE;
//			req <= 0;
//			rw <= 0;
//			adr <= 0;
//			wdata <= 0;
//		end
//		else begin
//			if (spi_direction) begin
//				// slave write
//				miso <= spi_temp_data[7-spi_bit_shift];
//			end
//			else begin
//				spi_temp_data[7-spi_bit_shift] <= mosi_temp;
//			end
//			spi_bit_shift <= spi_bit_shift + 1;
//			if (spi_bit_shift > 6) begin
//				spi_bit_shift <= 0;
//				case(state)
//					IDLE: begin
//						req <= 0;
//						adr <= spi_temp_data[7:1];
//						rw <= spi_temp_data[0];
//						spi_direction <= 0;
//						if (spi_temp_data[0]) begin
//							// write register
//							state <= WR_DATA;
//						end
//						else begin
//							// read register
//							req <= 1;
//							spi_direction <= 1;
//							spi_temp_data <= 0;
//							state <= WAIT_ACK;
//						end
//					end
//					WR_DATA: begin
//						wdata <= spi_temp_data;
//						spi_direction <= 1;
//						spi_temp_data <= 0;
//						req <= 1;
//						state <= WAIT_ACK;
//					end
//					WAIT_ACK: begin
//						if (ack) begin
//							spi_direction <= 1;
//							spi_temp_data <= 8'b10101010;
//							state <= rw ? IDLE : SEND_RESULT;
//						end
//					end
//					SEND_RESULT: begin
//						spi_direction <= 1;
//						spi_temp_data <= rdata;
//						state <= IDLE;
//					end
//				endcase
//			end
//		end
//	end

endmodule