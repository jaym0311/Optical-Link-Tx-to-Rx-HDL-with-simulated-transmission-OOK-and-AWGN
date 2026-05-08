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
- **Waveform Analysis:** Compare received bit (data_out) with  one clock cycle delayed version of transmitted data (data_in_d)
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

After transmitting 1000 bits, there is error in 3 bits.

<img width="238" height="62" alt="image" src="https://github.com/user-attachments/assets/7675d400-e98b-407c-bccd-61e422fd4d9c" />



## Waveforms
<img width="1550" height="695" alt="Screenshot 2026-05-08 182705" src="https://github.com/user-attachments/assets/a905ebad-ccb7-4b79-bfc1-d0c6fc75ac00" />.

<img width="1547" height="728" alt="Screenshot 2026-05-08 182930" src="https://github.com/user-attachments/assets/e525a3dc-be30-4b96-a9cb-8341f8eee118" />.

<img width="1548" height="730" alt="Screenshot 2026-05-08 183049" src="https://github.com/user-attachments/assets/10bcf62c-22af-46ca-b636-b7dcc04e9e27" />.

<img width="1553" height="728" alt="Screenshot 2026-05-08 183143" src="https://github.com/user-attachments/assets/60012988-b694-423a-ad66-46112df791a2" />.







