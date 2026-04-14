module traffic_light(
    input wire rst, input wire clk, output reg [2:0] light
);
parameter green = 2'b00;
parameter yellow = 2'b01;
parameter red= 2'b10;

reg [1:0] ps,ns;
reg [3:0] counter;

always@(posedge clk or posedge rst) begin
    if(rst) begin
        ps<= green;
        counter<=0;
    end
    else begin
    if((ps == green && counter>= 10) || (ps == yellow && counter>= 3) || (ps == red && counter>= 10))
    begin
        ps <= ns;
        counter <= 0;
    end else begin
    counter <= counter + 1;
    end
    end
end
always@(*) begin
    ns=ps;
    light=3'b000;
    case(ps)
    green:begin
        light= 3'b001;
        ns=yellow;
    end
        yellow:begin
            light=3'b010;
            ns=red;
        end
        red:begin
            light=3'b100;
            ns=green;
        end
        default  begin
        ns= green;
        end
    endcase
end
endmodule