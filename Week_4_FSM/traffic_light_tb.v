module tb;
reg rst,clk;
wire [2:0] light;
traffic_light uut (.rst(rst),.clk(clk),.light(light));
always #5 clk = ~clk;
initial begin
    $dumpfile("tb.vcd");
$dumpvars(0,tb);
$monitor("Time: %4t ns | Reset: %b | Light Output [Red, Yellow, Green]: %b", $time, rst, light);
clk=0;rst=1;
#10 clk=1;rst=0;
#300;
$finish;
end
endmodule
