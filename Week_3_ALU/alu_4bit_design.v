module alu_4bit(
  input [3:0] a,
  input [3:0] b,
  input [2:0] opcode,
  output reg [3:0] result,
  output reg carry_out
);
  reg [4:0]temp_add;
  
  always@(*)begin
    result=4'b0000;
    carry_out= 1'b0;
    
    case(opcode)
      3'b000:begin
        temp_add= a+b;
        result=temp_add[3:0];
        carry_out= temp_add[4];
      end
      3'b001:begin
      result=a-b;
      end
      3'b010:begin
        result= a & b;
      end
      3'b011:begin
        result= a | b;
      end
      3'b100:begin
        result=a^b;
      end
      3'b101:begin
        result= ~a;
      end
      3'b110: begin
        result= a<<1;
      end
      3'b111:begin
        result=a>>1;
      end
      default: begin
        result=4'b0000;
      end
    endcase
  end
endmodule