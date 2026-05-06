Optical-Link-Tx-to-Rx-HDL-with-simulated-transmission-OOK-and-AWGN

📌 Overview
This repository implements a complete optical communication link in HDL (Verilog), simulating On-Off Keying (OOK) transmission under Additive White Gaussian Noise (AWGN) conditions.
It provides both transmitter (Tx) and receiver (Rx) modules, along with a testbench for evaluating Bit Error Rate (BER) performance.

The project is intended for:

FPGA-based optical communication system design.

Simulation of noisy optical channels.

Academic research in digital modulation and error analysis.

⚙️ Features
Transmitter (Tx): Encodes binary data using OOK modulation.
Receiver (Rx): Detects and decodes OOK signals under AWGN.
Noise Injection: AWGN modeled in simulation for realistic channel behavior.
Testbench: Automated BER calculation with random bit streams.
Waveform Analysis: VCD dump for GTKWave visualization.
Parameterization: Adjustable bit length, clock frequency, and noise levels.


