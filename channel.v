module channel(
input clk,
output [7:0] noise
    );
reg [7:0] lfsr1 = 8'hA5;
reg [7:0] lfsr2 = 8'h3C;
reg [7:0] lfsr3 = 8'hF0;

always @(posedge clk) begin
    lfsr1 <= {lfsr1[6:0], lfsr1[7]^lfsr1[5]};
    lfsr2 <= {lfsr2[6:0], lfsr2[7]^lfsr2[4]};
    lfsr3 <= {lfsr3[6:0], lfsr3[7]^lfsr3[3]};
end

// Produces a distribution closer to Gaussian (bell-shaped) noise
assign noise = (lfsr1 >> 2) + (lfsr2 >> 2) + (lfsr3 >> 2);
endmodule
