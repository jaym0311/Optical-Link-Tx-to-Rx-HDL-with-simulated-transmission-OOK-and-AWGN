module optical_link_top(
input clk,
    input rst,
    input data_in,
    output data_out

    );

wire [7:0] tx_signal;
wire [7:0] noise;
wire [8:0] rx_signal;   // allow overflow
wire rx_bit;


// TX (OOK mapping)

ook_tx tx_inst (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .tx_out(tx_signal)
);


// AWGN Noise

channel noise_inst (
    .clk(clk),
    .noise(noise)
);


// Channel (Additive)

assign rx_signal = tx_signal + noise;


// RX (Threshold Detection)

ook_rx rx_inst (
    .clk(clk),
    .rst(rst),
    .rx_in(rx_signal),
    .data_out(data_out)
);
endmodule
