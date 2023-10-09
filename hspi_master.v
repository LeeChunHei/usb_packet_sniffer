module hspi_master
(
	input rst_n,
	
	// APP
	output		clk,
	input			req,	// xfer request
	input			[11:0]xfer_len,
	input			[25:0]usdf,
	output reg	ack,	// if ack == 1 then can start burst payload data
	input			[7:0]payload_data,
	
	// Register bus
	input			reg_clk,
	input			reg_req,
	input			reg_rw,	// 0: read req, 1: write req
	output reg	reg_ack,
	input			[6:0]reg_adr,
	inout			[7:0]reg_rdata,
	input			[7:0]reg_wdata,
	
	// IO
	input			htclk,
	output reg	htreq,
	input			htrdy,
	output reg	htvld,
	output reg	[7:0]hd
);

	reg reg_rdata_en;
	reg [7:0]reg_rdata_value;

	reg [7:0]reg_cnt;
	
	reg [7:0]state;

	reg [31:0]delay_cnt;
	
	reg [3:0]tx_seq_num;
	wire [31:0]header;
	reg [11:0]xfer_rem;
	
	reg [7:0]crc_in;
	wire [15:0]crc16/*synthesis keep*/;
	reg crc_en;
	reg crc_rst;
	
	crc16_8b crc(
		.data_in({crc_in[0],crc_in[1],crc_in[2],crc_in[3],crc_in[4],crc_in[5],crc_in[6],crc_in[7]}),
		.crc_en(crc_en),
		.crc_out(crc16),
		.rst(crc_rst),
		.clk(htclk)
	);
	
	localparam REG_BASE_ADDR = 0;
	// Read reg addr
	localparam REG_REG_CNT_ADDR = 1;
	// Write reg addr

	localparam IDLE = 0;
	localparam SEND_HEADER_0 = 1;
	localparam SEND_HEADER_1 = 2;
	localparam SEND_HEADER_2 = 3;
	localparam SEND_HEADER_3 = 4;
	localparam SEND_PAYLOAD  = 5;
	localparam SEND_CRC_0	 = 6;
	localparam SEND_CRC_1	 = 7;
	
	assign clk = htclk;
	
	assign reg_rdata = reg_rdata_en ? reg_rdata_value : 8'hZZ;
	
	assign header = {xfer_len[1:0],tx_seq_num,usdf};
	
	always @(*) begin
		case(state)
			SEND_HEADER_0: begin
				crc_in = header[7:0];
			end
			SEND_HEADER_1: begin
				crc_in = header[15:8];
			end
			SEND_HEADER_2: begin
				crc_in = header[23:16];
			end
			SEND_HEADER_3: begin
				crc_in = header[31:24];
			end
			SEND_PAYLOAD: begin
				crc_in = payload_data;
			end
			default: begin
				crc_in = 0;
			end
		endcase
	end
	
	always @(negedge reg_clk or negedge rst_n) begin
		if (!rst_n) begin
			reg_ack <= 0;
			reg_rdata_en <= 0;
			reg_rdata_value <= 0;
			reg_cnt <= 0;
		end
		else begin
			if (reg_req) begin
				if (reg_adr[6:5] == REG_BASE_ADDR) begin
					reg_ack <= 1;
					if (reg_rw) begin
						case(reg_adr[4:0])
							0: begin
								//write reg
							end
						endcase
					end
					else begin
						case(reg_adr[4:0])
							0: begin
								//read reg
								reg_rdata_en <= 1;
								reg_rdata_value <= 23;
							end
							REG_REG_CNT_ADDR: begin
								reg_rdata_en <= 1;
								reg_rdata_value <= 12;
							end
						endcase
					end
				end
			end
			else begin
				reg_ack <= 0;
				reg_rdata_en <= 0;
			end
		end
	end

	/*
	 * Only half duplex implemented
	 */
	always @(posedge htclk or negedge rst_n) begin
		if (!rst_n) begin
		end
		else begin
			case(state)
				IDLE: begin
					htreq <= 0;
					htvld <= 0;
					crc_en <= 0;
					crc_rst <= 1;
					if (delay_cnt < 1200000) begin
						delay_cnt <= delay_cnt + 1;
					end
					else if (req) begin
						htreq <= 1;
						crc_rst <= 0;
						if (htrdy) begin
							delay_cnt <= 0;
							crc_en <= 1;
							state <= SEND_HEADER_0;
						end
					end
				end
				SEND_HEADER_0: begin
					htvld <= 1;
					hd <= header[7:0];
					state <= SEND_HEADER_1;
				end
				SEND_HEADER_1: begin
					hd <= header[15:8];
					state <= SEND_HEADER_2;
				end
				SEND_HEADER_2: begin
					hd <= header[23:16];
					state <= SEND_HEADER_3;
				end
				SEND_HEADER_3: begin
					hd <= header[31:24];
					xfer_rem <= xfer_len;
					ack <= 1;
					state <= SEND_PAYLOAD;
				end
				SEND_PAYLOAD: begin
					hd <= payload_data;
					xfer_rem <= xfer_rem - 1;
					if (xfer_rem == 1) begin
						crc_en <= 0;
						ack <= 0;
						state <= SEND_CRC_0;
					end
				end
				SEND_CRC_0: begin
					hd <= {~crc16[8], ~crc16[9], ~crc16[10], ~crc16[11], ~crc16[12], ~crc16[13], ~crc16[14], ~crc16[15]};
					state <= SEND_CRC_1;
				end
				SEND_CRC_1: begin
					hd <= {~crc16[0], ~crc16[1], ~crc16[2], ~crc16[3], ~crc16[4], ~crc16[5], ~crc16[6], ~crc16[7]};
					tx_seq_num <= tx_seq_num + 1;
					state <= IDLE;
				end
			endcase
		end
	end

endmodule

module crc16_8b(				//crc[15:0]=1+x^2+x^15+x^16;
  input [7:0] data_in,
  input crc_en,
  output [15:0] crc_out,
  input rst,
  input clk);

  reg [15:0] lfsr_q,lfsr_c;

  assign crc_out = lfsr_q;

  always @(*) begin
    lfsr_c[0] = lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];
    lfsr_c[1] = lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];
    lfsr_c[2] = lfsr_q[8] ^ lfsr_q[9] ^ data_in[0] ^ data_in[1];
    lfsr_c[3] = lfsr_q[9] ^ lfsr_q[10] ^ data_in[1] ^ data_in[2];
    lfsr_c[4] = lfsr_q[10] ^ lfsr_q[11] ^ data_in[2] ^ data_in[3];
    lfsr_c[5] = lfsr_q[11] ^ lfsr_q[12] ^ data_in[3] ^ data_in[4];
    lfsr_c[6] = lfsr_q[12] ^ lfsr_q[13] ^ data_in[4] ^ data_in[5];
    lfsr_c[7] = lfsr_q[13] ^ lfsr_q[14] ^ data_in[5] ^ data_in[6];
    lfsr_c[8] = lfsr_q[0] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[6] ^ data_in[7];
    lfsr_c[9] = lfsr_q[1] ^ lfsr_q[15] ^ data_in[7];
    lfsr_c[10] = lfsr_q[2];
    lfsr_c[11] = lfsr_q[3];
    lfsr_c[12] = lfsr_q[4];
    lfsr_c[13] = lfsr_q[5];
    lfsr_c[14] = lfsr_q[6];
    lfsr_c[15] = lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];

  end // always

  always @(posedge clk, posedge rst) begin
    if(rst) begin
      lfsr_q <= {16{1'b1}};
    end
    else begin
      lfsr_q <= crc_en ? lfsr_c : lfsr_q;
    end
  end // always
endmodule // crc