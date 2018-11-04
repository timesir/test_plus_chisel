module SimpleModule(input clk, input reset,
    input  io_start,
    output[31:0] io_out_plus
);

  wire[31:0] T0;
  reg [31:0] regVec_5;
  wire[31:0] T12;
  wire[31:0] T1;
  wire T2;
  wire[31:0] T3;
  reg [31:0] regVec_4;
  wire[31:0] T13;
  wire[31:0] T4;
  wire[31:0] T5;
  reg [31:0] regVec_3;
  wire[31:0] T14;
  wire[31:0] T6;
  wire[31:0] T7;
  reg [31:0] regVec_2;
  wire[31:0] T15;
  wire[31:0] T8;
  wire[31:0] T9;
  reg [31:0] regVec_1;
  wire[31:0] T16;
  wire[31:0] T10;
  reg [31:0] regVec_0;
  wire[31:0] T17;
  wire[31:0] T11;

`ifndef SYNTHESIS
// synthesis translate_off
  integer initvar;
  initial begin
    #0.002;
    regVec_5 = {1{$random}};
    regVec_4 = {1{$random}};
    regVec_3 = {1{$random}};
    regVec_2 = {1{$random}};
    regVec_1 = {1{$random}};
    regVec_0 = {1{$random}};
  end
// synthesis translate_on
`endif

  assign io_out_plus = T0;
  assign T0 = T3 + regVec_5;
  assign T12 = reset ? 32'h0 : T1;
  assign T1 = T2 ? 32'h5 : regVec_5;
  assign T2 = io_start == 1'h1;
  assign T3 = T5 + regVec_4;
  assign T13 = reset ? 32'h0 : T4;
  assign T4 = T2 ? 32'h4 : regVec_4;
  assign T5 = T7 + regVec_3;
  assign T14 = reset ? 32'h0 : T6;
  assign T6 = T2 ? 32'h3 : regVec_3;
  assign T7 = T9 + regVec_2;
  assign T15 = reset ? 32'h0 : T8;
  assign T8 = T2 ? 32'h2 : regVec_2;
  assign T9 = regVec_0 + regVec_1;
  assign T16 = reset ? 32'h0 : T10;
  assign T10 = T2 ? 32'h1 : regVec_1;
  assign T17 = reset ? 32'h0 : T11;
  assign T11 = T2 ? 32'h0 : regVec_0;

  always @(posedge clk) begin
    if(reset) begin
      regVec_5 <= 32'h0;
    end else if(T2) begin
      regVec_5 <= 32'h5;
    end
    if(reset) begin
      regVec_4 <= 32'h0;
    end else if(T2) begin
      regVec_4 <= 32'h4;
    end
    if(reset) begin
      regVec_3 <= 32'h0;
    end else if(T2) begin
      regVec_3 <= 32'h3;
    end
    if(reset) begin
      regVec_2 <= 32'h0;
    end else if(T2) begin
      regVec_2 <= 32'h2;
    end
    if(reset) begin
      regVec_1 <= 32'h0;
    end else if(T2) begin
      regVec_1 <= 32'h1;
    end
    if(reset) begin
      regVec_0 <= 32'h0;
    end else if(T2) begin
      regVec_0 <= 32'h0;
    end
  end
endmodule

