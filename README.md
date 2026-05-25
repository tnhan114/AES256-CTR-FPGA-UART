# AES-256 CTR Hardware Implementation on FPGA

A resource-optimized hardware implementation of the Advanced Encryption Standard (AES) with a 256-bit key operating in Counter (CTR) mode. Designed in SystemVerilog, this cryptographic core is synthesized for the Intel/Altera Cyclone II FPGA (EP2C35F672C6) on a DE2 development board and operates within a 50 MHz system clock framework.

## 1. Technical Specifications
- **Algorithm:** AES-256 (128-bit block size, 256-bit key size, 14 transformation rounds).
- **Mode of Operation:** Counter (CTR) Mode (Symmetric stream-cipher architecture; the same encryption core natively executes both encryption and decryption routines).
- **System Clock:** 50 MHz (`CLOCK_50`).
- **Peripheral Interface:** UART (9600 Baud rate, 8 Data bits, No Parity, 1 Stop bit).

## 2. Hardware Architecture
The system employs a highly modular structure managed by a central top-level Finite State Machine (FSM) that coordinates data transfers between the UART communication blocks and the cryptographic processing unit.

### Iterative AES-256 Core (`aes_256.sv`)
To maximize hardware resource savings on the target FPGA fabric, the AES engine implements an **Iterative Round-Based Architecture** instead of a fully unrolled pipeline:
- **Round FSM Controller (`aes_fsm`):** Tracks and governs data loops across the 14 rounds of transformation. It takes exactly 15 clock cycles to process a single 128-bit data block.
- **Combinational Key Expansion (`key_expansion`):** Designed entirely using combinational logic, this block unrolls and pre-generates all 15 round keys (`key0` to `key14`) simultaneously at zero clock-cycle latency.

### CTR Mode Controller (`aes_256_ctr.sv`)
- **Counter Generation (`counter_block.sv`):** Dynamically concatenates a static 96-bit Nonce (`96'hAAAA_BBBB_CCCC_DDDD_EEEE_FFFF`) with an internal 32-bit hardware register that automatically increments after each successful block processing cycle.
- **Stream Ciphering:** The AES core encrypts the incremented counter block to produce a 128-bit keystream. A bitwise XOR block (`xor_block`) then blends this keystream directly with the input plaintext to formulate the final ciphertext.

### UART & Top-Level Interfacing (`uart_aes_top.sv`)
- **Baudrate Generation (`baudrate_gen.sv`):** Derives precise transceiver enabling pulses for 9600 baud communication from the main 50 MHz system clock using hardware dividers.
- **Data Coordination Flow:** The top-level wrapper sequentially captures 16 bytes via `uart_rx`, aggregates them into a unified 128-bit block, feeds it into the AES-CTR processing engine, and decomposes the resulting 128-bit output back into individual bytes for serial transmission over the hardware pin via `uart_tx`.

## 3. Synthesis & Implementation Results (Quartus II)
- **Total Logic Elements:** 4,137 LEs (Approximately 12% utilization of the EP2C35F672C6 FPGA chip).
- **Dedicated Logic Registers:** 511 Registers.
- **Maximum Frequency ($F_{max}$):** 87.43 MHz (Ensuring high-margin stability when running at the system's 50 MHz design clock).
- **Total Thermal Power Estimation:** 136.97 mW.
- **Average Toggle Rate:** 4.202 million transitions per second (Estimated via Vectorless Power Analyzer).

## 4. Project Directory Structure
- `uart_aes_top.sv`: Top-level wrapper integrating the UART transceivers and the core AES-CTR controller.
- `aes_256_ctr.sv`: Coordinates Counter Mode logic, including counter state building and keystream XOR operations.
- `aes_256.sv`: Contains the round-based iterative AES core, integrating SubBytes, ShiftRows, MixColumns, and Key Expansion blocks.
- `aes_controller.sv`: Houses the central internal state machine governing encryption data loading and loop cycles.
- `counter_block.sv`: Handles the 128-bit counter construction combining the nonce and a 32-bit incremental state register.
- `baudrate_gen.sv`: Implements the clock division logic for UART transaction enable signals.
- `uart_rx.sv` / `uart_tx.sv`: Asynchronous serial hardware receiver and transmitter modules.

## 5. Hardware Verification (Hercules)
The design has been fully verified on physical hardware by interfacing the DE2 FPGA board with Hercules Setup Utility via RS-232 serial interface. It achieves a high-performance throughput operating at a 50 MHz clock framework

---
**Author:** Trần Chí Nhân  
*Ho Chi Minh City University of Technology (HCMUT)*
