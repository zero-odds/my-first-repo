module tb;
  reg [3:0] a;
  reg [3:0] b;
  reg [2:0] opcode;
  wire [3:0] result;
  wire carry_out; 
  alu_4bit uut(.a(a),.b(b),.opcode(opcode),.result(result),.carry_out(carry_out));
  initial begin
    $monitor("a=%b b=%b opcode=%b result=%b carry_out=%b",a,b,opcode,result,carry_out);
    a=4;b=2;opcode=3'b000; #10;
    a=5;b=3;opcode=3'b001; #10;
    a=0;b=1;opcode=3'b010; #10;
     a=1;b=1;opcode=3'b011; #10;
     a=0;b=1;opcode=3'b100; #10;
     a=1;opcode=3'b101; #10;
    a=1;opcode=3'b110; #10;
      a=1;opcode=3'b111; #10;
    
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule