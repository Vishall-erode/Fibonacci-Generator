module fibbo(
  input clk,
    input rst,
    input enable,
    output reg [8:0] f_out
);
 reg [8:0] f_prv1;
 reg [8:0] f_prv2;
 reg [8:0] next_out;

always @(posedge clk or posedge rst) begin
if (rst) begin
  f_prv1 <= 8'd0; 
  f_prv2 <= 8'd1;  
  f_out <= 8'd0;  
end else if (enable) begin
  next_out = f_prv1 + f_prv2;  
  f_out <= next_out;          
  f_prv1 <= f_prv2;          
  f_prv2 <= next_out;
end
end
endmodule