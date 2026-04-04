module tb;
  reg clk,rst,enb,up_down;
  reg [1:0] mode;
  wire [3:0] count;
  wire [3:0] max_limit;
  universal_counter dut(.clk(clk),.rst(rst),.enb(enb),.up_down(up_down),.mode(mode),.count(count),.max_limit(max_limit));
  initial begin
    clk=1'b0;
    forever #5 clk = ~clk;
  end
  initial begin
    rst=1;enb=0;mode=2'b00;up_down=1;
    #10 rst=0;enb=1;
    #200 $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
              $dumpvars(0,tb);
              end
              endmodule