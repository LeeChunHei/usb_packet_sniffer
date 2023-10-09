/*
Dimension: ((1,1) - (1,1))
*/
`timescale 1ns/1ps
module dual_ram(
   input Clk0,
   input Clk1,
   input ClkEn0,
   input ClkEn1,
   input AsyncReset0,
   input AsyncReset1,
   input WeRenA,
   input ReB,
   input [7:0] DataInA,
   input [7:0] AddressA,
   input [7:0] AddressB,
  output [7:0] DataOutB
);

wire [15:0] output_muxB_Dout;
wire [15:0] dual_ram_0_DataOutB;

dual_ramA_Decoder0to1 write_decoderA_1D1E2770(
  .Enable(WeRenA),
  .Din(),
  .Dout(write_decoderA_Dout)
);

dual_ramB_Decoder0to1 write_decoderB_1A007A51(
  .Enable(ReB),
  .Din(),
  .Dout(write_decoderB_Dout)
);

dual_ramB_Mux16to16 output_muxB_597BDA23(
  .Select(),
  .Din(dual_ram_0_DataOutB[15:0]),
  .Dout(output_muxB_Dout)
);

dual_ramB_Register0 registersB0_97654648(
  .Clk(Clk1),
  .ClkEn(read_andB_Dout),
  .AsyncReset(AsyncReset1),
  .Din(),
  .Qout()
);

readAndBand2 read_andB_CF96073D(
  .Din({ ClkEn1, ReB }),
  .Dout(read_andB_Dout)
);

/*
Instance: X0, Y0
*/
alta_ram4k dual_ram_0_E81264E7(
  .Clk0(Clk0),
  .Clk1(Clk1),
  .ClkEn0(ClkEn0),
  .ClkEn1(ClkEn1),
  .AsyncReset0(AsyncReset0),
  .AsyncReset1(AsyncReset1),
  .AddressA(AddressA[7:0]),
  .DataInA({ 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, DataInA[7:0] }),
  .WeRenA(write_decoderA_Dout),
  .ByteEnA({ 1'b1, 1'b1 }),
  .AddressB(AddressB[7:0]),
  .DataInB(~16'b0),
  .WeRenB(write_decoderB_Dout),
  .ByteEnB(~2'b0),
  .DataOutA(),
  .DataOutB(dual_ram_0_DataOutB)
);
defparam dual_ram_0_E81264E7.CLKMODE = "read_write";
defparam dual_ram_0_E81264E7.DATA_WIDTH_A = 16;
defparam dual_ram_0_E81264E7.ADDR_WIDTH_A = 8;
defparam dual_ram_0_E81264E7.BYTE_WIDTH_A = 2;
defparam dual_ram_0_E81264E7.PORTA_WRITEMODE = "normal";
defparam dual_ram_0_E81264E7.PORTA_OUTREG = "no";
defparam dual_ram_0_E81264E7.DATA_WIDTH_B = 16;
defparam dual_ram_0_E81264E7.ADDR_WIDTH_B = 8;
defparam dual_ram_0_E81264E7.BYTE_WIDTH_B = 2;
defparam dual_ram_0_E81264E7.PORTB_WRITEMODE = "normal";
defparam dual_ram_0_E81264E7.PORTB_OUTREG = "no";
defparam dual_ram_0_E81264E7.PORTB_READONLY = "yes";
defparam dual_ram_0_E81264E7.INIT_PORT = "a";
defparam dual_ram_0_E81264E7.INIT_VAL = 4096'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

assign DataOutB = output_muxB_Dout[7:0];

endmodule

`timescale 1ns/1ps
module dual_ramA_Decoder0to1(
   input Enable,
   input Din,
  output Dout
);
assign Dout = Enable;
endmodule

`timescale 1ns/1ps
module dual_ramB_Mux16to16(
   input [15:0] Din,
   input Select,
  output reg [15:0] Dout
);
always @ (Din)
  Dout = Din;
endmodule

`timescale 1ns/1ps
module readAndBand2(
   input [1:0] Din,
  output Dout
);
and (Dout, Din[0], Din[1]);
endmodule

`timescale 1ns/1ps
module dual_ramB_Decoder0to1(
   input Enable,
   input Din,
  output Dout
);
assign Dout = Enable;
endmodule

`timescale 1ns/1ps
module dual_ramB_Register0(
   input Clk,
   input ClkEn,
   input AsyncReset,
   input Din,
  output reg Qout
);
endmodule

