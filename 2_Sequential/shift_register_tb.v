module tb;
  reg clk,d;
  wire q1,q2;
  shift_reg uut(.clk(clk),.d(d),.q1(q1),.q2(q2));
  initial begin
    clk=0;
    forever #5 clk= ~clk;
  end
  initial begin
    d=0;
    #10 d=1;
    #10 d=0;
    #5  d=1;
    #30 $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule