`timescale 1 ps/ 1 ps

module usb_capture(
	ULPI_CLK,
	ULPI_D,
	ULPI_DIR,
	ULPI_NXT,
	ULPI_STP,
	ULPI_RST,
	HSPI_CLK,
	HSPI_HTREQ,
	HSPI_HTRDY,
	HSPI_HTVLD,
	HSPI_D,
	SPI_SCK,
	SPI_MISO);
input	ULPI_CLK;
inout	[7:0] ULPI_D;
input	ULPI_DIR;
input	ULPI_NXT;
output	ULPI_STP;
output	ULPI_RST;
input	HSPI_CLK;
output	HSPI_HTREQ;
input	HSPI_HTRDY;
output	HSPI_HTVLD;
output	[7:0] HSPI_D;
input	SPI_SCK;
inout	SPI_MISO;

//wire	gnd;
//wire	vcc;
wire	\Add1~0_combout ;
wire	\Add1~1 ;
wire	\Add1~10_combout ;
wire	\Add1~11 ;
wire	\Add1~12_combout ;
wire	\Add1~2_combout ;
wire	\Add1~3 ;
wire	\Add1~4_combout ;
wire	\Add1~5 ;
wire	\Add1~6_combout ;
wire	\Add1~7 ;
wire	\Add1~8_combout ;
wire	\Add1~9 ;
wire	AsyncReset_X1_Y4_GND;
wire	AsyncReset_X1_Y5_GND;
wire	AsyncReset_X2_Y4_GND;
wire	AsyncReset_X2_Y5_GND;
wire	AsyncReset_X3_Y4_GND;
wire	AsyncReset_X3_Y5_GND;
wire	AsyncReset_X5_Y4_GND;
wire	AsyncReset_X5_Y5_GND;
wire	AsyncReset_X6_Y5_GND;
wire	AsyncReset_X7_Y4_GND;
wire	AsyncReset_X7_Y5_GND;
wire	AsyncReset_X8_Y3_GND;
wire	\HSPI_CLK~input_o ;
wire	\HSPI_CLK~inputclkctrl_outclk ;
wire	\HSPI_CLK~inputclkctrl_outclk_X1_Y4_SIG_VCC ;
wire	\HSPI_CLK~inputclkctrl_outclk_X3_Y4_SIG_VCC ;
wire	\HSPI_CLK~inputclkctrl_outclk_X3_Y5_SIG_VCC ;
wire	\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ;
wire	\HSPI_CLK~inputclkctrl_outclk_X7_Y5_SIG_VCC ;
wire	\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X6_Y4_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X5_Y5_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X6_Y5_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X1_Y4_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X2_Y5_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X3_Y4_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|htreq~1_combout_X5_Y4_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__hspi|htreq~1_combout_X5_Y5_SIG_SIG ;
wire	\HSPI_CLK~inputclkctrl_outclk__rst~q_X1_Y5_SIG_INV ;
wire	\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ;
wire	\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ;
wire	\HSPI_HTRDY~input_o ;
wire	\LessThan0~0_combout ;
wire	\SPI_MISO~input_o ;
wire	\SPI_SCK~input_o ;
wire	\SPI_SCK~inputclkctrl_outclk ;
wire	\SPI_SCK~inputclkctrl_outclk_X10_Y3_INV_VCC ;
wire	\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ;
wire	\SPI_SCK~inputclkctrl_outclk_X6_Y3_INV_VCC ;
wire	\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ;
wire	\SPI_SCK~inputclkctrl_outclk__hspi|reg_rdata_value[0]~0_combout_X8_Y3_INV_SIG ;
wire	\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ;
wire	\SPI_SCK~inputclkctrl_outclk__reg_bus|out_fifo[0]~1_combout_X10_Y3_SIG_SIG ;
wire	\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ;
wire	\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X9_Y3_SIG_SIG ;
wire	SyncLoad_X3_Y5_VCC;
wire	SyncLoad_X5_Y3_GND;
wire	SyncLoad_X5_Y4_VCC;
wire	SyncLoad_X6_Y5_VCC;
wire	SyncLoad_X7_Y3_VCC;
wire	SyncLoad_X7_Y5_VCC;
wire	SyncLoad_X8_Y3_GND;
wire	SyncLoad_X9_Y3_VCC;
wire	SyncReset_X1_Y5_GND;
wire	SyncReset_X2_Y5_GND;
wire	SyncReset_X3_Y5_GND;
wire	SyncReset_X5_Y4_GND;
wire	SyncReset_X6_Y5_GND;
wire	SyncReset_X7_Y3_GND;
wire	SyncReset_X7_Y5_GND;
wire	SyncReset_X9_Y3_GND;
wire	\ULPI_CLK~input_o ;
wire	\ULPI_DIR~input_o ;
wire	\ULPI_D[0]~input_o ;
wire	\ULPI_D[1]~input_o ;
wire	\ULPI_D[2]~input_o ;
wire	\ULPI_D[3]~input_o ;
wire	\ULPI_D[4]~input_o ;
wire	\ULPI_D[5]~input_o ;
wire	\ULPI_D[6]~input_o ;
wire	\ULPI_D[7]~input_o ;
wire	\ULPI_NXT~input_o ;
wire	\always0~0_combout ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	[7:0] hspi_fake_cnt;
//wire	hspi_fake_cnt[0];
wire	\hspi_fake_cnt[0]~0_combout ;
//wire	hspi_fake_cnt[1];
//wire	hspi_fake_cnt[2];
//wire	hspi_fake_cnt[3];
//wire	hspi_fake_cnt[4];
//wire	hspi_fake_cnt[5];
//wire	hspi_fake_cnt[6];
//wire	hspi_fake_cnt[7];
wire	[7:0] hspi_req_cnt;
//wire	hspi_req_cnt[0];
wire	\hspi_req_cnt[0]~21_combout ;
//wire	hspi_req_cnt[1];
wire	\hspi_req_cnt[1]~7_combout ;
wire	\hspi_req_cnt[1]~8 ;
//wire	hspi_req_cnt[2];
wire	\hspi_req_cnt[2]~10 ;
wire	\hspi_req_cnt[2]~9_combout ;
//wire	hspi_req_cnt[3];
wire	\hspi_req_cnt[3]~11_combout ;
wire	\hspi_req_cnt[3]~12 ;
//wire	hspi_req_cnt[4];
wire	\hspi_req_cnt[4]~13_combout ;
wire	\hspi_req_cnt[4]~14 ;
//wire	hspi_req_cnt[5];
wire	\hspi_req_cnt[5]~15_combout ;
wire	\hspi_req_cnt[5]~16 ;
//wire	hspi_req_cnt[6];
wire	\hspi_req_cnt[6]~17_combout ;
wire	\hspi_req_cnt[6]~18 ;
//wire	hspi_req_cnt[7];
wire	\hspi_req_cnt[7]~19_combout ;
wire	\hspi|Add0~0_combout ;
wire	\hspi|Add0~1 ;
wire	\hspi|Add0~10_combout ;
wire	\hspi|Add0~11 ;
wire	\hspi|Add0~12_combout ;
wire	\hspi|Add0~13 ;
wire	\hspi|Add0~14_combout ;
wire	\hspi|Add0~15 ;
wire	\hspi|Add0~16_combout ;
wire	\hspi|Add0~17 ;
wire	\hspi|Add0~18_combout ;
wire	\hspi|Add0~19 ;
wire	\hspi|Add0~20_combout ;
wire	\hspi|Add0~21 ;
wire	\hspi|Add0~22_combout ;
wire	\hspi|Add0~23 ;
wire	\hspi|Add0~24_combout ;
wire	\hspi|Add0~25 ;
wire	\hspi|Add0~26_combout ;
wire	\hspi|Add0~27 ;
wire	\hspi|Add0~28_combout ;
wire	\hspi|Add0~29 ;
wire	\hspi|Add0~2_combout ;
wire	\hspi|Add0~3 ;
wire	\hspi|Add0~30_combout ;
wire	\hspi|Add0~31 ;
wire	\hspi|Add0~32_combout ;
wire	\hspi|Add0~33 ;
wire	\hspi|Add0~34_combout ;
wire	\hspi|Add0~35 ;
wire	\hspi|Add0~36_combout ;
wire	\hspi|Add0~37 ;
wire	\hspi|Add0~38_combout ;
wire	\hspi|Add0~39 ;
wire	\hspi|Add0~40_combout ;
wire	\hspi|Add0~41_combout ;
wire	\hspi|Add0~42_combout ;
wire	\hspi|Add0~43_combout ;
wire	\hspi|Add0~44_combout ;
wire	\hspi|Add0~45_combout ;
wire	\hspi|Add0~46_combout ;
wire	\hspi|Add0~47_combout ;
wire	\hspi|Add0~48_combout ;
wire	\hspi|Add0~49_combout ;
wire	\hspi|Add0~4_combout ;
wire	\hspi|Add0~5 ;
wire	\hspi|Add0~50_combout ;
wire	\hspi|Add0~51_combout ;
wire	\hspi|Add0~52_combout ;
wire	\hspi|Add0~53 ;
wire	\hspi|Add0~54_combout ;
wire	\hspi|Add0~55_combout ;
wire	\hspi|Add0~56 ;
wire	\hspi|Add0~57_combout ;
wire	\hspi|Add0~58 ;
wire	\hspi|Add0~59_combout ;
wire	\hspi|Add0~60 ;
wire	\hspi|Add0~61_combout ;
wire	\hspi|Add0~62 ;
wire	\hspi|Add0~63_combout ;
wire	\hspi|Add0~64 ;
wire	\hspi|Add0~65_combout ;
wire	\hspi|Add0~66 ;
wire	\hspi|Add0~67_combout ;
wire	\hspi|Add0~68 ;
wire	\hspi|Add0~69_combout ;
wire	\hspi|Add0~6_combout ;
wire	\hspi|Add0~7 ;
wire	\hspi|Add0~70 ;
wire	\hspi|Add0~71_combout ;
wire	\hspi|Add0~72 ;
wire	\hspi|Add0~73_combout ;
wire	\hspi|Add0~74 ;
wire	\hspi|Add0~75_combout ;
wire	\hspi|Add0~77_combout ;
wire	\hspi|Add0~78_combout ;
wire	\hspi|Add0~79_combout ;
wire	\hspi|Add0~80_combout ;
wire	\hspi|Add0~81_combout ;
wire	\hspi|Add0~82_combout ;
wire	\hspi|Add0~83_combout ;
wire	\hspi|Add0~8_combout ;
wire	\hspi|Add0~9 ;
wire	\hspi|Add1~0_combout ;
wire	\hspi|Add1~1 ;
wire	\hspi|Add1~10_combout ;
wire	\hspi|Add1~11 ;
wire	\hspi|Add1~12_combout ;
wire	\hspi|Add1~13 ;
wire	\hspi|Add1~14_combout ;
wire	\hspi|Add1~15 ;
wire	\hspi|Add1~16_combout ;
wire	\hspi|Add1~17 ;
wire	\hspi|Add1~18_combout ;
wire	\hspi|Add1~19 ;
wire	\hspi|Add1~20_combout ;
wire	\hspi|Add1~21 ;
wire	\hspi|Add1~22_combout ;
wire	\hspi|Add1~2_combout ;
wire	\hspi|Add1~3 ;
wire	\hspi|Add1~4_combout ;
wire	\hspi|Add1~5 ;
wire	\hspi|Add1~6_combout ;
wire	\hspi|Add1~7 ;
wire	\hspi|Add1~8_combout ;
wire	\hspi|Add1~9 ;
wire	\hspi|Equal1~0_combout ;
wire	\hspi|Equal3~0_combout ;
wire	\hspi|Equal3~1_combout ;
wire	\hspi|Equal3~2_combout ;
wire	\hspi|Equal3~3_combout ;
wire	\hspi|LessThan0~0_combout ;
wire	\hspi|LessThan0~1_combout ;
wire	\hspi|LessThan0~2_combout ;
wire	\hspi|LessThan0~3_combout ;
wire	\hspi|LessThan0~4_combout ;
wire	\hspi|LessThan0~5_combout ;
wire	\hspi|LessThan0~6_combout ;
wire	\hspi|LessThan0~7_combout ;
wire	\hspi|LessThan0~8_combout ;
wire	\hspi|LessThan0~9_combout ;
wire	\hspi|Selector11~0_combout ;
wire	\hspi|Selector12~0_combout ;
wire	\hspi|Selector13~0_combout ;
wire	\hspi|Selector13~1_combout ;
wire	\hspi|Selector14~0_combout ;
wire	\hspi|Selector15~0_combout ;
wire	\hspi|Selector19~0_combout ;
wire	\hspi|Selector1~0_combout ;
wire	\hspi|Selector20~0_combout ;
wire	\hspi|Selector22~0_combout ;
wire	\hspi|Selector22~1_combout ;
wire	\hspi|Selector23~0_combout ;
wire	\hspi|Selector23~1_combout ;
wire	\hspi|Selector24~0_combout ;
wire	\hspi|Selector24~1_combout ;
wire	\hspi|Selector24~2_combout ;
wire	\hspi|Selector25~0_combout ;
wire	\hspi|Selector25~1_combout ;
wire	\hspi|Selector25~2_combout ;
wire	\hspi|Selector26~0_combout ;
wire	\hspi|Selector26~1_combout ;
wire	\hspi|Selector26~2_combout ;
wire	\hspi|Selector27~0_combout ;
wire	\hspi|Selector27~1_combout ;
wire	\hspi|Selector27~2_combout ;
wire	\hspi|Selector28~0_combout ;
wire	\hspi|Selector28~1_combout ;
wire	\hspi|Selector29~0_combout ;
wire	\hspi|Selector29~1_combout ;
wire	\hspi|Selector29~2_combout ;
wire	\hspi|Selector2~0_combout ;
wire	\hspi|Selector30~0_combout ;
wire	\hspi|Selector31~0_combout ;
wire	\hspi|Selector32~0_combout ;
wire	\hspi|Selector33~0_combout ;
wire	\hspi|Selector34~0_combout ;
wire	\hspi|Selector35~0_combout ;
wire	\hspi|Selector36~0_combout ;
wire	\hspi|Selector37~0_combout ;
wire	\hspi|Selector38~0_combout ;
wire	\hspi|Selector39~0_combout ;
wire	\hspi|Selector3~0_combout ;
wire	\hspi|Selector40~0_combout ;
wire	\hspi|Selector41~0_combout ;
wire	\hspi|Selector42~0_combout ;
wire	\hspi|Selector4~0_combout ;
wire	\hspi|Selector5~0_combout ;
wire	\hspi|Selector9~0_combout ;
wire	\hspi|ack~clkctrl_outclk ;
wire	\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ;
wire	\hspi|ack~q ;
wire	[15:0] \hspi|crc16 ;
//wire	\hspi|crc16 [0];
//wire	\hspi|crc16 [10];
//wire	\hspi|crc16 [11];
//wire	\hspi|crc16 [12];
//wire	\hspi|crc16 [13];
//wire	\hspi|crc16 [14];
//wire	\hspi|crc16 [15];
//wire	\hspi|crc16 [1];
//wire	\hspi|crc16 [2];
//wire	\hspi|crc16 [3];
//wire	\hspi|crc16 [4];
//wire	\hspi|crc16 [5];
//wire	\hspi|crc16 [6];
//wire	\hspi|crc16 [7];
//wire	\hspi|crc16 [8];
//wire	\hspi|crc16 [9];
wire	\hspi|crc_en~q ;
wire	\hspi|crc_rst~q ;
wire	\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ;
wire	\hspi|crc_rst~q__AsyncReset_X6_Y4_SIG ;
wire	[15:0] \hspi|crc|lfsr_c ;
//wire	\hspi|crc|lfsr_c [0];
wire	\hspi|crc|lfsr_c[0]~10_combout ;
wire	\hspi|crc|lfsr_c[0]~5_combout ;
wire	\hspi|crc|lfsr_c[0]~6_combout ;
//wire	\hspi|crc|lfsr_c [10];
//wire	\hspi|crc|lfsr_c [11];
//wire	\hspi|crc|lfsr_c [12];
//wire	\hspi|crc|lfsr_c [13];
//wire	\hspi|crc|lfsr_c [14];
//wire	\hspi|crc|lfsr_c [15];
//wire	\hspi|crc|lfsr_c [1];
//wire	\hspi|crc|lfsr_c [2];
wire	\hspi|crc|lfsr_c[2]~11_combout ;
wire	\hspi|crc|lfsr_c[2]~7_combout ;
//wire	\hspi|crc|lfsr_c [3];
wire	\hspi|crc|lfsr_c[3]~9_combout ;
//wire	\hspi|crc|lfsr_c [4];
wire	\hspi|crc|lfsr_c[4]~8_combout ;
//wire	\hspi|crc|lfsr_c [5];
wire	\hspi|crc|lfsr_c[5]~2_combout ;
//wire	\hspi|crc|lfsr_c [6];
//wire	\hspi|crc|lfsr_c [7];
wire	\hspi|crc|lfsr_c[7]~3_combout ;
//wire	\hspi|crc|lfsr_c [8];
//wire	\hspi|crc|lfsr_c [9];
wire	\hspi|crc|lfsr_c[9]~4_combout ;
wire	[15:0] \hspi|crc|lfsr_q ;
//wire	\hspi|crc|lfsr_q [0];
//wire	\hspi|crc|lfsr_q [10];
//wire	\hspi|crc|lfsr_q [11];
//wire	\hspi|crc|lfsr_q [12];
wire	\hspi|crc|lfsr_q[12]~feeder_combout ;
//wire	\hspi|crc|lfsr_q [13];
//wire	\hspi|crc|lfsr_q [14];
//wire	\hspi|crc|lfsr_q [15];
//wire	\hspi|crc|lfsr_q [1];
//wire	\hspi|crc|lfsr_q [2];
//wire	\hspi|crc|lfsr_q [3];
//wire	\hspi|crc|lfsr_q [4];
//wire	\hspi|crc|lfsr_q [5];
//wire	\hspi|crc|lfsr_q [6];
//wire	\hspi|crc|lfsr_q [7];
//wire	\hspi|crc|lfsr_q [8];
//wire	\hspi|crc|lfsr_q [9];
wire	[31:0] \hspi|delay_cnt ;
//wire	\hspi|delay_cnt [0];
//wire	\hspi|delay_cnt [10];
//wire	\hspi|delay_cnt [11];
//wire	\hspi|delay_cnt [12];
//wire	\hspi|delay_cnt [13];
//wire	\hspi|delay_cnt [14];
//wire	\hspi|delay_cnt [15];
//wire	\hspi|delay_cnt [16];
//wire	\hspi|delay_cnt [17];
//wire	\hspi|delay_cnt [18];
//wire	\hspi|delay_cnt [19];
//wire	\hspi|delay_cnt [1];
//wire	\hspi|delay_cnt [20];
wire	\hspi|delay_cnt[20]~4_combout ;
//wire	\hspi|delay_cnt [21];
wire	\hspi|delay_cnt[21]~15_combout ;
//wire	\hspi|delay_cnt [22];
wire	\hspi|delay_cnt[22]~14_combout ;
//wire	\hspi|delay_cnt [23];
wire	\hspi|delay_cnt[23]~13_combout ;
//wire	\hspi|delay_cnt [24];
wire	\hspi|delay_cnt[24]~12_combout ;
//wire	\hspi|delay_cnt [25];
wire	\hspi|delay_cnt[25]~11_combout ;
//wire	\hspi|delay_cnt [26];
wire	\hspi|delay_cnt[26]~10_combout ;
//wire	\hspi|delay_cnt [27];
wire	\hspi|delay_cnt[27]~9_combout ;
//wire	\hspi|delay_cnt [28];
wire	\hspi|delay_cnt[28]~8_combout ;
//wire	\hspi|delay_cnt [29];
wire	\hspi|delay_cnt[29]~7_combout ;
//wire	\hspi|delay_cnt [2];
//wire	\hspi|delay_cnt [30];
wire	\hspi|delay_cnt[30]~6_combout ;
//wire	\hspi|delay_cnt [31];
wire	\hspi|delay_cnt[31]~2_combout ;
wire	\hspi|delay_cnt[31]~3_combout ;
wire	\hspi|delay_cnt[31]~5_combout ;
//wire	\hspi|delay_cnt [3];
//wire	\hspi|delay_cnt [4];
//wire	\hspi|delay_cnt [5];
//wire	\hspi|delay_cnt [6];
//wire	\hspi|delay_cnt [7];
//wire	\hspi|delay_cnt [8];
//wire	\hspi|delay_cnt [9];
wire	\hspi|delay_cnt~0_combout ;
wire	\hspi|delay_cnt~16_combout ;
wire	\hspi|delay_cnt~17_combout ;
wire	\hspi|delay_cnt~18_combout ;
wire	\hspi|delay_cnt~1_combout ;
wire	[7:0] \hspi|hd ;
//wire	\hspi|hd [0];
wire	\hspi|hd[0]~0_combout ;
//wire	\hspi|hd [1];
//wire	\hspi|hd [2];
//wire	\hspi|hd [3];
//wire	\hspi|hd [4];
//wire	\hspi|hd [5];
wire	\hspi|hd[5]~1_combout ;
wire	\hspi|hd[5]~2_combout ;
//wire	\hspi|hd [6];
//wire	\hspi|hd [7];
wire	\hspi|htreq~0_combout ;
wire	\hspi|htreq~1_combout ;
wire	\hspi|htreq~2_combout ;
wire	\hspi|htreq~q ;
wire	\hspi|htvld~q ;
wire	\hspi|reg_ack~0_combout ;
wire	\hspi|reg_ack~feeder_combout ;
wire	\hspi|reg_ack~q ;
wire	[7:0] \hspi|reg_rdata_value ;
//wire	\hspi|reg_rdata_value [0];
wire	\hspi|reg_rdata_value[0]~0_combout ;
//wire	\hspi|reg_rdata_value [1];
//wire	\hspi|reg_rdata_value [2];
wire	\hspi|reg_rdata_value[2]~1_combout ;
//wire	\hspi|reg_rdata_value [3];
//wire	\hspi|reg_rdata_value [4];
//wire	\hspi|reg_rdata_value [5];
//wire	\hspi|reg_rdata_value [6];
//wire	\hspi|reg_rdata_value [7];
wire	\hspi|state.IDLE~q ;
wire	\hspi|state.SEND_CRC_0~q ;
wire	\hspi|state.SEND_CRC_1~q ;
wire	\hspi|state.SEND_HEADER_0~q ;
wire	\hspi|state.SEND_HEADER_1~q ;
wire	\hspi|state.SEND_HEADER_2~feeder_combout ;
wire	\hspi|state.SEND_HEADER_2~q ;
wire	\hspi|state.SEND_HEADER_3~feeder_combout ;
wire	\hspi|state.SEND_HEADER_3~q ;
wire	\hspi|state.SEND_PAYLOAD~q ;
wire	\hspi|state.SEND_PAYLOAD~q__SyncLoad_X1_Y5_SIG ;
wire	\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ;
wire	[3:0] \hspi|tx_seq_num ;
//wire	\hspi|tx_seq_num [0];
wire	\hspi|tx_seq_num[0]~0_combout ;
//wire	\hspi|tx_seq_num [1];
wire	\hspi|tx_seq_num[1]~1_combout ;
//wire	\hspi|tx_seq_num [2];
wire	\hspi|tx_seq_num[2]~2_combout ;
wire	\hspi|tx_seq_num[2]~3_combout ;
//wire	\hspi|tx_seq_num [3];
wire	\hspi|tx_seq_num[3]~4_combout ;
wire	[11:0] \hspi|xfer_rem ;
//wire	\hspi|xfer_rem [0];
//wire	\hspi|xfer_rem [10];
//wire	\hspi|xfer_rem [11];
//wire	\hspi|xfer_rem [1];
//wire	\hspi|xfer_rem [2];
//wire	\hspi|xfer_rem [3];
//wire	\hspi|xfer_rem [4];
//wire	\hspi|xfer_rem [5];
//wire	\hspi|xfer_rem [6];
//wire	\hspi|xfer_rem [7];
//wire	\hspi|xfer_rem [8];
//wire	\hspi|xfer_rem [9];
wire	\ht_rdy_last_state~q ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[0] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[10] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[11] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[12] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[13] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[14] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[15] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[16] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[17] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[1] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[2] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[3] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[4] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[5] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[6] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[7] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[8] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[9] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[0] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[10] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[11] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[12] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[13] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[14] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[15] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[16] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[17] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[1] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[2] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[3] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[4] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[5] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[6] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[7] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[8] ;
wire	\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[9] ;
wire	\reg_bus|Add0~0_combout ;
wire	\reg_bus|Add0~1 ;
wire	\reg_bus|Add0~2_combout ;
wire	\reg_bus|Add0~3 ;
wire	\reg_bus|Add0~4_combout ;
wire	\reg_bus|Add0~5 ;
wire	\reg_bus|Add0~6_combout ;
wire	\reg_bus|Add0~7 ;
wire	\reg_bus|Add0~8_combout ;
wire	\reg_bus|Decoder0~0_combout ;
wire	\reg_bus|Decoder0~1_combout ;
wire	\reg_bus|Decoder0~2_combout ;
wire	\reg_bus|Decoder0~3_combout ;
wire	\reg_bus|Decoder0~4_combout ;
wire	\reg_bus|Decoder0~5_combout ;
wire	\reg_bus|Decoder0~6_combout ;
wire	\reg_bus|Decoder0~7_combout ;
wire	\reg_bus|LessThan0~0_combout ;
wire	\reg_bus|LessThan0~1_combout ;
wire	\reg_bus|LessThan1~0_combout ;
wire	\reg_bus|LessThan1~1_combout ;
wire	\reg_bus|LessThan1~2_combout ;
wire	\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ;
wire	\reg_bus|Mux0~0_combout ;
wire	\reg_bus|Mux0~1_combout ;
wire	\reg_bus|Mux0~2_combout ;
wire	\reg_bus|Mux0~3_combout ;
wire	\reg_bus|Selector0~0_combout ;
wire	\reg_bus|Selector10~0_combout ;
wire	\reg_bus|Selector11~0_combout ;
wire	\reg_bus|Selector12~0_combout ;
wire	\reg_bus|Selector1~4_combout ;
wire	\reg_bus|Selector2~0_combout ;
wire	\reg_bus|Selector4~0_combout ;
wire	\reg_bus|Selector7~0_combout ;
wire	\reg_bus|Selector7~1_combout ;
wire	\reg_bus|Selector9~0_combout ;
wire	[6:0] \reg_bus|adr ;
//wire	\reg_bus|adr [0];
wire	\reg_bus|adr[0]~feeder_combout ;
//wire	\reg_bus|adr [1];
wire	\reg_bus|adr[1]~feeder_combout ;
//wire	\reg_bus|adr [2];
wire	\reg_bus|adr[2]~feeder_combout ;
//wire	\reg_bus|adr [3];
//wire	\reg_bus|adr [4];
wire	\reg_bus|adr[4]~feeder_combout ;
//wire	\reg_bus|adr [5];
wire	\reg_bus|adr[5]~feeder_combout ;
//wire	\reg_bus|adr [6];
wire	\reg_bus|adr[6]~feeder_combout ;
wire	[7:0] \reg_bus|bit_shift ;
//wire	\reg_bus|bit_shift [0];
wire	\reg_bus|bit_shift[0]~8_combout ;
wire	\reg_bus|bit_shift[0]~9 ;
//wire	\reg_bus|bit_shift [1];
wire	\reg_bus|bit_shift[1]~10_combout ;
wire	\reg_bus|bit_shift[1]~11 ;
//wire	\reg_bus|bit_shift [2];
wire	\reg_bus|bit_shift[2]~12_combout ;
wire	\reg_bus|bit_shift[2]~13 ;
//wire	\reg_bus|bit_shift [3];
wire	\reg_bus|bit_shift[3]~14_combout ;
wire	\reg_bus|bit_shift[3]~15 ;
//wire	\reg_bus|bit_shift [4];
wire	\reg_bus|bit_shift[4]~16_combout ;
wire	\reg_bus|bit_shift[4]~17 ;
//wire	\reg_bus|bit_shift [5];
wire	\reg_bus|bit_shift[5]~18_combout ;
wire	\reg_bus|bit_shift[5]~19 ;
//wire	\reg_bus|bit_shift [6];
wire	\reg_bus|bit_shift[6]~20_combout ;
wire	\reg_bus|bit_shift[6]~21 ;
//wire	\reg_bus|bit_shift [7];
wire	\reg_bus|bit_shift[7]~22_combout ;
wire	[7:0] \reg_bus|in_fifo ;
//wire	\reg_bus|in_fifo [0];
wire	\reg_bus|in_fifo[0]~0_combout ;
//wire	\reg_bus|in_fifo [1];
wire	\reg_bus|in_fifo[1]~7_combout ;
//wire	\reg_bus|in_fifo [2];
wire	\reg_bus|in_fifo[2]~6_combout ;
//wire	\reg_bus|in_fifo [3];
wire	\reg_bus|in_fifo[3]~5_combout ;
//wire	\reg_bus|in_fifo [4];
wire	\reg_bus|in_fifo[4]~4_combout ;
//wire	\reg_bus|in_fifo [5];
wire	\reg_bus|in_fifo[5]~3_combout ;
//wire	\reg_bus|in_fifo [6];
wire	\reg_bus|in_fifo[6]~2_combout ;
//wire	\reg_bus|in_fifo [7];
wire	\reg_bus|in_fifo[7]~1_combout ;
wire	\reg_bus|miso~q ;
wire	[7:0] \reg_bus|out_fifo ;
//wire	\reg_bus|out_fifo [0];
wire	\reg_bus|out_fifo[0]~0_combout ;
wire	\reg_bus|out_fifo[0]~1_combout ;
//wire	\reg_bus|out_fifo [1];
//wire	\reg_bus|out_fifo [2];
//wire	\reg_bus|out_fifo [3];
//wire	\reg_bus|out_fifo [4];
//wire	\reg_bus|out_fifo [5];
//wire	\reg_bus|out_fifo [6];
//wire	\reg_bus|out_fifo [7];
wire	\reg_bus|req~q ;
wire	\reg_bus|rw~0_combout ;
wire	\reg_bus|rw~feeder_combout ;
wire	\reg_bus|rw~q ;
wire	\reg_bus|spi_direction~q ;
wire	\reg_bus|state.IDLE~q ;
wire	\reg_bus|state.SEND_RESULT~q ;
wire	\reg_bus|state.WAIT_ACK~q ;
wire	\reg_bus|state.WR_DATA~q ;
wire	\reg_bus|state~20_combout ;
wire	[7:0] rst_cnt;
//wire	rst_cnt[0];
wire	\rst_cnt[0]~10 ;
wire	\rst_cnt[0]~9_combout ;
//wire	rst_cnt[1];
wire	\rst_cnt[1]~11_combout ;
wire	\rst_cnt[1]~12 ;
//wire	rst_cnt[2];
wire	\rst_cnt[2]~13_combout ;
wire	\rst_cnt[2]~14 ;
//wire	rst_cnt[3];
wire	\rst_cnt[3]~15_combout ;
wire	\rst_cnt[3]~16 ;
//wire	rst_cnt[4];
wire	\rst_cnt[4]~18_combout ;
wire	\rst_cnt[4]~19 ;
//wire	rst_cnt[5];
wire	\rst_cnt[5]~20_combout ;
wire	\rst_cnt[5]~21 ;
//wire	rst_cnt[6];
wire	\rst_cnt[6]~22_combout ;
wire	\rst_cnt[6]~23 ;
//wire	rst_cnt[7];
wire	\rst_cnt[7]~17_combout ;
wire	\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ;
wire	\rst_cnt[7]~24_combout ;
wire	\rst_cnt[7]~8_combout ;
wire	\rst~0_combout ;
wire	\rst~1_combout ;
wire	\rst~q ;
wire	\rst~q__AsyncReset_X10_Y3_SIG ;
wire	\rst~q__AsyncReset_X5_Y3_SIG ;
wire	\rst~q__AsyncReset_X6_Y3_SIG ;
wire	\rst~q__AsyncReset_X7_Y3_SIG ;
wire	\rst~q__AsyncReset_X8_Y3_SIG ;
wire	\rst~q__AsyncReset_X9_Y3_SIG ;
wire	unknown;
wire	\~ALTERA_ASDO_DATA1~~ibuf_o ;
wire	\~ALTERA_ASDO_DATA1~~padout ;
wire	\~ALTERA_DATA0~~ibuf_o ;
wire	\~ALTERA_DATA0~~padout ;
wire	\~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire	\~ALTERA_FLASH_nCE_nCSO~~padout ;
wire	\~GND~combout ;
wire	\~VCC~combout ;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_rio \HSPI_CLK~input (
	.padio(HSPI_CLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\HSPI_CLK~input_o ),
	.regout());
defparam \HSPI_CLK~input .coord_x = 5;
defparam \HSPI_CLK~input .coord_y = 9;
defparam \HSPI_CLK~input .coord_z = 0;
defparam \HSPI_CLK~input .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_CLK~input .IN_SYNC_MODE = 1'b0;
defparam \HSPI_CLK~input .IN_POWERUP = 1'b0;
defparam \HSPI_CLK~input .OUT_REG_MODE = 1'b0;
defparam \HSPI_CLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_CLK~input .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_CLK~input .OUT_POWERUP = 1'b0;
defparam \HSPI_CLK~input .OE_REG_MODE = 1'b0;
defparam \HSPI_CLK~input .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_CLK~input .OE_SYNC_MODE = 1'b0;
defparam \HSPI_CLK~input .OE_POWERUP = 1'b0;
defparam \HSPI_CLK~input .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_CLK~input .CFG_PULL_UP = 1'b0;
defparam \HSPI_CLK~input .CFG_SLR = 1'b0;
defparam \HSPI_CLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_CLK~input .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_CLK~input .CFG_KEEP = 2'b00;
defparam \HSPI_CLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_CLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_CLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_CLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_CLK~input .DPCLK_DELAY = 4'b0000;
defparam \HSPI_CLK~input .OUT_DELAY = 1'b0;
defparam \HSPI_CLK~input .IN_DATA_DELAY = 3'b000;
defparam \HSPI_CLK~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \HSPI_CLK~inputclkctrl (
	.inclk(\HSPI_CLK~input_o ),
	.outclk(\HSPI_CLK~inputclkctrl_outclk ));
defparam \HSPI_CLK~inputclkctrl .coord_x = 5;
defparam \HSPI_CLK~inputclkctrl .coord_y = 9;
defparam \HSPI_CLK~inputclkctrl .coord_z = 0;

alta_rio \HSPI_D[0]~output (
	.padio(HSPI_D[0]),
	.datain(\hspi|hd [0]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[0]~output .coord_x = 6;
defparam \HSPI_D[0]~output .coord_y = 9;
defparam \HSPI_D[0]~output .coord_z = 0;
defparam \HSPI_D[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[0]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[0]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[0]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[0]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[0]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[0]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[0]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[0]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[0]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[0]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[0]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[0]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[0]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[0]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[1]~output (
	.padio(HSPI_D[1]),
	.datain(\hspi|hd [1]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[1]~output .coord_x = 9;
defparam \HSPI_D[1]~output .coord_y = 0;
defparam \HSPI_D[1]~output .coord_z = 3;
defparam \HSPI_D[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[1]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[1]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[1]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[1]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[1]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[1]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[1]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[1]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[1]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[1]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[1]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[1]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[1]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[2]~output (
	.padio(HSPI_D[2]),
	.datain(\hspi|hd [2]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[2]~output .coord_x = 4;
defparam \HSPI_D[2]~output .coord_y = 9;
defparam \HSPI_D[2]~output .coord_z = 0;
defparam \HSPI_D[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[2]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[2]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[2]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[2]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[2]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[2]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[2]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[2]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[2]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[2]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[2]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[2]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[2]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[2]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[3]~output (
	.padio(HSPI_D[3]),
	.datain(\hspi|hd [3]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[3]~output .coord_x = 6;
defparam \HSPI_D[3]~output .coord_y = 1;
defparam \HSPI_D[3]~output .coord_z = 3;
defparam \HSPI_D[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[3]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[3]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[3]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[3]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[3]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[3]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[3]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[3]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[3]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[3]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[3]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[3]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[3]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[3]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[3]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[3]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[4]~output (
	.padio(HSPI_D[4]),
	.datain(\hspi|hd [4]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[4]~output .coord_x = 6;
defparam \HSPI_D[4]~output .coord_y = 1;
defparam \HSPI_D[4]~output .coord_z = 2;
defparam \HSPI_D[4]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[4]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[4]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[4]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[4]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[4]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[4]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[4]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[4]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[4]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[4]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[4]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[4]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[4]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[4]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[4]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[4]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[4]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[4]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[4]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[4]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[4]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[4]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[4]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[4]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[5]~output (
	.padio(HSPI_D[5]),
	.datain(\hspi|hd [5]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[5]~output .coord_x = 6;
defparam \HSPI_D[5]~output .coord_y = 1;
defparam \HSPI_D[5]~output .coord_z = 1;
defparam \HSPI_D[5]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[5]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[5]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[5]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[5]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[5]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[5]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[5]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[5]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[5]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[5]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[5]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[5]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[5]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[5]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[5]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[5]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[5]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[5]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[5]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[5]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[5]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[5]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[5]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[5]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[6]~output (
	.padio(HSPI_D[6]),
	.datain(\hspi|hd [6]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[6]~output .coord_x = 6;
defparam \HSPI_D[6]~output .coord_y = 1;
defparam \HSPI_D[6]~output .coord_z = 0;
defparam \HSPI_D[6]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[6]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[6]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[6]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[6]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[6]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[6]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[6]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[6]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[6]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[6]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[6]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[6]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[6]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[6]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[6]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[6]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[6]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[6]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[6]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[6]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[6]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[6]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[6]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[6]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_D[7]~output (
	.padio(HSPI_D[7]),
	.datain(\hspi|hd [7]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_D[7]~output .coord_x = 5;
defparam \HSPI_D[7]~output .coord_y = 1;
defparam \HSPI_D[7]~output .coord_z = 3;
defparam \HSPI_D[7]~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_D[7]~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_D[7]~output .IN_POWERUP = 1'b0;
defparam \HSPI_D[7]~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_D[7]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_D[7]~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_D[7]~output .OUT_POWERUP = 1'b0;
defparam \HSPI_D[7]~output .OE_REG_MODE = 1'b0;
defparam \HSPI_D[7]~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_D[7]~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_D[7]~output .OE_POWERUP = 1'b0;
defparam \HSPI_D[7]~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_D[7]~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_D[7]~output .CFG_SLR = 1'b0;
defparam \HSPI_D[7]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_D[7]~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_D[7]~output .CFG_KEEP = 2'b00;
defparam \HSPI_D[7]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_D[7]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_D[7]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_D[7]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_D[7]~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_D[7]~output .OUT_DELAY = 1'b0;
defparam \HSPI_D[7]~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_D[7]~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_HTRDY~input (
	.padio(HSPI_HTRDY),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\HSPI_HTRDY~input_o ),
	.regout());
defparam \HSPI_HTRDY~input .coord_x = 4;
defparam \HSPI_HTRDY~input .coord_y = 9;
defparam \HSPI_HTRDY~input .coord_z = 2;
defparam \HSPI_HTRDY~input .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_HTRDY~input .IN_SYNC_MODE = 1'b0;
defparam \HSPI_HTRDY~input .IN_POWERUP = 1'b0;
defparam \HSPI_HTRDY~input .OUT_REG_MODE = 1'b0;
defparam \HSPI_HTRDY~input .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_HTRDY~input .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_HTRDY~input .OUT_POWERUP = 1'b0;
defparam \HSPI_HTRDY~input .OE_REG_MODE = 1'b0;
defparam \HSPI_HTRDY~input .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_HTRDY~input .OE_SYNC_MODE = 1'b0;
defparam \HSPI_HTRDY~input .OE_POWERUP = 1'b0;
defparam \HSPI_HTRDY~input .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_HTRDY~input .CFG_PULL_UP = 1'b0;
defparam \HSPI_HTRDY~input .CFG_SLR = 1'b0;
defparam \HSPI_HTRDY~input .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_HTRDY~input .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_HTRDY~input .CFG_KEEP = 2'b00;
defparam \HSPI_HTRDY~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_HTRDY~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_HTRDY~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_HTRDY~input .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_HTRDY~input .DPCLK_DELAY = 4'b0000;
defparam \HSPI_HTRDY~input .OUT_DELAY = 1'b0;
defparam \HSPI_HTRDY~input .IN_DATA_DELAY = 3'b000;
defparam \HSPI_HTRDY~input .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_HTREQ~output (
	.padio(HSPI_HTREQ),
	.datain(\hspi|htreq~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_HTREQ~output .coord_x = 5;
defparam \HSPI_HTREQ~output .coord_y = 9;
defparam \HSPI_HTREQ~output .coord_z = 1;
defparam \HSPI_HTREQ~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_HTREQ~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_HTREQ~output .IN_POWERUP = 1'b0;
defparam \HSPI_HTREQ~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_HTREQ~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_HTREQ~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_HTREQ~output .OUT_POWERUP = 1'b0;
defparam \HSPI_HTREQ~output .OE_REG_MODE = 1'b0;
defparam \HSPI_HTREQ~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_HTREQ~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_HTREQ~output .OE_POWERUP = 1'b0;
defparam \HSPI_HTREQ~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_HTREQ~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_HTREQ~output .CFG_SLR = 1'b0;
defparam \HSPI_HTREQ~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_HTREQ~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_HTREQ~output .CFG_KEEP = 2'b00;
defparam \HSPI_HTREQ~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_HTREQ~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_HTREQ~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_HTREQ~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_HTREQ~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_HTREQ~output .OUT_DELAY = 1'b0;
defparam \HSPI_HTREQ~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_HTREQ~output .IN_REG_DELAY = 3'b000;

alta_rio \HSPI_HTVLD~output (
	.padio(HSPI_HTVLD),
	.datain(\hspi|htvld~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HSPI_HTVLD~output .coord_x = 5;
defparam \HSPI_HTVLD~output .coord_y = 9;
defparam \HSPI_HTVLD~output .coord_z = 2;
defparam \HSPI_HTVLD~output .IN_ASYNC_MODE = 1'b0;
defparam \HSPI_HTVLD~output .IN_SYNC_MODE = 1'b0;
defparam \HSPI_HTVLD~output .IN_POWERUP = 1'b0;
defparam \HSPI_HTVLD~output .OUT_REG_MODE = 1'b0;
defparam \HSPI_HTVLD~output .OUT_ASYNC_MODE = 1'b0;
defparam \HSPI_HTVLD~output .OUT_SYNC_MODE = 1'b0;
defparam \HSPI_HTVLD~output .OUT_POWERUP = 1'b0;
defparam \HSPI_HTVLD~output .OE_REG_MODE = 1'b0;
defparam \HSPI_HTVLD~output .OE_ASYNC_MODE = 1'b0;
defparam \HSPI_HTVLD~output .OE_SYNC_MODE = 1'b0;
defparam \HSPI_HTVLD~output .OE_POWERUP = 1'b0;
defparam \HSPI_HTVLD~output .CFG_TRI_INPUT = 1'b0;
defparam \HSPI_HTVLD~output .CFG_PULL_UP = 1'b0;
defparam \HSPI_HTVLD~output .CFG_SLR = 1'b0;
defparam \HSPI_HTVLD~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HSPI_HTVLD~output .CFG_PDRCTRL = 4'b0010;
defparam \HSPI_HTVLD~output .CFG_KEEP = 2'b00;
defparam \HSPI_HTVLD~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HSPI_HTVLD~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HSPI_HTVLD~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HSPI_HTVLD~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HSPI_HTVLD~output .DPCLK_DELAY = 4'b0000;
defparam \HSPI_HTVLD~output .OUT_DELAY = 1'b0;
defparam \HSPI_HTVLD~output .IN_DATA_DELAY = 3'b000;
defparam \HSPI_HTVLD~output .IN_REG_DELAY = 3'b000;

alta_slice \LessThan0~0 (
	.A(rst_cnt[3]),
	.B(rst_cnt[2]),
	.C(rst_cnt[1]),
	.D(rst_cnt[0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \LessThan0~0 .coord_x = 6;
defparam \LessThan0~0 .coord_y = 3;
defparam \LessThan0~0 .coord_z = 11;
defparam \LessThan0~0 .mask = 16'hEEEA;
defparam \LessThan0~0 .modeMux = 1'b0;
defparam \LessThan0~0 .FeedbackMux = 1'b0;
defparam \LessThan0~0 .ShiftMux = 1'b0;
defparam \LessThan0~0 .BypassEn = 1'b0;
defparam \LessThan0~0 .CarryEnb = 1'b1;

alta_rio \SPI_MISO~output (
	.padio(SPI_MISO),
	.datain(\reg_bus|miso~q ),
	.oe(\reg_bus|spi_direction~q ),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\SPI_MISO~input_o ),
	.regout());
defparam \SPI_MISO~output .coord_x = 5;
defparam \SPI_MISO~output .coord_y = 1;
defparam \SPI_MISO~output .coord_z = 2;
defparam \SPI_MISO~output .IN_ASYNC_MODE = 1'b0;
defparam \SPI_MISO~output .IN_SYNC_MODE = 1'b0;
defparam \SPI_MISO~output .IN_POWERUP = 1'b0;
defparam \SPI_MISO~output .OUT_REG_MODE = 1'b0;
defparam \SPI_MISO~output .OUT_ASYNC_MODE = 1'b0;
defparam \SPI_MISO~output .OUT_SYNC_MODE = 1'b0;
defparam \SPI_MISO~output .OUT_POWERUP = 1'b0;
defparam \SPI_MISO~output .OE_REG_MODE = 1'b0;
defparam \SPI_MISO~output .OE_ASYNC_MODE = 1'b0;
defparam \SPI_MISO~output .OE_SYNC_MODE = 1'b0;
defparam \SPI_MISO~output .OE_POWERUP = 1'b0;
defparam \SPI_MISO~output .CFG_TRI_INPUT = 1'b0;
defparam \SPI_MISO~output .CFG_PULL_UP = 1'b0;
defparam \SPI_MISO~output .CFG_SLR = 1'b0;
defparam \SPI_MISO~output .CFG_OPEN_DRAIN = 1'b0;
defparam \SPI_MISO~output .CFG_PDRCTRL = 4'b0010;
defparam \SPI_MISO~output .CFG_KEEP = 2'b00;
defparam \SPI_MISO~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \SPI_MISO~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \SPI_MISO~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \SPI_MISO~output .CFG_LVDS_IN_EN = 1'b0;
defparam \SPI_MISO~output .DPCLK_DELAY = 4'b0000;
defparam \SPI_MISO~output .OUT_DELAY = 1'b0;
defparam \SPI_MISO~output .IN_DATA_DELAY = 3'b000;
defparam \SPI_MISO~output .IN_REG_DELAY = 3'b000;

alta_rio \SPI_SCK~input (
	.padio(SPI_SCK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\SPI_SCK~input_o ),
	.regout());
defparam \SPI_SCK~input .coord_x = 2;
defparam \SPI_SCK~input .coord_y = 9;
defparam \SPI_SCK~input .coord_z = 2;
defparam \SPI_SCK~input .IN_ASYNC_MODE = 1'b0;
defparam \SPI_SCK~input .IN_SYNC_MODE = 1'b0;
defparam \SPI_SCK~input .IN_POWERUP = 1'b0;
defparam \SPI_SCK~input .OUT_REG_MODE = 1'b0;
defparam \SPI_SCK~input .OUT_ASYNC_MODE = 1'b0;
defparam \SPI_SCK~input .OUT_SYNC_MODE = 1'b0;
defparam \SPI_SCK~input .OUT_POWERUP = 1'b0;
defparam \SPI_SCK~input .OE_REG_MODE = 1'b0;
defparam \SPI_SCK~input .OE_ASYNC_MODE = 1'b0;
defparam \SPI_SCK~input .OE_SYNC_MODE = 1'b0;
defparam \SPI_SCK~input .OE_POWERUP = 1'b0;
defparam \SPI_SCK~input .CFG_TRI_INPUT = 1'b0;
defparam \SPI_SCK~input .CFG_PULL_UP = 1'b0;
defparam \SPI_SCK~input .CFG_SLR = 1'b0;
defparam \SPI_SCK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \SPI_SCK~input .CFG_PDRCTRL = 4'b0010;
defparam \SPI_SCK~input .CFG_KEEP = 2'b00;
defparam \SPI_SCK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \SPI_SCK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \SPI_SCK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \SPI_SCK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \SPI_SCK~input .DPCLK_DELAY = 4'b0000;
defparam \SPI_SCK~input .OUT_DELAY = 1'b0;
defparam \SPI_SCK~input .IN_DATA_DELAY = 3'b000;
defparam \SPI_SCK~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \SPI_SCK~inputclkctrl (
	.inclk(\SPI_SCK~input_o ),
	.outclk(\SPI_SCK~inputclkctrl_outclk ));
defparam \SPI_SCK~inputclkctrl .coord_x = 4;
defparam \SPI_SCK~inputclkctrl .coord_y = 9;
defparam \SPI_SCK~inputclkctrl .coord_z = 0;

alta_rio \ULPI_CLK~input (
	.padio(ULPI_CLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_CLK~input_o ),
	.regout());
defparam \ULPI_CLK~input .coord_x = 4;
defparam \ULPI_CLK~input .coord_y = 1;
defparam \ULPI_CLK~input .coord_z = 0;
defparam \ULPI_CLK~input .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_CLK~input .IN_SYNC_MODE = 1'b0;
defparam \ULPI_CLK~input .IN_POWERUP = 1'b0;
defparam \ULPI_CLK~input .OUT_REG_MODE = 1'b0;
defparam \ULPI_CLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_CLK~input .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_CLK~input .OUT_POWERUP = 1'b0;
defparam \ULPI_CLK~input .OE_REG_MODE = 1'b0;
defparam \ULPI_CLK~input .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_CLK~input .OE_SYNC_MODE = 1'b0;
defparam \ULPI_CLK~input .OE_POWERUP = 1'b0;
defparam \ULPI_CLK~input .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_CLK~input .CFG_PULL_UP = 1'b0;
defparam \ULPI_CLK~input .CFG_SLR = 1'b0;
defparam \ULPI_CLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_CLK~input .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_CLK~input .CFG_KEEP = 2'b00;
defparam \ULPI_CLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_CLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_CLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_CLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_CLK~input .DPCLK_DELAY = 4'b0000;
defparam \ULPI_CLK~input .OUT_DELAY = 1'b0;
defparam \ULPI_CLK~input .IN_DATA_DELAY = 3'b000;
defparam \ULPI_CLK~input .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_DIR~input (
	.padio(ULPI_DIR),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_DIR~input_o ),
	.regout());
defparam \ULPI_DIR~input .coord_x = 4;
defparam \ULPI_DIR~input .coord_y = 1;
defparam \ULPI_DIR~input .coord_z = 2;
defparam \ULPI_DIR~input .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_DIR~input .IN_SYNC_MODE = 1'b0;
defparam \ULPI_DIR~input .IN_POWERUP = 1'b0;
defparam \ULPI_DIR~input .OUT_REG_MODE = 1'b0;
defparam \ULPI_DIR~input .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_DIR~input .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_DIR~input .OUT_POWERUP = 1'b0;
defparam \ULPI_DIR~input .OE_REG_MODE = 1'b0;
defparam \ULPI_DIR~input .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_DIR~input .OE_SYNC_MODE = 1'b0;
defparam \ULPI_DIR~input .OE_POWERUP = 1'b0;
defparam \ULPI_DIR~input .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_DIR~input .CFG_PULL_UP = 1'b0;
defparam \ULPI_DIR~input .CFG_SLR = 1'b0;
defparam \ULPI_DIR~input .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_DIR~input .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_DIR~input .CFG_KEEP = 2'b00;
defparam \ULPI_DIR~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_DIR~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_DIR~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_DIR~input .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_DIR~input .DPCLK_DELAY = 4'b0000;
defparam \ULPI_DIR~input .OUT_DELAY = 1'b0;
defparam \ULPI_DIR~input .IN_DATA_DELAY = 3'b000;
defparam \ULPI_DIR~input .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[0]~output (
	.padio(ULPI_D[0]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[0]~input_o ),
	.regout());
defparam \ULPI_D[0]~output .coord_x = 2;
defparam \ULPI_D[0]~output .coord_y = 1;
defparam \ULPI_D[0]~output .coord_z = 0;
defparam \ULPI_D[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[0]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[0]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[0]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[0]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[0]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[0]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[0]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[0]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[0]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[0]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[0]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[0]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[0]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[0]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[1]~output (
	.padio(ULPI_D[1]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[1]~input_o ),
	.regout());
defparam \ULPI_D[1]~output .coord_x = 7;
defparam \ULPI_D[1]~output .coord_y = 1;
defparam \ULPI_D[1]~output .coord_z = 0;
defparam \ULPI_D[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[1]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[1]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[1]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[1]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[1]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[1]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[1]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[1]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[1]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[1]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[1]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[1]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[1]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[2]~output (
	.padio(ULPI_D[2]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[2]~input_o ),
	.regout());
defparam \ULPI_D[2]~output .coord_x = 6;
defparam \ULPI_D[2]~output .coord_y = 9;
defparam \ULPI_D[2]~output .coord_z = 2;
defparam \ULPI_D[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[2]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[2]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[2]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[2]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[2]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[2]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[2]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[2]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[2]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[2]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[2]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[2]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[2]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[2]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[3]~output (
	.padio(ULPI_D[3]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[3]~input_o ),
	.regout());
defparam \ULPI_D[3]~output .coord_x = 1;
defparam \ULPI_D[3]~output .coord_y = 9;
defparam \ULPI_D[3]~output .coord_z = 1;
defparam \ULPI_D[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[3]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[3]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[3]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[3]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[3]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[3]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[3]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[3]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[3]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[3]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[3]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[3]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[3]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[3]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[3]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[3]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[4]~output (
	.padio(ULPI_D[4]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[4]~input_o ),
	.regout());
defparam \ULPI_D[4]~output .coord_x = 0;
defparam \ULPI_D[4]~output .coord_y = 9;
defparam \ULPI_D[4]~output .coord_z = 0;
defparam \ULPI_D[4]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[4]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[4]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[4]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[4]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[4]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[4]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[4]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[4]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[4]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[4]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[4]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[4]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[4]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[4]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[4]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[4]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[4]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[4]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[4]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[4]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[4]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[4]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[4]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[4]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[5]~output (
	.padio(ULPI_D[5]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[5]~input_o ),
	.regout());
defparam \ULPI_D[5]~output .coord_x = 0;
defparam \ULPI_D[5]~output .coord_y = 9;
defparam \ULPI_D[5]~output .coord_z = 2;
defparam \ULPI_D[5]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[5]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[5]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[5]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[5]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[5]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[5]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[5]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[5]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[5]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[5]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[5]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[5]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[5]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[5]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[5]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[5]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[5]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[5]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[5]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[5]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[5]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[5]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[5]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[5]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[6]~output (
	.padio(ULPI_D[6]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[6]~input_o ),
	.regout());
defparam \ULPI_D[6]~output .coord_x = 1;
defparam \ULPI_D[6]~output .coord_y = 9;
defparam \ULPI_D[6]~output .coord_z = 3;
defparam \ULPI_D[6]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[6]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[6]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[6]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[6]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[6]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[6]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[6]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[6]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[6]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[6]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[6]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[6]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[6]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[6]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[6]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[6]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[6]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[6]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[6]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[6]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[6]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[6]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[6]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[6]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_D[7]~output (
	.padio(ULPI_D[7]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_D[7]~input_o ),
	.regout());
defparam \ULPI_D[7]~output .coord_x = 2;
defparam \ULPI_D[7]~output .coord_y = 9;
defparam \ULPI_D[7]~output .coord_z = 0;
defparam \ULPI_D[7]~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_D[7]~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_D[7]~output .IN_POWERUP = 1'b0;
defparam \ULPI_D[7]~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_D[7]~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_D[7]~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_D[7]~output .OUT_POWERUP = 1'b0;
defparam \ULPI_D[7]~output .OE_REG_MODE = 1'b0;
defparam \ULPI_D[7]~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_D[7]~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_D[7]~output .OE_POWERUP = 1'b0;
defparam \ULPI_D[7]~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_D[7]~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_D[7]~output .CFG_SLR = 1'b0;
defparam \ULPI_D[7]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_D[7]~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_D[7]~output .CFG_KEEP = 2'b00;
defparam \ULPI_D[7]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_D[7]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_D[7]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_D[7]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_D[7]~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_D[7]~output .OUT_DELAY = 1'b0;
defparam \ULPI_D[7]~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_D[7]~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_NXT~input (
	.padio(ULPI_NXT),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ULPI_NXT~input_o ),
	.regout());
defparam \ULPI_NXT~input .coord_x = 2;
defparam \ULPI_NXT~input .coord_y = 1;
defparam \ULPI_NXT~input .coord_z = 2;
defparam \ULPI_NXT~input .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_NXT~input .IN_SYNC_MODE = 1'b0;
defparam \ULPI_NXT~input .IN_POWERUP = 1'b0;
defparam \ULPI_NXT~input .OUT_REG_MODE = 1'b0;
defparam \ULPI_NXT~input .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_NXT~input .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_NXT~input .OUT_POWERUP = 1'b0;
defparam \ULPI_NXT~input .OE_REG_MODE = 1'b0;
defparam \ULPI_NXT~input .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_NXT~input .OE_SYNC_MODE = 1'b0;
defparam \ULPI_NXT~input .OE_POWERUP = 1'b0;
defparam \ULPI_NXT~input .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_NXT~input .CFG_PULL_UP = 1'b0;
defparam \ULPI_NXT~input .CFG_SLR = 1'b0;
defparam \ULPI_NXT~input .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_NXT~input .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_NXT~input .CFG_KEEP = 2'b00;
defparam \ULPI_NXT~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_NXT~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_NXT~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_NXT~input .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_NXT~input .DPCLK_DELAY = 4'b0000;
defparam \ULPI_NXT~input .OUT_DELAY = 1'b0;
defparam \ULPI_NXT~input .IN_DATA_DELAY = 3'b000;
defparam \ULPI_NXT~input .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_RST~output (
	.padio(ULPI_RST),
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \ULPI_RST~output .coord_x = 5;
defparam \ULPI_RST~output .coord_y = 1;
defparam \ULPI_RST~output .coord_z = 1;
defparam \ULPI_RST~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_RST~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_RST~output .IN_POWERUP = 1'b0;
defparam \ULPI_RST~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_RST~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_RST~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_RST~output .OUT_POWERUP = 1'b0;
defparam \ULPI_RST~output .OE_REG_MODE = 1'b0;
defparam \ULPI_RST~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_RST~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_RST~output .OE_POWERUP = 1'b0;
defparam \ULPI_RST~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_RST~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_RST~output .CFG_SLR = 1'b0;
defparam \ULPI_RST~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_RST~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_RST~output .CFG_KEEP = 2'b00;
defparam \ULPI_RST~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_RST~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_RST~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_RST~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_RST~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_RST~output .OUT_DELAY = 1'b0;
defparam \ULPI_RST~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_RST~output .IN_REG_DELAY = 3'b000;

alta_rio \ULPI_STP~output (
	.padio(ULPI_STP),
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \ULPI_STP~output .coord_x = 5;
defparam \ULPI_STP~output .coord_y = 1;
defparam \ULPI_STP~output .coord_z = 0;
defparam \ULPI_STP~output .IN_ASYNC_MODE = 1'b0;
defparam \ULPI_STP~output .IN_SYNC_MODE = 1'b0;
defparam \ULPI_STP~output .IN_POWERUP = 1'b0;
defparam \ULPI_STP~output .OUT_REG_MODE = 1'b0;
defparam \ULPI_STP~output .OUT_ASYNC_MODE = 1'b0;
defparam \ULPI_STP~output .OUT_SYNC_MODE = 1'b0;
defparam \ULPI_STP~output .OUT_POWERUP = 1'b0;
defparam \ULPI_STP~output .OE_REG_MODE = 1'b0;
defparam \ULPI_STP~output .OE_ASYNC_MODE = 1'b0;
defparam \ULPI_STP~output .OE_SYNC_MODE = 1'b0;
defparam \ULPI_STP~output .OE_POWERUP = 1'b0;
defparam \ULPI_STP~output .CFG_TRI_INPUT = 1'b0;
defparam \ULPI_STP~output .CFG_PULL_UP = 1'b0;
defparam \ULPI_STP~output .CFG_SLR = 1'b0;
defparam \ULPI_STP~output .CFG_OPEN_DRAIN = 1'b0;
defparam \ULPI_STP~output .CFG_PDRCTRL = 4'b0010;
defparam \ULPI_STP~output .CFG_KEEP = 2'b00;
defparam \ULPI_STP~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \ULPI_STP~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ULPI_STP~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \ULPI_STP~output .CFG_LVDS_IN_EN = 1'b0;
defparam \ULPI_STP~output .DPCLK_DELAY = 4'b0000;
defparam \ULPI_STP~output .OUT_DELAY = 1'b0;
defparam \ULPI_STP~output .IN_DATA_DELAY = 3'b000;
defparam \ULPI_STP~output .IN_REG_DELAY = 3'b000;

alta_asyncctrl asyncreset_ctrl_X10_Y3_N1(
	.Din(\rst~q ),
	.Dout(\rst~q__AsyncReset_X10_Y3_SIG ));
defparam asyncreset_ctrl_X10_Y3_N1.coord_x = 5;
defparam asyncreset_ctrl_X10_Y3_N1.coord_y = 3;
defparam asyncreset_ctrl_X10_Y3_N1.coord_z = 1;
defparam asyncreset_ctrl_X10_Y3_N1.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X1_Y4_N0(
	.Din(),
	.Dout(AsyncReset_X1_Y4_GND));
defparam asyncreset_ctrl_X1_Y4_N0.coord_x = 6;
defparam asyncreset_ctrl_X1_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X1_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y4_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X1_Y5_N0(
	.Din(),
	.Dout(AsyncReset_X1_Y5_GND));
defparam asyncreset_ctrl_X1_Y5_N0.coord_x = 7;
defparam asyncreset_ctrl_X1_Y5_N0.coord_y = 5;
defparam asyncreset_ctrl_X1_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y5_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X2_Y4_N0(
	.Din(),
	.Dout(AsyncReset_X2_Y4_GND));
defparam asyncreset_ctrl_X2_Y4_N0.coord_x = 7;
defparam asyncreset_ctrl_X2_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X2_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y4_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X2_Y5_N0(
	.Din(),
	.Dout(AsyncReset_X2_Y5_GND));
defparam asyncreset_ctrl_X2_Y5_N0.coord_x = 6;
defparam asyncreset_ctrl_X2_Y5_N0.coord_y = 5;
defparam asyncreset_ctrl_X2_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y5_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X3_Y4_N0(
	.Din(),
	.Dout(AsyncReset_X3_Y4_GND));
defparam asyncreset_ctrl_X3_Y4_N0.coord_x = 8;
defparam asyncreset_ctrl_X3_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X3_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X3_Y4_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X3_Y5_N0(
	.Din(),
	.Dout(AsyncReset_X3_Y5_GND));
defparam asyncreset_ctrl_X3_Y5_N0.coord_x = 7;
defparam asyncreset_ctrl_X3_Y5_N0.coord_y = 7;
defparam asyncreset_ctrl_X3_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X3_Y5_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X5_Y3_N0(
	.Din(\rst~q ),
	.Dout(\rst~q__AsyncReset_X5_Y3_SIG ));
defparam asyncreset_ctrl_X5_Y3_N0.coord_x = 6;
defparam asyncreset_ctrl_X5_Y3_N0.coord_y = 4;
defparam asyncreset_ctrl_X5_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X5_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X5_Y4_N0(
	.Din(\hspi|crc_rst~q ),
	.Dout(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ));
defparam asyncreset_ctrl_X5_Y4_N0.coord_x = 5;
defparam asyncreset_ctrl_X5_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X5_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X5_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X5_Y4_N1(
	.Din(),
	.Dout(AsyncReset_X5_Y4_GND));
defparam asyncreset_ctrl_X5_Y4_N1.coord_x = 5;
defparam asyncreset_ctrl_X5_Y4_N1.coord_y = 8;
defparam asyncreset_ctrl_X5_Y4_N1.coord_z = 1;
defparam asyncreset_ctrl_X5_Y4_N1.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X5_Y5_N0(
	.Din(),
	.Dout(AsyncReset_X5_Y5_GND));
defparam asyncreset_ctrl_X5_Y5_N0.coord_x = 5;
defparam asyncreset_ctrl_X5_Y5_N0.coord_y = 7;
defparam asyncreset_ctrl_X5_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X5_Y5_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X6_Y3_N0(
	.Din(\rst~q ),
	.Dout(\rst~q__AsyncReset_X6_Y3_SIG ));
defparam asyncreset_ctrl_X6_Y3_N0.coord_x = 5;
defparam asyncreset_ctrl_X6_Y3_N0.coord_y = 4;
defparam asyncreset_ctrl_X6_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y4_N0(
	.Din(\hspi|crc_rst~q ),
	.Dout(\hspi|crc_rst~q__AsyncReset_X6_Y4_SIG ));
defparam asyncreset_ctrl_X6_Y4_N0.coord_x = 4;
defparam asyncreset_ctrl_X6_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X6_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y5_N0(
	.Din(),
	.Dout(AsyncReset_X6_Y5_GND));
defparam asyncreset_ctrl_X6_Y5_N0.coord_x = 4;
defparam asyncreset_ctrl_X6_Y5_N0.coord_y = 7;
defparam asyncreset_ctrl_X6_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y5_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X7_Y3_N0(
	.Din(\rst~q ),
	.Dout(\rst~q__AsyncReset_X7_Y3_SIG ));
defparam asyncreset_ctrl_X7_Y3_N0.coord_x = 4;
defparam asyncreset_ctrl_X7_Y3_N0.coord_y = 4;
defparam asyncreset_ctrl_X7_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X7_Y4_N0(
	.Din(),
	.Dout(AsyncReset_X7_Y4_GND));
defparam asyncreset_ctrl_X7_Y4_N0.coord_x = 4;
defparam asyncreset_ctrl_X7_Y4_N0.coord_y = 5;
defparam asyncreset_ctrl_X7_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y4_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X7_Y5_N0(
	.Din(),
	.Dout(AsyncReset_X7_Y5_GND));
defparam asyncreset_ctrl_X7_Y5_N0.coord_x = 4;
defparam asyncreset_ctrl_X7_Y5_N0.coord_y = 6;
defparam asyncreset_ctrl_X7_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y5_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X8_Y3_N0(
	.Din(),
	.Dout(AsyncReset_X8_Y3_GND));
defparam asyncreset_ctrl_X8_Y3_N0.coord_x = 6;
defparam asyncreset_ctrl_X8_Y3_N0.coord_y = 3;
defparam asyncreset_ctrl_X8_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X8_Y3_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X8_Y3_N1(
	.Din(\rst~q ),
	.Dout(\rst~q__AsyncReset_X8_Y3_SIG ));
defparam asyncreset_ctrl_X8_Y3_N1.coord_x = 6;
defparam asyncreset_ctrl_X8_Y3_N1.coord_y = 3;
defparam asyncreset_ctrl_X8_Y3_N1.coord_z = 1;
defparam asyncreset_ctrl_X8_Y3_N1.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X9_Y3_N0(
	.Din(\rst~q ),
	.Dout(\rst~q__AsyncReset_X9_Y3_SIG ));
defparam asyncreset_ctrl_X9_Y3_N0.coord_x = 4;
defparam asyncreset_ctrl_X9_Y3_N0.coord_y = 3;
defparam asyncreset_ctrl_X9_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X9_Y3_N0.AsyncCtrlMux = 2'b10;

alta_clkenctrl clken_ctrl_X10_Y3_N0(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk_X10_Y3_INV_VCC ));
defparam clken_ctrl_X10_Y3_N0.coord_x = 5;
defparam clken_ctrl_X10_Y3_N0.coord_y = 3;
defparam clken_ctrl_X10_Y3_N0.coord_z = 0;
defparam clken_ctrl_X10_Y3_N0.ClkMux = 2'b11;
defparam clken_ctrl_X10_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X10_Y3_N1(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\reg_bus|out_fifo[0]~1_combout ),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk__reg_bus|out_fifo[0]~1_combout_X10_Y3_SIG_SIG ));
defparam clken_ctrl_X10_Y3_N1.coord_x = 5;
defparam clken_ctrl_X10_Y3_N1.coord_y = 3;
defparam clken_ctrl_X10_Y3_N1.coord_z = 1;
defparam clken_ctrl_X10_Y3_N1.ClkMux = 2'b10;
defparam clken_ctrl_X10_Y3_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X1_Y4_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|hd[0]~0_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X1_Y4_SIG_SIG ));
defparam clken_ctrl_X1_Y4_N0.coord_x = 6;
defparam clken_ctrl_X1_Y4_N0.coord_y = 8;
defparam clken_ctrl_X1_Y4_N0.coord_z = 0;
defparam clken_ctrl_X1_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y4_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X1_Y4_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk_X1_Y4_SIG_VCC ));
defparam clken_ctrl_X1_Y4_N1.coord_x = 6;
defparam clken_ctrl_X1_Y4_N1.coord_y = 8;
defparam clken_ctrl_X1_Y4_N1.coord_z = 1;
defparam clken_ctrl_X1_Y4_N1.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y4_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X1_Y5_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\rst~q ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__rst~q_X1_Y5_SIG_INV ));
defparam clken_ctrl_X1_Y5_N0.coord_x = 7;
defparam clken_ctrl_X1_Y5_N0.coord_y = 5;
defparam clken_ctrl_X1_Y5_N0.coord_z = 0;
defparam clken_ctrl_X1_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y5_N0.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X2_Y4_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|ack~q ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ));
defparam clken_ctrl_X2_Y4_N0.coord_x = 7;
defparam clken_ctrl_X2_Y4_N0.coord_y = 8;
defparam clken_ctrl_X2_Y4_N0.coord_z = 0;
defparam clken_ctrl_X2_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y4_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X2_Y5_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|hd[0]~0_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X2_Y5_SIG_SIG ));
defparam clken_ctrl_X2_Y5_N0.coord_x = 6;
defparam clken_ctrl_X2_Y5_N0.coord_y = 5;
defparam clken_ctrl_X2_Y5_N0.coord_z = 0;
defparam clken_ctrl_X2_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y5_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X2_Y5_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\rst~q ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ));
defparam clken_ctrl_X2_Y5_N1.coord_x = 6;
defparam clken_ctrl_X2_Y5_N1.coord_y = 5;
defparam clken_ctrl_X2_Y5_N1.coord_z = 1;
defparam clken_ctrl_X2_Y5_N1.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y5_N1.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X3_Y4_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk_X3_Y4_SIG_VCC ));
defparam clken_ctrl_X3_Y4_N0.coord_x = 8;
defparam clken_ctrl_X3_Y4_N0.coord_y = 8;
defparam clken_ctrl_X3_Y4_N0.coord_z = 0;
defparam clken_ctrl_X3_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X3_Y4_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|hd[0]~0_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X3_Y4_SIG_SIG ));
defparam clken_ctrl_X3_Y4_N1.coord_x = 8;
defparam clken_ctrl_X3_Y4_N1.coord_y = 8;
defparam clken_ctrl_X3_Y4_N1.coord_z = 1;
defparam clken_ctrl_X3_Y4_N1.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y4_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X3_Y5_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\rst~q ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ));
defparam clken_ctrl_X3_Y5_N0.coord_x = 7;
defparam clken_ctrl_X3_Y5_N0.coord_y = 7;
defparam clken_ctrl_X3_Y5_N0.coord_z = 0;
defparam clken_ctrl_X3_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y5_N0.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X3_Y5_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk_X3_Y5_SIG_VCC ));
defparam clken_ctrl_X3_Y5_N1.coord_x = 7;
defparam clken_ctrl_X3_Y5_N1.coord_y = 7;
defparam clken_ctrl_X3_Y5_N1.coord_z = 1;
defparam clken_ctrl_X3_Y5_N1.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y5_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X5_Y3_N0(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ));
defparam clken_ctrl_X5_Y3_N0.coord_x = 6;
defparam clken_ctrl_X5_Y3_N0.coord_y = 4;
defparam clken_ctrl_X5_Y3_N0.coord_z = 0;
defparam clken_ctrl_X5_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X5_Y4_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|crc_en~q ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ));
defparam clken_ctrl_X5_Y4_N0.coord_x = 5;
defparam clken_ctrl_X5_Y4_N0.coord_y = 8;
defparam clken_ctrl_X5_Y4_N0.coord_z = 0;
defparam clken_ctrl_X5_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y4_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X5_Y4_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|htreq~1_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|htreq~1_combout_X5_Y4_SIG_SIG ));
defparam clken_ctrl_X5_Y4_N1.coord_x = 5;
defparam clken_ctrl_X5_Y4_N1.coord_y = 8;
defparam clken_ctrl_X5_Y4_N1.coord_z = 1;
defparam clken_ctrl_X5_Y4_N1.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y4_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X5_Y5_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|delay_cnt[31]~3_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X5_Y5_SIG_SIG ));
defparam clken_ctrl_X5_Y5_N0.coord_x = 5;
defparam clken_ctrl_X5_Y5_N0.coord_y = 7;
defparam clken_ctrl_X5_Y5_N0.coord_z = 0;
defparam clken_ctrl_X5_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y5_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X5_Y5_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|htreq~1_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|htreq~1_combout_X5_Y5_SIG_SIG ));
defparam clken_ctrl_X5_Y5_N1.coord_x = 5;
defparam clken_ctrl_X5_Y5_N1.coord_y = 7;
defparam clken_ctrl_X5_Y5_N1.coord_z = 1;
defparam clken_ctrl_X5_Y5_N1.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y5_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X6_Y3_N0(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk_X6_Y3_INV_VCC ));
defparam clken_ctrl_X6_Y3_N0.coord_x = 5;
defparam clken_ctrl_X6_Y3_N0.coord_y = 4;
defparam clken_ctrl_X6_Y3_N0.coord_z = 0;
defparam clken_ctrl_X6_Y3_N0.ClkMux = 2'b11;
defparam clken_ctrl_X6_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y4_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|crc_en~q ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X6_Y4_SIG_SIG ));
defparam clken_ctrl_X6_Y4_N0.coord_x = 4;
defparam clken_ctrl_X6_Y4_N0.coord_y = 8;
defparam clken_ctrl_X6_Y4_N0.coord_z = 0;
defparam clken_ctrl_X6_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y4_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X6_Y5_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|delay_cnt[31]~3_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X6_Y5_SIG_SIG ));
defparam clken_ctrl_X6_Y5_N0.coord_x = 4;
defparam clken_ctrl_X6_Y5_N0.coord_y = 7;
defparam clken_ctrl_X6_Y5_N0.coord_z = 0;
defparam clken_ctrl_X6_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y5_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X6_Y5_N1(
	.ClkIn(\hspi|ack~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ));
defparam clken_ctrl_X6_Y5_N1.coord_x = 4;
defparam clken_ctrl_X6_Y5_N1.coord_y = 7;
defparam clken_ctrl_X6_Y5_N1.coord_z = 1;
defparam clken_ctrl_X6_Y5_N1.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y5_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y3_N0(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\reg_bus|rw~0_combout ),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ));
defparam clken_ctrl_X7_Y3_N0.coord_x = 4;
defparam clken_ctrl_X7_Y3_N0.coord_y = 4;
defparam clken_ctrl_X7_Y3_N0.coord_z = 0;
defparam clken_ctrl_X7_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y3_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X7_Y3_N1(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ));
defparam clken_ctrl_X7_Y3_N1.coord_x = 4;
defparam clken_ctrl_X7_Y3_N1.coord_y = 4;
defparam clken_ctrl_X7_Y3_N1.coord_z = 1;
defparam clken_ctrl_X7_Y3_N1.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y3_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y4_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ));
defparam clken_ctrl_X7_Y4_N0.coord_x = 4;
defparam clken_ctrl_X7_Y4_N0.coord_y = 5;
defparam clken_ctrl_X7_Y4_N0.coord_z = 0;
defparam clken_ctrl_X7_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y5_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(\hspi|delay_cnt[31]~3_combout ),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ));
defparam clken_ctrl_X7_Y5_N0.coord_x = 4;
defparam clken_ctrl_X7_Y5_N0.coord_y = 6;
defparam clken_ctrl_X7_Y5_N0.coord_z = 0;
defparam clken_ctrl_X7_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y5_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X7_Y5_N1(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk_X7_Y5_SIG_VCC ));
defparam clken_ctrl_X7_Y5_N1.coord_x = 4;
defparam clken_ctrl_X7_Y5_N1.coord_y = 6;
defparam clken_ctrl_X7_Y5_N1.coord_z = 1;
defparam clken_ctrl_X7_Y5_N1.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y5_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X8_Y3_N0(
	.ClkIn(\HSPI_CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ));
defparam clken_ctrl_X8_Y3_N0.coord_x = 6;
defparam clken_ctrl_X8_Y3_N0.coord_y = 3;
defparam clken_ctrl_X8_Y3_N0.coord_z = 0;
defparam clken_ctrl_X8_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X8_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X8_Y3_N1(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\hspi|reg_rdata_value[0]~0_combout ),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk__hspi|reg_rdata_value[0]~0_combout_X8_Y3_INV_SIG ));
defparam clken_ctrl_X8_Y3_N1.coord_x = 6;
defparam clken_ctrl_X8_Y3_N1.coord_y = 3;
defparam clken_ctrl_X8_Y3_N1.coord_z = 1;
defparam clken_ctrl_X8_Y3_N1.ClkMux = 2'b11;
defparam clken_ctrl_X8_Y3_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X9_Y3_N0(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\reg_bus|LessThan1~2_combout ),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ));
defparam clken_ctrl_X9_Y3_N0.coord_x = 4;
defparam clken_ctrl_X9_Y3_N0.coord_y = 3;
defparam clken_ctrl_X9_Y3_N0.coord_z = 0;
defparam clken_ctrl_X9_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X9_Y3_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X9_Y3_N1(
	.ClkIn(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\reg_bus|rw~0_combout ),
	.ClkOut(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X9_Y3_SIG_SIG ));
defparam clken_ctrl_X9_Y3_N1.coord_x = 4;
defparam clken_ctrl_X9_Y3_N1.coord_y = 3;
defparam clken_ctrl_X9_Y3_N1.coord_z = 1;
defparam clken_ctrl_X9_Y3_N1.ClkMux = 2'b10;
defparam clken_ctrl_X9_Y3_N1.ClkEnMux = 2'b10;

alta_slice \hspi_fake_cnt[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(hspi_fake_cnt[0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_fake_cnt[0]~0_combout ),
	.Cout(),
	.Q(hspi_fake_cnt[0]));
defparam \hspi_fake_cnt[0] .coord_x = 7;
defparam \hspi_fake_cnt[0] .coord_y = 8;
defparam \hspi_fake_cnt[0] .coord_z = 12;
defparam \hspi_fake_cnt[0] .mask = 16'h0F0F;
defparam \hspi_fake_cnt[0] .modeMux = 1'b0;
defparam \hspi_fake_cnt[0] .FeedbackMux = 1'b1;
defparam \hspi_fake_cnt[0] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[0] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[0] .CarryEnb = 1'b1;

alta_slice \hspi_fake_cnt[1] (
	.A(hspi_fake_cnt[0]),
	.B(hspi_fake_cnt[1]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(hspi_fake_cnt[1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~0_combout ),
	.Cout(\Add1~1 ),
	.Q(hspi_fake_cnt[1]));
defparam \hspi_fake_cnt[1] .coord_x = 7;
defparam \hspi_fake_cnt[1] .coord_y = 8;
defparam \hspi_fake_cnt[1] .coord_z = 4;
defparam \hspi_fake_cnt[1] .mask = 16'h6688;
defparam \hspi_fake_cnt[1] .modeMux = 1'b0;
defparam \hspi_fake_cnt[1] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[1] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[1] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[1] .CarryEnb = 1'b0;

alta_slice \hspi_fake_cnt[2] (
	.A(vcc),
	.B(hspi_fake_cnt[2]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add1~1 ),
	.Qin(hspi_fake_cnt[2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~2_combout ),
	.Cout(\Add1~3 ),
	.Q(hspi_fake_cnt[2]));
defparam \hspi_fake_cnt[2] .coord_x = 7;
defparam \hspi_fake_cnt[2] .coord_y = 8;
defparam \hspi_fake_cnt[2] .coord_z = 5;
defparam \hspi_fake_cnt[2] .mask = 16'h3C3F;
defparam \hspi_fake_cnt[2] .modeMux = 1'b1;
defparam \hspi_fake_cnt[2] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[2] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[2] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[2] .CarryEnb = 1'b0;

alta_slice \hspi_fake_cnt[3] (
	.A(vcc),
	.B(hspi_fake_cnt[3]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add1~3 ),
	.Qin(hspi_fake_cnt[3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~4_combout ),
	.Cout(\Add1~5 ),
	.Q(hspi_fake_cnt[3]));
defparam \hspi_fake_cnt[3] .coord_x = 7;
defparam \hspi_fake_cnt[3] .coord_y = 8;
defparam \hspi_fake_cnt[3] .coord_z = 6;
defparam \hspi_fake_cnt[3] .mask = 16'hC30C;
defparam \hspi_fake_cnt[3] .modeMux = 1'b1;
defparam \hspi_fake_cnt[3] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[3] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[3] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[3] .CarryEnb = 1'b0;

alta_slice \hspi_fake_cnt[4] (
	.A(vcc),
	.B(hspi_fake_cnt[4]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add1~5 ),
	.Qin(hspi_fake_cnt[4]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~6_combout ),
	.Cout(\Add1~7 ),
	.Q(hspi_fake_cnt[4]));
defparam \hspi_fake_cnt[4] .coord_x = 7;
defparam \hspi_fake_cnt[4] .coord_y = 8;
defparam \hspi_fake_cnt[4] .coord_z = 7;
defparam \hspi_fake_cnt[4] .mask = 16'h3C3F;
defparam \hspi_fake_cnt[4] .modeMux = 1'b1;
defparam \hspi_fake_cnt[4] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[4] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[4] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[4] .CarryEnb = 1'b0;

alta_slice \hspi_fake_cnt[5] (
	.A(vcc),
	.B(hspi_fake_cnt[5]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add1~7 ),
	.Qin(hspi_fake_cnt[5]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~8_combout ),
	.Cout(\Add1~9 ),
	.Q(hspi_fake_cnt[5]));
defparam \hspi_fake_cnt[5] .coord_x = 7;
defparam \hspi_fake_cnt[5] .coord_y = 8;
defparam \hspi_fake_cnt[5] .coord_z = 8;
defparam \hspi_fake_cnt[5] .mask = 16'hC30C;
defparam \hspi_fake_cnt[5] .modeMux = 1'b1;
defparam \hspi_fake_cnt[5] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[5] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[5] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[5] .CarryEnb = 1'b0;

alta_slice \hspi_fake_cnt[6] (
	.A(vcc),
	.B(hspi_fake_cnt[6]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add1~9 ),
	.Qin(hspi_fake_cnt[6]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~10_combout ),
	.Cout(\Add1~11 ),
	.Q(hspi_fake_cnt[6]));
defparam \hspi_fake_cnt[6] .coord_x = 7;
defparam \hspi_fake_cnt[6] .coord_y = 8;
defparam \hspi_fake_cnt[6] .coord_z = 9;
defparam \hspi_fake_cnt[6] .mask = 16'h3C3F;
defparam \hspi_fake_cnt[6] .modeMux = 1'b1;
defparam \hspi_fake_cnt[6] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[6] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[6] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[6] .CarryEnb = 1'b0;

alta_slice \hspi_fake_cnt[7] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(hspi_fake_cnt[7]),
	.Cin(\Add1~11 ),
	.Qin(hspi_fake_cnt[7]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|ack~q_X2_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add1~12_combout ),
	.Cout(),
	.Q(hspi_fake_cnt[7]));
defparam \hspi_fake_cnt[7] .coord_x = 7;
defparam \hspi_fake_cnt[7] .coord_y = 8;
defparam \hspi_fake_cnt[7] .coord_z = 10;
defparam \hspi_fake_cnt[7] .mask = 16'hF00F;
defparam \hspi_fake_cnt[7] .modeMux = 1'b1;
defparam \hspi_fake_cnt[7] .FeedbackMux = 1'b0;
defparam \hspi_fake_cnt[7] .ShiftMux = 1'b0;
defparam \hspi_fake_cnt[7] .BypassEn = 1'b0;
defparam \hspi_fake_cnt[7] .CarryEnb = 1'b1;

alta_slice \hspi_req_cnt[0] (
	.A(hspi_req_cnt[4]),
	.B(vcc),
	.C(\hspi_req_cnt[0]~21_combout ),
	.D(hspi_req_cnt[3]),
	.Cin(),
	.Qin(hspi_req_cnt[0]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(SyncReset_X6_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y5_VCC),
	.LutOut(\hspi|delay_cnt~17_combout ),
	.Cout(),
	.Q(hspi_req_cnt[0]));
defparam \hspi_req_cnt[0] .coord_x = 4;
defparam \hspi_req_cnt[0] .coord_y = 7;
defparam \hspi_req_cnt[0] .coord_z = 1;
defparam \hspi_req_cnt[0] .mask = 16'hFFAA;
defparam \hspi_req_cnt[0] .modeMux = 1'b0;
defparam \hspi_req_cnt[0] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[0] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[0] .BypassEn = 1'b1;
defparam \hspi_req_cnt[0] .CarryEnb = 1'b1;

alta_slice \hspi_req_cnt[0]~21 (
	.A(vcc),
	.B(vcc),
	.C(hspi_req_cnt[0]),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[0]~21_combout ),
	.Cout(),
	.Q());
defparam \hspi_req_cnt[0]~21 .coord_x = 5;
defparam \hspi_req_cnt[0]~21 .coord_y = 7;
defparam \hspi_req_cnt[0]~21 .coord_z = 15;
defparam \hspi_req_cnt[0]~21 .mask = 16'h0F0F;
defparam \hspi_req_cnt[0]~21 .modeMux = 1'b0;
defparam \hspi_req_cnt[0]~21 .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[0]~21 .ShiftMux = 1'b0;
defparam \hspi_req_cnt[0]~21 .BypassEn = 1'b0;
defparam \hspi_req_cnt[0]~21 .CarryEnb = 1'b1;

alta_slice \hspi_req_cnt[1] (
	.A(hspi_req_cnt[0]),
	.B(hspi_req_cnt[1]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(hspi_req_cnt[1]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[1]~7_combout ),
	.Cout(\hspi_req_cnt[1]~8 ),
	.Q(hspi_req_cnt[1]));
defparam \hspi_req_cnt[1] .coord_x = 4;
defparam \hspi_req_cnt[1] .coord_y = 7;
defparam \hspi_req_cnt[1] .coord_z = 5;
defparam \hspi_req_cnt[1] .mask = 16'h6688;
defparam \hspi_req_cnt[1] .modeMux = 1'b0;
defparam \hspi_req_cnt[1] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[1] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[1] .BypassEn = 1'b0;
defparam \hspi_req_cnt[1] .CarryEnb = 1'b0;

alta_slice \hspi_req_cnt[2] (
	.A(vcc),
	.B(hspi_req_cnt[2]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi_req_cnt[1]~8 ),
	.Qin(hspi_req_cnt[2]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[2]~9_combout ),
	.Cout(\hspi_req_cnt[2]~10 ),
	.Q(hspi_req_cnt[2]));
defparam \hspi_req_cnt[2] .coord_x = 4;
defparam \hspi_req_cnt[2] .coord_y = 7;
defparam \hspi_req_cnt[2] .coord_z = 6;
defparam \hspi_req_cnt[2] .mask = 16'h3C3F;
defparam \hspi_req_cnt[2] .modeMux = 1'b1;
defparam \hspi_req_cnt[2] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[2] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[2] .BypassEn = 1'b0;
defparam \hspi_req_cnt[2] .CarryEnb = 1'b0;

alta_slice \hspi_req_cnt[3] (
	.A(vcc),
	.B(hspi_req_cnt[3]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi_req_cnt[2]~10 ),
	.Qin(hspi_req_cnt[3]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[3]~11_combout ),
	.Cout(\hspi_req_cnt[3]~12 ),
	.Q(hspi_req_cnt[3]));
defparam \hspi_req_cnt[3] .coord_x = 4;
defparam \hspi_req_cnt[3] .coord_y = 7;
defparam \hspi_req_cnt[3] .coord_z = 7;
defparam \hspi_req_cnt[3] .mask = 16'hC30C;
defparam \hspi_req_cnt[3] .modeMux = 1'b1;
defparam \hspi_req_cnt[3] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[3] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[3] .BypassEn = 1'b0;
defparam \hspi_req_cnt[3] .CarryEnb = 1'b0;

alta_slice \hspi_req_cnt[4] (
	.A(vcc),
	.B(hspi_req_cnt[4]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi_req_cnt[3]~12 ),
	.Qin(hspi_req_cnt[4]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[4]~13_combout ),
	.Cout(\hspi_req_cnt[4]~14 ),
	.Q(hspi_req_cnt[4]));
defparam \hspi_req_cnt[4] .coord_x = 4;
defparam \hspi_req_cnt[4] .coord_y = 7;
defparam \hspi_req_cnt[4] .coord_z = 8;
defparam \hspi_req_cnt[4] .mask = 16'h3C3F;
defparam \hspi_req_cnt[4] .modeMux = 1'b1;
defparam \hspi_req_cnt[4] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[4] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[4] .BypassEn = 1'b0;
defparam \hspi_req_cnt[4] .CarryEnb = 1'b0;

alta_slice \hspi_req_cnt[5] (
	.A(vcc),
	.B(hspi_req_cnt[5]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi_req_cnt[4]~14 ),
	.Qin(hspi_req_cnt[5]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[5]~15_combout ),
	.Cout(\hspi_req_cnt[5]~16 ),
	.Q(hspi_req_cnt[5]));
defparam \hspi_req_cnt[5] .coord_x = 4;
defparam \hspi_req_cnt[5] .coord_y = 7;
defparam \hspi_req_cnt[5] .coord_z = 9;
defparam \hspi_req_cnt[5] .mask = 16'hC30C;
defparam \hspi_req_cnt[5] .modeMux = 1'b1;
defparam \hspi_req_cnt[5] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[5] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[5] .BypassEn = 1'b0;
defparam \hspi_req_cnt[5] .CarryEnb = 1'b0;

alta_slice \hspi_req_cnt[6] (
	.A(vcc),
	.B(hspi_req_cnt[6]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi_req_cnt[5]~16 ),
	.Qin(hspi_req_cnt[6]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[6]~17_combout ),
	.Cout(\hspi_req_cnt[6]~18 ),
	.Q(hspi_req_cnt[6]));
defparam \hspi_req_cnt[6] .coord_x = 4;
defparam \hspi_req_cnt[6] .coord_y = 7;
defparam \hspi_req_cnt[6] .coord_z = 10;
defparam \hspi_req_cnt[6] .mask = 16'h3C3F;
defparam \hspi_req_cnt[6] .modeMux = 1'b1;
defparam \hspi_req_cnt[6] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[6] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[6] .BypassEn = 1'b0;
defparam \hspi_req_cnt[6] .CarryEnb = 1'b0;

alta_slice \hspi_req_cnt[7] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(hspi_req_cnt[7]),
	.Cin(\hspi_req_cnt[6]~18 ),
	.Qin(hspi_req_cnt[7]),
	.Clk(\hspi|ack~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi_req_cnt[7]~19_combout ),
	.Cout(),
	.Q(hspi_req_cnt[7]));
defparam \hspi_req_cnt[7] .coord_x = 4;
defparam \hspi_req_cnt[7] .coord_y = 7;
defparam \hspi_req_cnt[7] .coord_z = 11;
defparam \hspi_req_cnt[7] .mask = 16'hF00F;
defparam \hspi_req_cnt[7] .modeMux = 1'b1;
defparam \hspi_req_cnt[7] .FeedbackMux = 1'b0;
defparam \hspi_req_cnt[7] .ShiftMux = 1'b0;
defparam \hspi_req_cnt[7] .BypassEn = 1'b0;
defparam \hspi_req_cnt[7] .CarryEnb = 1'b1;

alta_slice \hspi|Add0~0 (
	.A(\hspi|delay_cnt [0]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~0_combout ),
	.Cout(\hspi|Add0~1 ),
	.Q());
defparam \hspi|Add0~0 .coord_x = 5;
defparam \hspi|Add0~0 .coord_y = 6;
defparam \hspi|Add0~0 .coord_z = 0;
defparam \hspi|Add0~0 .mask = 16'h55AA;
defparam \hspi|Add0~0 .modeMux = 1'b0;
defparam \hspi|Add0~0 .FeedbackMux = 1'b0;
defparam \hspi|Add0~0 .ShiftMux = 1'b0;
defparam \hspi|Add0~0 .BypassEn = 1'b0;
defparam \hspi|Add0~0 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~10 (
	.A(vcc),
	.B(\hspi|delay_cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~9 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~10_combout ),
	.Cout(\hspi|Add0~11 ),
	.Q());
defparam \hspi|Add0~10 .coord_x = 5;
defparam \hspi|Add0~10 .coord_y = 6;
defparam \hspi|Add0~10 .coord_z = 5;
defparam \hspi|Add0~10 .mask = 16'h3C3F;
defparam \hspi|Add0~10 .modeMux = 1'b1;
defparam \hspi|Add0~10 .FeedbackMux = 1'b0;
defparam \hspi|Add0~10 .ShiftMux = 1'b0;
defparam \hspi|Add0~10 .BypassEn = 1'b0;
defparam \hspi|Add0~10 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~12 (
	.A(\hspi|delay_cnt [6]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~11 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~12_combout ),
	.Cout(\hspi|Add0~13 ),
	.Q());
defparam \hspi|Add0~12 .coord_x = 5;
defparam \hspi|Add0~12 .coord_y = 6;
defparam \hspi|Add0~12 .coord_z = 6;
defparam \hspi|Add0~12 .mask = 16'hA50A;
defparam \hspi|Add0~12 .modeMux = 1'b1;
defparam \hspi|Add0~12 .FeedbackMux = 1'b0;
defparam \hspi|Add0~12 .ShiftMux = 1'b0;
defparam \hspi|Add0~12 .BypassEn = 1'b0;
defparam \hspi|Add0~12 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~14 (
	.A(vcc),
	.B(\hspi|delay_cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~13 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~14_combout ),
	.Cout(\hspi|Add0~15 ),
	.Q());
defparam \hspi|Add0~14 .coord_x = 5;
defparam \hspi|Add0~14 .coord_y = 6;
defparam \hspi|Add0~14 .coord_z = 7;
defparam \hspi|Add0~14 .mask = 16'h3C3F;
defparam \hspi|Add0~14 .modeMux = 1'b1;
defparam \hspi|Add0~14 .FeedbackMux = 1'b0;
defparam \hspi|Add0~14 .ShiftMux = 1'b0;
defparam \hspi|Add0~14 .BypassEn = 1'b0;
defparam \hspi|Add0~14 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~16 (
	.A(vcc),
	.B(\hspi|delay_cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~15 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~16_combout ),
	.Cout(\hspi|Add0~17 ),
	.Q());
defparam \hspi|Add0~16 .coord_x = 5;
defparam \hspi|Add0~16 .coord_y = 6;
defparam \hspi|Add0~16 .coord_z = 8;
defparam \hspi|Add0~16 .mask = 16'hC30C;
defparam \hspi|Add0~16 .modeMux = 1'b1;
defparam \hspi|Add0~16 .FeedbackMux = 1'b0;
defparam \hspi|Add0~16 .ShiftMux = 1'b0;
defparam \hspi|Add0~16 .BypassEn = 1'b0;
defparam \hspi|Add0~16 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~18 (
	.A(vcc),
	.B(\hspi|delay_cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~17 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~18_combout ),
	.Cout(\hspi|Add0~19 ),
	.Q());
defparam \hspi|Add0~18 .coord_x = 5;
defparam \hspi|Add0~18 .coord_y = 6;
defparam \hspi|Add0~18 .coord_z = 9;
defparam \hspi|Add0~18 .mask = 16'h3C3F;
defparam \hspi|Add0~18 .modeMux = 1'b1;
defparam \hspi|Add0~18 .FeedbackMux = 1'b0;
defparam \hspi|Add0~18 .ShiftMux = 1'b0;
defparam \hspi|Add0~18 .BypassEn = 1'b0;
defparam \hspi|Add0~18 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~2 (
	.A(vcc),
	.B(\hspi|delay_cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~1 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~2_combout ),
	.Cout(\hspi|Add0~3 ),
	.Q());
defparam \hspi|Add0~2 .coord_x = 5;
defparam \hspi|Add0~2 .coord_y = 6;
defparam \hspi|Add0~2 .coord_z = 1;
defparam \hspi|Add0~2 .mask = 16'h3C3F;
defparam \hspi|Add0~2 .modeMux = 1'b1;
defparam \hspi|Add0~2 .FeedbackMux = 1'b0;
defparam \hspi|Add0~2 .ShiftMux = 1'b0;
defparam \hspi|Add0~2 .BypassEn = 1'b0;
defparam \hspi|Add0~2 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~20 (
	.A(vcc),
	.B(\hspi|delay_cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~19 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~20_combout ),
	.Cout(\hspi|Add0~21 ),
	.Q());
defparam \hspi|Add0~20 .coord_x = 5;
defparam \hspi|Add0~20 .coord_y = 6;
defparam \hspi|Add0~20 .coord_z = 10;
defparam \hspi|Add0~20 .mask = 16'hC30C;
defparam \hspi|Add0~20 .modeMux = 1'b1;
defparam \hspi|Add0~20 .FeedbackMux = 1'b0;
defparam \hspi|Add0~20 .ShiftMux = 1'b0;
defparam \hspi|Add0~20 .BypassEn = 1'b0;
defparam \hspi|Add0~20 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~22 (
	.A(vcc),
	.B(\hspi|delay_cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~21 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~22_combout ),
	.Cout(\hspi|Add0~23 ),
	.Q());
defparam \hspi|Add0~22 .coord_x = 5;
defparam \hspi|Add0~22 .coord_y = 6;
defparam \hspi|Add0~22 .coord_z = 11;
defparam \hspi|Add0~22 .mask = 16'h3C3F;
defparam \hspi|Add0~22 .modeMux = 1'b1;
defparam \hspi|Add0~22 .FeedbackMux = 1'b0;
defparam \hspi|Add0~22 .ShiftMux = 1'b0;
defparam \hspi|Add0~22 .BypassEn = 1'b0;
defparam \hspi|Add0~22 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~24 (
	.A(vcc),
	.B(\hspi|delay_cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~23 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~24_combout ),
	.Cout(\hspi|Add0~25 ),
	.Q());
defparam \hspi|Add0~24 .coord_x = 5;
defparam \hspi|Add0~24 .coord_y = 6;
defparam \hspi|Add0~24 .coord_z = 12;
defparam \hspi|Add0~24 .mask = 16'hC30C;
defparam \hspi|Add0~24 .modeMux = 1'b1;
defparam \hspi|Add0~24 .FeedbackMux = 1'b0;
defparam \hspi|Add0~24 .ShiftMux = 1'b0;
defparam \hspi|Add0~24 .BypassEn = 1'b0;
defparam \hspi|Add0~24 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~26 (
	.A(\hspi|delay_cnt [13]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~25 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~26_combout ),
	.Cout(\hspi|Add0~27 ),
	.Q());
defparam \hspi|Add0~26 .coord_x = 5;
defparam \hspi|Add0~26 .coord_y = 6;
defparam \hspi|Add0~26 .coord_z = 13;
defparam \hspi|Add0~26 .mask = 16'h5A5F;
defparam \hspi|Add0~26 .modeMux = 1'b1;
defparam \hspi|Add0~26 .FeedbackMux = 1'b0;
defparam \hspi|Add0~26 .ShiftMux = 1'b0;
defparam \hspi|Add0~26 .BypassEn = 1'b0;
defparam \hspi|Add0~26 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~28 (
	.A(vcc),
	.B(\hspi|delay_cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~27 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~28_combout ),
	.Cout(\hspi|Add0~29 ),
	.Q());
defparam \hspi|Add0~28 .coord_x = 5;
defparam \hspi|Add0~28 .coord_y = 6;
defparam \hspi|Add0~28 .coord_z = 14;
defparam \hspi|Add0~28 .mask = 16'hC30C;
defparam \hspi|Add0~28 .modeMux = 1'b1;
defparam \hspi|Add0~28 .FeedbackMux = 1'b0;
defparam \hspi|Add0~28 .ShiftMux = 1'b0;
defparam \hspi|Add0~28 .BypassEn = 1'b0;
defparam \hspi|Add0~28 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~30 (
	.A(vcc),
	.B(\hspi|delay_cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~29 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~30_combout ),
	.Cout(\hspi|Add0~31 ),
	.Q());
defparam \hspi|Add0~30 .coord_x = 5;
defparam \hspi|Add0~30 .coord_y = 6;
defparam \hspi|Add0~30 .coord_z = 15;
defparam \hspi|Add0~30 .mask = 16'h3C3F;
defparam \hspi|Add0~30 .modeMux = 1'b1;
defparam \hspi|Add0~30 .FeedbackMux = 1'b0;
defparam \hspi|Add0~30 .ShiftMux = 1'b0;
defparam \hspi|Add0~30 .BypassEn = 1'b0;
defparam \hspi|Add0~30 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~32 (
	.A(vcc),
	.B(\hspi|delay_cnt [16]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~31 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~32_combout ),
	.Cout(\hspi|Add0~33 ),
	.Q());
defparam \hspi|Add0~32 .coord_x = 5;
defparam \hspi|Add0~32 .coord_y = 5;
defparam \hspi|Add0~32 .coord_z = 0;
defparam \hspi|Add0~32 .mask = 16'hC30C;
defparam \hspi|Add0~32 .modeMux = 1'b1;
defparam \hspi|Add0~32 .FeedbackMux = 1'b0;
defparam \hspi|Add0~32 .ShiftMux = 1'b0;
defparam \hspi|Add0~32 .BypassEn = 1'b0;
defparam \hspi|Add0~32 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~34 (
	.A(vcc),
	.B(\hspi|delay_cnt [17]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~33 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~34_combout ),
	.Cout(\hspi|Add0~35 ),
	.Q());
defparam \hspi|Add0~34 .coord_x = 5;
defparam \hspi|Add0~34 .coord_y = 5;
defparam \hspi|Add0~34 .coord_z = 1;
defparam \hspi|Add0~34 .mask = 16'h3C3F;
defparam \hspi|Add0~34 .modeMux = 1'b1;
defparam \hspi|Add0~34 .FeedbackMux = 1'b0;
defparam \hspi|Add0~34 .ShiftMux = 1'b0;
defparam \hspi|Add0~34 .BypassEn = 1'b0;
defparam \hspi|Add0~34 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~36 (
	.A(vcc),
	.B(\hspi|delay_cnt [18]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~35 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~36_combout ),
	.Cout(\hspi|Add0~37 ),
	.Q());
defparam \hspi|Add0~36 .coord_x = 5;
defparam \hspi|Add0~36 .coord_y = 5;
defparam \hspi|Add0~36 .coord_z = 2;
defparam \hspi|Add0~36 .mask = 16'hC30C;
defparam \hspi|Add0~36 .modeMux = 1'b1;
defparam \hspi|Add0~36 .FeedbackMux = 1'b0;
defparam \hspi|Add0~36 .ShiftMux = 1'b0;
defparam \hspi|Add0~36 .BypassEn = 1'b0;
defparam \hspi|Add0~36 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~38 (
	.A(vcc),
	.B(\hspi|delay_cnt [19]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~37 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~38_combout ),
	.Cout(\hspi|Add0~39 ),
	.Q());
defparam \hspi|Add0~38 .coord_x = 5;
defparam \hspi|Add0~38 .coord_y = 5;
defparam \hspi|Add0~38 .coord_z = 3;
defparam \hspi|Add0~38 .mask = 16'h3C3F;
defparam \hspi|Add0~38 .modeMux = 1'b1;
defparam \hspi|Add0~38 .FeedbackMux = 1'b0;
defparam \hspi|Add0~38 .ShiftMux = 1'b0;
defparam \hspi|Add0~38 .BypassEn = 1'b0;
defparam \hspi|Add0~38 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~4 (
	.A(vcc),
	.B(\hspi|delay_cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~3 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~4_combout ),
	.Cout(\hspi|Add0~5 ),
	.Q());
defparam \hspi|Add0~4 .coord_x = 5;
defparam \hspi|Add0~4 .coord_y = 6;
defparam \hspi|Add0~4 .coord_z = 2;
defparam \hspi|Add0~4 .mask = 16'hC30C;
defparam \hspi|Add0~4 .modeMux = 1'b1;
defparam \hspi|Add0~4 .FeedbackMux = 1'b0;
defparam \hspi|Add0~4 .ShiftMux = 1'b0;
defparam \hspi|Add0~4 .BypassEn = 1'b0;
defparam \hspi|Add0~4 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~46 (
	.A(vcc),
	.B(\hspi|Add0~22_combout ),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~46_combout ),
	.Cout(),
	.Q());
defparam \hspi|Add0~46 .coord_x = 5;
defparam \hspi|Add0~46 .coord_y = 7;
defparam \hspi|Add0~46 .coord_z = 10;
defparam \hspi|Add0~46 .mask = 16'hC000;
defparam \hspi|Add0~46 .modeMux = 1'b0;
defparam \hspi|Add0~46 .FeedbackMux = 1'b0;
defparam \hspi|Add0~46 .ShiftMux = 1'b0;
defparam \hspi|Add0~46 .BypassEn = 1'b0;
defparam \hspi|Add0~46 .CarryEnb = 1'b1;

alta_slice \hspi|Add0~52 (
	.A(vcc),
	.B(\hspi|delay_cnt [20]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~39 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~52_combout ),
	.Cout(\hspi|Add0~53 ),
	.Q());
defparam \hspi|Add0~52 .coord_x = 5;
defparam \hspi|Add0~52 .coord_y = 5;
defparam \hspi|Add0~52 .coord_z = 4;
defparam \hspi|Add0~52 .mask = 16'hC30C;
defparam \hspi|Add0~52 .modeMux = 1'b1;
defparam \hspi|Add0~52 .FeedbackMux = 1'b0;
defparam \hspi|Add0~52 .ShiftMux = 1'b0;
defparam \hspi|Add0~52 .BypassEn = 1'b0;
defparam \hspi|Add0~52 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~55 (
	.A(\hspi|delay_cnt [21]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~53 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~55_combout ),
	.Cout(\hspi|Add0~56 ),
	.Q());
defparam \hspi|Add0~55 .coord_x = 5;
defparam \hspi|Add0~55 .coord_y = 5;
defparam \hspi|Add0~55 .coord_z = 5;
defparam \hspi|Add0~55 .mask = 16'h5A5F;
defparam \hspi|Add0~55 .modeMux = 1'b1;
defparam \hspi|Add0~55 .FeedbackMux = 1'b0;
defparam \hspi|Add0~55 .ShiftMux = 1'b0;
defparam \hspi|Add0~55 .BypassEn = 1'b0;
defparam \hspi|Add0~55 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~57 (
	.A(vcc),
	.B(\hspi|delay_cnt [22]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~56 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~57_combout ),
	.Cout(\hspi|Add0~58 ),
	.Q());
defparam \hspi|Add0~57 .coord_x = 5;
defparam \hspi|Add0~57 .coord_y = 5;
defparam \hspi|Add0~57 .coord_z = 6;
defparam \hspi|Add0~57 .mask = 16'hC30C;
defparam \hspi|Add0~57 .modeMux = 1'b1;
defparam \hspi|Add0~57 .FeedbackMux = 1'b0;
defparam \hspi|Add0~57 .ShiftMux = 1'b0;
defparam \hspi|Add0~57 .BypassEn = 1'b0;
defparam \hspi|Add0~57 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~59 (
	.A(vcc),
	.B(\hspi|delay_cnt [23]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~58 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~59_combout ),
	.Cout(\hspi|Add0~60 ),
	.Q());
defparam \hspi|Add0~59 .coord_x = 5;
defparam \hspi|Add0~59 .coord_y = 5;
defparam \hspi|Add0~59 .coord_z = 7;
defparam \hspi|Add0~59 .mask = 16'h3C3F;
defparam \hspi|Add0~59 .modeMux = 1'b1;
defparam \hspi|Add0~59 .FeedbackMux = 1'b0;
defparam \hspi|Add0~59 .ShiftMux = 1'b0;
defparam \hspi|Add0~59 .BypassEn = 1'b0;
defparam \hspi|Add0~59 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~6 (
	.A(vcc),
	.B(\hspi|delay_cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~5 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~6_combout ),
	.Cout(\hspi|Add0~7 ),
	.Q());
defparam \hspi|Add0~6 .coord_x = 5;
defparam \hspi|Add0~6 .coord_y = 6;
defparam \hspi|Add0~6 .coord_z = 3;
defparam \hspi|Add0~6 .mask = 16'h3C3F;
defparam \hspi|Add0~6 .modeMux = 1'b1;
defparam \hspi|Add0~6 .FeedbackMux = 1'b0;
defparam \hspi|Add0~6 .ShiftMux = 1'b0;
defparam \hspi|Add0~6 .BypassEn = 1'b0;
defparam \hspi|Add0~6 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~61 (
	.A(\hspi|delay_cnt [24]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~60 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~61_combout ),
	.Cout(\hspi|Add0~62 ),
	.Q());
defparam \hspi|Add0~61 .coord_x = 5;
defparam \hspi|Add0~61 .coord_y = 5;
defparam \hspi|Add0~61 .coord_z = 8;
defparam \hspi|Add0~61 .mask = 16'hA50A;
defparam \hspi|Add0~61 .modeMux = 1'b1;
defparam \hspi|Add0~61 .FeedbackMux = 1'b0;
defparam \hspi|Add0~61 .ShiftMux = 1'b0;
defparam \hspi|Add0~61 .BypassEn = 1'b0;
defparam \hspi|Add0~61 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~63 (
	.A(vcc),
	.B(\hspi|delay_cnt [25]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~62 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~63_combout ),
	.Cout(\hspi|Add0~64 ),
	.Q());
defparam \hspi|Add0~63 .coord_x = 5;
defparam \hspi|Add0~63 .coord_y = 5;
defparam \hspi|Add0~63 .coord_z = 9;
defparam \hspi|Add0~63 .mask = 16'h3C3F;
defparam \hspi|Add0~63 .modeMux = 1'b1;
defparam \hspi|Add0~63 .FeedbackMux = 1'b0;
defparam \hspi|Add0~63 .ShiftMux = 1'b0;
defparam \hspi|Add0~63 .BypassEn = 1'b0;
defparam \hspi|Add0~63 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~65 (
	.A(vcc),
	.B(\hspi|delay_cnt [26]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~64 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~65_combout ),
	.Cout(\hspi|Add0~66 ),
	.Q());
defparam \hspi|Add0~65 .coord_x = 5;
defparam \hspi|Add0~65 .coord_y = 5;
defparam \hspi|Add0~65 .coord_z = 10;
defparam \hspi|Add0~65 .mask = 16'hC30C;
defparam \hspi|Add0~65 .modeMux = 1'b1;
defparam \hspi|Add0~65 .FeedbackMux = 1'b0;
defparam \hspi|Add0~65 .ShiftMux = 1'b0;
defparam \hspi|Add0~65 .BypassEn = 1'b0;
defparam \hspi|Add0~65 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~67 (
	.A(vcc),
	.B(\hspi|delay_cnt [27]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~66 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~67_combout ),
	.Cout(\hspi|Add0~68 ),
	.Q());
defparam \hspi|Add0~67 .coord_x = 5;
defparam \hspi|Add0~67 .coord_y = 5;
defparam \hspi|Add0~67 .coord_z = 11;
defparam \hspi|Add0~67 .mask = 16'h3C3F;
defparam \hspi|Add0~67 .modeMux = 1'b1;
defparam \hspi|Add0~67 .FeedbackMux = 1'b0;
defparam \hspi|Add0~67 .ShiftMux = 1'b0;
defparam \hspi|Add0~67 .BypassEn = 1'b0;
defparam \hspi|Add0~67 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~69 (
	.A(vcc),
	.B(\hspi|delay_cnt [28]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~68 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~69_combout ),
	.Cout(\hspi|Add0~70 ),
	.Q());
defparam \hspi|Add0~69 .coord_x = 5;
defparam \hspi|Add0~69 .coord_y = 5;
defparam \hspi|Add0~69 .coord_z = 12;
defparam \hspi|Add0~69 .mask = 16'hC30C;
defparam \hspi|Add0~69 .modeMux = 1'b1;
defparam \hspi|Add0~69 .FeedbackMux = 1'b0;
defparam \hspi|Add0~69 .ShiftMux = 1'b0;
defparam \hspi|Add0~69 .BypassEn = 1'b0;
defparam \hspi|Add0~69 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~71 (
	.A(vcc),
	.B(\hspi|delay_cnt [29]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~70 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~71_combout ),
	.Cout(\hspi|Add0~72 ),
	.Q());
defparam \hspi|Add0~71 .coord_x = 5;
defparam \hspi|Add0~71 .coord_y = 5;
defparam \hspi|Add0~71 .coord_z = 13;
defparam \hspi|Add0~71 .mask = 16'h3C3F;
defparam \hspi|Add0~71 .modeMux = 1'b1;
defparam \hspi|Add0~71 .FeedbackMux = 1'b0;
defparam \hspi|Add0~71 .ShiftMux = 1'b0;
defparam \hspi|Add0~71 .BypassEn = 1'b0;
defparam \hspi|Add0~71 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~73 (
	.A(vcc),
	.B(\hspi|delay_cnt [30]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~72 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~73_combout ),
	.Cout(\hspi|Add0~74 ),
	.Q());
defparam \hspi|Add0~73 .coord_x = 5;
defparam \hspi|Add0~73 .coord_y = 5;
defparam \hspi|Add0~73 .coord_z = 14;
defparam \hspi|Add0~73 .mask = 16'hC30C;
defparam \hspi|Add0~73 .modeMux = 1'b1;
defparam \hspi|Add0~73 .FeedbackMux = 1'b0;
defparam \hspi|Add0~73 .ShiftMux = 1'b0;
defparam \hspi|Add0~73 .BypassEn = 1'b0;
defparam \hspi|Add0~73 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~75 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|delay_cnt [31]),
	.Cin(\hspi|Add0~74 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~75_combout ),
	.Cout(),
	.Q());
defparam \hspi|Add0~75 .coord_x = 5;
defparam \hspi|Add0~75 .coord_y = 5;
defparam \hspi|Add0~75 .coord_z = 15;
defparam \hspi|Add0~75 .mask = 16'h0FF0;
defparam \hspi|Add0~75 .modeMux = 1'b1;
defparam \hspi|Add0~75 .FeedbackMux = 1'b0;
defparam \hspi|Add0~75 .ShiftMux = 1'b0;
defparam \hspi|Add0~75 .BypassEn = 1'b0;
defparam \hspi|Add0~75 .CarryEnb = 1'b1;

alta_slice \hspi|Add0~8 (
	.A(vcc),
	.B(\hspi|delay_cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add0~7 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~8_combout ),
	.Cout(\hspi|Add0~9 ),
	.Q());
defparam \hspi|Add0~8 .coord_x = 5;
defparam \hspi|Add0~8 .coord_y = 6;
defparam \hspi|Add0~8 .coord_z = 4;
defparam \hspi|Add0~8 .mask = 16'hC30C;
defparam \hspi|Add0~8 .modeMux = 1'b1;
defparam \hspi|Add0~8 .FeedbackMux = 1'b0;
defparam \hspi|Add0~8 .ShiftMux = 1'b0;
defparam \hspi|Add0~8 .BypassEn = 1'b0;
defparam \hspi|Add0~8 .CarryEnb = 1'b0;

alta_slice \hspi|Add0~83 (
	.A(vcc),
	.B(\hspi|Add0~0_combout ),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~83_combout ),
	.Cout(),
	.Q());
defparam \hspi|Add0~83 .coord_x = 5;
defparam \hspi|Add0~83 .coord_y = 7;
defparam \hspi|Add0~83 .coord_z = 5;
defparam \hspi|Add0~83 .mask = 16'hC000;
defparam \hspi|Add0~83 .modeMux = 1'b0;
defparam \hspi|Add0~83 .FeedbackMux = 1'b0;
defparam \hspi|Add0~83 .ShiftMux = 1'b0;
defparam \hspi|Add0~83 .BypassEn = 1'b0;
defparam \hspi|Add0~83 .CarryEnb = 1'b1;

alta_slice \hspi|Add1~0 (
	.A(vcc),
	.B(\hspi|xfer_rem [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~0_combout ),
	.Cout(\hspi|Add1~1 ),
	.Q());
defparam \hspi|Add1~0 .coord_x = 7;
defparam \hspi|Add1~0 .coord_y = 5;
defparam \hspi|Add1~0 .coord_z = 0;
defparam \hspi|Add1~0 .mask = 16'h33CC;
defparam \hspi|Add1~0 .modeMux = 1'b0;
defparam \hspi|Add1~0 .FeedbackMux = 1'b0;
defparam \hspi|Add1~0 .ShiftMux = 1'b0;
defparam \hspi|Add1~0 .BypassEn = 1'b0;
defparam \hspi|Add1~0 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~10 (
	.A(vcc),
	.B(\hspi|xfer_rem [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~9 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~10_combout ),
	.Cout(\hspi|Add1~11 ),
	.Q());
defparam \hspi|Add1~10 .coord_x = 7;
defparam \hspi|Add1~10 .coord_y = 5;
defparam \hspi|Add1~10 .coord_z = 5;
defparam \hspi|Add1~10 .mask = 16'hC303;
defparam \hspi|Add1~10 .modeMux = 1'b1;
defparam \hspi|Add1~10 .FeedbackMux = 1'b0;
defparam \hspi|Add1~10 .ShiftMux = 1'b0;
defparam \hspi|Add1~10 .BypassEn = 1'b0;
defparam \hspi|Add1~10 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~12 (
	.A(vcc),
	.B(\hspi|xfer_rem [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~11 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~12_combout ),
	.Cout(\hspi|Add1~13 ),
	.Q());
defparam \hspi|Add1~12 .coord_x = 7;
defparam \hspi|Add1~12 .coord_y = 5;
defparam \hspi|Add1~12 .coord_z = 6;
defparam \hspi|Add1~12 .mask = 16'h3CCF;
defparam \hspi|Add1~12 .modeMux = 1'b1;
defparam \hspi|Add1~12 .FeedbackMux = 1'b0;
defparam \hspi|Add1~12 .ShiftMux = 1'b0;
defparam \hspi|Add1~12 .BypassEn = 1'b0;
defparam \hspi|Add1~12 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~14 (
	.A(vcc),
	.B(\hspi|xfer_rem [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~13 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~14_combout ),
	.Cout(\hspi|Add1~15 ),
	.Q());
defparam \hspi|Add1~14 .coord_x = 7;
defparam \hspi|Add1~14 .coord_y = 5;
defparam \hspi|Add1~14 .coord_z = 7;
defparam \hspi|Add1~14 .mask = 16'hC303;
defparam \hspi|Add1~14 .modeMux = 1'b1;
defparam \hspi|Add1~14 .FeedbackMux = 1'b0;
defparam \hspi|Add1~14 .ShiftMux = 1'b0;
defparam \hspi|Add1~14 .BypassEn = 1'b0;
defparam \hspi|Add1~14 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~16 (
	.A(vcc),
	.B(\hspi|xfer_rem [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~15 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~16_combout ),
	.Cout(\hspi|Add1~17 ),
	.Q());
defparam \hspi|Add1~16 .coord_x = 7;
defparam \hspi|Add1~16 .coord_y = 5;
defparam \hspi|Add1~16 .coord_z = 8;
defparam \hspi|Add1~16 .mask = 16'h3CCF;
defparam \hspi|Add1~16 .modeMux = 1'b1;
defparam \hspi|Add1~16 .FeedbackMux = 1'b0;
defparam \hspi|Add1~16 .ShiftMux = 1'b0;
defparam \hspi|Add1~16 .BypassEn = 1'b0;
defparam \hspi|Add1~16 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~18 (
	.A(vcc),
	.B(\hspi|xfer_rem [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~17 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~18_combout ),
	.Cout(\hspi|Add1~19 ),
	.Q());
defparam \hspi|Add1~18 .coord_x = 7;
defparam \hspi|Add1~18 .coord_y = 5;
defparam \hspi|Add1~18 .coord_z = 9;
defparam \hspi|Add1~18 .mask = 16'hC303;
defparam \hspi|Add1~18 .modeMux = 1'b1;
defparam \hspi|Add1~18 .FeedbackMux = 1'b0;
defparam \hspi|Add1~18 .ShiftMux = 1'b0;
defparam \hspi|Add1~18 .BypassEn = 1'b0;
defparam \hspi|Add1~18 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~2 (
	.A(vcc),
	.B(\hspi|xfer_rem [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~1 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~2_combout ),
	.Cout(\hspi|Add1~3 ),
	.Q());
defparam \hspi|Add1~2 .coord_x = 7;
defparam \hspi|Add1~2 .coord_y = 5;
defparam \hspi|Add1~2 .coord_z = 1;
defparam \hspi|Add1~2 .mask = 16'hC303;
defparam \hspi|Add1~2 .modeMux = 1'b1;
defparam \hspi|Add1~2 .FeedbackMux = 1'b0;
defparam \hspi|Add1~2 .ShiftMux = 1'b0;
defparam \hspi|Add1~2 .BypassEn = 1'b0;
defparam \hspi|Add1~2 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~20 (
	.A(\hspi|xfer_rem [10]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~19 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~20_combout ),
	.Cout(\hspi|Add1~21 ),
	.Q());
defparam \hspi|Add1~20 .coord_x = 7;
defparam \hspi|Add1~20 .coord_y = 5;
defparam \hspi|Add1~20 .coord_z = 10;
defparam \hspi|Add1~20 .mask = 16'h5AAF;
defparam \hspi|Add1~20 .modeMux = 1'b1;
defparam \hspi|Add1~20 .FeedbackMux = 1'b0;
defparam \hspi|Add1~20 .ShiftMux = 1'b0;
defparam \hspi|Add1~20 .BypassEn = 1'b0;
defparam \hspi|Add1~20 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~22 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|xfer_rem [11]),
	.Cin(\hspi|Add1~21 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~22_combout ),
	.Cout(),
	.Q());
defparam \hspi|Add1~22 .coord_x = 7;
defparam \hspi|Add1~22 .coord_y = 5;
defparam \hspi|Add1~22 .coord_z = 11;
defparam \hspi|Add1~22 .mask = 16'hF00F;
defparam \hspi|Add1~22 .modeMux = 1'b1;
defparam \hspi|Add1~22 .FeedbackMux = 1'b0;
defparam \hspi|Add1~22 .ShiftMux = 1'b0;
defparam \hspi|Add1~22 .BypassEn = 1'b0;
defparam \hspi|Add1~22 .CarryEnb = 1'b1;

alta_slice \hspi|Add1~4 (
	.A(\hspi|xfer_rem [2]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~3 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~4_combout ),
	.Cout(\hspi|Add1~5 ),
	.Q());
defparam \hspi|Add1~4 .coord_x = 7;
defparam \hspi|Add1~4 .coord_y = 5;
defparam \hspi|Add1~4 .coord_z = 2;
defparam \hspi|Add1~4 .mask = 16'h5AAF;
defparam \hspi|Add1~4 .modeMux = 1'b1;
defparam \hspi|Add1~4 .FeedbackMux = 1'b0;
defparam \hspi|Add1~4 .ShiftMux = 1'b0;
defparam \hspi|Add1~4 .BypassEn = 1'b0;
defparam \hspi|Add1~4 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~6 (
	.A(vcc),
	.B(\hspi|xfer_rem [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~5 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~6_combout ),
	.Cout(\hspi|Add1~7 ),
	.Q());
defparam \hspi|Add1~6 .coord_x = 7;
defparam \hspi|Add1~6 .coord_y = 5;
defparam \hspi|Add1~6 .coord_z = 3;
defparam \hspi|Add1~6 .mask = 16'hC303;
defparam \hspi|Add1~6 .modeMux = 1'b1;
defparam \hspi|Add1~6 .FeedbackMux = 1'b0;
defparam \hspi|Add1~6 .ShiftMux = 1'b0;
defparam \hspi|Add1~6 .BypassEn = 1'b0;
defparam \hspi|Add1~6 .CarryEnb = 1'b0;

alta_slice \hspi|Add1~8 (
	.A(vcc),
	.B(\hspi|xfer_rem [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\hspi|Add1~7 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add1~8_combout ),
	.Cout(\hspi|Add1~9 ),
	.Q());
defparam \hspi|Add1~8 .coord_x = 7;
defparam \hspi|Add1~8 .coord_y = 5;
defparam \hspi|Add1~8 .coord_z = 4;
defparam \hspi|Add1~8 .mask = 16'h3CCF;
defparam \hspi|Add1~8 .modeMux = 1'b1;
defparam \hspi|Add1~8 .FeedbackMux = 1'b0;
defparam \hspi|Add1~8 .ShiftMux = 1'b0;
defparam \hspi|Add1~8 .BypassEn = 1'b0;
defparam \hspi|Add1~8 .CarryEnb = 1'b0;

alta_slice \hspi|Equal3~0 (
	.A(\hspi|xfer_rem [8]),
	.B(\hspi|xfer_rem [9]),
	.C(\hspi|xfer_rem [10]),
	.D(\hspi|xfer_rem [11]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Equal3~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Equal3~0 .coord_x = 6;
defparam \hspi|Equal3~0 .coord_y = 5;
defparam \hspi|Equal3~0 .coord_z = 7;
defparam \hspi|Equal3~0 .mask = 16'h0001;
defparam \hspi|Equal3~0 .modeMux = 1'b0;
defparam \hspi|Equal3~0 .FeedbackMux = 1'b0;
defparam \hspi|Equal3~0 .ShiftMux = 1'b0;
defparam \hspi|Equal3~0 .BypassEn = 1'b0;
defparam \hspi|Equal3~0 .CarryEnb = 1'b1;

alta_slice \hspi|Equal3~1 (
	.A(\hspi|xfer_rem [7]),
	.B(\hspi|xfer_rem [6]),
	.C(\hspi|xfer_rem [4]),
	.D(\hspi|xfer_rem [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Equal3~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|Equal3~1 .coord_x = 6;
defparam \hspi|Equal3~1 .coord_y = 5;
defparam \hspi|Equal3~1 .coord_z = 13;
defparam \hspi|Equal3~1 .mask = 16'h0001;
defparam \hspi|Equal3~1 .modeMux = 1'b0;
defparam \hspi|Equal3~1 .FeedbackMux = 1'b0;
defparam \hspi|Equal3~1 .ShiftMux = 1'b0;
defparam \hspi|Equal3~1 .BypassEn = 1'b0;
defparam \hspi|Equal3~1 .CarryEnb = 1'b1;

alta_slice \hspi|Equal3~2 (
	.A(\hspi|xfer_rem [3]),
	.B(\hspi|xfer_rem [1]),
	.C(\hspi|xfer_rem [2]),
	.D(\hspi|xfer_rem [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Equal3~2_combout ),
	.Cout(),
	.Q());
defparam \hspi|Equal3~2 .coord_x = 6;
defparam \hspi|Equal3~2 .coord_y = 5;
defparam \hspi|Equal3~2 .coord_z = 0;
defparam \hspi|Equal3~2 .mask = 16'h0100;
defparam \hspi|Equal3~2 .modeMux = 1'b0;
defparam \hspi|Equal3~2 .FeedbackMux = 1'b0;
defparam \hspi|Equal3~2 .ShiftMux = 1'b0;
defparam \hspi|Equal3~2 .BypassEn = 1'b0;
defparam \hspi|Equal3~2 .CarryEnb = 1'b1;

alta_slice \hspi|Equal3~3 (
	.A(vcc),
	.B(\hspi|Equal3~0_combout ),
	.C(\hspi|Equal3~2_combout ),
	.D(\hspi|Equal3~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Equal3~3_combout ),
	.Cout(),
	.Q());
defparam \hspi|Equal3~3 .coord_x = 6;
defparam \hspi|Equal3~3 .coord_y = 5;
defparam \hspi|Equal3~3 .coord_z = 4;
defparam \hspi|Equal3~3 .mask = 16'hC000;
defparam \hspi|Equal3~3 .modeMux = 1'b0;
defparam \hspi|Equal3~3 .FeedbackMux = 1'b0;
defparam \hspi|Equal3~3 .ShiftMux = 1'b0;
defparam \hspi|Equal3~3 .BypassEn = 1'b0;
defparam \hspi|Equal3~3 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~0 (
	.A(\hspi|delay_cnt [15]),
	.B(\hspi|delay_cnt [16]),
	.C(\hspi|delay_cnt [18]),
	.D(\hspi|delay_cnt [19]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~0 .coord_x = 4;
defparam \hspi|LessThan0~0 .coord_y = 6;
defparam \hspi|LessThan0~0 .coord_z = 1;
defparam \hspi|LessThan0~0 .mask = 16'h0001;
defparam \hspi|LessThan0~0 .modeMux = 1'b0;
defparam \hspi|LessThan0~0 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~0 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~0 .BypassEn = 1'b0;
defparam \hspi|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~1 (
	.A(\hspi|delay_cnt [9]),
	.B(\hspi|delay_cnt [11]),
	.C(\hspi|delay_cnt [8]),
	.D(\hspi|delay_cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~1 .coord_x = 5;
defparam \hspi|LessThan0~1 .coord_y = 7;
defparam \hspi|LessThan0~1 .coord_z = 7;
defparam \hspi|LessThan0~1 .mask = 16'h7FFF;
defparam \hspi|LessThan0~1 .modeMux = 1'b0;
defparam \hspi|LessThan0~1 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~1 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~1 .BypassEn = 1'b0;
defparam \hspi|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~2 (
	.A(\hspi|delay_cnt [17]),
	.B(\hspi|delay_cnt [20]),
	.C(\hspi|delay_cnt [18]),
	.D(\hspi|delay_cnt [19]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~2 .coord_x = 4;
defparam \hspi|LessThan0~2 .coord_y = 6;
defparam \hspi|LessThan0~2 .coord_z = 9;
defparam \hspi|LessThan0~2 .mask = 16'h3337;
defparam \hspi|LessThan0~2 .modeMux = 1'b0;
defparam \hspi|LessThan0~2 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~2 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~2 .BypassEn = 1'b0;
defparam \hspi|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~3 (
	.A(\hspi|delay_cnt [29]),
	.B(\hspi|delay_cnt [28]),
	.C(\hspi|delay_cnt [31]),
	.D(\hspi|delay_cnt [30]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~3 .coord_x = 4;
defparam \hspi|LessThan0~3 .coord_y = 5;
defparam \hspi|LessThan0~3 .coord_z = 9;
defparam \hspi|LessThan0~3 .mask = 16'h0001;
defparam \hspi|LessThan0~3 .modeMux = 1'b0;
defparam \hspi|LessThan0~3 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~3 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~3 .BypassEn = 1'b0;
defparam \hspi|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~4 (
	.A(\hspi|delay_cnt [25]),
	.B(\hspi|delay_cnt [26]),
	.C(\hspi|delay_cnt [24]),
	.D(\hspi|delay_cnt [27]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~4 .coord_x = 4;
defparam \hspi|LessThan0~4 .coord_y = 5;
defparam \hspi|LessThan0~4 .coord_z = 4;
defparam \hspi|LessThan0~4 .mask = 16'h0001;
defparam \hspi|LessThan0~4 .modeMux = 1'b0;
defparam \hspi|LessThan0~4 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~4 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~4 .BypassEn = 1'b0;
defparam \hspi|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~5 (
	.A(vcc),
	.B(\hspi|delay_cnt [21]),
	.C(\hspi|delay_cnt [23]),
	.D(\hspi|delay_cnt [22]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~5_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~5 .coord_x = 4;
defparam \hspi|LessThan0~5 .coord_y = 5;
defparam \hspi|LessThan0~5 .coord_z = 8;
defparam \hspi|LessThan0~5 .mask = 16'h0003;
defparam \hspi|LessThan0~5 .modeMux = 1'b0;
defparam \hspi|LessThan0~5 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~5 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~5 .BypassEn = 1'b0;
defparam \hspi|LessThan0~5 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~6 (
	.A(\hspi|LessThan0~4_combout ),
	.B(vcc),
	.C(\hspi|LessThan0~5_combout ),
	.D(\hspi|LessThan0~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~6_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~6 .coord_x = 4;
defparam \hspi|LessThan0~6 .coord_y = 5;
defparam \hspi|LessThan0~6 .coord_z = 13;
defparam \hspi|LessThan0~6 .mask = 16'hA000;
defparam \hspi|LessThan0~6 .modeMux = 1'b0;
defparam \hspi|LessThan0~6 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~6 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~6 .BypassEn = 1'b0;
defparam \hspi|LessThan0~6 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~7 (
	.A(\hspi|LessThan0~4_combout ),
	.B(\hspi|LessThan0~3_combout ),
	.C(\hspi|LessThan0~5_combout ),
	.D(\hspi|LessThan0~9_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~7_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~7 .coord_x = 4;
defparam \hspi|LessThan0~7 .coord_y = 5;
defparam \hspi|LessThan0~7 .coord_z = 2;
defparam \hspi|LessThan0~7 .mask = 16'h8000;
defparam \hspi|LessThan0~7 .modeMux = 1'b0;
defparam \hspi|LessThan0~7 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~7 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~7 .BypassEn = 1'b0;
defparam \hspi|LessThan0~7 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~8 (
	.A(\hspi|delay_cnt [12]),
	.B(\hspi|LessThan0~1_combout ),
	.C(\hspi|delay_cnt [13]),
	.D(\hspi|delay_cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~8_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~8 .coord_x = 5;
defparam \hspi|LessThan0~8 .coord_y = 7;
defparam \hspi|LessThan0~8 .coord_z = 13;
defparam \hspi|LessThan0~8 .mask = 16'h0405;
defparam \hspi|LessThan0~8 .modeMux = 1'b0;
defparam \hspi|LessThan0~8 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~8 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~8 .BypassEn = 1'b0;
defparam \hspi|LessThan0~8 .CarryEnb = 1'b1;

alta_slice \hspi|LessThan0~9 (
	.A(\hspi|LessThan0~8_combout ),
	.B(\hspi|LessThan0~0_combout ),
	.C(\hspi|LessThan0~2_combout ),
	.D(\hspi|delay_cnt [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|LessThan0~9_combout ),
	.Cout(),
	.Q());
defparam \hspi|LessThan0~9 .coord_x = 5;
defparam \hspi|LessThan0~9 .coord_y = 7;
defparam \hspi|LessThan0~9 .coord_z = 12;
defparam \hspi|LessThan0~9 .mask = 16'hF8FC;
defparam \hspi|LessThan0~9 .modeMux = 1'b0;
defparam \hspi|LessThan0~9 .FeedbackMux = 1'b0;
defparam \hspi|LessThan0~9 .ShiftMux = 1'b0;
defparam \hspi|LessThan0~9 .BypassEn = 1'b0;
defparam \hspi|LessThan0~9 .CarryEnb = 1'b1;

alta_slice \hspi|Selector13~0 (
	.A(\hspi|state.IDLE~q ),
	.B(\hspi|Equal3~3_combout ),
	.C(\hspi|state.SEND_PAYLOAD~q ),
	.D(\hspi|crc_en~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector13~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector13~0 .coord_x = 7;
defparam \hspi|Selector13~0 .coord_y = 7;
defparam \hspi|Selector13~0 .coord_z = 6;
defparam \hspi|Selector13~0 .mask = 16'h2A00;
defparam \hspi|Selector13~0 .modeMux = 1'b0;
defparam \hspi|Selector13~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector13~0 .ShiftMux = 1'b0;
defparam \hspi|Selector13~0 .BypassEn = 1'b0;
defparam \hspi|Selector13~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector1~0 (
	.A(vcc),
	.B(vcc),
	.C(hspi_fake_cnt[6]),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector1~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector1~0 .coord_x = 4;
defparam \hspi|Selector1~0 .coord_y = 8;
defparam \hspi|Selector1~0 .coord_z = 14;
defparam \hspi|Selector1~0 .mask = 16'hF000;
defparam \hspi|Selector1~0 .modeMux = 1'b0;
defparam \hspi|Selector1~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector1~0 .ShiftMux = 1'b0;
defparam \hspi|Selector1~0 .BypassEn = 1'b0;
defparam \hspi|Selector1~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector22~0 (
	.A(vcc),
	.B(\hspi|state.SEND_CRC_0~q ),
	.C(hspi_fake_cnt[7]),
	.D(\hspi|crc16 [8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector22~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector22~0 .coord_x = 7;
defparam \hspi|Selector22~0 .coord_y = 8;
defparam \hspi|Selector22~0 .coord_z = 3;
defparam \hspi|Selector22~0 .mask = 16'h30FC;
defparam \hspi|Selector22~0 .modeMux = 1'b0;
defparam \hspi|Selector22~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector22~0 .ShiftMux = 1'b0;
defparam \hspi|Selector22~0 .BypassEn = 1'b0;
defparam \hspi|Selector22~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector23~0 (
	.A(vcc),
	.B(\hspi|crc16 [9]),
	.C(\hspi|state.SEND_CRC_0~q ),
	.D(hspi_fake_cnt[6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector23~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector23~0 .coord_x = 7;
defparam \hspi|Selector23~0 .coord_y = 8;
defparam \hspi|Selector23~0 .coord_z = 14;
defparam \hspi|Selector23~0 .mask = 16'h3F30;
defparam \hspi|Selector23~0 .modeMux = 1'b0;
defparam \hspi|Selector23~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector23~0 .ShiftMux = 1'b0;
defparam \hspi|Selector23~0 .BypassEn = 1'b0;
defparam \hspi|Selector23~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector24~0 (
	.A(\hspi|crc16 [10]),
	.B(\hspi|tx_seq_num [3]),
	.C(\hspi|hd[5]~2_combout ),
	.D(\hspi|hd[5]~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector24~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector24~0 .coord_x = 6;
defparam \hspi|Selector24~0 .coord_y = 8;
defparam \hspi|Selector24~0 .coord_z = 14;
defparam \hspi|Selector24~0 .mask = 16'h0CF5;
defparam \hspi|Selector24~0 .modeMux = 1'b0;
defparam \hspi|Selector24~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector24~0 .ShiftMux = 1'b0;
defparam \hspi|Selector24~0 .BypassEn = 1'b0;
defparam \hspi|Selector24~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector24~1 (
	.A(\hspi|Selector24~0_combout ),
	.B(\hspi|hd[5]~2_combout ),
	.C(\hspi|crc16 [2]),
	.D(hspi_fake_cnt[5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector24~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector24~1 .coord_x = 6;
defparam \hspi|Selector24~1 .coord_y = 8;
defparam \hspi|Selector24~1 .coord_z = 11;
defparam \hspi|Selector24~1 .mask = 16'h6E2A;
defparam \hspi|Selector24~1 .modeMux = 1'b0;
defparam \hspi|Selector24~1 .FeedbackMux = 1'b0;
defparam \hspi|Selector24~1 .ShiftMux = 1'b0;
defparam \hspi|Selector24~1 .BypassEn = 1'b0;
defparam \hspi|Selector24~1 .CarryEnb = 1'b1;

alta_slice \hspi|Selector25~0 (
	.A(\hspi|hd[5]~2_combout ),
	.B(\hspi|hd[5]~1_combout ),
	.C(\hspi|tx_seq_num [2]),
	.D(hspi_fake_cnt[4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector25~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector25~0 .coord_x = 7;
defparam \hspi|Selector25~0 .coord_y = 8;
defparam \hspi|Selector25~0 .coord_z = 2;
defparam \hspi|Selector25~0 .mask = 16'hEA62;
defparam \hspi|Selector25~0 .modeMux = 1'b0;
defparam \hspi|Selector25~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector25~0 .ShiftMux = 1'b0;
defparam \hspi|Selector25~0 .BypassEn = 1'b0;
defparam \hspi|Selector25~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector25~1 (
	.A(\hspi|crc16 [3]),
	.B(\hspi|crc16 [11]),
	.C(\hspi|Selector25~0_combout ),
	.D(\hspi|hd[5]~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector25~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector25~1 .coord_x = 6;
defparam \hspi|Selector25~1 .coord_y = 8;
defparam \hspi|Selector25~1 .coord_z = 1;
defparam \hspi|Selector25~1 .mask = 16'hF053;
defparam \hspi|Selector25~1 .modeMux = 1'b0;
defparam \hspi|Selector25~1 .FeedbackMux = 1'b0;
defparam \hspi|Selector25~1 .ShiftMux = 1'b0;
defparam \hspi|Selector25~1 .BypassEn = 1'b0;
defparam \hspi|Selector25~1 .CarryEnb = 1'b1;

alta_slice \hspi|Selector26~0 (
	.A(\hspi|tx_seq_num [1]),
	.B(\hspi|hd[5]~2_combout ),
	.C(\hspi|crc16 [12]),
	.D(\hspi|hd[5]~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector26~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector26~0 .coord_x = 7;
defparam \hspi|Selector26~0 .coord_y = 7;
defparam \hspi|Selector26~0 .coord_z = 15;
defparam \hspi|Selector26~0 .mask = 16'h22CF;
defparam \hspi|Selector26~0 .modeMux = 1'b0;
defparam \hspi|Selector26~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector26~0 .ShiftMux = 1'b0;
defparam \hspi|Selector26~0 .BypassEn = 1'b0;
defparam \hspi|Selector26~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector26~1 (
	.A(\hspi|crc16 [4]),
	.B(\hspi|hd[5]~2_combout ),
	.C(hspi_fake_cnt[3]),
	.D(\hspi|Selector26~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector26~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector26~1 .coord_x = 7;
defparam \hspi|Selector26~1 .coord_y = 7;
defparam \hspi|Selector26~1 .coord_z = 0;
defparam \hspi|Selector26~1 .mask = 16'h77C0;
defparam \hspi|Selector26~1 .modeMux = 1'b0;
defparam \hspi|Selector26~1 .FeedbackMux = 1'b0;
defparam \hspi|Selector26~1 .ShiftMux = 1'b0;
defparam \hspi|Selector26~1 .BypassEn = 1'b0;
defparam \hspi|Selector26~1 .CarryEnb = 1'b1;

alta_slice \hspi|Selector27~0 (
	.A(\hspi|hd[5]~2_combout ),
	.B(\hspi|hd[5]~1_combout ),
	.C(\hspi|tx_seq_num [0]),
	.D(hspi_fake_cnt[2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector27~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector27~0 .coord_x = 7;
defparam \hspi|Selector27~0 .coord_y = 8;
defparam \hspi|Selector27~0 .coord_z = 0;
defparam \hspi|Selector27~0 .mask = 16'hEA62;
defparam \hspi|Selector27~0 .modeMux = 1'b0;
defparam \hspi|Selector27~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector27~0 .ShiftMux = 1'b0;
defparam \hspi|Selector27~0 .BypassEn = 1'b0;
defparam \hspi|Selector27~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector27~1 (
	.A(\hspi|crc16 [5]),
	.B(\hspi|crc16 [13]),
	.C(\hspi|Selector27~0_combout ),
	.D(\hspi|hd[5]~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector27~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector27~1 .coord_x = 6;
defparam \hspi|Selector27~1 .coord_y = 8;
defparam \hspi|Selector27~1 .coord_z = 9;
defparam \hspi|Selector27~1 .mask = 16'hF053;
defparam \hspi|Selector27~1 .modeMux = 1'b0;
defparam \hspi|Selector27~1 .FeedbackMux = 1'b0;
defparam \hspi|Selector27~1 .ShiftMux = 1'b0;
defparam \hspi|Selector27~1 .BypassEn = 1'b0;
defparam \hspi|Selector27~1 .CarryEnb = 1'b1;

alta_slice \hspi|Selector28~0 (
	.A(vcc),
	.B(\hspi|state.SEND_CRC_0~q ),
	.C(hspi_fake_cnt[1]),
	.D(\hspi|crc16 [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector28~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector28~0 .coord_x = 7;
defparam \hspi|Selector28~0 .coord_y = 8;
defparam \hspi|Selector28~0 .coord_z = 11;
defparam \hspi|Selector28~0 .mask = 16'h30FC;
defparam \hspi|Selector28~0 .modeMux = 1'b0;
defparam \hspi|Selector28~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector28~0 .ShiftMux = 1'b0;
defparam \hspi|Selector28~0 .BypassEn = 1'b0;
defparam \hspi|Selector28~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector29~0 (
	.A(vcc),
	.B(\hspi|crc16 [15]),
	.C(hspi_fake_cnt[0]),
	.D(\hspi|state.SEND_CRC_0~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector29~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector29~0 .coord_x = 8;
defparam \hspi|Selector29~0 .coord_y = 8;
defparam \hspi|Selector29~0 .coord_z = 14;
defparam \hspi|Selector29~0 .mask = 16'h33F0;
defparam \hspi|Selector29~0 .modeMux = 1'b0;
defparam \hspi|Selector29~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector29~0 .ShiftMux = 1'b0;
defparam \hspi|Selector29~0 .BypassEn = 1'b0;
defparam \hspi|Selector29~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector29~1 (
	.A(vcc),
	.B(\hspi|state.SEND_CRC_0~q ),
	.C(\hspi|state.SEND_CRC_1~q ),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector29~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector29~1 .coord_x = 8;
defparam \hspi|Selector29~1 .coord_y = 8;
defparam \hspi|Selector29~1 .coord_z = 6;
defparam \hspi|Selector29~1 .mask = 16'hF0F3;
defparam \hspi|Selector29~1 .modeMux = 1'b0;
defparam \hspi|Selector29~1 .FeedbackMux = 1'b0;
defparam \hspi|Selector29~1 .ShiftMux = 1'b0;
defparam \hspi|Selector29~1 .BypassEn = 1'b0;
defparam \hspi|Selector29~1 .CarryEnb = 1'b1;

alta_slice \hspi|Selector2~0 (
	.A(\hspi|state.SEND_PAYLOAD~q ),
	.B(\hspi|tx_seq_num [3]),
	.C(\hspi|state.SEND_HEADER_3~q ),
	.D(hspi_fake_cnt[5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector2~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector2~0 .coord_x = 6;
defparam \hspi|Selector2~0 .coord_y = 8;
defparam \hspi|Selector2~0 .coord_z = 4;
defparam \hspi|Selector2~0 .mask = 16'hEAC0;
defparam \hspi|Selector2~0 .modeMux = 1'b0;
defparam \hspi|Selector2~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector2~0 .ShiftMux = 1'b0;
defparam \hspi|Selector2~0 .BypassEn = 1'b0;
defparam \hspi|Selector2~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector3~0 (
	.A(\hspi|tx_seq_num [2]),
	.B(hspi_fake_cnt[4]),
	.C(\hspi|state.SEND_HEADER_3~q ),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector3~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector3~0 .coord_x = 7;
defparam \hspi|Selector3~0 .coord_y = 8;
defparam \hspi|Selector3~0 .coord_z = 15;
defparam \hspi|Selector3~0 .mask = 16'hECA0;
defparam \hspi|Selector3~0 .modeMux = 1'b0;
defparam \hspi|Selector3~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector3~0 .ShiftMux = 1'b0;
defparam \hspi|Selector3~0 .BypassEn = 1'b0;
defparam \hspi|Selector3~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector4~0 (
	.A(hspi_fake_cnt[3]),
	.B(\hspi|tx_seq_num [1]),
	.C(\hspi|state.SEND_PAYLOAD~q ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector4~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector4~0 .coord_x = 7;
defparam \hspi|Selector4~0 .coord_y = 7;
defparam \hspi|Selector4~0 .coord_z = 4;
defparam \hspi|Selector4~0 .mask = 16'hECA0;
defparam \hspi|Selector4~0 .modeMux = 1'b0;
defparam \hspi|Selector4~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector4~0 .ShiftMux = 1'b0;
defparam \hspi|Selector4~0 .BypassEn = 1'b0;
defparam \hspi|Selector4~0 .CarryEnb = 1'b1;

alta_slice \hspi|Selector5~0 (
	.A(\hspi|tx_seq_num [0]),
	.B(\hspi|state.SEND_PAYLOAD~q ),
	.C(\hspi|state.SEND_HEADER_3~q ),
	.D(hspi_fake_cnt[2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector5~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|Selector5~0 .coord_x = 7;
defparam \hspi|Selector5~0 .coord_y = 8;
defparam \hspi|Selector5~0 .coord_z = 13;
defparam \hspi|Selector5~0 .mask = 16'hECA0;
defparam \hspi|Selector5~0 .modeMux = 1'b0;
defparam \hspi|Selector5~0 .FeedbackMux = 1'b0;
defparam \hspi|Selector5~0 .ShiftMux = 1'b0;
defparam \hspi|Selector5~0 .BypassEn = 1'b0;
defparam \hspi|Selector5~0 .CarryEnb = 1'b1;

alta_slice \hspi|ack (
	.A(\hspi|Equal3~3_combout ),
	.B(\hspi|state.SEND_HEADER_3~q ),
	.C(vcc),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(\hspi|ack~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector42~0_combout ),
	.Cout(),
	.Q(\hspi|ack~q ));
defparam \hspi|ack .coord_x = 6;
defparam \hspi|ack .coord_y = 5;
defparam \hspi|ack .coord_z = 8;
defparam \hspi|ack .mask = 16'h50FC;
defparam \hspi|ack .modeMux = 1'b0;
defparam \hspi|ack .FeedbackMux = 1'b1;
defparam \hspi|ack .ShiftMux = 1'b0;
defparam \hspi|ack .BypassEn = 1'b0;
defparam \hspi|ack .CarryEnb = 1'b1;

alta_io_gclk \hspi|ack~clkctrl (
	.inclk(\hspi|ack~q ),
	.outclk(\hspi|ack~clkctrl_outclk ));
defparam \hspi|ack~clkctrl .coord_x = 4;
defparam \hspi|ack~clkctrl .coord_y = 1;
defparam \hspi|ack~clkctrl .coord_z = 0;

alta_slice \hspi|crc16[10] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [10]),
	.Cout(),
	.Q());
defparam \hspi|crc16[10] .coord_x = 6;
defparam \hspi|crc16[10] .coord_y = 8;
defparam \hspi|crc16[10] .coord_z = 15;
defparam \hspi|crc16[10] .mask = 16'h00FF;
defparam \hspi|crc16[10] .modeMux = 1'b0;
defparam \hspi|crc16[10] .FeedbackMux = 1'b0;
defparam \hspi|crc16[10] .ShiftMux = 1'b0;
defparam \hspi|crc16[10] .BypassEn = 1'b0;
defparam \hspi|crc16[10] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[11] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [11]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [11]),
	.Cout(),
	.Q());
defparam \hspi|crc16[11] .coord_x = 6;
defparam \hspi|crc16[11] .coord_y = 8;
defparam \hspi|crc16[11] .coord_z = 0;
defparam \hspi|crc16[11] .mask = 16'h00FF;
defparam \hspi|crc16[11] .modeMux = 1'b0;
defparam \hspi|crc16[11] .FeedbackMux = 1'b0;
defparam \hspi|crc16[11] .ShiftMux = 1'b0;
defparam \hspi|crc16[11] .BypassEn = 1'b0;
defparam \hspi|crc16[11] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[12] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [12]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [12]),
	.Cout(),
	.Q());
defparam \hspi|crc16[12] .coord_x = 4;
defparam \hspi|crc16[12] .coord_y = 8;
defparam \hspi|crc16[12] .coord_z = 6;
defparam \hspi|crc16[12] .mask = 16'h00FF;
defparam \hspi|crc16[12] .modeMux = 1'b0;
defparam \hspi|crc16[12] .FeedbackMux = 1'b0;
defparam \hspi|crc16[12] .ShiftMux = 1'b0;
defparam \hspi|crc16[12] .BypassEn = 1'b0;
defparam \hspi|crc16[12] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[13] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [13]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [13]),
	.Cout(),
	.Q());
defparam \hspi|crc16[13] .coord_x = 6;
defparam \hspi|crc16[13] .coord_y = 8;
defparam \hspi|crc16[13] .coord_z = 5;
defparam \hspi|crc16[13] .mask = 16'h00FF;
defparam \hspi|crc16[13] .modeMux = 1'b0;
defparam \hspi|crc16[13] .FeedbackMux = 1'b0;
defparam \hspi|crc16[13] .ShiftMux = 1'b0;
defparam \hspi|crc16[13] .BypassEn = 1'b0;
defparam \hspi|crc16[13] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[15] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [15]),
	.Cout(),
	.Q());
defparam \hspi|crc16[15] .coord_x = 8;
defparam \hspi|crc16[15] .coord_y = 8;
defparam \hspi|crc16[15] .coord_z = 5;
defparam \hspi|crc16[15] .mask = 16'h00FF;
defparam \hspi|crc16[15] .modeMux = 1'b0;
defparam \hspi|crc16[15] .FeedbackMux = 1'b0;
defparam \hspi|crc16[15] .ShiftMux = 1'b0;
defparam \hspi|crc16[15] .BypassEn = 1'b0;
defparam \hspi|crc16[15] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [1]),
	.Cout(),
	.Q());
defparam \hspi|crc16[1] .coord_x = 8;
defparam \hspi|crc16[1] .coord_y = 8;
defparam \hspi|crc16[1] .coord_z = 11;
defparam \hspi|crc16[1] .mask = 16'h00FF;
defparam \hspi|crc16[1] .modeMux = 1'b0;
defparam \hspi|crc16[1] .FeedbackMux = 1'b0;
defparam \hspi|crc16[1] .ShiftMux = 1'b0;
defparam \hspi|crc16[1] .BypassEn = 1'b0;
defparam \hspi|crc16[1] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[2] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [2]),
	.Cout(),
	.Q());
defparam \hspi|crc16[2] .coord_x = 6;
defparam \hspi|crc16[2] .coord_y = 8;
defparam \hspi|crc16[2] .coord_z = 12;
defparam \hspi|crc16[2] .mask = 16'h00FF;
defparam \hspi|crc16[2] .modeMux = 1'b0;
defparam \hspi|crc16[2] .FeedbackMux = 1'b0;
defparam \hspi|crc16[2] .ShiftMux = 1'b0;
defparam \hspi|crc16[2] .BypassEn = 1'b0;
defparam \hspi|crc16[2] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[3] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [3]),
	.Cout(),
	.Q());
defparam \hspi|crc16[3] .coord_x = 6;
defparam \hspi|crc16[3] .coord_y = 8;
defparam \hspi|crc16[3] .coord_z = 8;
defparam \hspi|crc16[3] .mask = 16'h00FF;
defparam \hspi|crc16[3] .modeMux = 1'b0;
defparam \hspi|crc16[3] .FeedbackMux = 1'b0;
defparam \hspi|crc16[3] .ShiftMux = 1'b0;
defparam \hspi|crc16[3] .BypassEn = 1'b0;
defparam \hspi|crc16[3] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [4]),
	.Cout(),
	.Q());
defparam \hspi|crc16[4] .coord_x = 4;
defparam \hspi|crc16[4] .coord_y = 8;
defparam \hspi|crc16[4] .coord_z = 2;
defparam \hspi|crc16[4] .mask = 16'h00FF;
defparam \hspi|crc16[4] .modeMux = 1'b0;
defparam \hspi|crc16[4] .FeedbackMux = 1'b0;
defparam \hspi|crc16[4] .ShiftMux = 1'b0;
defparam \hspi|crc16[4] .BypassEn = 1'b0;
defparam \hspi|crc16[4] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[5] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [5]),
	.Cout(),
	.Q());
defparam \hspi|crc16[5] .coord_x = 6;
defparam \hspi|crc16[5] .coord_y = 8;
defparam \hspi|crc16[5] .coord_z = 2;
defparam \hspi|crc16[5] .mask = 16'h00FF;
defparam \hspi|crc16[5] .modeMux = 1'b0;
defparam \hspi|crc16[5] .FeedbackMux = 1'b0;
defparam \hspi|crc16[5] .ShiftMux = 1'b0;
defparam \hspi|crc16[5] .BypassEn = 1'b0;
defparam \hspi|crc16[5] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[6] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [6]),
	.Cout(),
	.Q());
defparam \hspi|crc16[6] .coord_x = 8;
defparam \hspi|crc16[6] .coord_y = 8;
defparam \hspi|crc16[6] .coord_z = 8;
defparam \hspi|crc16[6] .mask = 16'h00FF;
defparam \hspi|crc16[6] .modeMux = 1'b0;
defparam \hspi|crc16[6] .FeedbackMux = 1'b0;
defparam \hspi|crc16[6] .ShiftMux = 1'b0;
defparam \hspi|crc16[6] .BypassEn = 1'b0;
defparam \hspi|crc16[6] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[7] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [7]),
	.Cout(),
	.Q());
defparam \hspi|crc16[7] .coord_x = 8;
defparam \hspi|crc16[7] .coord_y = 8;
defparam \hspi|crc16[7] .coord_z = 4;
defparam \hspi|crc16[7] .mask = 16'h00FF;
defparam \hspi|crc16[7] .modeMux = 1'b0;
defparam \hspi|crc16[7] .FeedbackMux = 1'b0;
defparam \hspi|crc16[7] .ShiftMux = 1'b0;
defparam \hspi|crc16[7] .BypassEn = 1'b0;
defparam \hspi|crc16[7] .CarryEnb = 1'b1;

alta_slice \hspi|crc16[9] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [9]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc16 [9]),
	.Cout(),
	.Q());
defparam \hspi|crc16[9] .coord_x = 7;
defparam \hspi|crc16[9] .coord_y = 8;
defparam \hspi|crc16[9] .coord_z = 1;
defparam \hspi|crc16[9] .mask = 16'h00FF;
defparam \hspi|crc16[9] .modeMux = 1'b0;
defparam \hspi|crc16[9] .FeedbackMux = 1'b0;
defparam \hspi|crc16[9] .ShiftMux = 1'b0;
defparam \hspi|crc16[9] .BypassEn = 1'b0;
defparam \hspi|crc16[9] .CarryEnb = 1'b1;

alta_slice \hspi|crc_en (
	.A(\hspi|Selector13~0_combout ),
	.B(\HSPI_HTRDY~input_o ),
	.C(\hspi|state.IDLE~q ),
	.D(\hspi|htreq~0_combout ),
	.Cin(),
	.Qin(\hspi|crc_en~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector13~1_combout ),
	.Cout(),
	.Q(\hspi|crc_en~q ));
defparam \hspi|crc_en .coord_x = 7;
defparam \hspi|crc_en .coord_y = 7;
defparam \hspi|crc_en .coord_z = 5;
defparam \hspi|crc_en .mask = 16'hAAAE;
defparam \hspi|crc_en .modeMux = 1'b0;
defparam \hspi|crc_en .FeedbackMux = 1'b0;
defparam \hspi|crc_en .ShiftMux = 1'b0;
defparam \hspi|crc_en .BypassEn = 1'b0;
defparam \hspi|crc_en .CarryEnb = 1'b1;

alta_slice \hspi|crc_rst (
	.A(vcc),
	.B(vcc),
	.C(\hspi|htreq~0_combout ),
	.D(\hspi|crc|lfsr_q [8]),
	.Cin(),
	.Qin(\hspi|crc_rst~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|htreq~1_combout_X5_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y4_GND),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc16 [8]),
	.Cout(),
	.Q(\hspi|crc_rst~q ));
defparam \hspi|crc_rst .coord_x = 5;
defparam \hspi|crc_rst .coord_y = 8;
defparam \hspi|crc_rst .coord_z = 13;
defparam \hspi|crc_rst .mask = 16'h00FF;
defparam \hspi|crc_rst .modeMux = 1'b0;
defparam \hspi|crc_rst .FeedbackMux = 1'b0;
defparam \hspi|crc_rst .ShiftMux = 1'b0;
defparam \hspi|crc_rst .BypassEn = 1'b1;
defparam \hspi|crc_rst .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_c[2]~11 (
	.A(hspi_fake_cnt[6]),
	.B(\hspi|state.SEND_PAYLOAD~q ),
	.C(vcc),
	.D(\hspi|crc|lfsr_c[2]~7_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c[2]~11_combout ),
	.Cout(),
	.Q());
defparam \hspi|crc|lfsr_c[2]~11 .coord_x = 4;
defparam \hspi|crc|lfsr_c[2]~11 .coord_y = 8;
defparam \hspi|crc|lfsr_c[2]~11 .coord_z = 4;
defparam \hspi|crc|lfsr_c[2]~11 .mask = 16'h8877;
defparam \hspi|crc|lfsr_c[2]~11 .modeMux = 1'b0;
defparam \hspi|crc|lfsr_c[2]~11 .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_c[2]~11 .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_c[2]~11 .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_c[2]~11 .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_c[9] (
	.A(\hspi|state.SEND_PAYLOAD~q ),
	.B(\hspi|crc|lfsr_q [1]),
	.C(hspi_fake_cnt[0]),
	.D(\hspi|crc|lfsr_q [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c [9]),
	.Cout(),
	.Q());
defparam \hspi|crc|lfsr_c[9] .coord_x = 8;
defparam \hspi|crc|lfsr_c[9] .coord_y = 8;
defparam \hspi|crc|lfsr_c[9] .coord_z = 12;
defparam \hspi|crc|lfsr_c[9] .mask = 16'h6C93;
defparam \hspi|crc|lfsr_c[9] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_c[9] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_c[9] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_c[9] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_c[9] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_c[9]~4 (
	.A(vcc),
	.B(\hspi|crc|lfsr_q [15]),
	.C(hspi_fake_cnt[0]),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c[9]~4_combout ),
	.Cout(),
	.Q());
defparam \hspi|crc|lfsr_c[9]~4 .coord_x = 8;
defparam \hspi|crc|lfsr_c[9]~4 .coord_y = 8;
defparam \hspi|crc|lfsr_c[9]~4 .coord_z = 13;
defparam \hspi|crc|lfsr_c[9]~4 .mask = 16'h3CCC;
defparam \hspi|crc|lfsr_c[9]~4 .modeMux = 1'b0;
defparam \hspi|crc|lfsr_c[9]~4 .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_c[9]~4 .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_c[9]~4 .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_c[9]~4 .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[0] (
	.A(vcc),
	.B(\hspi|crc|lfsr_c[2]~7_combout ),
	.C(\hspi|crc|lfsr_c[0]~6_combout ),
	.D(\hspi|crc|lfsr_q [10]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c[0]~10_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [0]));
defparam \hspi|crc|lfsr_q[0] .coord_x = 5;
defparam \hspi|crc|lfsr_q[0] .coord_y = 8;
defparam \hspi|crc|lfsr_q[0] .coord_z = 9;
defparam \hspi|crc|lfsr_q[0] .mask = 16'h3CC3;
defparam \hspi|crc|lfsr_q[0] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[0] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[0] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[0] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[0] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[10] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|crc|lfsr_q [2]),
	.D(\hspi|crc|lfsr_q [0]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [10]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc16 [0]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [10]));
defparam \hspi|crc|lfsr_q[10] .coord_x = 5;
defparam \hspi|crc|lfsr_q[10] .coord_y = 8;
defparam \hspi|crc|lfsr_q[10] .coord_z = 15;
defparam \hspi|crc|lfsr_q[10] .mask = 16'h00FF;
defparam \hspi|crc|lfsr_q[10] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[10] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[10] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[10] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[10] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[11] (
	.A(\hspi|Selector3~0_combout ),
	.B(\hspi|crc|lfsr_q [12]),
	.C(\hspi|crc|lfsr_q [3]),
	.D(\hspi|Selector4~0_combout ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [11]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc|lfsr_c[5]~2_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [11]));
defparam \hspi|crc|lfsr_q[11] .coord_x = 5;
defparam \hspi|crc|lfsr_q[11] .coord_y = 8;
defparam \hspi|crc|lfsr_q[11] .coord_z = 1;
defparam \hspi|crc|lfsr_q[11] .mask = 16'h9669;
defparam \hspi|crc|lfsr_q[11] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[11] .FeedbackMux = 1'b1;
defparam \hspi|crc|lfsr_q[11] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[11] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[11] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[12] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|crc|lfsr_q [4]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [12]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X6_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X6_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_q[12]~feeder_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [12]));
defparam \hspi|crc|lfsr_q[12] .coord_x = 4;
defparam \hspi|crc|lfsr_q[12] .coord_y = 8;
defparam \hspi|crc|lfsr_q[12] .coord_z = 5;
defparam \hspi|crc|lfsr_q[12] .mask = 16'hFF00;
defparam \hspi|crc|lfsr_q[12] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[12] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[12] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[12] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[12] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[13] (
	.A(\hspi|crc|lfsr_c[7]~3_combout ),
	.B(\hspi|crc|lfsr_c[9]~4_combout ),
	.C(\hspi|crc|lfsr_q [5]),
	.D(\hspi|Selector5~0_combout ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [13]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc|lfsr_c[0]~5_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [13]));
defparam \hspi|crc|lfsr_q[13] .coord_x = 5;
defparam \hspi|crc|lfsr_q[13] .coord_y = 8;
defparam \hspi|crc|lfsr_q[13] .coord_z = 6;
defparam \hspi|crc|lfsr_q[13] .mask = 16'h6996;
defparam \hspi|crc|lfsr_q[13] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[13] .FeedbackMux = 1'b1;
defparam \hspi|crc|lfsr_q[13] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[13] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[13] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[14] (
	.A(vcc),
	.B(hspi_fake_cnt[1]),
	.C(\hspi|crc|lfsr_q [6]),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [14]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc|lfsr_c[7]~3_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [14]));
defparam \hspi|crc|lfsr_q[14] .coord_x = 5;
defparam \hspi|crc|lfsr_q[14] .coord_y = 8;
defparam \hspi|crc|lfsr_q[14] .coord_z = 8;
defparam \hspi|crc|lfsr_q[14] .mask = 16'h3CF0;
defparam \hspi|crc|lfsr_q[14] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[14] .FeedbackMux = 1'b1;
defparam \hspi|crc|lfsr_q[14] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[14] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[14] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[15] (
	.A(\hspi|crc|lfsr_q [7]),
	.B(\hspi|crc|lfsr_c[2]~7_combout ),
	.C(\hspi|crc|lfsr_c[0]~6_combout ),
	.D(\hspi|crc|lfsr_q [10]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [15]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c [15]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [15]));
defparam \hspi|crc|lfsr_q[15] .coord_x = 5;
defparam \hspi|crc|lfsr_q[15] .coord_y = 8;
defparam \hspi|crc|lfsr_q[15] .coord_z = 10;
defparam \hspi|crc|lfsr_q[15] .mask = 16'h6996;
defparam \hspi|crc|lfsr_q[15] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[15] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[15] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[15] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[15] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[1] (
	.A(vcc),
	.B(\hspi|crc|lfsr_q [9]),
	.C(\hspi|crc|lfsr_c[0]~6_combout ),
	.D(\hspi|crc|lfsr_q [10]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c [1]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [1]));
defparam \hspi|crc|lfsr_q[1] .coord_x = 5;
defparam \hspi|crc|lfsr_q[1] .coord_y = 8;
defparam \hspi|crc|lfsr_q[1] .coord_z = 5;
defparam \hspi|crc|lfsr_q[1] .mask = 16'hC33C;
defparam \hspi|crc|lfsr_q[1] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[1] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[1] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[1] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[1] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[2] (
	.A(\hspi|crc|lfsr_q [14]),
	.B(vcc),
	.C(\hspi|crc|lfsr_c[2]~11_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc16 [14]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [2]));
defparam \hspi|crc|lfsr_q[2] .coord_x = 5;
defparam \hspi|crc|lfsr_q[2] .coord_y = 8;
defparam \hspi|crc|lfsr_q[2] .coord_z = 0;
defparam \hspi|crc|lfsr_q[2] .mask = 16'h5555;
defparam \hspi|crc|lfsr_q[2] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[2] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[2] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[2] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[2] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[3] (
	.A(\hspi|Selector1~0_combout ),
	.B(\hspi|crc|lfsr_q [9]),
	.C(\hspi|Selector2~0_combout ),
	.D(\hspi|crc|lfsr_q [10]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c[3]~9_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [3]));
defparam \hspi|crc|lfsr_q[3] .coord_x = 5;
defparam \hspi|crc|lfsr_q[3] .coord_y = 8;
defparam \hspi|crc|lfsr_q[3] .coord_z = 2;
defparam \hspi|crc|lfsr_q[3] .mask = 16'h9669;
defparam \hspi|crc|lfsr_q[3] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[3] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[3] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[3] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[3] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[4] (
	.A(\hspi|Selector3~0_combout ),
	.B(\hspi|crc|lfsr_q [10]),
	.C(\hspi|Selector2~0_combout ),
	.D(\hspi|crc|lfsr_q [11]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [4]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c[4]~8_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [4]));
defparam \hspi|crc|lfsr_q[4] .coord_x = 5;
defparam \hspi|crc|lfsr_q[4] .coord_y = 8;
defparam \hspi|crc|lfsr_q[4] .coord_z = 14;
defparam \hspi|crc|lfsr_q[4] .mask = 16'h9669;
defparam \hspi|crc|lfsr_q[4] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[4] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[4] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[4] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[4] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[5] (
	.A(\hspi|Selector2~0_combout ),
	.B(\hspi|Selector1~0_combout ),
	.C(\hspi|crc|lfsr_c[5]~2_combout ),
	.D(\hspi|crc|lfsr_c[0]~5_combout ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [5]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc|lfsr_c[0]~6_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [5]));
defparam \hspi|crc|lfsr_q[5] .coord_x = 5;
defparam \hspi|crc|lfsr_q[5] .coord_y = 8;
defparam \hspi|crc|lfsr_q[5] .coord_z = 4;
defparam \hspi|crc|lfsr_q[5] .mask = 16'h9669;
defparam \hspi|crc|lfsr_q[5] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[5] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[5] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[5] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[5] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[6] (
	.A(\hspi|Selector5~0_combout ),
	.B(\hspi|Selector4~0_combout ),
	.C(\hspi|crc|lfsr_q [13]),
	.D(\hspi|crc|lfsr_q [12]),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [6]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c [6]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [6]));
defparam \hspi|crc|lfsr_q[6] .coord_x = 5;
defparam \hspi|crc|lfsr_q[6] .coord_y = 8;
defparam \hspi|crc|lfsr_q[6] .coord_z = 7;
defparam \hspi|crc|lfsr_q[6] .mask = 16'h9669;
defparam \hspi|crc|lfsr_q[6] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[6] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[6] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[6] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[6] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[7] (
	.A(\hspi|crc|lfsr_c[7]~3_combout ),
	.B(vcc),
	.C(\hspi|crc|lfsr_q [13]),
	.D(\hspi|Selector5~0_combout ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [7]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c [7]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [7]));
defparam \hspi|crc|lfsr_q[7] .coord_x = 5;
defparam \hspi|crc|lfsr_q[7] .coord_y = 8;
defparam \hspi|crc|lfsr_q[7] .coord_z = 12;
defparam \hspi|crc|lfsr_q[7] .mask = 16'h5AA5;
defparam \hspi|crc|lfsr_q[7] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[7] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[7] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[7] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[7] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[8] (
	.A(vcc),
	.B(\hspi|crc|lfsr_q [0]),
	.C(\hspi|crc|lfsr_c[7]~3_combout ),
	.D(\hspi|crc|lfsr_c[9]~4_combout ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [8]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|crc|lfsr_c [8]),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [8]));
defparam \hspi|crc|lfsr_q[8] .coord_x = 5;
defparam \hspi|crc|lfsr_q[8] .coord_y = 8;
defparam \hspi|crc|lfsr_q[8] .coord_z = 3;
defparam \hspi|crc|lfsr_q[8] .mask = 16'hC33C;
defparam \hspi|crc|lfsr_q[8] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[8] .FeedbackMux = 1'b0;
defparam \hspi|crc|lfsr_q[8] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[8] .BypassEn = 1'b0;
defparam \hspi|crc|lfsr_q[8] .CarryEnb = 1'b1;

alta_slice \hspi|crc|lfsr_q[9] (
	.A(hspi_fake_cnt[7]),
	.B(\hspi|crc|lfsr_q [8]),
	.C(\hspi|crc|lfsr_c [9]),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(\hspi|crc|lfsr_q [9]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|crc_en~q_X5_Y4_SIG_SIG ),
	.AsyncReset(\hspi|crc_rst~q__AsyncReset_X5_Y4_SIG ),
	.SyncReset(SyncReset_X5_Y4_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y4_VCC),
	.LutOut(\hspi|crc|lfsr_c[2]~7_combout ),
	.Cout(),
	.Q(\hspi|crc|lfsr_q [9]));
defparam \hspi|crc|lfsr_q[9] .coord_x = 5;
defparam \hspi|crc|lfsr_q[9] .coord_y = 8;
defparam \hspi|crc|lfsr_q[9] .coord_z = 11;
defparam \hspi|crc|lfsr_q[9] .mask = 16'h963C;
defparam \hspi|crc|lfsr_q[9] .modeMux = 1'b0;
defparam \hspi|crc|lfsr_q[9] .FeedbackMux = 1'b1;
defparam \hspi|crc|lfsr_q[9] .ShiftMux = 1'b0;
defparam \hspi|crc|lfsr_q[9] .BypassEn = 1'b1;
defparam \hspi|crc|lfsr_q[9] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[0] (
	.A(\hspi|LessThan0~9_combout ),
	.B(\hspi|LessThan0~6_combout ),
	.C(\hspi|Add0~83_combout ),
	.D(\hspi|Add0~20_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(SyncReset_X7_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X7_Y5_VCC),
	.LutOut(\hspi|Add0~47_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [0]));
defparam \hspi|delay_cnt[0] .coord_x = 4;
defparam \hspi|delay_cnt[0] .coord_y = 6;
defparam \hspi|delay_cnt[0] .coord_z = 14;
defparam \hspi|delay_cnt[0] .mask = 16'h8800;
defparam \hspi|delay_cnt[0] .modeMux = 1'b0;
defparam \hspi|delay_cnt[0] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[0] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[0] .BypassEn = 1'b1;
defparam \hspi|delay_cnt[0] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[10] (
	.A(hspi_req_cnt[6]),
	.B(hspi_req_cnt[5]),
	.C(\hspi|Add0~47_combout ),
	.D(hspi_req_cnt[7]),
	.Cin(),
	.Qin(\hspi|delay_cnt [10]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X6_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(SyncReset_X6_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y5_VCC),
	.LutOut(\hspi|delay_cnt~1_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [10]));
defparam \hspi|delay_cnt[10] .coord_x = 4;
defparam \hspi|delay_cnt[10] .coord_y = 7;
defparam \hspi|delay_cnt[10] .coord_z = 14;
defparam \hspi|delay_cnt[10] .mask = 16'h0011;
defparam \hspi|delay_cnt[10] .modeMux = 1'b0;
defparam \hspi|delay_cnt[10] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[10] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[10] .BypassEn = 1'b1;
defparam \hspi|delay_cnt[10] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[11] (
	.A(\hspi|delay_cnt~1_combout ),
	.B(\hspi|delay_cnt~0_combout ),
	.C(\hspi|Add0~46_combout ),
	.D(\HSPI_HTRDY~input_o ),
	.Cin(),
	.Qin(\hspi|delay_cnt [11]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X6_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(SyncReset_X6_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y5_VCC),
	.LutOut(\hspi|delay_cnt[31]~2_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [11]));
defparam \hspi|delay_cnt[11] .coord_x = 4;
defparam \hspi|delay_cnt[11] .coord_y = 7;
defparam \hspi|delay_cnt[11] .coord_z = 12;
defparam \hspi|delay_cnt[11] .mask = 16'h8800;
defparam \hspi|delay_cnt[11] .modeMux = 1'b0;
defparam \hspi|delay_cnt[11] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[11] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[11] .BypassEn = 1'b1;
defparam \hspi|delay_cnt[11] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[12] (
	.A(vcc),
	.B(\hspi|Add0~24_combout ),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [12]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X5_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~45_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [12]));
defparam \hspi|delay_cnt[12] .coord_x = 5;
defparam \hspi|delay_cnt[12] .coord_y = 7;
defparam \hspi|delay_cnt[12] .coord_z = 6;
defparam \hspi|delay_cnt[12] .mask = 16'hC000;
defparam \hspi|delay_cnt[12] .modeMux = 1'b0;
defparam \hspi|delay_cnt[12] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[12] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[12] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[12] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[13] (
	.A(\hspi|Add0~26_combout ),
	.B(vcc),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [13]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X5_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~44_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [13]));
defparam \hspi|delay_cnt[13] .coord_x = 5;
defparam \hspi|delay_cnt[13] .coord_y = 7;
defparam \hspi|delay_cnt[13] .coord_z = 14;
defparam \hspi|delay_cnt[13] .mask = 16'hA000;
defparam \hspi|delay_cnt[13] .modeMux = 1'b0;
defparam \hspi|delay_cnt[13] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[13] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[13] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[13] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[14] (
	.A(\hspi|Add0~28_combout ),
	.B(vcc),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [14]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X5_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~54_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [14]));
defparam \hspi|delay_cnt[14] .coord_x = 5;
defparam \hspi|delay_cnt[14] .coord_y = 7;
defparam \hspi|delay_cnt[14] .coord_z = 9;
defparam \hspi|delay_cnt[14] .mask = 16'hA000;
defparam \hspi|delay_cnt[14] .modeMux = 1'b0;
defparam \hspi|delay_cnt[14] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[14] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[14] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[14] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[15] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~30_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [15]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~43_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [15]));
defparam \hspi|delay_cnt[15] .coord_x = 4;
defparam \hspi|delay_cnt[15] .coord_y = 6;
defparam \hspi|delay_cnt[15] .coord_z = 2;
defparam \hspi|delay_cnt[15] .mask = 16'hA000;
defparam \hspi|delay_cnt[15] .modeMux = 1'b0;
defparam \hspi|delay_cnt[15] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[15] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[15] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[15] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[16] (
	.A(\hspi|Add0~32_combout ),
	.B(vcc),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [16]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~42_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [16]));
defparam \hspi|delay_cnt[16] .coord_x = 4;
defparam \hspi|delay_cnt[16] .coord_y = 6;
defparam \hspi|delay_cnt[16] .coord_z = 7;
defparam \hspi|delay_cnt[16] .mask = 16'hA000;
defparam \hspi|delay_cnt[16] .modeMux = 1'b0;
defparam \hspi|delay_cnt[16] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[16] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[16] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[16] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[17] (
	.A(\hspi|Add0~34_combout ),
	.B(\hspi|LessThan0~6_combout ),
	.C(\hspi|LessThan0~9_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|delay_cnt [17]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~51_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [17]));
defparam \hspi|delay_cnt[17] .coord_x = 4;
defparam \hspi|delay_cnt[17] .coord_y = 6;
defparam \hspi|delay_cnt[17] .coord_z = 8;
defparam \hspi|delay_cnt[17] .mask = 16'h8080;
defparam \hspi|delay_cnt[17] .modeMux = 1'b0;
defparam \hspi|delay_cnt[17] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[17] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[17] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[17] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[18] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~36_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [18]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~41_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [18]));
defparam \hspi|delay_cnt[18] .coord_x = 4;
defparam \hspi|delay_cnt[18] .coord_y = 6;
defparam \hspi|delay_cnt[18] .coord_z = 6;
defparam \hspi|delay_cnt[18] .mask = 16'hA000;
defparam \hspi|delay_cnt[18] .modeMux = 1'b0;
defparam \hspi|delay_cnt[18] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[18] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[18] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[18] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[19] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~38_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [19]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~40_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [19]));
defparam \hspi|delay_cnt[19] .coord_x = 4;
defparam \hspi|delay_cnt[19] .coord_y = 6;
defparam \hspi|delay_cnt[19] .coord_z = 5;
defparam \hspi|delay_cnt[19] .mask = 16'hA000;
defparam \hspi|delay_cnt[19] .modeMux = 1'b0;
defparam \hspi|delay_cnt[19] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[19] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[19] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[19] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[1] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~2_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~82_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [1]));
defparam \hspi|delay_cnt[1] .coord_x = 4;
defparam \hspi|delay_cnt[1] .coord_y = 6;
defparam \hspi|delay_cnt[1] .coord_z = 15;
defparam \hspi|delay_cnt[1] .mask = 16'hA000;
defparam \hspi|delay_cnt[1] .modeMux = 1'b0;
defparam \hspi|delay_cnt[1] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[1] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[1] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[1] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[20] (
	.A(\hspi|Add0~52_combout ),
	.B(\hspi|LessThan0~7_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [20]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[20]~4_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [20]));
defparam \hspi|delay_cnt[20] .coord_x = 4;
defparam \hspi|delay_cnt[20] .coord_y = 6;
defparam \hspi|delay_cnt[20] .coord_z = 13;
defparam \hspi|delay_cnt[20] .mask = 16'h88F0;
defparam \hspi|delay_cnt[20] .modeMux = 1'b0;
defparam \hspi|delay_cnt[20] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[20] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[20] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[20] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[21] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|Add0~55_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [21]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[21]~15_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [21]));
defparam \hspi|delay_cnt[21] .coord_x = 4;
defparam \hspi|delay_cnt[21] .coord_y = 5;
defparam \hspi|delay_cnt[21] .coord_z = 11;
defparam \hspi|delay_cnt[21] .mask = 16'h88F0;
defparam \hspi|delay_cnt[21] .modeMux = 1'b0;
defparam \hspi|delay_cnt[21] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[21] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[21] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[21] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[22] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|Add0~57_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [22]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[22]~14_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [22]));
defparam \hspi|delay_cnt[22] .coord_x = 4;
defparam \hspi|delay_cnt[22] .coord_y = 5;
defparam \hspi|delay_cnt[22] .coord_z = 7;
defparam \hspi|delay_cnt[22] .mask = 16'h88F0;
defparam \hspi|delay_cnt[22] .modeMux = 1'b0;
defparam \hspi|delay_cnt[22] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[22] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[22] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[22] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[23] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|delay_cnt[31]~3_combout ),
	.C(vcc),
	.D(\hspi|Add0~59_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [23]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[23]~13_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [23]));
defparam \hspi|delay_cnt[23] .coord_x = 4;
defparam \hspi|delay_cnt[23] .coord_y = 5;
defparam \hspi|delay_cnt[23] .coord_z = 10;
defparam \hspi|delay_cnt[23] .mask = 16'hB830;
defparam \hspi|delay_cnt[23] .modeMux = 1'b0;
defparam \hspi|delay_cnt[23] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[23] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[23] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[23] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[24] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|Add0~61_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [24]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[24]~12_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [24]));
defparam \hspi|delay_cnt[24] .coord_x = 4;
defparam \hspi|delay_cnt[24] .coord_y = 5;
defparam \hspi|delay_cnt[24] .coord_z = 0;
defparam \hspi|delay_cnt[24] .mask = 16'h88F0;
defparam \hspi|delay_cnt[24] .modeMux = 1'b0;
defparam \hspi|delay_cnt[24] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[24] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[24] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[24] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[25] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|Add0~63_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [25]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[25]~11_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [25]));
defparam \hspi|delay_cnt[25] .coord_x = 4;
defparam \hspi|delay_cnt[25] .coord_y = 5;
defparam \hspi|delay_cnt[25] .coord_z = 6;
defparam \hspi|delay_cnt[25] .mask = 16'h88F0;
defparam \hspi|delay_cnt[25] .modeMux = 1'b0;
defparam \hspi|delay_cnt[25] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[25] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[25] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[25] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[26] (
	.A(\hspi|Add0~65_combout ),
	.B(\hspi|LessThan0~7_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [26]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[26]~10_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [26]));
defparam \hspi|delay_cnt[26] .coord_x = 4;
defparam \hspi|delay_cnt[26] .coord_y = 5;
defparam \hspi|delay_cnt[26] .coord_z = 3;
defparam \hspi|delay_cnt[26] .mask = 16'h88F0;
defparam \hspi|delay_cnt[26] .modeMux = 1'b0;
defparam \hspi|delay_cnt[26] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[26] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[26] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[26] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[27] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|Add0~67_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [27]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[27]~9_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [27]));
defparam \hspi|delay_cnt[27] .coord_x = 4;
defparam \hspi|delay_cnt[27] .coord_y = 5;
defparam \hspi|delay_cnt[27] .coord_z = 1;
defparam \hspi|delay_cnt[27] .mask = 16'h88F0;
defparam \hspi|delay_cnt[27] .modeMux = 1'b0;
defparam \hspi|delay_cnt[27] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[27] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[27] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[27] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[28] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|Add0~69_combout ),
	.C(vcc),
	.D(\hspi|delay_cnt[31]~3_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [28]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[28]~8_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [28]));
defparam \hspi|delay_cnt[28] .coord_x = 4;
defparam \hspi|delay_cnt[28] .coord_y = 5;
defparam \hspi|delay_cnt[28] .coord_z = 5;
defparam \hspi|delay_cnt[28] .mask = 16'h88F0;
defparam \hspi|delay_cnt[28] .modeMux = 1'b0;
defparam \hspi|delay_cnt[28] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[28] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[28] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[28] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[29] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|delay_cnt[31]~3_combout ),
	.C(vcc),
	.D(\hspi|Add0~71_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [29]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[29]~7_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [29]));
defparam \hspi|delay_cnt[29] .coord_x = 4;
defparam \hspi|delay_cnt[29] .coord_y = 5;
defparam \hspi|delay_cnt[29] .coord_z = 12;
defparam \hspi|delay_cnt[29] .mask = 16'hB830;
defparam \hspi|delay_cnt[29] .modeMux = 1'b0;
defparam \hspi|delay_cnt[29] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[29] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[29] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[29] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[2] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~4_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~81_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [2]));
defparam \hspi|delay_cnt[2] .coord_x = 4;
defparam \hspi|delay_cnt[2] .coord_y = 6;
defparam \hspi|delay_cnt[2] .coord_z = 12;
defparam \hspi|delay_cnt[2] .mask = 16'hA000;
defparam \hspi|delay_cnt[2] .modeMux = 1'b0;
defparam \hspi|delay_cnt[2] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[2] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[2] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[2] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[30] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|delay_cnt[31]~3_combout ),
	.C(vcc),
	.D(\hspi|Add0~73_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [30]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[30]~6_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [30]));
defparam \hspi|delay_cnt[30] .coord_x = 4;
defparam \hspi|delay_cnt[30] .coord_y = 5;
defparam \hspi|delay_cnt[30] .coord_z = 15;
defparam \hspi|delay_cnt[30] .mask = 16'hB830;
defparam \hspi|delay_cnt[30] .modeMux = 1'b0;
defparam \hspi|delay_cnt[30] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[30] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[30] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[30] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[31] (
	.A(\hspi|LessThan0~7_combout ),
	.B(\hspi|delay_cnt[31]~3_combout ),
	.C(vcc),
	.D(\hspi|Add0~75_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [31]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X7_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X7_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[31]~5_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [31]));
defparam \hspi|delay_cnt[31] .coord_x = 4;
defparam \hspi|delay_cnt[31] .coord_y = 5;
defparam \hspi|delay_cnt[31] .coord_z = 14;
defparam \hspi|delay_cnt[31] .mask = 16'hB830;
defparam \hspi|delay_cnt[31] .modeMux = 1'b0;
defparam \hspi|delay_cnt[31] .FeedbackMux = 1'b1;
defparam \hspi|delay_cnt[31] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[31] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[31] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[31]~3 (
	.A(\hspi|delay_cnt[31]~2_combout ),
	.B(\hspi|LessThan0~9_combout ),
	.C(\hspi|LessThan0~6_combout ),
	.D(\hspi|htreq~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt[31]~3_combout ),
	.Cout(),
	.Q());
defparam \hspi|delay_cnt[31]~3 .coord_x = 4;
defparam \hspi|delay_cnt[31]~3 .coord_y = 7;
defparam \hspi|delay_cnt[31]~3 .coord_z = 4;
defparam \hspi|delay_cnt[31]~3 .mask = 16'hEA00;
defparam \hspi|delay_cnt[31]~3 .modeMux = 1'b0;
defparam \hspi|delay_cnt[31]~3 .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[31]~3 .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[31]~3 .BypassEn = 1'b0;
defparam \hspi|delay_cnt[31]~3 .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[3] (
	.A(\hspi|LessThan0~9_combout ),
	.B(\hspi|LessThan0~6_combout ),
	.C(vcc),
	.D(\hspi|Add0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~80_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [3]));
defparam \hspi|delay_cnt[3] .coord_x = 4;
defparam \hspi|delay_cnt[3] .coord_y = 6;
defparam \hspi|delay_cnt[3] .coord_z = 10;
defparam \hspi|delay_cnt[3] .mask = 16'h8800;
defparam \hspi|delay_cnt[3] .modeMux = 1'b0;
defparam \hspi|delay_cnt[3] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[3] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[3] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[3] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[4] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~8_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [4]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~79_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [4]));
defparam \hspi|delay_cnt[4] .coord_x = 4;
defparam \hspi|delay_cnt[4] .coord_y = 6;
defparam \hspi|delay_cnt[4] .coord_z = 0;
defparam \hspi|delay_cnt[4] .mask = 16'hA000;
defparam \hspi|delay_cnt[4] .modeMux = 1'b0;
defparam \hspi|delay_cnt[4] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[4] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[4] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[4] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[5] (
	.A(\hspi|Add0~10_combout ),
	.B(vcc),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [5]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~78_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [5]));
defparam \hspi|delay_cnt[5] .coord_x = 4;
defparam \hspi|delay_cnt[5] .coord_y = 6;
defparam \hspi|delay_cnt[5] .coord_z = 11;
defparam \hspi|delay_cnt[5] .mask = 16'hA000;
defparam \hspi|delay_cnt[5] .modeMux = 1'b0;
defparam \hspi|delay_cnt[5] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[5] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[5] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[5] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[6] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~12_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [6]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~77_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [6]));
defparam \hspi|delay_cnt[6] .coord_x = 4;
defparam \hspi|delay_cnt[6] .coord_y = 6;
defparam \hspi|delay_cnt[6] .coord_z = 3;
defparam \hspi|delay_cnt[6] .mask = 16'hA000;
defparam \hspi|delay_cnt[6] .modeMux = 1'b0;
defparam \hspi|delay_cnt[6] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[6] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[6] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[6] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[7] (
	.A(\hspi|LessThan0~9_combout ),
	.B(vcc),
	.C(\hspi|Add0~14_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [7]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X7_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X7_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~50_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [7]));
defparam \hspi|delay_cnt[7] .coord_x = 4;
defparam \hspi|delay_cnt[7] .coord_y = 6;
defparam \hspi|delay_cnt[7] .coord_z = 4;
defparam \hspi|delay_cnt[7] .mask = 16'hA000;
defparam \hspi|delay_cnt[7] .modeMux = 1'b0;
defparam \hspi|delay_cnt[7] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[7] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[7] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[7] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[8] (
	.A(vcc),
	.B(\hspi|Add0~16_combout ),
	.C(\hspi|LessThan0~6_combout ),
	.D(\hspi|LessThan0~9_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [8]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X6_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X6_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~49_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [8]));
defparam \hspi|delay_cnt[8] .coord_x = 4;
defparam \hspi|delay_cnt[8] .coord_y = 7;
defparam \hspi|delay_cnt[8] .coord_z = 0;
defparam \hspi|delay_cnt[8] .mask = 16'hC000;
defparam \hspi|delay_cnt[8] .modeMux = 1'b0;
defparam \hspi|delay_cnt[8] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[8] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[8] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[8] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt[9] (
	.A(\hspi|Add0~18_combout ),
	.B(vcc),
	.C(\hspi|LessThan0~9_combout ),
	.D(\hspi|LessThan0~6_combout ),
	.Cin(),
	.Qin(\hspi|delay_cnt [9]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|delay_cnt[31]~3_combout_X5_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Add0~48_combout ),
	.Cout(),
	.Q(\hspi|delay_cnt [9]));
defparam \hspi|delay_cnt[9] .coord_x = 5;
defparam \hspi|delay_cnt[9] .coord_y = 7;
defparam \hspi|delay_cnt[9] .coord_z = 8;
defparam \hspi|delay_cnt[9] .mask = 16'hA000;
defparam \hspi|delay_cnt[9] .modeMux = 1'b0;
defparam \hspi|delay_cnt[9] .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt[9] .ShiftMux = 1'b0;
defparam \hspi|delay_cnt[9] .BypassEn = 1'b0;
defparam \hspi|delay_cnt[9] .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt~0 (
	.A(hspi_req_cnt[2]),
	.B(hspi_req_cnt[1]),
	.C(hspi_req_cnt[4]),
	.D(hspi_req_cnt[3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|delay_cnt~0 .coord_x = 4;
defparam \hspi|delay_cnt~0 .coord_y = 7;
defparam \hspi|delay_cnt~0 .coord_z = 3;
defparam \hspi|delay_cnt~0 .mask = 16'h0001;
defparam \hspi|delay_cnt~0 .modeMux = 1'b0;
defparam \hspi|delay_cnt~0 .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt~0 .ShiftMux = 1'b0;
defparam \hspi|delay_cnt~0 .BypassEn = 1'b0;
defparam \hspi|delay_cnt~0 .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt~16 (
	.A(\HSPI_HTRDY~input_o ),
	.B(hspi_req_cnt[7]),
	.C(hspi_req_cnt[6]),
	.D(hspi_req_cnt[5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt~16_combout ),
	.Cout(),
	.Q());
defparam \hspi|delay_cnt~16 .coord_x = 4;
defparam \hspi|delay_cnt~16 .coord_y = 7;
defparam \hspi|delay_cnt~16 .coord_z = 2;
defparam \hspi|delay_cnt~16 .mask = 16'hFFFD;
defparam \hspi|delay_cnt~16 .modeMux = 1'b0;
defparam \hspi|delay_cnt~16 .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt~16 .ShiftMux = 1'b0;
defparam \hspi|delay_cnt~16 .BypassEn = 1'b0;
defparam \hspi|delay_cnt~16 .CarryEnb = 1'b1;

alta_slice \hspi|delay_cnt~18 (
	.A(\hspi|delay_cnt~16_combout ),
	.B(\hspi|delay_cnt~17_combout ),
	.C(hspi_req_cnt[2]),
	.D(hspi_req_cnt[1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|delay_cnt~18_combout ),
	.Cout(),
	.Q());
defparam \hspi|delay_cnt~18 .coord_x = 4;
defparam \hspi|delay_cnt~18 .coord_y = 7;
defparam \hspi|delay_cnt~18 .coord_z = 15;
defparam \hspi|delay_cnt~18 .mask = 16'hFFFE;
defparam \hspi|delay_cnt~18 .modeMux = 1'b0;
defparam \hspi|delay_cnt~18 .FeedbackMux = 1'b0;
defparam \hspi|delay_cnt~18 .ShiftMux = 1'b0;
defparam \hspi|delay_cnt~18 .BypassEn = 1'b0;
defparam \hspi|delay_cnt~18 .CarryEnb = 1'b1;

alta_slice \hspi|hd[0] (
	.A(\hspi|state.SEND_CRC_1~q ),
	.B(\hspi|Selector29~1_combout ),
	.C(\hspi|crc16 [7]),
	.D(\hspi|Selector29~0_combout ),
	.Cin(),
	.Qin(\hspi|hd [0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X3_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector29~2_combout ),
	.Cout(),
	.Q(\hspi|hd [0]));
defparam \hspi|hd[0] .coord_x = 8;
defparam \hspi|hd[0] .coord_y = 8;
defparam \hspi|hd[0] .coord_z = 15;
defparam \hspi|hd[0] .mask = 16'h3B0A;
defparam \hspi|hd[0] .modeMux = 1'b0;
defparam \hspi|hd[0] .FeedbackMux = 1'b0;
defparam \hspi|hd[0] .ShiftMux = 1'b0;
defparam \hspi|hd[0] .BypassEn = 1'b0;
defparam \hspi|hd[0] .CarryEnb = 1'b1;

alta_slice \hspi|hd[0]~0 (
	.A(vcc),
	.B(\hspi|state.IDLE~q ),
	.C(\rst~q ),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|hd[0]~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|hd[0]~0 .coord_x = 6;
defparam \hspi|hd[0]~0 .coord_y = 5;
defparam \hspi|hd[0]~0 .coord_z = 1;
defparam \hspi|hd[0]~0 .mask = 16'h0C0C;
defparam \hspi|hd[0]~0 .modeMux = 1'b0;
defparam \hspi|hd[0]~0 .FeedbackMux = 1'b0;
defparam \hspi|hd[0]~0 .ShiftMux = 1'b0;
defparam \hspi|hd[0]~0 .BypassEn = 1'b0;
defparam \hspi|hd[0]~0 .CarryEnb = 1'b1;

alta_slice \hspi|hd[1] (
	.A(\hspi|crc16 [6]),
	.B(\hspi|Selector29~1_combout ),
	.C(\hspi|state.SEND_CRC_1~q ),
	.D(\hspi|Selector28~0_combout ),
	.Cin(),
	.Qin(\hspi|hd [1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X3_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector28~1_combout ),
	.Cout(),
	.Q(\hspi|hd [1]));
defparam \hspi|hd[1] .coord_x = 8;
defparam \hspi|hd[1] .coord_y = 8;
defparam \hspi|hd[1] .coord_z = 9;
defparam \hspi|hd[1] .mask = 16'h7350;
defparam \hspi|hd[1] .modeMux = 1'b0;
defparam \hspi|hd[1] .FeedbackMux = 1'b0;
defparam \hspi|hd[1] .ShiftMux = 1'b0;
defparam \hspi|hd[1] .BypassEn = 1'b0;
defparam \hspi|hd[1] .CarryEnb = 1'b1;

alta_slice \hspi|hd[2] (
	.A(\hspi|state.SEND_PAYLOAD~q ),
	.B(\hspi|hd[5]~1_combout ),
	.C(\hspi|state.SEND_HEADER_3~q ),
	.D(\hspi|Selector27~1_combout ),
	.Cin(),
	.Qin(\hspi|hd [2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X1_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X1_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector27~2_combout ),
	.Cout(),
	.Q(\hspi|hd [2]));
defparam \hspi|hd[2] .coord_x = 6;
defparam \hspi|hd[2] .coord_y = 8;
defparam \hspi|hd[2] .coord_z = 3;
defparam \hspi|hd[2] .mask = 16'hFB00;
defparam \hspi|hd[2] .modeMux = 1'b0;
defparam \hspi|hd[2] .FeedbackMux = 1'b0;
defparam \hspi|hd[2] .ShiftMux = 1'b0;
defparam \hspi|hd[2] .BypassEn = 1'b0;
defparam \hspi|hd[2] .CarryEnb = 1'b1;

alta_slice \hspi|hd[3] (
	.A(\hspi|state.SEND_PAYLOAD~q ),
	.B(\hspi|state.SEND_HEADER_3~q ),
	.C(\hspi|hd[5]~1_combout ),
	.D(\hspi|Selector26~1_combout ),
	.Cin(),
	.Qin(\hspi|hd [3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X2_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector26~2_combout ),
	.Cout(),
	.Q(\hspi|hd [3]));
defparam \hspi|hd[3] .coord_x = 6;
defparam \hspi|hd[3] .coord_y = 5;
defparam \hspi|hd[3] .coord_z = 10;
defparam \hspi|hd[3] .mask = 16'hEF00;
defparam \hspi|hd[3] .modeMux = 1'b0;
defparam \hspi|hd[3] .FeedbackMux = 1'b0;
defparam \hspi|hd[3] .ShiftMux = 1'b0;
defparam \hspi|hd[3] .BypassEn = 1'b0;
defparam \hspi|hd[3] .CarryEnb = 1'b1;

alta_slice \hspi|hd[4] (
	.A(\hspi|state.SEND_PAYLOAD~q ),
	.B(\hspi|Selector25~1_combout ),
	.C(\hspi|state.SEND_HEADER_3~q ),
	.D(\hspi|hd[5]~1_combout ),
	.Cin(),
	.Qin(\hspi|hd [4]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X1_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X1_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector25~2_combout ),
	.Cout(),
	.Q(\hspi|hd [4]));
defparam \hspi|hd[4] .coord_x = 6;
defparam \hspi|hd[4] .coord_y = 8;
defparam \hspi|hd[4] .coord_z = 6;
defparam \hspi|hd[4] .mask = 16'hC8CC;
defparam \hspi|hd[4] .modeMux = 1'b0;
defparam \hspi|hd[4] .FeedbackMux = 1'b0;
defparam \hspi|hd[4] .ShiftMux = 1'b0;
defparam \hspi|hd[4] .BypassEn = 1'b0;
defparam \hspi|hd[4] .CarryEnb = 1'b1;

alta_slice \hspi|hd[5] (
	.A(\hspi|state.SEND_HEADER_3~q ),
	.B(\hspi|hd[5]~1_combout ),
	.C(\hspi|state.SEND_PAYLOAD~q ),
	.D(\hspi|Selector24~1_combout ),
	.Cin(),
	.Qin(\hspi|hd [5]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X1_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X1_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector24~2_combout ),
	.Cout(),
	.Q(\hspi|hd [5]));
defparam \hspi|hd[5] .coord_x = 6;
defparam \hspi|hd[5] .coord_y = 8;
defparam \hspi|hd[5] .coord_z = 10;
defparam \hspi|hd[5] .mask = 16'hFB00;
defparam \hspi|hd[5] .modeMux = 1'b0;
defparam \hspi|hd[5] .FeedbackMux = 1'b0;
defparam \hspi|hd[5] .ShiftMux = 1'b0;
defparam \hspi|hd[5] .BypassEn = 1'b0;
defparam \hspi|hd[5] .CarryEnb = 1'b1;

alta_slice \hspi|hd[5]~1 (
	.A(vcc),
	.B(vcc),
	.C(\hspi|state.SEND_CRC_1~q ),
	.D(\hspi|state.SEND_CRC_0~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|hd[5]~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|hd[5]~1 .coord_x = 8;
defparam \hspi|hd[5]~1 .coord_y = 8;
defparam \hspi|hd[5]~1 .coord_z = 1;
defparam \hspi|hd[5]~1 .mask = 16'h000F;
defparam \hspi|hd[5]~1 .modeMux = 1'b0;
defparam \hspi|hd[5]~1 .FeedbackMux = 1'b0;
defparam \hspi|hd[5]~1 .ShiftMux = 1'b0;
defparam \hspi|hd[5]~1 .BypassEn = 1'b0;
defparam \hspi|hd[5]~1 .CarryEnb = 1'b1;

alta_slice \hspi|hd[5]~2 (
	.A(vcc),
	.B(\hspi|state.SEND_CRC_0~q ),
	.C(\hspi|state.SEND_PAYLOAD~q ),
	.D(\hspi|state.SEND_CRC_1~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|hd[5]~2_combout ),
	.Cout(),
	.Q());
defparam \hspi|hd[5]~2 .coord_x = 7;
defparam \hspi|hd[5]~2 .coord_y = 7;
defparam \hspi|hd[5]~2 .coord_z = 9;
defparam \hspi|hd[5]~2 .mask = 16'hFF30;
defparam \hspi|hd[5]~2 .modeMux = 1'b0;
defparam \hspi|hd[5]~2 .FeedbackMux = 1'b0;
defparam \hspi|hd[5]~2 .ShiftMux = 1'b0;
defparam \hspi|hd[5]~2 .BypassEn = 1'b0;
defparam \hspi|hd[5]~2 .CarryEnb = 1'b1;

alta_slice \hspi|hd[6] (
	.A(\hspi|Selector29~1_combout ),
	.B(\hspi|Selector23~0_combout ),
	.C(\hspi|state.SEND_CRC_1~q ),
	.D(\hspi|crc16 [1]),
	.Cin(),
	.Qin(\hspi|hd [6]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X3_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector23~1_combout ),
	.Cout(),
	.Q(\hspi|hd [6]));
defparam \hspi|hd[6] .coord_x = 8;
defparam \hspi|hd[6] .coord_y = 8;
defparam \hspi|hd[6] .coord_z = 10;
defparam \hspi|hd[6] .mask = 16'h44F4;
defparam \hspi|hd[6] .modeMux = 1'b0;
defparam \hspi|hd[6] .FeedbackMux = 1'b0;
defparam \hspi|hd[6] .ShiftMux = 1'b0;
defparam \hspi|hd[6] .BypassEn = 1'b0;
defparam \hspi|hd[6] .CarryEnb = 1'b1;

alta_slice \hspi|hd[7] (
	.A(\hspi|Selector22~0_combout ),
	.B(\hspi|crc16 [0]),
	.C(\hspi|state.SEND_CRC_1~q ),
	.D(\hspi|Selector29~1_combout ),
	.Cin(),
	.Qin(\hspi|hd [7]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|hd[0]~0_combout_X3_Y4_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector22~1_combout ),
	.Cout(),
	.Q(\hspi|hd [7]));
defparam \hspi|hd[7] .coord_x = 8;
defparam \hspi|hd[7] .coord_y = 8;
defparam \hspi|hd[7] .coord_z = 7;
defparam \hspi|hd[7] .mask = 16'h30BA;
defparam \hspi|hd[7] .modeMux = 1'b0;
defparam \hspi|hd[7] .FeedbackMux = 1'b0;
defparam \hspi|hd[7] .ShiftMux = 1'b0;
defparam \hspi|hd[7] .BypassEn = 1'b0;
defparam \hspi|hd[7] .CarryEnb = 1'b1;

alta_slice \hspi|htreq (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|htreq~0_combout ),
	.Cin(),
	.Qin(\hspi|htreq~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__hspi|htreq~1_combout_X5_Y5_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|htreq~2_combout ),
	.Cout(),
	.Q(\hspi|htreq~q ));
defparam \hspi|htreq .coord_x = 5;
defparam \hspi|htreq .coord_y = 7;
defparam \hspi|htreq .coord_z = 11;
defparam \hspi|htreq .mask = 16'h00FF;
defparam \hspi|htreq .modeMux = 1'b0;
defparam \hspi|htreq .FeedbackMux = 1'b0;
defparam \hspi|htreq .ShiftMux = 1'b0;
defparam \hspi|htreq .BypassEn = 1'b0;
defparam \hspi|htreq .CarryEnb = 1'b1;

alta_slice \hspi|htreq~0 (
	.A(\hspi|delay_cnt~1_combout ),
	.B(\hspi|delay_cnt~0_combout ),
	.C(\hspi|LessThan0~6_combout ),
	.D(\hspi|LessThan0~9_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|htreq~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|htreq~0 .coord_x = 4;
defparam \hspi|htreq~0 .coord_y = 7;
defparam \hspi|htreq~0 .coord_z = 13;
defparam \hspi|htreq~0 .mask = 16'hF777;
defparam \hspi|htreq~0 .modeMux = 1'b0;
defparam \hspi|htreq~0 .FeedbackMux = 1'b0;
defparam \hspi|htreq~0 .ShiftMux = 1'b0;
defparam \hspi|htreq~0 .BypassEn = 1'b0;
defparam \hspi|htreq~0 .CarryEnb = 1'b1;

alta_slice \hspi|htreq~1 (
	.A(\rst~q ),
	.B(vcc),
	.C(vcc),
	.D(\hspi|state.IDLE~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|htreq~1_combout ),
	.Cout(),
	.Q());
defparam \hspi|htreq~1 .coord_x = 5;
defparam \hspi|htreq~1 .coord_y = 7;
defparam \hspi|htreq~1 .coord_z = 3;
defparam \hspi|htreq~1 .mask = 16'h0055;
defparam \hspi|htreq~1 .modeMux = 1'b0;
defparam \hspi|htreq~1 .FeedbackMux = 1'b0;
defparam \hspi|htreq~1 .ShiftMux = 1'b0;
defparam \hspi|htreq~1 .BypassEn = 1'b0;
defparam \hspi|htreq~1 .CarryEnb = 1'b1;

alta_slice \hspi|htvld (
	.A(\hspi|state.IDLE~q ),
	.B(vcc),
	.C(vcc),
	.D(\hspi|state.SEND_HEADER_0~q ),
	.Cin(),
	.Qin(\hspi|htvld~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector12~0_combout ),
	.Cout(),
	.Q(\hspi|htvld~q ));
defparam \hspi|htvld .coord_x = 7;
defparam \hspi|htvld .coord_y = 7;
defparam \hspi|htvld .coord_z = 14;
defparam \hspi|htvld .mask = 16'hFFA0;
defparam \hspi|htvld .modeMux = 1'b0;
defparam \hspi|htvld .FeedbackMux = 1'b1;
defparam \hspi|htvld .ShiftMux = 1'b0;
defparam \hspi|htvld .BypassEn = 1'b0;
defparam \hspi|htvld .CarryEnb = 1'b1;

alta_slice \hspi|reg_ack (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|reg_ack~0_combout ),
	.Cin(),
	.Qin(\hspi|reg_ack~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X10_Y3_INV_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X10_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|reg_ack~feeder_combout ),
	.Cout(),
	.Q(\hspi|reg_ack~q ));
defparam \hspi|reg_ack .coord_x = 5;
defparam \hspi|reg_ack .coord_y = 3;
defparam \hspi|reg_ack .coord_z = 5;
defparam \hspi|reg_ack .mask = 16'hFF00;
defparam \hspi|reg_ack .modeMux = 1'b0;
defparam \hspi|reg_ack .FeedbackMux = 1'b0;
defparam \hspi|reg_ack .ShiftMux = 1'b0;
defparam \hspi|reg_ack .BypassEn = 1'b0;
defparam \hspi|reg_ack .CarryEnb = 1'b1;

alta_slice \hspi|reg_ack~0 (
	.A(\hspi|reg_ack~q ),
	.B(\reg_bus|adr [6]),
	.C(\reg_bus|adr [5]),
	.D(\reg_bus|req~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|reg_ack~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|reg_ack~0 .coord_x = 4;
defparam \hspi|reg_ack~0 .coord_y = 3;
defparam \hspi|reg_ack~0 .coord_z = 2;
defparam \hspi|reg_ack~0 .mask = 16'hAB00;
defparam \hspi|reg_ack~0 .modeMux = 1'b0;
defparam \hspi|reg_ack~0 .FeedbackMux = 1'b0;
defparam \hspi|reg_ack~0 .ShiftMux = 1'b0;
defparam \hspi|reg_ack~0 .BypassEn = 1'b0;
defparam \hspi|reg_ack~0 .CarryEnb = 1'b1;

alta_slice \hspi|reg_rdata_value[0] (
	.A(vcc),
	.B(\reg_bus|adr [0]),
	.C(vcc),
	.D(\hspi|Equal1~0_combout ),
	.Cin(),
	.Qin(\hspi|reg_rdata_value [0]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__hspi|reg_rdata_value[0]~0_combout_X8_Y3_INV_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X8_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector11~0_combout ),
	.Cout(),
	.Q(\hspi|reg_rdata_value [0]));
defparam \hspi|reg_rdata_value[0] .coord_x = 6;
defparam \hspi|reg_rdata_value[0] .coord_y = 3;
defparam \hspi|reg_rdata_value[0] .coord_z = 13;
defparam \hspi|reg_rdata_value[0] .mask = 16'h33F0;
defparam \hspi|reg_rdata_value[0] .modeMux = 1'b0;
defparam \hspi|reg_rdata_value[0] .FeedbackMux = 1'b1;
defparam \hspi|reg_rdata_value[0] .ShiftMux = 1'b0;
defparam \hspi|reg_rdata_value[0] .BypassEn = 1'b0;
defparam \hspi|reg_rdata_value[0] .CarryEnb = 1'b1;

alta_slice \hspi|reg_rdata_value[0]~0 (
	.A(\reg_bus|adr [5]),
	.B(\reg_bus|adr [6]),
	.C(\reg_bus|rw~q ),
	.D(\reg_bus|req~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|reg_rdata_value[0]~0_combout ),
	.Cout(),
	.Q());
defparam \hspi|reg_rdata_value[0]~0 .coord_x = 4;
defparam \hspi|reg_rdata_value[0]~0 .coord_y = 3;
defparam \hspi|reg_rdata_value[0]~0 .coord_z = 13;
defparam \hspi|reg_rdata_value[0]~0 .mask = 16'h0100;
defparam \hspi|reg_rdata_value[0]~0 .modeMux = 1'b0;
defparam \hspi|reg_rdata_value[0]~0 .FeedbackMux = 1'b0;
defparam \hspi|reg_rdata_value[0]~0 .ShiftMux = 1'b0;
defparam \hspi|reg_rdata_value[0]~0 .BypassEn = 1'b0;
defparam \hspi|reg_rdata_value[0]~0 .CarryEnb = 1'b1;

alta_slice \hspi|reg_rdata_value[2] (
	.A(vcc),
	.B(\hspi|reg_rdata_value[0]~0_combout ),
	.C(vcc),
	.D(\hspi|Equal1~0_combout ),
	.Cin(),
	.Qin(\hspi|reg_rdata_value [2]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X10_Y3_INV_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X10_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|reg_rdata_value[2]~1_combout ),
	.Cout(),
	.Q(\hspi|reg_rdata_value [2]));
defparam \hspi|reg_rdata_value[2] .coord_x = 5;
defparam \hspi|reg_rdata_value[2] .coord_y = 3;
defparam \hspi|reg_rdata_value[2] .coord_z = 12;
defparam \hspi|reg_rdata_value[2] .mask = 16'hFCF0;
defparam \hspi|reg_rdata_value[2] .modeMux = 1'b0;
defparam \hspi|reg_rdata_value[2] .FeedbackMux = 1'b1;
defparam \hspi|reg_rdata_value[2] .ShiftMux = 1'b0;
defparam \hspi|reg_rdata_value[2] .BypassEn = 1'b0;
defparam \hspi|reg_rdata_value[2] .CarryEnb = 1'b1;

alta_slice \hspi|reg_rdata_value[3] (
	.A(vcc),
	.B(\reg_bus|adr [0]),
	.C(vcc),
	.D(\hspi|Equal1~0_combout ),
	.Cin(),
	.Qin(\hspi|reg_rdata_value [3]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__hspi|reg_rdata_value[0]~0_combout_X8_Y3_INV_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X8_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector9~0_combout ),
	.Cout(),
	.Q(\hspi|reg_rdata_value [3]));
defparam \hspi|reg_rdata_value[3] .coord_x = 6;
defparam \hspi|reg_rdata_value[3] .coord_y = 3;
defparam \hspi|reg_rdata_value[3] .coord_z = 12;
defparam \hspi|reg_rdata_value[3] .mask = 16'hCCF0;
defparam \hspi|reg_rdata_value[3] .modeMux = 1'b0;
defparam \hspi|reg_rdata_value[3] .FeedbackMux = 1'b1;
defparam \hspi|reg_rdata_value[3] .ShiftMux = 1'b0;
defparam \hspi|reg_rdata_value[3] .BypassEn = 1'b0;
defparam \hspi|reg_rdata_value[3] .CarryEnb = 1'b1;

alta_slice \hspi|state.IDLE (
	.A(\hspi|delay_cnt~18_combout ),
	.B(\hspi|state.SEND_CRC_1~q ),
	.C(vcc),
	.D(\hspi|LessThan0~7_combout ),
	.Cin(),
	.Qin(\hspi|state.IDLE~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector14~0_combout ),
	.Cout(),
	.Q(\hspi|state.IDLE~q ));
defparam \hspi|state.IDLE .coord_x = 7;
defparam \hspi|state.IDLE .coord_y = 7;
defparam \hspi|state.IDLE .coord_z = 2;
defparam \hspi|state.IDLE .mask = 16'h3031;
defparam \hspi|state.IDLE .modeMux = 1'b0;
defparam \hspi|state.IDLE .FeedbackMux = 1'b1;
defparam \hspi|state.IDLE .ShiftMux = 1'b0;
defparam \hspi|state.IDLE .BypassEn = 1'b0;
defparam \hspi|state.IDLE .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_CRC_0 (
	.A(\hspi|Equal3~2_combout ),
	.B(\hspi|Equal3~0_combout ),
	.C(\hspi|state.SEND_PAYLOAD~q ),
	.D(\hspi|Equal3~1_combout ),
	.Cin(),
	.Qin(\hspi|state.SEND_CRC_0~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector20~0_combout ),
	.Cout(),
	.Q(\hspi|state.SEND_CRC_0~q ));
defparam \hspi|state.SEND_CRC_0 .coord_x = 7;
defparam \hspi|state.SEND_CRC_0 .coord_y = 7;
defparam \hspi|state.SEND_CRC_0 .coord_z = 8;
defparam \hspi|state.SEND_CRC_0 .mask = 16'h8000;
defparam \hspi|state.SEND_CRC_0 .modeMux = 1'b0;
defparam \hspi|state.SEND_CRC_0 .FeedbackMux = 1'b0;
defparam \hspi|state.SEND_CRC_0 .ShiftMux = 1'b0;
defparam \hspi|state.SEND_CRC_0 .BypassEn = 1'b0;
defparam \hspi|state.SEND_CRC_0 .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_CRC_1 (
	.A(),
	.B(),
	.C(\hspi|state.SEND_CRC_0~q ),
	.D(),
	.Cin(),
	.Qin(\hspi|state.SEND_CRC_1~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(SyncReset_X3_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X3_Y5_VCC),
	.LutOut(),
	.Cout(),
	.Q(\hspi|state.SEND_CRC_1~q ));
defparam \hspi|state.SEND_CRC_1 .coord_x = 7;
defparam \hspi|state.SEND_CRC_1 .coord_y = 7;
defparam \hspi|state.SEND_CRC_1 .coord_z = 13;
defparam \hspi|state.SEND_CRC_1 .mask = 16'hFFFF;
defparam \hspi|state.SEND_CRC_1 .modeMux = 1'b1;
defparam \hspi|state.SEND_CRC_1 .FeedbackMux = 1'b0;
defparam \hspi|state.SEND_CRC_1 .ShiftMux = 1'b0;
defparam \hspi|state.SEND_CRC_1 .BypassEn = 1'b1;
defparam \hspi|state.SEND_CRC_1 .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_HEADER_0 (
	.A(\hspi|delay_cnt~18_combout ),
	.B(\hspi|state.IDLE~q ),
	.C(\hspi|LessThan0~6_combout ),
	.D(\hspi|LessThan0~9_combout ),
	.Cin(),
	.Qin(\hspi|state.SEND_HEADER_0~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector15~0_combout ),
	.Cout(),
	.Q(\hspi|state.SEND_HEADER_0~q ));
defparam \hspi|state.SEND_HEADER_0 .coord_x = 7;
defparam \hspi|state.SEND_HEADER_0 .coord_y = 7;
defparam \hspi|state.SEND_HEADER_0 .coord_z = 3;
defparam \hspi|state.SEND_HEADER_0 .mask = 16'h0111;
defparam \hspi|state.SEND_HEADER_0 .modeMux = 1'b0;
defparam \hspi|state.SEND_HEADER_0 .FeedbackMux = 1'b0;
defparam \hspi|state.SEND_HEADER_0 .ShiftMux = 1'b0;
defparam \hspi|state.SEND_HEADER_0 .BypassEn = 1'b0;
defparam \hspi|state.SEND_HEADER_0 .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_HEADER_1 (
	.A(),
	.B(),
	.C(\hspi|state.SEND_HEADER_0~q ),
	.D(),
	.Cin(),
	.Qin(\hspi|state.SEND_HEADER_1~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(SyncReset_X3_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X3_Y5_VCC),
	.LutOut(),
	.Cout(),
	.Q(\hspi|state.SEND_HEADER_1~q ));
defparam \hspi|state.SEND_HEADER_1 .coord_x = 7;
defparam \hspi|state.SEND_HEADER_1 .coord_y = 7;
defparam \hspi|state.SEND_HEADER_1 .coord_z = 10;
defparam \hspi|state.SEND_HEADER_1 .mask = 16'hFFFF;
defparam \hspi|state.SEND_HEADER_1 .modeMux = 1'b1;
defparam \hspi|state.SEND_HEADER_1 .FeedbackMux = 1'b0;
defparam \hspi|state.SEND_HEADER_1 .ShiftMux = 1'b0;
defparam \hspi|state.SEND_HEADER_1 .BypassEn = 1'b1;
defparam \hspi|state.SEND_HEADER_1 .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_HEADER_2 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|state.SEND_HEADER_1~q ),
	.Cin(),
	.Qin(\hspi|state.SEND_HEADER_2~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|state.SEND_HEADER_2~feeder_combout ),
	.Cout(),
	.Q(\hspi|state.SEND_HEADER_2~q ));
defparam \hspi|state.SEND_HEADER_2 .coord_x = 7;
defparam \hspi|state.SEND_HEADER_2 .coord_y = 7;
defparam \hspi|state.SEND_HEADER_2 .coord_z = 11;
defparam \hspi|state.SEND_HEADER_2 .mask = 16'hFF00;
defparam \hspi|state.SEND_HEADER_2 .modeMux = 1'b0;
defparam \hspi|state.SEND_HEADER_2 .FeedbackMux = 1'b0;
defparam \hspi|state.SEND_HEADER_2 .ShiftMux = 1'b0;
defparam \hspi|state.SEND_HEADER_2 .BypassEn = 1'b0;
defparam \hspi|state.SEND_HEADER_2 .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_HEADER_3 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\hspi|state.SEND_HEADER_2~q ),
	.Cin(),
	.Qin(\hspi|state.SEND_HEADER_3~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|state.SEND_HEADER_3~feeder_combout ),
	.Cout(),
	.Q(\hspi|state.SEND_HEADER_3~q ));
defparam \hspi|state.SEND_HEADER_3 .coord_x = 7;
defparam \hspi|state.SEND_HEADER_3 .coord_y = 7;
defparam \hspi|state.SEND_HEADER_3 .coord_z = 1;
defparam \hspi|state.SEND_HEADER_3 .mask = 16'hFF00;
defparam \hspi|state.SEND_HEADER_3 .modeMux = 1'b0;
defparam \hspi|state.SEND_HEADER_3 .FeedbackMux = 1'b0;
defparam \hspi|state.SEND_HEADER_3 .ShiftMux = 1'b0;
defparam \hspi|state.SEND_HEADER_3 .BypassEn = 1'b0;
defparam \hspi|state.SEND_HEADER_3 .CarryEnb = 1'b1;

alta_slice \hspi|state.SEND_PAYLOAD (
	.A(vcc),
	.B(\hspi|Equal3~3_combout ),
	.C(vcc),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|state.SEND_PAYLOAD~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X3_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector19~0_combout ),
	.Cout(),
	.Q(\hspi|state.SEND_PAYLOAD~q ));
defparam \hspi|state.SEND_PAYLOAD .coord_x = 7;
defparam \hspi|state.SEND_PAYLOAD .coord_y = 7;
defparam \hspi|state.SEND_PAYLOAD .coord_z = 12;
defparam \hspi|state.SEND_PAYLOAD .mask = 16'hFF30;
defparam \hspi|state.SEND_PAYLOAD .modeMux = 1'b0;
defparam \hspi|state.SEND_PAYLOAD .FeedbackMux = 1'b1;
defparam \hspi|state.SEND_PAYLOAD .ShiftMux = 1'b0;
defparam \hspi|state.SEND_PAYLOAD .BypassEn = 1'b0;
defparam \hspi|state.SEND_PAYLOAD .CarryEnb = 1'b1;

alta_slice \hspi|tx_seq_num[0] (
	.A(\hspi|state.SEND_CRC_1~q ),
	.B(vcc),
	.C(vcc),
	.D(\rst~q ),
	.Cin(),
	.Qin(\hspi|tx_seq_num [0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X3_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X3_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|tx_seq_num[0]~0_combout ),
	.Cout(),
	.Q(\hspi|tx_seq_num [0]));
defparam \hspi|tx_seq_num[0] .coord_x = 8;
defparam \hspi|tx_seq_num[0] .coord_y = 8;
defparam \hspi|tx_seq_num[0] .coord_z = 2;
defparam \hspi|tx_seq_num[0] .mask = 16'hF05A;
defparam \hspi|tx_seq_num[0] .modeMux = 1'b0;
defparam \hspi|tx_seq_num[0] .FeedbackMux = 1'b1;
defparam \hspi|tx_seq_num[0] .ShiftMux = 1'b0;
defparam \hspi|tx_seq_num[0] .BypassEn = 1'b0;
defparam \hspi|tx_seq_num[0] .CarryEnb = 1'b1;

alta_slice \hspi|tx_seq_num[1] (
	.A(\hspi|state.SEND_CRC_1~q ),
	.B(\hspi|tx_seq_num [0]),
	.C(vcc),
	.D(\rst~q ),
	.Cin(),
	.Qin(\hspi|tx_seq_num [1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X3_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X3_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|tx_seq_num[1]~1_combout ),
	.Cout(),
	.Q(\hspi|tx_seq_num [1]));
defparam \hspi|tx_seq_num[1] .coord_x = 8;
defparam \hspi|tx_seq_num[1] .coord_y = 8;
defparam \hspi|tx_seq_num[1] .coord_z = 3;
defparam \hspi|tx_seq_num[1] .mask = 16'hF078;
defparam \hspi|tx_seq_num[1] .modeMux = 1'b0;
defparam \hspi|tx_seq_num[1] .FeedbackMux = 1'b1;
defparam \hspi|tx_seq_num[1] .ShiftMux = 1'b0;
defparam \hspi|tx_seq_num[1] .BypassEn = 1'b0;
defparam \hspi|tx_seq_num[1] .CarryEnb = 1'b1;

alta_slice \hspi|tx_seq_num[2] (
	.A(\hspi|tx_seq_num[2]~2_combout ),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|tx_seq_num [2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X1_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|tx_seq_num[2]~3_combout ),
	.Cout(),
	.Q(\hspi|tx_seq_num [2]));
defparam \hspi|tx_seq_num[2] .coord_x = 6;
defparam \hspi|tx_seq_num[2] .coord_y = 8;
defparam \hspi|tx_seq_num[2] .coord_z = 7;
defparam \hspi|tx_seq_num[2] .mask = 16'h5A5A;
defparam \hspi|tx_seq_num[2] .modeMux = 1'b0;
defparam \hspi|tx_seq_num[2] .FeedbackMux = 1'b1;
defparam \hspi|tx_seq_num[2] .ShiftMux = 1'b0;
defparam \hspi|tx_seq_num[2] .BypassEn = 1'b0;
defparam \hspi|tx_seq_num[2] .CarryEnb = 1'b1;

alta_slice \hspi|tx_seq_num[2]~2 (
	.A(\hspi|tx_seq_num [0]),
	.B(\hspi|tx_seq_num [1]),
	.C(\hspi|state.SEND_CRC_1~q ),
	.D(\rst~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|tx_seq_num[2]~2_combout ),
	.Cout(),
	.Q());
defparam \hspi|tx_seq_num[2]~2 .coord_x = 8;
defparam \hspi|tx_seq_num[2]~2 .coord_y = 8;
defparam \hspi|tx_seq_num[2]~2 .coord_z = 0;
defparam \hspi|tx_seq_num[2]~2 .mask = 16'h0080;
defparam \hspi|tx_seq_num[2]~2 .modeMux = 1'b0;
defparam \hspi|tx_seq_num[2]~2 .FeedbackMux = 1'b0;
defparam \hspi|tx_seq_num[2]~2 .ShiftMux = 1'b0;
defparam \hspi|tx_seq_num[2]~2 .BypassEn = 1'b0;
defparam \hspi|tx_seq_num[2]~2 .CarryEnb = 1'b1;

alta_slice \hspi|tx_seq_num[3] (
	.A(\hspi|tx_seq_num[2]~2_combout ),
	.B(vcc),
	.C(vcc),
	.D(\hspi|tx_seq_num [2]),
	.Cin(),
	.Qin(\hspi|tx_seq_num [3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X1_Y4_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y4_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|tx_seq_num[3]~4_combout ),
	.Cout(),
	.Q(\hspi|tx_seq_num [3]));
defparam \hspi|tx_seq_num[3] .coord_x = 6;
defparam \hspi|tx_seq_num[3] .coord_y = 8;
defparam \hspi|tx_seq_num[3] .coord_z = 13;
defparam \hspi|tx_seq_num[3] .mask = 16'h5AF0;
defparam \hspi|tx_seq_num[3] .modeMux = 1'b0;
defparam \hspi|tx_seq_num[3] .FeedbackMux = 1'b1;
defparam \hspi|tx_seq_num[3] .ShiftMux = 1'b0;
defparam \hspi|tx_seq_num[3] .BypassEn = 1'b0;
defparam \hspi|tx_seq_num[3] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[0] (
	.A(\hspi|state.SEND_HEADER_3~q ),
	.B(vcc),
	.C(\hspi|Add1~0_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|xfer_rem [0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X1_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X1_Y5_GND),
	.SyncReset(SyncReset_X1_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X1_Y5_SIG ),
	.LutOut(\hspi|Selector41~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [0]));
defparam \hspi|xfer_rem[0] .coord_x = 7;
defparam \hspi|xfer_rem[0] .coord_y = 5;
defparam \hspi|xfer_rem[0] .coord_z = 15;
defparam \hspi|xfer_rem[0] .mask = 16'h5050;
defparam \hspi|xfer_rem[0] .modeMux = 1'b0;
defparam \hspi|xfer_rem[0] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[0] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[0] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[0] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[10] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~20_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [10]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector31~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [10]));
defparam \hspi|xfer_rem[10] .coord_x = 6;
defparam \hspi|xfer_rem[10] .coord_y = 5;
defparam \hspi|xfer_rem[10] .coord_z = 12;
defparam \hspi|xfer_rem[10] .mask = 16'h00F0;
defparam \hspi|xfer_rem[10] .modeMux = 1'b0;
defparam \hspi|xfer_rem[10] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[10] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[10] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[10] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[11] (
	.A(\hspi|state.SEND_HEADER_3~q ),
	.B(vcc),
	.C(\hspi|Add1~22_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|xfer_rem [11]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X1_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X1_Y5_GND),
	.SyncReset(SyncReset_X1_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X1_Y5_SIG ),
	.LutOut(\hspi|Selector30~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [11]));
defparam \hspi|xfer_rem[11] .coord_x = 7;
defparam \hspi|xfer_rem[11] .coord_y = 5;
defparam \hspi|xfer_rem[11] .coord_z = 14;
defparam \hspi|xfer_rem[11] .mask = 16'h5050;
defparam \hspi|xfer_rem[11] .modeMux = 1'b0;
defparam \hspi|xfer_rem[11] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[11] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[11] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[11] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[1] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~2_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector40~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [1]));
defparam \hspi|xfer_rem[1] .coord_x = 6;
defparam \hspi|xfer_rem[1] .coord_y = 5;
defparam \hspi|xfer_rem[1] .coord_z = 9;
defparam \hspi|xfer_rem[1] .mask = 16'h00F0;
defparam \hspi|xfer_rem[1] .modeMux = 1'b0;
defparam \hspi|xfer_rem[1] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[1] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[1] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[1] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[2] (
	.A(\hspi|state.SEND_HEADER_3~q ),
	.B(vcc),
	.C(\hspi|Add1~4_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|xfer_rem [2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X1_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X1_Y5_GND),
	.SyncReset(SyncReset_X1_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X1_Y5_SIG ),
	.LutOut(\hspi|Selector39~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [2]));
defparam \hspi|xfer_rem[2] .coord_x = 7;
defparam \hspi|xfer_rem[2] .coord_y = 5;
defparam \hspi|xfer_rem[2] .coord_z = 12;
defparam \hspi|xfer_rem[2] .mask = 16'h5050;
defparam \hspi|xfer_rem[2] .modeMux = 1'b0;
defparam \hspi|xfer_rem[2] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[2] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[2] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[2] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[3] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~6_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector38~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [3]));
defparam \hspi|xfer_rem[3] .coord_x = 6;
defparam \hspi|xfer_rem[3] .coord_y = 5;
defparam \hspi|xfer_rem[3] .coord_z = 6;
defparam \hspi|xfer_rem[3] .mask = 16'h00F0;
defparam \hspi|xfer_rem[3] .modeMux = 1'b0;
defparam \hspi|xfer_rem[3] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[3] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[3] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[3] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[4] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~8_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [4]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector37~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [4]));
defparam \hspi|xfer_rem[4] .coord_x = 6;
defparam \hspi|xfer_rem[4] .coord_y = 5;
defparam \hspi|xfer_rem[4] .coord_z = 2;
defparam \hspi|xfer_rem[4] .mask = 16'h00F0;
defparam \hspi|xfer_rem[4] .modeMux = 1'b0;
defparam \hspi|xfer_rem[4] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[4] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[4] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[4] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[5] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~10_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [5]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector36~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [5]));
defparam \hspi|xfer_rem[5] .coord_x = 6;
defparam \hspi|xfer_rem[5] .coord_y = 5;
defparam \hspi|xfer_rem[5] .coord_z = 3;
defparam \hspi|xfer_rem[5] .mask = 16'h00F0;
defparam \hspi|xfer_rem[5] .modeMux = 1'b0;
defparam \hspi|xfer_rem[5] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[5] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[5] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[5] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[6] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~12_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [6]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector35~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [6]));
defparam \hspi|xfer_rem[6] .coord_x = 6;
defparam \hspi|xfer_rem[6] .coord_y = 5;
defparam \hspi|xfer_rem[6] .coord_z = 11;
defparam \hspi|xfer_rem[6] .mask = 16'h00F0;
defparam \hspi|xfer_rem[6] .modeMux = 1'b0;
defparam \hspi|xfer_rem[6] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[6] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[6] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[6] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[7] (
	.A(\hspi|state.SEND_HEADER_3~q ),
	.B(vcc),
	.C(\hspi|Add1~14_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\hspi|xfer_rem [7]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X1_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X1_Y5_GND),
	.SyncReset(SyncReset_X1_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X1_Y5_SIG ),
	.LutOut(\hspi|Selector34~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [7]));
defparam \hspi|xfer_rem[7] .coord_x = 7;
defparam \hspi|xfer_rem[7] .coord_y = 5;
defparam \hspi|xfer_rem[7] .coord_z = 13;
defparam \hspi|xfer_rem[7] .mask = 16'h5050;
defparam \hspi|xfer_rem[7] .modeMux = 1'b0;
defparam \hspi|xfer_rem[7] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[7] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[7] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[7] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[8] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|Add1~16_combout ),
	.D(\hspi|state.SEND_HEADER_3~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [8]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(SyncReset_X2_Y5_GND),
	.ShiftData(),
	.SyncLoad(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ),
	.LutOut(\hspi|Selector33~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [8]));
defparam \hspi|xfer_rem[8] .coord_x = 6;
defparam \hspi|xfer_rem[8] .coord_y = 5;
defparam \hspi|xfer_rem[8] .coord_z = 14;
defparam \hspi|xfer_rem[8] .mask = 16'h00F0;
defparam \hspi|xfer_rem[8] .modeMux = 1'b0;
defparam \hspi|xfer_rem[8] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[8] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[8] .BypassEn = 1'b1;
defparam \hspi|xfer_rem[8] .CarryEnb = 1'b1;

alta_slice \hspi|xfer_rem[9] (
	.A(\hspi|Add1~18_combout ),
	.B(\hspi|state.SEND_HEADER_3~q ),
	.C(vcc),
	.D(\hspi|state.SEND_PAYLOAD~q ),
	.Cin(),
	.Qin(\hspi|xfer_rem [9]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk__rst~q_X2_Y5_SIG_INV ),
	.AsyncReset(AsyncReset_X2_Y5_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\hspi|Selector32~0_combout ),
	.Cout(),
	.Q(\hspi|xfer_rem [9]));
defparam \hspi|xfer_rem[9] .coord_x = 6;
defparam \hspi|xfer_rem[9] .coord_y = 5;
defparam \hspi|xfer_rem[9] .coord_z = 15;
defparam \hspi|xfer_rem[9] .mask = 16'hAAFC;
defparam \hspi|xfer_rem[9] .modeMux = 1'b0;
defparam \hspi|xfer_rem[9] .FeedbackMux = 1'b1;
defparam \hspi|xfer_rem[9] .ShiftMux = 1'b0;
defparam \hspi|xfer_rem[9] .BypassEn = 1'b0;
defparam \hspi|xfer_rem[9] .CarryEnb = 1'b1;

alta_slice ht_rdy_last_state(
	.A(vcc),
	.B(vcc),
	.C(\HSPI_HTRDY~input_o ),
	.D(\HSPI_HTRDY~input_o ),
	.Cin(),
	.Qin(\ht_rdy_last_state~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X3_Y5_SIG_VCC ),
	.AsyncReset(AsyncReset_X3_Y5_GND),
	.SyncReset(SyncReset_X3_Y5_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X3_Y5_VCC),
	.LutOut(\always0~0_combout ),
	.Cout(),
	.Q(\ht_rdy_last_state~q ));
defparam ht_rdy_last_state.coord_x = 7;
defparam ht_rdy_last_state.coord_y = 7;
defparam ht_rdy_last_state.coord_z = 7;
defparam ht_rdy_last_state.mask = 16'h0FF0;
defparam ht_rdy_last_state.modeMux = 1'b0;
defparam ht_rdy_last_state.FeedbackMux = 1'b1;
defparam ht_rdy_last_state.ShiftMux = 1'b0;
defparam ht_rdy_last_state.BypassEn = 1'b1;
defparam ht_rdy_last_state.CarryEnb = 1'b1;

alta_bram \ram|dual_ram_0_E81264E7|ram_inst (
	.DataInA({vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout }),
	.DataInB({vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc, vcc}),
	.AddressA({\~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , vcc, vcc, vcc, vcc}),
	.AddressB({\~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , \~GND~combout , vcc, vcc, vcc, vcc}),
	.DataOutA({\ram|dual_ram_0_E81264E7|ram_inst.DataOutA[17] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[16] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[15] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[14] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[13] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[12] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[11] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[10] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[9] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[8] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[7] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[6] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[5] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[4] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[3] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[2] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[1] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutA[0] }),
	.DataOutB({\ram|dual_ram_0_E81264E7|ram_inst.DataOutB[17] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[16] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[15] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[14] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[13] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[12] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[11] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[10] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[9] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[8] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[7] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[6] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[5] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[4] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[3] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[2] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[1] , \ram|dual_ram_0_E81264E7|ram_inst.DataOutB[0] }),
	.Clk0(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn0(vcc),
	.AsyncReset0(gnd),
	.Clk1(\SPI_SCK~inputclkctrl_outclk ),
	.ClkEn1(vcc),
	.AsyncReset1(gnd),
	.WeRenA(vcc),
	.WeRenB(vcc));
defparam \ram|dual_ram_0_E81264E7|ram_inst .coord_x = 3;
defparam \ram|dual_ram_0_E81264E7|ram_inst .coord_y = 2;
defparam \ram|dual_ram_0_E81264E7|ram_inst .coord_z = 0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .CLKMODE = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTA_WIDTH = 4'b0000;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTB_WIDTH = 4'b0000;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTA_WRITEMODE = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTB_WRITEMODE = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTA_WRITETHRU = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTB_WRITETHRU = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTA_OUTREG = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTB_OUTREG = 1'b0;
defparam \ram|dual_ram_0_E81264E7|ram_inst .PORTB_READONLY = 1'b1;
defparam \ram|dual_ram_0_E81264E7|ram_inst .INIT_VAL = 4608'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

alta_slice \reg_bus|Add0~0 (
	.A(\reg_bus|bit_shift [4]),
	.B(\reg_bus|bit_shift [3]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Add0~0_combout ),
	.Cout(\reg_bus|Add0~1 ),
	.Q());
defparam \reg_bus|Add0~0 .coord_x = 6;
defparam \reg_bus|Add0~0 .coord_y = 4;
defparam \reg_bus|Add0~0 .coord_z = 1;
defparam \reg_bus|Add0~0 .mask = 16'h6611;
defparam \reg_bus|Add0~0 .modeMux = 1'b0;
defparam \reg_bus|Add0~0 .FeedbackMux = 1'b0;
defparam \reg_bus|Add0~0 .ShiftMux = 1'b0;
defparam \reg_bus|Add0~0 .BypassEn = 1'b0;
defparam \reg_bus|Add0~0 .CarryEnb = 1'b0;

alta_slice \reg_bus|Add0~2 (
	.A(vcc),
	.B(\reg_bus|bit_shift [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|Add0~1 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Add0~2_combout ),
	.Cout(\reg_bus|Add0~3 ),
	.Q());
defparam \reg_bus|Add0~2 .coord_x = 6;
defparam \reg_bus|Add0~2 .coord_y = 4;
defparam \reg_bus|Add0~2 .coord_z = 2;
defparam \reg_bus|Add0~2 .mask = 16'hC3CF;
defparam \reg_bus|Add0~2 .modeMux = 1'b1;
defparam \reg_bus|Add0~2 .FeedbackMux = 1'b0;
defparam \reg_bus|Add0~2 .ShiftMux = 1'b0;
defparam \reg_bus|Add0~2 .BypassEn = 1'b0;
defparam \reg_bus|Add0~2 .CarryEnb = 1'b0;

alta_slice \reg_bus|Add0~4 (
	.A(\reg_bus|bit_shift [6]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|Add0~3 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Add0~4_combout ),
	.Cout(\reg_bus|Add0~5 ),
	.Q());
defparam \reg_bus|Add0~4 .coord_x = 6;
defparam \reg_bus|Add0~4 .coord_y = 4;
defparam \reg_bus|Add0~4 .coord_z = 3;
defparam \reg_bus|Add0~4 .mask = 16'h5A05;
defparam \reg_bus|Add0~4 .modeMux = 1'b1;
defparam \reg_bus|Add0~4 .FeedbackMux = 1'b0;
defparam \reg_bus|Add0~4 .ShiftMux = 1'b0;
defparam \reg_bus|Add0~4 .BypassEn = 1'b0;
defparam \reg_bus|Add0~4 .CarryEnb = 1'b0;

alta_slice \reg_bus|Add0~6 (
	.A(vcc),
	.B(\reg_bus|bit_shift [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|Add0~5 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Add0~6_combout ),
	.Cout(\reg_bus|Add0~7 ),
	.Q());
defparam \reg_bus|Add0~6 .coord_x = 6;
defparam \reg_bus|Add0~6 .coord_y = 4;
defparam \reg_bus|Add0~6 .coord_z = 4;
defparam \reg_bus|Add0~6 .mask = 16'hC3CF;
defparam \reg_bus|Add0~6 .modeMux = 1'b1;
defparam \reg_bus|Add0~6 .FeedbackMux = 1'b0;
defparam \reg_bus|Add0~6 .ShiftMux = 1'b0;
defparam \reg_bus|Add0~6 .BypassEn = 1'b0;
defparam \reg_bus|Add0~6 .CarryEnb = 1'b0;

alta_slice \reg_bus|Add0~8 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|Add0~7 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Add0~8_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Add0~8 .coord_x = 6;
defparam \reg_bus|Add0~8 .coord_y = 4;
defparam \reg_bus|Add0~8 .coord_z = 5;
defparam \reg_bus|Add0~8 .mask = 16'hF0F0;
defparam \reg_bus|Add0~8 .modeMux = 1'b1;
defparam \reg_bus|Add0~8 .FeedbackMux = 1'b0;
defparam \reg_bus|Add0~8 .ShiftMux = 1'b0;
defparam \reg_bus|Add0~8 .BypassEn = 1'b0;
defparam \reg_bus|Add0~8 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~0 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|LessThan0~1_combout ),
	.C(\reg_bus|bit_shift [1]),
	.D(\reg_bus|bit_shift [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~0 .coord_x = 5;
defparam \reg_bus|Decoder0~0 .coord_y = 4;
defparam \reg_bus|Decoder0~0 .coord_z = 11;
defparam \reg_bus|Decoder0~0 .mask = 16'h2000;
defparam \reg_bus|Decoder0~0 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~0 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~0 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~0 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~1 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|bit_shift [1]),
	.C(\reg_bus|bit_shift [0]),
	.D(\reg_bus|LessThan0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~1_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~1 .coord_x = 5;
defparam \reg_bus|Decoder0~1 .coord_y = 4;
defparam \reg_bus|Decoder0~1 .coord_z = 6;
defparam \reg_bus|Decoder0~1 .mask = 16'h0001;
defparam \reg_bus|Decoder0~1 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~1 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~1 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~1 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~1 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~2 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|LessThan0~1_combout ),
	.C(\reg_bus|bit_shift [1]),
	.D(\reg_bus|bit_shift [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~2_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~2 .coord_x = 5;
defparam \reg_bus|Decoder0~2 .coord_y = 4;
defparam \reg_bus|Decoder0~2 .coord_z = 5;
defparam \reg_bus|Decoder0~2 .mask = 16'h0100;
defparam \reg_bus|Decoder0~2 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~2 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~2 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~2 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~2 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~3 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|LessThan0~1_combout ),
	.C(\reg_bus|bit_shift [1]),
	.D(\reg_bus|bit_shift [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~3_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~3 .coord_x = 5;
defparam \reg_bus|Decoder0~3 .coord_y = 4;
defparam \reg_bus|Decoder0~3 .coord_z = 15;
defparam \reg_bus|Decoder0~3 .mask = 16'h0010;
defparam \reg_bus|Decoder0~3 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~3 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~3 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~3 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~3 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~4 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|bit_shift [1]),
	.C(\reg_bus|bit_shift [0]),
	.D(\reg_bus|LessThan0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~4_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~4 .coord_x = 5;
defparam \reg_bus|Decoder0~4 .coord_y = 4;
defparam \reg_bus|Decoder0~4 .coord_z = 4;
defparam \reg_bus|Decoder0~4 .mask = 16'h0040;
defparam \reg_bus|Decoder0~4 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~4 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~4 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~4 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~4 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~5 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|bit_shift [1]),
	.C(\reg_bus|bit_shift [0]),
	.D(\reg_bus|LessThan0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~5_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~5 .coord_x = 5;
defparam \reg_bus|Decoder0~5 .coord_y = 4;
defparam \reg_bus|Decoder0~5 .coord_z = 10;
defparam \reg_bus|Decoder0~5 .mask = 16'h0002;
defparam \reg_bus|Decoder0~5 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~5 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~5 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~5 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~5 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~6 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|bit_shift [1]),
	.C(\reg_bus|bit_shift [0]),
	.D(\reg_bus|LessThan0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~6_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~6 .coord_x = 5;
defparam \reg_bus|Decoder0~6 .coord_y = 4;
defparam \reg_bus|Decoder0~6 .coord_z = 12;
defparam \reg_bus|Decoder0~6 .mask = 16'h0020;
defparam \reg_bus|Decoder0~6 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~6 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~6 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~6 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~6 .CarryEnb = 1'b1;

alta_slice \reg_bus|Decoder0~7 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|bit_shift [1]),
	.C(\reg_bus|bit_shift [0]),
	.D(\reg_bus|LessThan0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Decoder0~7_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Decoder0~7 .coord_x = 5;
defparam \reg_bus|Decoder0~7 .coord_y = 4;
defparam \reg_bus|Decoder0~7 .coord_z = 8;
defparam \reg_bus|Decoder0~7 .mask = 16'h0008;
defparam \reg_bus|Decoder0~7 .modeMux = 1'b0;
defparam \reg_bus|Decoder0~7 .FeedbackMux = 1'b0;
defparam \reg_bus|Decoder0~7 .ShiftMux = 1'b0;
defparam \reg_bus|Decoder0~7 .BypassEn = 1'b0;
defparam \reg_bus|Decoder0~7 .CarryEnb = 1'b1;

alta_slice \reg_bus|LessThan0~0 (
	.A(\reg_bus|bit_shift [3]),
	.B(\reg_bus|Add0~0_combout ),
	.C(\reg_bus|Add0~2_combout ),
	.D(\reg_bus|Add0~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|LessThan0~0 .coord_x = 6;
defparam \reg_bus|LessThan0~0 .coord_y = 4;
defparam \reg_bus|LessThan0~0 .coord_z = 14;
defparam \reg_bus|LessThan0~0 .mask = 16'hFFFE;
defparam \reg_bus|LessThan0~0 .modeMux = 1'b0;
defparam \reg_bus|LessThan0~0 .FeedbackMux = 1'b0;
defparam \reg_bus|LessThan0~0 .ShiftMux = 1'b0;
defparam \reg_bus|LessThan0~0 .BypassEn = 1'b0;
defparam \reg_bus|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|LessThan0~1 (
	.A(\reg_bus|Add0~6_combout ),
	.B(\reg_bus|Add0~8_combout ),
	.C(\reg_bus|LessThan0~0_combout ),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|LessThan0~1 .coord_x = 5;
defparam \reg_bus|LessThan0~1 .coord_y = 4;
defparam \reg_bus|LessThan0~1 .coord_z = 3;
defparam \reg_bus|LessThan0~1 .mask = 16'hFEFE;
defparam \reg_bus|LessThan0~1 .modeMux = 1'b0;
defparam \reg_bus|LessThan0~1 .FeedbackMux = 1'b0;
defparam \reg_bus|LessThan0~1 .ShiftMux = 1'b0;
defparam \reg_bus|LessThan0~1 .BypassEn = 1'b0;
defparam \reg_bus|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \reg_bus|LessThan1~0 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|bit_shift [3]),
	.C(\reg_bus|bit_shift [1]),
	.D(\reg_bus|bit_shift [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|LessThan1~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|LessThan1~0 .coord_x = 5;
defparam \reg_bus|LessThan1~0 .coord_y = 4;
defparam \reg_bus|LessThan1~0 .coord_z = 13;
defparam \reg_bus|LessThan1~0 .mask = 16'h1333;
defparam \reg_bus|LessThan1~0 .modeMux = 1'b0;
defparam \reg_bus|LessThan1~0 .FeedbackMux = 1'b0;
defparam \reg_bus|LessThan1~0 .ShiftMux = 1'b0;
defparam \reg_bus|LessThan1~0 .BypassEn = 1'b0;
defparam \reg_bus|LessThan1~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|LessThan1~1 (
	.A(\reg_bus|bit_shift [4]),
	.B(\reg_bus|bit_shift [5]),
	.C(\reg_bus|bit_shift [6]),
	.D(\reg_bus|bit_shift [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|LessThan1~1_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|LessThan1~1 .coord_x = 6;
defparam \reg_bus|LessThan1~1 .coord_y = 4;
defparam \reg_bus|LessThan1~1 .coord_z = 15;
defparam \reg_bus|LessThan1~1 .mask = 16'h0001;
defparam \reg_bus|LessThan1~1 .modeMux = 1'b0;
defparam \reg_bus|LessThan1~1 .FeedbackMux = 1'b0;
defparam \reg_bus|LessThan1~1 .ShiftMux = 1'b0;
defparam \reg_bus|LessThan1~1 .BypassEn = 1'b0;
defparam \reg_bus|LessThan1~1 .CarryEnb = 1'b1;

alta_slice \reg_bus|Mux0~0 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|out_fifo [0]),
	.C(\reg_bus|bit_shift [1]),
	.D(\reg_bus|out_fifo [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Mux0~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Mux0~0 .coord_x = 5;
defparam \reg_bus|Mux0~0 .coord_y = 4;
defparam \reg_bus|Mux0~0 .coord_z = 9;
defparam \reg_bus|Mux0~0 .mask = 16'hCAC0;
defparam \reg_bus|Mux0~0 .modeMux = 1'b0;
defparam \reg_bus|Mux0~0 .FeedbackMux = 1'b0;
defparam \reg_bus|Mux0~0 .ShiftMux = 1'b0;
defparam \reg_bus|Mux0~0 .BypassEn = 1'b0;
defparam \reg_bus|Mux0~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|Mux0~1 (
	.A(vcc),
	.B(vcc),
	.C(\reg_bus|bit_shift [2]),
	.D(\reg_bus|out_fifo [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Mux0~1_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Mux0~1 .coord_x = 5;
defparam \reg_bus|Mux0~1 .coord_y = 4;
defparam \reg_bus|Mux0~1 .coord_z = 2;
defparam \reg_bus|Mux0~1 .mask = 16'h0F00;
defparam \reg_bus|Mux0~1 .modeMux = 1'b0;
defparam \reg_bus|Mux0~1 .FeedbackMux = 1'b0;
defparam \reg_bus|Mux0~1 .ShiftMux = 1'b0;
defparam \reg_bus|Mux0~1 .BypassEn = 1'b0;
defparam \reg_bus|Mux0~1 .CarryEnb = 1'b1;

alta_slice \reg_bus|Mux0~2 (
	.A(\reg_bus|bit_shift [2]),
	.B(\reg_bus|out_fifo [1]),
	.C(\reg_bus|bit_shift [1]),
	.D(\reg_bus|out_fifo [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Mux0~2_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Mux0~2 .coord_x = 5;
defparam \reg_bus|Mux0~2 .coord_y = 4;
defparam \reg_bus|Mux0~2 .coord_z = 7;
defparam \reg_bus|Mux0~2 .mask = 16'h8A80;
defparam \reg_bus|Mux0~2 .modeMux = 1'b0;
defparam \reg_bus|Mux0~2 .FeedbackMux = 1'b0;
defparam \reg_bus|Mux0~2 .ShiftMux = 1'b0;
defparam \reg_bus|Mux0~2 .BypassEn = 1'b0;
defparam \reg_bus|Mux0~2 .CarryEnb = 1'b1;

alta_slice \reg_bus|Selector7~0 (
	.A(vcc),
	.B(vcc),
	.C(\reg_bus|state.IDLE~q ),
	.D(\reg_bus|in_fifo [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector7~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|Selector7~0 .coord_x = 4;
defparam \reg_bus|Selector7~0 .coord_y = 3;
defparam \reg_bus|Selector7~0 .coord_z = 14;
defparam \reg_bus|Selector7~0 .mask = 16'h0F00;
defparam \reg_bus|Selector7~0 .modeMux = 1'b0;
defparam \reg_bus|Selector7~0 .FeedbackMux = 1'b0;
defparam \reg_bus|Selector7~0 .ShiftMux = 1'b0;
defparam \reg_bus|Selector7~0 .BypassEn = 1'b0;
defparam \reg_bus|Selector7~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|in_fifo [1]),
	.Cin(),
	.Qin(\reg_bus|adr [0]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|adr[0]~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|adr [0]));
defparam \reg_bus|adr[0] .coord_x = 4;
defparam \reg_bus|adr[0] .coord_y = 4;
defparam \reg_bus|adr[0] .coord_z = 8;
defparam \reg_bus|adr[0] .mask = 16'hFF00;
defparam \reg_bus|adr[0] .modeMux = 1'b0;
defparam \reg_bus|adr[0] .FeedbackMux = 1'b0;
defparam \reg_bus|adr[0] .ShiftMux = 1'b0;
defparam \reg_bus|adr[0] .BypassEn = 1'b0;
defparam \reg_bus|adr[0] .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|in_fifo [2]),
	.Cin(),
	.Qin(\reg_bus|adr [1]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|adr[1]~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|adr [1]));
defparam \reg_bus|adr[1] .coord_x = 4;
defparam \reg_bus|adr[1] .coord_y = 4;
defparam \reg_bus|adr[1] .coord_z = 13;
defparam \reg_bus|adr[1] .mask = 16'hFF00;
defparam \reg_bus|adr[1] .modeMux = 1'b0;
defparam \reg_bus|adr[1] .FeedbackMux = 1'b0;
defparam \reg_bus|adr[1] .ShiftMux = 1'b0;
defparam \reg_bus|adr[1] .BypassEn = 1'b0;
defparam \reg_bus|adr[1] .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[2] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|in_fifo [3]),
	.Cin(),
	.Qin(\reg_bus|adr [2]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|adr[2]~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|adr [2]));
defparam \reg_bus|adr[2] .coord_x = 4;
defparam \reg_bus|adr[2] .coord_y = 4;
defparam \reg_bus|adr[2] .coord_z = 6;
defparam \reg_bus|adr[2] .mask = 16'hFF00;
defparam \reg_bus|adr[2] .modeMux = 1'b0;
defparam \reg_bus|adr[2] .FeedbackMux = 1'b0;
defparam \reg_bus|adr[2] .ShiftMux = 1'b0;
defparam \reg_bus|adr[2] .BypassEn = 1'b0;
defparam \reg_bus|adr[2] .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[3] (
	.A(\reg_bus|adr [2]),
	.B(\reg_bus|adr [1]),
	.C(\reg_bus|in_fifo [4]),
	.D(\reg_bus|adr [4]),
	.Cin(),
	.Qin(\reg_bus|adr [3]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(SyncReset_X7_Y3_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X7_Y3_VCC),
	.LutOut(\hspi|Equal1~0_combout ),
	.Cout(),
	.Q(\reg_bus|adr [3]));
defparam \reg_bus|adr[3] .coord_x = 4;
defparam \reg_bus|adr[3] .coord_y = 4;
defparam \reg_bus|adr[3] .coord_z = 4;
defparam \reg_bus|adr[3] .mask = 16'h0001;
defparam \reg_bus|adr[3] .modeMux = 1'b0;
defparam \reg_bus|adr[3] .FeedbackMux = 1'b1;
defparam \reg_bus|adr[3] .ShiftMux = 1'b0;
defparam \reg_bus|adr[3] .BypassEn = 1'b1;
defparam \reg_bus|adr[3] .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|in_fifo [5]),
	.Cin(),
	.Qin(\reg_bus|adr [4]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X7_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|adr[4]~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|adr [4]));
defparam \reg_bus|adr[4] .coord_x = 4;
defparam \reg_bus|adr[4] .coord_y = 4;
defparam \reg_bus|adr[4] .coord_z = 5;
defparam \reg_bus|adr[4] .mask = 16'hFF00;
defparam \reg_bus|adr[4] .modeMux = 1'b0;
defparam \reg_bus|adr[4] .FeedbackMux = 1'b0;
defparam \reg_bus|adr[4] .ShiftMux = 1'b0;
defparam \reg_bus|adr[4] .BypassEn = 1'b0;
defparam \reg_bus|adr[4] .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[5] (
	.A(\reg_bus|in_fifo [6]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\reg_bus|adr [5]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|adr[5]~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|adr [5]));
defparam \reg_bus|adr[5] .coord_x = 4;
defparam \reg_bus|adr[5] .coord_y = 3;
defparam \reg_bus|adr[5] .coord_z = 3;
defparam \reg_bus|adr[5] .mask = 16'hAAAA;
defparam \reg_bus|adr[5] .modeMux = 1'b0;
defparam \reg_bus|adr[5] .FeedbackMux = 1'b0;
defparam \reg_bus|adr[5] .ShiftMux = 1'b0;
defparam \reg_bus|adr[5] .BypassEn = 1'b0;
defparam \reg_bus|adr[5] .CarryEnb = 1'b1;

alta_slice \reg_bus|adr[6] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|in_fifo [7]),
	.Cin(),
	.Qin(\reg_bus|adr [6]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|adr[6]~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|adr [6]));
defparam \reg_bus|adr[6] .coord_x = 4;
defparam \reg_bus|adr[6] .coord_y = 3;
defparam \reg_bus|adr[6] .coord_z = 9;
defparam \reg_bus|adr[6] .mask = 16'hFF00;
defparam \reg_bus|adr[6] .modeMux = 1'b0;
defparam \reg_bus|adr[6] .FeedbackMux = 1'b0;
defparam \reg_bus|adr[6] .ShiftMux = 1'b0;
defparam \reg_bus|adr[6] .BypassEn = 1'b0;
defparam \reg_bus|adr[6] .CarryEnb = 1'b1;

alta_slice \reg_bus|bit_shift[0] (
	.A(vcc),
	.B(\reg_bus|bit_shift [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\reg_bus|bit_shift [0]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[0]~8_combout ),
	.Cout(\reg_bus|bit_shift[0]~9 ),
	.Q(\reg_bus|bit_shift [0]));
defparam \reg_bus|bit_shift[0] .coord_x = 6;
defparam \reg_bus|bit_shift[0] .coord_y = 4;
defparam \reg_bus|bit_shift[0] .coord_z = 6;
defparam \reg_bus|bit_shift[0] .mask = 16'h33CC;
defparam \reg_bus|bit_shift[0] .modeMux = 1'b0;
defparam \reg_bus|bit_shift[0] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[0] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[0] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[0] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[1] (
	.A(vcc),
	.B(\reg_bus|bit_shift [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[0]~9 ),
	.Qin(\reg_bus|bit_shift [1]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[1]~10_combout ),
	.Cout(\reg_bus|bit_shift[1]~11 ),
	.Q(\reg_bus|bit_shift [1]));
defparam \reg_bus|bit_shift[1] .coord_x = 6;
defparam \reg_bus|bit_shift[1] .coord_y = 4;
defparam \reg_bus|bit_shift[1] .coord_z = 7;
defparam \reg_bus|bit_shift[1] .mask = 16'h3C3F;
defparam \reg_bus|bit_shift[1] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[1] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[1] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[1] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[1] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[2] (
	.A(vcc),
	.B(\reg_bus|bit_shift [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[1]~11 ),
	.Qin(\reg_bus|bit_shift [2]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[2]~12_combout ),
	.Cout(\reg_bus|bit_shift[2]~13 ),
	.Q(\reg_bus|bit_shift [2]));
defparam \reg_bus|bit_shift[2] .coord_x = 6;
defparam \reg_bus|bit_shift[2] .coord_y = 4;
defparam \reg_bus|bit_shift[2] .coord_z = 8;
defparam \reg_bus|bit_shift[2] .mask = 16'hC30C;
defparam \reg_bus|bit_shift[2] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[2] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[2] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[2] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[2] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[3] (
	.A(vcc),
	.B(\reg_bus|bit_shift [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[2]~13 ),
	.Qin(\reg_bus|bit_shift [3]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[3]~14_combout ),
	.Cout(\reg_bus|bit_shift[3]~15 ),
	.Q(\reg_bus|bit_shift [3]));
defparam \reg_bus|bit_shift[3] .coord_x = 6;
defparam \reg_bus|bit_shift[3] .coord_y = 4;
defparam \reg_bus|bit_shift[3] .coord_z = 9;
defparam \reg_bus|bit_shift[3] .mask = 16'h3C3F;
defparam \reg_bus|bit_shift[3] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[3] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[3] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[3] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[3] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[4] (
	.A(vcc),
	.B(\reg_bus|bit_shift [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[3]~15 ),
	.Qin(\reg_bus|bit_shift [4]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[4]~16_combout ),
	.Cout(\reg_bus|bit_shift[4]~17 ),
	.Q(\reg_bus|bit_shift [4]));
defparam \reg_bus|bit_shift[4] .coord_x = 6;
defparam \reg_bus|bit_shift[4] .coord_y = 4;
defparam \reg_bus|bit_shift[4] .coord_z = 10;
defparam \reg_bus|bit_shift[4] .mask = 16'hC30C;
defparam \reg_bus|bit_shift[4] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[4] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[4] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[4] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[4] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[5] (
	.A(vcc),
	.B(\reg_bus|bit_shift [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[4]~17 ),
	.Qin(\reg_bus|bit_shift [5]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[5]~18_combout ),
	.Cout(\reg_bus|bit_shift[5]~19 ),
	.Q(\reg_bus|bit_shift [5]));
defparam \reg_bus|bit_shift[5] .coord_x = 6;
defparam \reg_bus|bit_shift[5] .coord_y = 4;
defparam \reg_bus|bit_shift[5] .coord_z = 11;
defparam \reg_bus|bit_shift[5] .mask = 16'h3C3F;
defparam \reg_bus|bit_shift[5] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[5] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[5] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[5] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[5] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[6] (
	.A(vcc),
	.B(\reg_bus|bit_shift [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[5]~19 ),
	.Qin(\reg_bus|bit_shift [6]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[6]~20_combout ),
	.Cout(\reg_bus|bit_shift[6]~21 ),
	.Q(\reg_bus|bit_shift [6]));
defparam \reg_bus|bit_shift[6] .coord_x = 6;
defparam \reg_bus|bit_shift[6] .coord_y = 4;
defparam \reg_bus|bit_shift[6] .coord_z = 12;
defparam \reg_bus|bit_shift[6] .mask = 16'hC30C;
defparam \reg_bus|bit_shift[6] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[6] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[6] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[6] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[6] .CarryEnb = 1'b0;

alta_slice \reg_bus|bit_shift[7] (
	.A(vcc),
	.B(\reg_bus|bit_shift [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\reg_bus|bit_shift[6]~21 ),
	.Qin(\reg_bus|bit_shift [7]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X5_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X5_Y3_SIG ),
	.SyncReset(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y3_GND),
	.LutOut(\reg_bus|bit_shift[7]~22_combout ),
	.Cout(),
	.Q(\reg_bus|bit_shift [7]));
defparam \reg_bus|bit_shift[7] .coord_x = 6;
defparam \reg_bus|bit_shift[7] .coord_y = 4;
defparam \reg_bus|bit_shift[7] .coord_z = 13;
defparam \reg_bus|bit_shift[7] .mask = 16'h3C3C;
defparam \reg_bus|bit_shift[7] .modeMux = 1'b1;
defparam \reg_bus|bit_shift[7] .FeedbackMux = 1'b0;
defparam \reg_bus|bit_shift[7] .ShiftMux = 1'b0;
defparam \reg_bus|bit_shift[7] .BypassEn = 1'b1;
defparam \reg_bus|bit_shift[7] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[0] (
	.A(vcc),
	.B(\SPI_MISO~input_o ),
	.C(vcc),
	.D(\reg_bus|Decoder0~0_combout ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [0]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[0]~0_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [0]));
defparam \reg_bus|in_fifo[0] .coord_x = 4;
defparam \reg_bus|in_fifo[0] .coord_y = 4;
defparam \reg_bus|in_fifo[0] .coord_z = 14;
defparam \reg_bus|in_fifo[0] .mask = 16'hCCF0;
defparam \reg_bus|in_fifo[0] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[0] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[0] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[0] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[0] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[1] (
	.A(vcc),
	.B(\reg_bus|Decoder0~7_combout ),
	.C(vcc),
	.D(\SPI_MISO~input_o ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [1]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[1]~7_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [1]));
defparam \reg_bus|in_fifo[1] .coord_x = 4;
defparam \reg_bus|in_fifo[1] .coord_y = 4;
defparam \reg_bus|in_fifo[1] .coord_z = 3;
defparam \reg_bus|in_fifo[1] .mask = 16'hFC30;
defparam \reg_bus|in_fifo[1] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[1] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[1] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[1] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[1] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[2] (
	.A(\reg_bus|Decoder0~6_combout ),
	.B(vcc),
	.C(vcc),
	.D(\SPI_MISO~input_o ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [2]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[2]~6_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [2]));
defparam \reg_bus|in_fifo[2] .coord_x = 4;
defparam \reg_bus|in_fifo[2] .coord_y = 4;
defparam \reg_bus|in_fifo[2] .coord_z = 9;
defparam \reg_bus|in_fifo[2] .mask = 16'hFA50;
defparam \reg_bus|in_fifo[2] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[2] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[2] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[2] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[2] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[3] (
	.A(vcc),
	.B(\reg_bus|Decoder0~5_combout ),
	.C(vcc),
	.D(\SPI_MISO~input_o ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [3]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[3]~5_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [3]));
defparam \reg_bus|in_fifo[3] .coord_x = 4;
defparam \reg_bus|in_fifo[3] .coord_y = 4;
defparam \reg_bus|in_fifo[3] .coord_z = 7;
defparam \reg_bus|in_fifo[3] .mask = 16'hFC30;
defparam \reg_bus|in_fifo[3] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[3] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[3] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[3] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[3] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[4] (
	.A(vcc),
	.B(\reg_bus|Decoder0~4_combout ),
	.C(vcc),
	.D(\SPI_MISO~input_o ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [4]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[4]~4_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [4]));
defparam \reg_bus|in_fifo[4] .coord_x = 4;
defparam \reg_bus|in_fifo[4] .coord_y = 4;
defparam \reg_bus|in_fifo[4] .coord_z = 2;
defparam \reg_bus|in_fifo[4] .mask = 16'hFC30;
defparam \reg_bus|in_fifo[4] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[4] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[4] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[4] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[4] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[5] (
	.A(vcc),
	.B(\SPI_MISO~input_o ),
	.C(vcc),
	.D(\reg_bus|Decoder0~3_combout ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [5]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[5]~3_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [5]));
defparam \reg_bus|in_fifo[5] .coord_x = 4;
defparam \reg_bus|in_fifo[5] .coord_y = 4;
defparam \reg_bus|in_fifo[5] .coord_z = 15;
defparam \reg_bus|in_fifo[5] .mask = 16'hCCF0;
defparam \reg_bus|in_fifo[5] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[5] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[5] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[5] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[5] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[6] (
	.A(\reg_bus|Decoder0~2_combout ),
	.B(vcc),
	.C(vcc),
	.D(\SPI_MISO~input_o ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [6]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[6]~2_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [6]));
defparam \reg_bus|in_fifo[6] .coord_x = 4;
defparam \reg_bus|in_fifo[6] .coord_y = 4;
defparam \reg_bus|in_fifo[6] .coord_z = 11;
defparam \reg_bus|in_fifo[6] .mask = 16'hFA50;
defparam \reg_bus|in_fifo[6] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[6] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[6] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[6] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[6] .CarryEnb = 1'b1;

alta_slice \reg_bus|in_fifo[7] (
	.A(vcc),
	.B(\reg_bus|Decoder0~1_combout ),
	.C(vcc),
	.D(\SPI_MISO~input_o ),
	.Cin(),
	.Qin(\reg_bus|in_fifo [7]),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|in_fifo[7]~1_combout ),
	.Cout(),
	.Q(\reg_bus|in_fifo [7]));
defparam \reg_bus|in_fifo[7] .coord_x = 4;
defparam \reg_bus|in_fifo[7] .coord_y = 4;
defparam \reg_bus|in_fifo[7] .coord_z = 10;
defparam \reg_bus|in_fifo[7] .mask = 16'hFC30;
defparam \reg_bus|in_fifo[7] .modeMux = 1'b0;
defparam \reg_bus|in_fifo[7] .FeedbackMux = 1'b1;
defparam \reg_bus|in_fifo[7] .ShiftMux = 1'b0;
defparam \reg_bus|in_fifo[7] .BypassEn = 1'b0;
defparam \reg_bus|in_fifo[7] .CarryEnb = 1'b1;

alta_slice \reg_bus|miso (
	.A(\reg_bus|bit_shift [0]),
	.B(\reg_bus|Mux0~2_combout ),
	.C(\reg_bus|Mux0~1_combout ),
	.D(\reg_bus|Mux0~0_combout ),
	.Cin(),
	.Qin(\reg_bus|miso~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk_X6_Y3_INV_VCC ),
	.AsyncReset(\rst~q__AsyncReset_X6_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Mux0~3_combout ),
	.Cout(),
	.Q(\reg_bus|miso~q ));
defparam \reg_bus|miso .coord_x = 5;
defparam \reg_bus|miso .coord_y = 4;
defparam \reg_bus|miso .coord_z = 14;
defparam \reg_bus|miso .mask = 16'hFE54;
defparam \reg_bus|miso .modeMux = 1'b0;
defparam \reg_bus|miso .FeedbackMux = 1'b0;
defparam \reg_bus|miso .ShiftMux = 1'b0;
defparam \reg_bus|miso .BypassEn = 1'b0;
defparam \reg_bus|miso .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[0] (
	.A(\hspi|reg_rdata_value [0]),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|state.SEND_RESULT~q ),
	.Cin(),
	.Qin(\reg_bus|out_fifo [0]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|out_fifo[0]~1_combout_X10_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X10_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector12~0_combout ),
	.Cout(),
	.Q(\reg_bus|out_fifo [0]));
defparam \reg_bus|out_fifo[0] .coord_x = 5;
defparam \reg_bus|out_fifo[0] .coord_y = 3;
defparam \reg_bus|out_fifo[0] .coord_z = 9;
defparam \reg_bus|out_fifo[0] .mask = 16'hAA00;
defparam \reg_bus|out_fifo[0] .modeMux = 1'b0;
defparam \reg_bus|out_fifo[0] .FeedbackMux = 1'b0;
defparam \reg_bus|out_fifo[0] .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[0] .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[0] .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[0]~0 (
	.A(vcc),
	.B(\hspi|reg_ack~q ),
	.C(vcc),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|out_fifo[0]~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|out_fifo[0]~0 .coord_x = 5;
defparam \reg_bus|out_fifo[0]~0 .coord_y = 3;
defparam \reg_bus|out_fifo[0]~0 .coord_z = 7;
defparam \reg_bus|out_fifo[0]~0 .mask = 16'h3300;
defparam \reg_bus|out_fifo[0]~0 .modeMux = 1'b0;
defparam \reg_bus|out_fifo[0]~0 .FeedbackMux = 1'b0;
defparam \reg_bus|out_fifo[0]~0 .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[0]~0 .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[0]~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[0]~1 (
	.A(\reg_bus|Selector7~0_combout ),
	.B(\reg_bus|LessThan1~1_combout ),
	.C(\reg_bus|LessThan1~0_combout ),
	.D(\reg_bus|out_fifo[0]~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|out_fifo[0]~1_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|out_fifo[0]~1 .coord_x = 5;
defparam \reg_bus|out_fifo[0]~1 .coord_y = 3;
defparam \reg_bus|out_fifo[0]~1 .coord_z = 10;
defparam \reg_bus|out_fifo[0]~1 .mask = 16'h0015;
defparam \reg_bus|out_fifo[0]~1 .modeMux = 1'b0;
defparam \reg_bus|out_fifo[0]~1 .FeedbackMux = 1'b0;
defparam \reg_bus|out_fifo[0]~1 .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[0]~1 .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[0]~1 .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[1] (
	.A(vcc),
	.B(\reg_bus|state.SEND_RESULT~q ),
	.C(\hspi|reg_rdata_value [0]),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|out_fifo [1]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|out_fifo[0]~1_combout_X10_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X10_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector11~0_combout ),
	.Cout(),
	.Q(\reg_bus|out_fifo [1]));
defparam \reg_bus|out_fifo[1] .coord_x = 5;
defparam \reg_bus|out_fifo[1] .coord_y = 3;
defparam \reg_bus|out_fifo[1] .coord_z = 4;
defparam \reg_bus|out_fifo[1] .mask = 16'hF3C0;
defparam \reg_bus|out_fifo[1] .modeMux = 1'b0;
defparam \reg_bus|out_fifo[1] .FeedbackMux = 1'b0;
defparam \reg_bus|out_fifo[1] .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[1] .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[1] .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[2] (
	.A(vcc),
	.B(vcc),
	.C(\hspi|reg_rdata_value [2]),
	.D(\reg_bus|state.SEND_RESULT~q ),
	.Cin(),
	.Qin(\reg_bus|out_fifo [2]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|out_fifo[0]~1_combout_X10_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X10_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector10~0_combout ),
	.Cout(),
	.Q(\reg_bus|out_fifo [2]));
defparam \reg_bus|out_fifo[2] .coord_x = 5;
defparam \reg_bus|out_fifo[2] .coord_y = 3;
defparam \reg_bus|out_fifo[2] .coord_z = 13;
defparam \reg_bus|out_fifo[2] .mask = 16'hF000;
defparam \reg_bus|out_fifo[2] .modeMux = 1'b0;
defparam \reg_bus|out_fifo[2] .FeedbackMux = 1'b0;
defparam \reg_bus|out_fifo[2] .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[2] .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[2] .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[3] (
	.A(vcc),
	.B(\reg_bus|state.SEND_RESULT~q ),
	.C(\hspi|reg_rdata_value [3]),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|out_fifo [3]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|out_fifo[0]~1_combout_X10_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X10_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector9~0_combout ),
	.Cout(),
	.Q(\reg_bus|out_fifo [3]));
defparam \reg_bus|out_fifo[3] .coord_x = 5;
defparam \reg_bus|out_fifo[3] .coord_y = 3;
defparam \reg_bus|out_fifo[3] .coord_z = 6;
defparam \reg_bus|out_fifo[3] .mask = 16'hF3C0;
defparam \reg_bus|out_fifo[3] .modeMux = 1'b0;
defparam \reg_bus|out_fifo[3] .FeedbackMux = 1'b0;
defparam \reg_bus|out_fifo[3] .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[3] .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[3] .CarryEnb = 1'b1;

alta_slice \reg_bus|out_fifo[5] (
	.A(\reg_bus|Selector7~0_combout ),
	.B(\hspi|reg_ack~q ),
	.C(vcc),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|out_fifo [5]),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector7~1_combout ),
	.Cout(),
	.Q(\reg_bus|out_fifo [5]));
defparam \reg_bus|out_fifo[5] .coord_x = 4;
defparam \reg_bus|out_fifo[5] .coord_y = 3;
defparam \reg_bus|out_fifo[5] .coord_z = 1;
defparam \reg_bus|out_fifo[5] .mask = 16'hFCA0;
defparam \reg_bus|out_fifo[5] .modeMux = 1'b0;
defparam \reg_bus|out_fifo[5] .FeedbackMux = 1'b1;
defparam \reg_bus|out_fifo[5] .ShiftMux = 1'b0;
defparam \reg_bus|out_fifo[5] .BypassEn = 1'b0;
defparam \reg_bus|out_fifo[5] .CarryEnb = 1'b1;

alta_slice \reg_bus|req (
	.A(\reg_bus|state.SEND_RESULT~q ),
	.B(\reg_bus|Selector7~0_combout ),
	.C(vcc),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|req~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector0~0_combout ),
	.Cout(),
	.Q(\reg_bus|req~q ));
defparam \reg_bus|req .coord_x = 4;
defparam \reg_bus|req .coord_y = 3;
defparam \reg_bus|req .coord_z = 15;
defparam \reg_bus|req .mask = 16'h3031;
defparam \reg_bus|req .modeMux = 1'b0;
defparam \reg_bus|req .FeedbackMux = 1'b1;
defparam \reg_bus|req .ShiftMux = 1'b0;
defparam \reg_bus|req .BypassEn = 1'b0;
defparam \reg_bus|req .CarryEnb = 1'b1;

alta_slice \reg_bus|rw (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\reg_bus|in_fifo [0]),
	.Cin(),
	.Qin(\reg_bus|rw~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|rw~0_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|rw~feeder_combout ),
	.Cout(),
	.Q(\reg_bus|rw~q ));
defparam \reg_bus|rw .coord_x = 4;
defparam \reg_bus|rw .coord_y = 3;
defparam \reg_bus|rw .coord_z = 10;
defparam \reg_bus|rw .mask = 16'hFF00;
defparam \reg_bus|rw .modeMux = 1'b0;
defparam \reg_bus|rw .FeedbackMux = 1'b0;
defparam \reg_bus|rw .ShiftMux = 1'b0;
defparam \reg_bus|rw .BypassEn = 1'b0;
defparam \reg_bus|rw .CarryEnb = 1'b1;

alta_slice \reg_bus|rw~0 (
	.A(vcc),
	.B(\reg_bus|LessThan1~0_combout ),
	.C(\reg_bus|state.IDLE~q ),
	.D(\reg_bus|LessThan1~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|rw~0_combout ),
	.Cout(),
	.Q());
defparam \reg_bus|rw~0 .coord_x = 4;
defparam \reg_bus|rw~0 .coord_y = 4;
defparam \reg_bus|rw~0 .coord_z = 1;
defparam \reg_bus|rw~0 .mask = 16'h030F;
defparam \reg_bus|rw~0 .modeMux = 1'b0;
defparam \reg_bus|rw~0 .FeedbackMux = 1'b0;
defparam \reg_bus|rw~0 .ShiftMux = 1'b0;
defparam \reg_bus|rw~0 .BypassEn = 1'b0;
defparam \reg_bus|rw~0 .CarryEnb = 1'b1;

alta_slice \reg_bus|spi_direction (
	.A(\reg_bus|Selector7~0_combout ),
	.B(\hspi|reg_ack~q ),
	.C(vcc),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|spi_direction~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector1~4_combout ),
	.Cout(),
	.Q(\reg_bus|spi_direction~q ));
defparam \reg_bus|spi_direction .coord_x = 4;
defparam \reg_bus|spi_direction .coord_y = 3;
defparam \reg_bus|spi_direction .coord_z = 5;
defparam \reg_bus|spi_direction .mask = 16'h5455;
defparam \reg_bus|spi_direction .modeMux = 1'b0;
defparam \reg_bus|spi_direction .FeedbackMux = 1'b1;
defparam \reg_bus|spi_direction .ShiftMux = 1'b0;
defparam \reg_bus|spi_direction .BypassEn = 1'b0;
defparam \reg_bus|spi_direction .CarryEnb = 1'b1;

alta_slice \reg_bus|state.IDLE (
	.A(\reg_bus|rw~q ),
	.B(\hspi|reg_ack~q ),
	.C(\reg_bus|state.SEND_RESULT~q ),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|state.IDLE~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector2~0_combout ),
	.Cout(),
	.Q(\reg_bus|state.IDLE~q ));
defparam \reg_bus|state.IDLE .coord_x = 4;
defparam \reg_bus|state.IDLE .coord_y = 3;
defparam \reg_bus|state.IDLE .coord_z = 4;
defparam \reg_bus|state.IDLE .mask = 16'h070F;
defparam \reg_bus|state.IDLE .modeMux = 1'b0;
defparam \reg_bus|state.IDLE .FeedbackMux = 1'b0;
defparam \reg_bus|state.IDLE .ShiftMux = 1'b0;
defparam \reg_bus|state.IDLE .BypassEn = 1'b0;
defparam \reg_bus|state.IDLE .CarryEnb = 1'b1;

alta_slice \reg_bus|state.SEND_RESULT (
	.A(vcc),
	.B(\hspi|reg_ack~q ),
	.C(\reg_bus|rw~q ),
	.D(\reg_bus|state.WAIT_ACK~q ),
	.Cin(),
	.Qin(\reg_bus|state.SEND_RESULT~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|state~20_combout ),
	.Cout(),
	.Q(\reg_bus|state.SEND_RESULT~q ));
defparam \reg_bus|state.SEND_RESULT .coord_x = 4;
defparam \reg_bus|state.SEND_RESULT .coord_y = 3;
defparam \reg_bus|state.SEND_RESULT .coord_z = 8;
defparam \reg_bus|state.SEND_RESULT .mask = 16'h0C00;
defparam \reg_bus|state.SEND_RESULT .modeMux = 1'b0;
defparam \reg_bus|state.SEND_RESULT .FeedbackMux = 1'b0;
defparam \reg_bus|state.SEND_RESULT .ShiftMux = 1'b0;
defparam \reg_bus|state.SEND_RESULT .BypassEn = 1'b0;
defparam \reg_bus|state.SEND_RESULT .CarryEnb = 1'b1;

alta_slice \reg_bus|state.WAIT_ACK (
	.A(\reg_bus|state.WR_DATA~q ),
	.B(\reg_bus|in_fifo [0]),
	.C(\reg_bus|state.IDLE~q ),
	.D(\reg_bus|out_fifo[0]~0_combout ),
	.Cin(),
	.Qin(\reg_bus|state.WAIT_ACK~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\reg_bus|Selector4~0_combout ),
	.Cout(),
	.Q(\reg_bus|state.WAIT_ACK~q ));
defparam \reg_bus|state.WAIT_ACK .coord_x = 4;
defparam \reg_bus|state.WAIT_ACK .coord_y = 3;
defparam \reg_bus|state.WAIT_ACK .coord_z = 11;
defparam \reg_bus|state.WAIT_ACK .mask = 16'hFFAB;
defparam \reg_bus|state.WAIT_ACK .modeMux = 1'b0;
defparam \reg_bus|state.WAIT_ACK .FeedbackMux = 1'b0;
defparam \reg_bus|state.WAIT_ACK .ShiftMux = 1'b0;
defparam \reg_bus|state.WAIT_ACK .BypassEn = 1'b0;
defparam \reg_bus|state.WAIT_ACK .CarryEnb = 1'b1;

alta_slice \reg_bus|state.WR_DATA (
	.A(vcc),
	.B(\reg_bus|LessThan1~0_combout ),
	.C(\reg_bus|Selector7~0_combout ),
	.D(\reg_bus|LessThan1~1_combout ),
	.Cin(),
	.Qin(\reg_bus|state.WR_DATA~q ),
	.Clk(\SPI_SCK~inputclkctrl_outclk__reg_bus|LessThan1~2_combout_X9_Y3_SIG_SIG ),
	.AsyncReset(\rst~q__AsyncReset_X9_Y3_SIG ),
	.SyncReset(SyncReset_X9_Y3_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_VCC),
	.LutOut(\reg_bus|LessThan1~2_combout ),
	.Cout(),
	.Q(\reg_bus|state.WR_DATA~q ));
defparam \reg_bus|state.WR_DATA .coord_x = 4;
defparam \reg_bus|state.WR_DATA .coord_y = 3;
defparam \reg_bus|state.WR_DATA .coord_z = 12;
defparam \reg_bus|state.WR_DATA .mask = 16'h33FF;
defparam \reg_bus|state.WR_DATA .modeMux = 1'b0;
defparam \reg_bus|state.WR_DATA .FeedbackMux = 1'b0;
defparam \reg_bus|state.WR_DATA .ShiftMux = 1'b0;
defparam \reg_bus|state.WR_DATA .BypassEn = 1'b1;
defparam \reg_bus|state.WR_DATA .CarryEnb = 1'b1;

alta_slice rst(
	.A(\rst~0_combout ),
	.B(\LessThan0~0_combout ),
	.C(\rst_cnt[7]~8_combout ),
	.D(rst_cnt[4]),
	.Cin(),
	.Qin(\rst~q ),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\rst~1_combout ),
	.Cout(),
	.Q(\rst~q ));
defparam rst.coord_x = 6;
defparam rst.coord_y = 3;
defparam rst.coord_z = 1;
defparam rst.mask = 16'h3050;
defparam rst.modeMux = 1'b0;
defparam rst.FeedbackMux = 1'b0;
defparam rst.ShiftMux = 1'b0;
defparam rst.BypassEn = 1'b0;
defparam rst.CarryEnb = 1'b1;

alta_slice \rst_cnt[0] (
	.A(vcc),
	.B(rst_cnt[0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(rst_cnt[0]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[0]~9_combout ),
	.Cout(\rst_cnt[0]~10 ),
	.Q(rst_cnt[0]));
defparam \rst_cnt[0] .coord_x = 6;
defparam \rst_cnt[0] .coord_y = 3;
defparam \rst_cnt[0] .coord_z = 3;
defparam \rst_cnt[0] .mask = 16'h33CC;
defparam \rst_cnt[0] .modeMux = 1'b0;
defparam \rst_cnt[0] .FeedbackMux = 1'b0;
defparam \rst_cnt[0] .ShiftMux = 1'b0;
defparam \rst_cnt[0] .BypassEn = 1'b1;
defparam \rst_cnt[0] .CarryEnb = 1'b0;

alta_slice \rst_cnt[1] (
	.A(vcc),
	.B(rst_cnt[1]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[0]~10 ),
	.Qin(rst_cnt[1]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[1]~11_combout ),
	.Cout(\rst_cnt[1]~12 ),
	.Q(rst_cnt[1]));
defparam \rst_cnt[1] .coord_x = 6;
defparam \rst_cnt[1] .coord_y = 3;
defparam \rst_cnt[1] .coord_z = 4;
defparam \rst_cnt[1] .mask = 16'h3C3F;
defparam \rst_cnt[1] .modeMux = 1'b1;
defparam \rst_cnt[1] .FeedbackMux = 1'b0;
defparam \rst_cnt[1] .ShiftMux = 1'b0;
defparam \rst_cnt[1] .BypassEn = 1'b1;
defparam \rst_cnt[1] .CarryEnb = 1'b0;

alta_slice \rst_cnt[2] (
	.A(vcc),
	.B(rst_cnt[2]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[1]~12 ),
	.Qin(rst_cnt[2]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[2]~13_combout ),
	.Cout(\rst_cnt[2]~14 ),
	.Q(rst_cnt[2]));
defparam \rst_cnt[2] .coord_x = 6;
defparam \rst_cnt[2] .coord_y = 3;
defparam \rst_cnt[2] .coord_z = 5;
defparam \rst_cnt[2] .mask = 16'hC30C;
defparam \rst_cnt[2] .modeMux = 1'b1;
defparam \rst_cnt[2] .FeedbackMux = 1'b0;
defparam \rst_cnt[2] .ShiftMux = 1'b0;
defparam \rst_cnt[2] .BypassEn = 1'b1;
defparam \rst_cnt[2] .CarryEnb = 1'b0;

alta_slice \rst_cnt[3] (
	.A(vcc),
	.B(rst_cnt[3]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[2]~14 ),
	.Qin(rst_cnt[3]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[3]~15_combout ),
	.Cout(\rst_cnt[3]~16 ),
	.Q(rst_cnt[3]));
defparam \rst_cnt[3] .coord_x = 6;
defparam \rst_cnt[3] .coord_y = 3;
defparam \rst_cnt[3] .coord_z = 6;
defparam \rst_cnt[3] .mask = 16'h3C3F;
defparam \rst_cnt[3] .modeMux = 1'b1;
defparam \rst_cnt[3] .FeedbackMux = 1'b0;
defparam \rst_cnt[3] .ShiftMux = 1'b0;
defparam \rst_cnt[3] .BypassEn = 1'b1;
defparam \rst_cnt[3] .CarryEnb = 1'b0;

alta_slice \rst_cnt[4] (
	.A(vcc),
	.B(rst_cnt[4]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[3]~16 ),
	.Qin(rst_cnt[4]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[4]~18_combout ),
	.Cout(\rst_cnt[4]~19 ),
	.Q(rst_cnt[4]));
defparam \rst_cnt[4] .coord_x = 6;
defparam \rst_cnt[4] .coord_y = 3;
defparam \rst_cnt[4] .coord_z = 7;
defparam \rst_cnt[4] .mask = 16'hC30C;
defparam \rst_cnt[4] .modeMux = 1'b1;
defparam \rst_cnt[4] .FeedbackMux = 1'b0;
defparam \rst_cnt[4] .ShiftMux = 1'b0;
defparam \rst_cnt[4] .BypassEn = 1'b1;
defparam \rst_cnt[4] .CarryEnb = 1'b0;

alta_slice \rst_cnt[5] (
	.A(vcc),
	.B(rst_cnt[5]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[4]~19 ),
	.Qin(rst_cnt[5]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[5]~20_combout ),
	.Cout(\rst_cnt[5]~21 ),
	.Q(rst_cnt[5]));
defparam \rst_cnt[5] .coord_x = 6;
defparam \rst_cnt[5] .coord_y = 3;
defparam \rst_cnt[5] .coord_z = 8;
defparam \rst_cnt[5] .mask = 16'h3C3F;
defparam \rst_cnt[5] .modeMux = 1'b1;
defparam \rst_cnt[5] .FeedbackMux = 1'b0;
defparam \rst_cnt[5] .ShiftMux = 1'b0;
defparam \rst_cnt[5] .BypassEn = 1'b1;
defparam \rst_cnt[5] .CarryEnb = 1'b0;

alta_slice \rst_cnt[6] (
	.A(vcc),
	.B(rst_cnt[6]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[5]~21 ),
	.Qin(rst_cnt[6]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[6]~22_combout ),
	.Cout(\rst_cnt[6]~23 ),
	.Q(rst_cnt[6]));
defparam \rst_cnt[6] .coord_x = 6;
defparam \rst_cnt[6] .coord_y = 3;
defparam \rst_cnt[6] .coord_z = 9;
defparam \rst_cnt[6] .mask = 16'hC30C;
defparam \rst_cnt[6] .modeMux = 1'b1;
defparam \rst_cnt[6] .FeedbackMux = 1'b0;
defparam \rst_cnt[6] .ShiftMux = 1'b0;
defparam \rst_cnt[6] .BypassEn = 1'b1;
defparam \rst_cnt[6] .CarryEnb = 1'b0;

alta_slice \rst_cnt[7] (
	.A(vcc),
	.B(rst_cnt[7]),
	.C(vcc),
	.D(vcc),
	.Cin(\rst_cnt[6]~23 ),
	.Qin(rst_cnt[7]),
	.Clk(\HSPI_CLK~inputclkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(AsyncReset_X8_Y3_GND),
	.SyncReset(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y3_GND),
	.LutOut(\rst_cnt[7]~24_combout ),
	.Cout(),
	.Q(rst_cnt[7]));
defparam \rst_cnt[7] .coord_x = 6;
defparam \rst_cnt[7] .coord_y = 3;
defparam \rst_cnt[7] .coord_z = 10;
defparam \rst_cnt[7] .mask = 16'h3C3C;
defparam \rst_cnt[7] .modeMux = 1'b1;
defparam \rst_cnt[7] .FeedbackMux = 1'b0;
defparam \rst_cnt[7] .ShiftMux = 1'b0;
defparam \rst_cnt[7] .BypassEn = 1'b1;
defparam \rst_cnt[7] .CarryEnb = 1'b1;

alta_slice \rst_cnt[7]~17 (
	.A(\always0~0_combout ),
	.B(\LessThan0~0_combout ),
	.C(\rst_cnt[7]~8_combout ),
	.D(rst_cnt[4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\rst_cnt[7]~17_combout ),
	.Cout(),
	.Q());
defparam \rst_cnt[7]~17 .coord_x = 6;
defparam \rst_cnt[7]~17 .coord_y = 3;
defparam \rst_cnt[7]~17 .coord_z = 2;
defparam \rst_cnt[7]~17 .mask = 16'hDF5F;
defparam \rst_cnt[7]~17 .modeMux = 1'b0;
defparam \rst_cnt[7]~17 .FeedbackMux = 1'b0;
defparam \rst_cnt[7]~17 .ShiftMux = 1'b0;
defparam \rst_cnt[7]~17 .BypassEn = 1'b0;
defparam \rst_cnt[7]~17 .CarryEnb = 1'b1;

alta_slice \rst_cnt[7]~8 (
	.A(rst_cnt[7]),
	.B(vcc),
	.C(rst_cnt[5]),
	.D(rst_cnt[6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\rst_cnt[7]~8_combout ),
	.Cout(),
	.Q());
defparam \rst_cnt[7]~8 .coord_x = 6;
defparam \rst_cnt[7]~8 .coord_y = 3;
defparam \rst_cnt[7]~8 .coord_z = 0;
defparam \rst_cnt[7]~8 .mask = 16'h0005;
defparam \rst_cnt[7]~8 .modeMux = 1'b0;
defparam \rst_cnt[7]~8 .FeedbackMux = 1'b0;
defparam \rst_cnt[7]~8 .ShiftMux = 1'b0;
defparam \rst_cnt[7]~8 .BypassEn = 1'b0;
defparam \rst_cnt[7]~8 .CarryEnb = 1'b1;

alta_slice \rst~0 (
	.A(rst_cnt[3]),
	.B(rst_cnt[2]),
	.C(rst_cnt[1]),
	.D(rst_cnt[0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\rst~0_combout ),
	.Cout(),
	.Q());
defparam \rst~0 .coord_x = 6;
defparam \rst~0 .coord_y = 3;
defparam \rst~0 .coord_z = 14;
defparam \rst~0 .mask = 16'h5777;
defparam \rst~0 .modeMux = 1'b0;
defparam \rst~0 .FeedbackMux = 1'b0;
defparam \rst~0 .ShiftMux = 1'b0;
defparam \rst~0 .BypassEn = 1'b0;
defparam \rst~0 .CarryEnb = 1'b1;

alta_syncctrl syncload_ctrl_X1_Y5(
	.Din(\hspi|state.SEND_PAYLOAD~q ),
	.Dout(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X1_Y5_SIG ));
defparam syncload_ctrl_X1_Y5.coord_x = 7;
defparam syncload_ctrl_X1_Y5.coord_y = 5;
defparam syncload_ctrl_X1_Y5.coord_z = 1;
defparam syncload_ctrl_X1_Y5.SyncCtrlMux = 2'b10;

alta_syncctrl syncload_ctrl_X2_Y5(
	.Din(\hspi|state.SEND_PAYLOAD~q ),
	.Dout(\hspi|state.SEND_PAYLOAD~q__SyncLoad_X2_Y5_SIG ));
defparam syncload_ctrl_X2_Y5.coord_x = 6;
defparam syncload_ctrl_X2_Y5.coord_y = 5;
defparam syncload_ctrl_X2_Y5.coord_z = 1;
defparam syncload_ctrl_X2_Y5.SyncCtrlMux = 2'b10;

alta_syncctrl syncload_ctrl_X3_Y5(
	.Din(),
	.Dout(SyncLoad_X3_Y5_VCC));
defparam syncload_ctrl_X3_Y5.coord_x = 7;
defparam syncload_ctrl_X3_Y5.coord_y = 7;
defparam syncload_ctrl_X3_Y5.coord_z = 1;
defparam syncload_ctrl_X3_Y5.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X5_Y3(
	.Din(),
	.Dout(SyncLoad_X5_Y3_GND));
defparam syncload_ctrl_X5_Y3.coord_x = 6;
defparam syncload_ctrl_X5_Y3.coord_y = 4;
defparam syncload_ctrl_X5_Y3.coord_z = 1;
defparam syncload_ctrl_X5_Y3.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X5_Y4(
	.Din(),
	.Dout(SyncLoad_X5_Y4_VCC));
defparam syncload_ctrl_X5_Y4.coord_x = 5;
defparam syncload_ctrl_X5_Y4.coord_y = 8;
defparam syncload_ctrl_X5_Y4.coord_z = 1;
defparam syncload_ctrl_X5_Y4.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X6_Y5(
	.Din(),
	.Dout(SyncLoad_X6_Y5_VCC));
defparam syncload_ctrl_X6_Y5.coord_x = 4;
defparam syncload_ctrl_X6_Y5.coord_y = 7;
defparam syncload_ctrl_X6_Y5.coord_z = 1;
defparam syncload_ctrl_X6_Y5.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X7_Y3(
	.Din(),
	.Dout(SyncLoad_X7_Y3_VCC));
defparam syncload_ctrl_X7_Y3.coord_x = 4;
defparam syncload_ctrl_X7_Y3.coord_y = 4;
defparam syncload_ctrl_X7_Y3.coord_z = 1;
defparam syncload_ctrl_X7_Y3.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X7_Y5(
	.Din(),
	.Dout(SyncLoad_X7_Y5_VCC));
defparam syncload_ctrl_X7_Y5.coord_x = 4;
defparam syncload_ctrl_X7_Y5.coord_y = 6;
defparam syncload_ctrl_X7_Y5.coord_z = 1;
defparam syncload_ctrl_X7_Y5.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X8_Y3(
	.Din(),
	.Dout(SyncLoad_X8_Y3_GND));
defparam syncload_ctrl_X8_Y3.coord_x = 6;
defparam syncload_ctrl_X8_Y3.coord_y = 3;
defparam syncload_ctrl_X8_Y3.coord_z = 1;
defparam syncload_ctrl_X8_Y3.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X9_Y3(
	.Din(),
	.Dout(SyncLoad_X9_Y3_VCC));
defparam syncload_ctrl_X9_Y3.coord_x = 4;
defparam syncload_ctrl_X9_Y3.coord_y = 3;
defparam syncload_ctrl_X9_Y3.coord_z = 1;
defparam syncload_ctrl_X9_Y3.SyncCtrlMux = 2'b01;

alta_syncctrl syncreset_ctrl_X1_Y5(
	.Din(),
	.Dout(SyncReset_X1_Y5_GND));
defparam syncreset_ctrl_X1_Y5.coord_x = 7;
defparam syncreset_ctrl_X1_Y5.coord_y = 5;
defparam syncreset_ctrl_X1_Y5.coord_z = 0;
defparam syncreset_ctrl_X1_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X2_Y5(
	.Din(),
	.Dout(SyncReset_X2_Y5_GND));
defparam syncreset_ctrl_X2_Y5.coord_x = 6;
defparam syncreset_ctrl_X2_Y5.coord_y = 5;
defparam syncreset_ctrl_X2_Y5.coord_z = 0;
defparam syncreset_ctrl_X2_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X3_Y5(
	.Din(),
	.Dout(SyncReset_X3_Y5_GND));
defparam syncreset_ctrl_X3_Y5.coord_x = 7;
defparam syncreset_ctrl_X3_Y5.coord_y = 7;
defparam syncreset_ctrl_X3_Y5.coord_z = 0;
defparam syncreset_ctrl_X3_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X5_Y3(
	.Din(\reg_bus|LessThan1~2_combout ),
	.Dout(\reg_bus|LessThan1~2_combout__SyncReset_X5_Y3_SIG ));
defparam syncreset_ctrl_X5_Y3.coord_x = 6;
defparam syncreset_ctrl_X5_Y3.coord_y = 4;
defparam syncreset_ctrl_X5_Y3.coord_z = 0;
defparam syncreset_ctrl_X5_Y3.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X5_Y4(
	.Din(),
	.Dout(SyncReset_X5_Y4_GND));
defparam syncreset_ctrl_X5_Y4.coord_x = 5;
defparam syncreset_ctrl_X5_Y4.coord_y = 8;
defparam syncreset_ctrl_X5_Y4.coord_z = 0;
defparam syncreset_ctrl_X5_Y4.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X6_Y5(
	.Din(),
	.Dout(SyncReset_X6_Y5_GND));
defparam syncreset_ctrl_X6_Y5.coord_x = 4;
defparam syncreset_ctrl_X6_Y5.coord_y = 7;
defparam syncreset_ctrl_X6_Y5.coord_z = 0;
defparam syncreset_ctrl_X6_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X7_Y3(
	.Din(),
	.Dout(SyncReset_X7_Y3_GND));
defparam syncreset_ctrl_X7_Y3.coord_x = 4;
defparam syncreset_ctrl_X7_Y3.coord_y = 4;
defparam syncreset_ctrl_X7_Y3.coord_z = 0;
defparam syncreset_ctrl_X7_Y3.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X7_Y5(
	.Din(),
	.Dout(SyncReset_X7_Y5_GND));
defparam syncreset_ctrl_X7_Y5.coord_x = 4;
defparam syncreset_ctrl_X7_Y5.coord_y = 6;
defparam syncreset_ctrl_X7_Y5.coord_z = 0;
defparam syncreset_ctrl_X7_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X8_Y3(
	.Din(\rst_cnt[7]~17_combout ),
	.Dout(\rst_cnt[7]~17_combout__SyncReset_X8_Y3_SIG ));
defparam syncreset_ctrl_X8_Y3.coord_x = 6;
defparam syncreset_ctrl_X8_Y3.coord_y = 3;
defparam syncreset_ctrl_X8_Y3.coord_z = 0;
defparam syncreset_ctrl_X8_Y3.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X9_Y3(
	.Din(),
	.Dout(SyncReset_X9_Y3_GND));
defparam syncreset_ctrl_X9_Y3.coord_x = 4;
defparam syncreset_ctrl_X9_Y3.coord_y = 3;
defparam syncreset_ctrl_X9_Y3.coord_z = 0;
defparam syncreset_ctrl_X9_Y3.SyncCtrlMux = 2'b00;

alta_slice \~GND (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\~GND~combout ),
	.Cout(),
	.Q());
defparam \~GND .coord_x = 0;
defparam \~GND .coord_y = 2;
defparam \~GND .coord_z = 0;
defparam \~GND .mask = 16'h0000;
defparam \~GND .modeMux = 1'b0;
defparam \~GND .FeedbackMux = 1'b0;
defparam \~GND .ShiftMux = 1'b0;
defparam \~GND .BypassEn = 1'b0;
defparam \~GND .CarryEnb = 1'b1;

endmodule
