# Optical-Link-Tx-to-Rx-HDL-with-simulated-transmission-OOK-and-AWGN

##  Overview
This repository implements a **complete optical communication link** in HDL (Verilog), simulating **On-Off Keying (OOK)** transmission under **Additive White Gaussian Noise (AWGN)** conditions.  
It provides both **transmitter (Tx)** and **receiver (Rx)** modules, along with a **testbench** for evaluating **Bit Error Rate (BER)** performance.

The project is intended for:
- FPGA-based optical communication system design.
- Simulation of noisy optical channels.
- Academic research in digital modulation and error analysis.

---

##  Features
- **Transmitter (Tx):** Encodes binary data using OOK modulation.
- **Receiver (Rx):** Detects and decodes OOK signals under AWGN.
- **Noise Injection:** AWGN modeled in simulation for realistic channel behavior.
- **Testbench:** Automated BER calculation with random bit streams.
- **Waveform Analysis:** VCD dump for GTKWave visualization.
- **Parameterization:** Adjustable bit length, clock frequency, and noise levels.

---



##  Repository Structure
- **ook_tx.v**                 #Transmitter HDL
- **ook_rx.v**                 # Receiver HDL
- **optical_link_top.v**      # Top-level integration
- **optical_link_tb.v**        # Testbench with OOK + AWGN
- **channel.v**                # AWGN Noise
- **README.md**                # Project explanation




##
- **FPGA Toolchain:** Xilinx Vivado (for hardware deployment)


##  Results
Compare **data_out** with **data_in_d** ( one cycle delayed version of data_in)

After transmitting 62 bits, there is an error in 1 bit.


## Waveforms
<img width="1130" height="491" alt="Screenshot 2026-04-21 215109" src="https://github.com/user-attachments/assets/297d6c05-d00d-43d6-9393-f857432b9212" />
<img width="1131" height="493" alt="Screenshot 2026-04-21 215207" src="https://github.com/user-attachments/assets/3081b06c-a139-4c4a-962f-6b0bdf5e76f5" />
<img width="1129" height="491" alt="Screenshot 2026-04-21 215311" src="https://github.com/user-attachments/assets/74235321-3273-4a2a-8d38-1b477e56da1d" />





