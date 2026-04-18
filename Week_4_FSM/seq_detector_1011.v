module seq_detector(
    input clk,
    input rst,
    input seq_in,
    output reg det_out
);
parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
reg [2:0] cs,ns;
always @(posedge clk or posedge rst)
if(rst) begin
    cs<=s0;
end
else begin
    cs<=ns;
end
always@(*)begin
    det_out = 1'b0;
 case(cs)
 s0 : begin
    if(seq_in == 1'b1)
    ns = s1;
    else
    ns = s0;
 end
 s1 : begin
    if(seq_in == 1'b0)
    ns = s2;
    else
    ns = s1;
 end
 s2 : begin
    if(seq_in == 1'b1)
    ns = s3;
    else
    ns = s0;
 end
 s3 : begin
    if(seq_in == 1'b1)
    ns = s4;
    else 
    ns = s2;
 end
 s4 : begin
    det_out = 1'b1;
    if(seq_in == 1'b1)
    ns = s1;
    else
    ns = s2;
 end
 default: ns=s0;
 endcase
end
endmodule