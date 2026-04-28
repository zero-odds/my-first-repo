module universal_counter(input clk,rst,enb,up_down,input [1:0] mode,output reg[3:0] count,output reg [3:0] max_limit);
  always@(*) begin
    case(mode)
      2'b00:max_limit=4'd15;
      2'b01:max_limit=4'd9;
      2'b10:max_limit=4'd5;
      2'b11:max_limit=4'd3;
      default:max_limit=4'd15;
    endcase
  end
  always@(posedge clk)begin
    if(rst==1) begin
      count<=4'b0000;
    end
    else if(enb==1)begin
      if(up_down==1)begin
        if(count==max_limit)begin
         count<=4'b0000;
        end
          else begin
            count<=count + 4'b1;
          end 
      end
          else begin
            if(count==4'b0000)begin
                  count<=max_limit;
                end
                  else begin
                    count<= count - 1'b1;
                  end
                end
            end
  end
        endmodule