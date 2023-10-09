//module spi_slave
//(
//	// IO
//	input			sck,
//	inout			data,	// As only half duplex
//	
//	// APP interface, source to sink
//	input			rst_n,
//	output		req,
//	input			rw,
//	input			ack,
//	output reg	[7:0]rdata,
//	input			[7:0]wdata,
//);
//
//	reg	miso;
//	wire	mosi;
//	reg	[7:0]xfer_cnt;		// bit xfer cnt
//	reg	direction;			// 0 for rd, 1 for wr
//	reg	[7:0]rd_temp;
//	reg	[7:0]wr_temp;
//	
//	assign data = direction ? miso : 1'bz;
//	assign mosi = data;
//	
//	always @(posedge sck or negedge rst_n) begin
//		if (!rst_n) begin
//		end
//		else begin
//			if (direction == 0) begin
//				rd_temp[7-xfer_cnt] <= mosi;
//			end
//			else begin
//				miso <= wr_temp[7-xfer_cnt];
//			end
//			xfer_cnt <= xfer_cnt + 1;
//			if (xfer_cnt > 6) begin
//				xfer_cnt <= 0;
//			end
//			else if (xfer_cnt == 0 && direction) begin
//				wr_ack <= 1;
//			end
//			else begin
//				wr_ack <= 0;
//			end
//		end
//	end
//	
//	always @(negedge sck) begin
//		if (xfer_cnt == 0) begin
//			
//			if (wr_rdy) begin
//				direction <= 1;
//				wr_temp <= wr_in;
//			end
//			else begin
//				direction <= 0;
//			end
//		end
//	end
//	
//endmodule