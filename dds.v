module DDS( 
    input wire CLK,
    input wire RESET,
    input wire [31:0] ADDER,
    output reg [31:0]  DDS 
);

  always@(posedge CLK or posedge RESET) begin
    if(RESET)
      DDS <= 0;
    else
      DDS <= DDS + ADDER;
  end

endmodule
