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
    $dumpfile("ook_awgn.vcd");
    $dumpvars(0,optical_link_tb );

    // Reset
    #20 rst = 0;

    // Run random data
    for (i = 0; i < 10000; i = i + 1) begin
        @(posedge clk);
        data_in = $random;  // random 0/1
    end

    // Wait a bit
    #100;

    // Print results
    $display("Total bits  = %d", total_bits);
    $display("Error bits  = %d", error_bits);

    if (total_bits > 0)
        $display("BER = %f", error_bits * 1.0 / total_bits);

    $finish;
end
