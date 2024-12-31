module tb_fibb0;

  reg clk;
   reg rst;
   reg enable;
   wire [8:0] f_out;
fibbo uut (
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .f_out(f_out) 
);

always #5 clk = ~clk;

initial begin
rst = 1;
enable = 0;

#15;
rst = 0;

#10;
enable = 1;

#100

enable = 0;

#20;

$stop;
end
endmodule
