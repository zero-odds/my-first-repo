module tb;
  reg clk,rst;
  reg [3:0] d;
  wire [3:0] q;
  register_4bit uut(.clk(clk), .rst(rst), .d(d), .q(q));
  initial begin 
    clk=0;
    forever #5 clk= ~clk;
  end
  initial begin
    rst=1;d=4'b0000;
    #10 rst=0; d=4'b0101;
    #10 d=4'b1000;
    #10 d=4'b1110;
    #10 rst=1;
    #20 $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule