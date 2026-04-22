module ook_rx(
input clk,
input rst,
input [8:0] rx_in,
output reg data_out
    );
parameter THRESH = 9'd200;
always@(posedge clk or posedge rst)begin
 if(rst)
   data_out <= 0;
 else
   data_out <= (rx_in > THRESH)? 1'b1:1'b0;
end
endmodule
