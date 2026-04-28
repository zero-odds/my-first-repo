module shift_reg(input d,clk,output reg q1,q2);
  always@(posedge clk) begin
    q1<=d;
    q2<=q1;
  end
endmodule