module ook_tx(
input clk,
input rst,
input data_in,
output reg [7:0] tx_out
);
parameter HIGH = 8'd200;
parameter LOW = 8'd20;

always@(posedge clk or posedge rst) begin
 if(rst)
   tx_out <= 0;
 else
   tx_out <= data_in ? HIGH:LOW;
end  
endmodule
