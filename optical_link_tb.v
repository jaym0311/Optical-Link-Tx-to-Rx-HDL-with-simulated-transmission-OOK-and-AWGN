`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2026 22:06:56
// Design Name: 
// Module Name: optical_link_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



`timescale 1ns/1ps

module optical_link_tb;

reg clk = 0;
reg rst = 1;
reg data_in;

wire data_out;


// Instantiate DUT

optical_link_top dut (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .data_out(data_out)
);


// Clock (100 MHz)

always #5 clk = ~clk;


// Test variables

integer i;
integer total_bits = 0;
integer error_bits = 0;

reg data_in_d;  // delayed version for comparison


// Stimulus

initial begin
    

    // Reset
    #20 rst = 0;

    // Run random data
    for (i = 0; i < 1000; i = i + 1) begin
        @(posedge clk);
        data_in = $random;  // random 0/1
    end

    
    #1100; 
     

    // Print results
    $display("Total bits  = %d", total_bits);
    $display("Error bits  = %d", error_bits);

    if (total_bits > 0)
        $display("BER = %f", error_bits * 1.0 / total_bits);

    $finish;
end
initial begin
    $monitor("time=%0t total=%0d errors=%0d",
              $time, total_bits, error_bits);
end


// Align TX and RX for comparison

always @(posedge clk) begin
    if (rst) begin
        data_in_d <= 0;
    end else begin
        #10 data_in_d <= data_in;  // 1-cycle delay 
    end
end


// Error counting

always @(posedge clk) begin
    if (!rst) begin
        if (total_bits < 1000)
        total_bits <= total_bits + 1;

        if (data_out !== data_in_d) begin
            error_bits <= error_bits + 1;
        end
    end
end


endmodule
