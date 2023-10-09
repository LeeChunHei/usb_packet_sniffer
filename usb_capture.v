module usb_capture(
	input		ULPI_CLK,
	inout		[7:0]ULPI_D,
	input		ULPI_DIR,
	input		ULPI_NXT,
	output	ULPI_STP,
	output	ULPI_RST,

	input		HSPI_CLK,
	output	HSPI_HTREQ,
	input		HSPI_HTRDY,
	output	HSPI_HTVLD,
	output	[7:0]HSPI_D,

	input		SPI_SCK,
	inout		SPI_MISO
);

//	reg [7:0]counter;
//	reg [7:0]raddr/*synthesis noprune*/;
//	reg [7:0]waddr/*synthesis noprune*/;
//	reg [7:0]wdata/*synthesis noprune*/;
//	reg [7:0]rdata_out/*synthesis noprune*/;
//	wire [7:0]rdata;
//	
//	assign HSPI_D = counter;
//	
//	dual_ram ram(
//		.Clk0(SPI_SCK),
//		.Clk1(HSPI_CLK),
//		.ClkEn0(1),
//		.ClkEn1(1),
//		.AsyncReset0(0),
//		.AsyncReset1(0),
//		.WeRenA(1),
//		.ReB(1),
//		.DataInA(wdata),
//		.AddressA(waddr),
//		.AddressB(raddr),
//		.DataOutB(rdata)
//	);
//	
//	always @(posedge SPI_SCK) begin
//		wdata <= wdata + 1;
//		if (wdata > 250) begin
//			wdata <= 0;
//		end
//		waddr <= waddr + 10;
//		if (waddr > 250) begin
//			waddr <= 0;
//		end
//	end
//	
//	always @(posedge HSPI_CLK) begin
////		raddr <= raddr + 1;
//		if (raddr > 250) begin
//			raddr <= 0;
//		end
//		rdata_out <= rdata;
//	end
///*synthesis keep*/

	reg rst;
	wire rst_n;
	reg ht_rdy_last_state;
	reg [7:0]rst_cnt;

	wire reg_clk;
	wire reg_req;
	wire reg_rw;
	wire reg_ack;
	wire reg_ack_hspi;
	wire [6:0]reg_addr;
	wire [7:0]reg_rdata;
	wire [7:0]reg_wdata;
	
	assign rst_n = !rst;
	assign reg_ack = reg_ack_hspi | 0;
	
	always @(posedge HSPI_CLK) begin
		rst <= 0;
		if (HSPI_HTRDY != ht_rdy_last_state) begin
			rst_cnt <= rst_cnt + 1;
			if (rst_cnt > 20) begin
				rst_cnt <= 0;
			end
		end
		else begin
			rst_cnt <= 0;
		end
		ht_rdy_last_state <= HSPI_HTRDY;
		if (rst_cnt > 20) begin
			rst <= 0;
		end
		else if (rst_cnt > 10) begin
			rst <= 1;
		end
	end
	
	dual_ram ram(
		.Clk0(reg_clk),
		.Clk1(reg_clk),
		.ClkEn0(1),
		.ClkEn1(1),
		.AsyncReset0(0),
		.AsyncReset1(0),
		.WeRenA(1),
		.ReB(1),
		.DataInA(wdata),
		.AddressA(addr),
		.AddressB(addr),
		.DataOutB(rdata)
	);
	
	spi_register_bus reg_bus(
		// Register Bus
		.rst_n(rst_n),
		.reg_clk(reg_clk),
		.req(reg_req),
		.rw(reg_rw),
		.ack(reg_ack),
		.adr(reg_addr),
		.rdata(reg_rdata),
		.wdata(reg_wdata),
	
		// IO
		.sck(SPI_SCK),
		.spi_data(SPI_MISO)
	);
	
	reg [7:0]hspi_req_cnt;
	wire hspi_fake_ack;
	reg [7:0]hspi_fake_cnt/*synthesis noprune*/;
	always @(posedge HSPI_CLK) begin
		if (hspi_fake_ack) begin
			hspi_fake_cnt <= hspi_fake_cnt + 1;
		end
	end
	
	always @(posedge hspi_fake_ack) begin
		hspi_req_cnt <= hspi_req_cnt + 1;
	end
	
	hspi_master hspi(
		.rst_n(rst_n),
		
		// APP
		.clk(),
		.req(hspi_req_cnt < 2),
		.xfer_len(512),
		.usdf(0),
		.ack(hspi_fake_ack),
		.payload_data(hspi_fake_cnt),
		
		// Register Bus
		.reg_clk(reg_clk),
		.reg_req(reg_req),
		.reg_rw(reg_rw),
		.reg_ack(reg_ack_hspi),
		.reg_adr(reg_addr),
		.reg_rdata(reg_rdata),
		.reg_wdata(reg_wdata),
		
		// IO
		.htclk(HSPI_CLK),
		.htreq(HSPI_HTREQ),
		.htrdy(HSPI_HTRDY),
		.htvld(HSPI_HTVLD),
		.hd(HSPI_D)
	);
	
endmodule