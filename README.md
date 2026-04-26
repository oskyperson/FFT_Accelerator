# FFT_Accelerator

This project implements a hardware-accelerated Fast Fourier Transform (FFT) engine that utilizes the full AXI4 protocol to facilitate high-bandwidth data movement between system memory and the FFT core. The design acts as an AXI Manager, allowing it to move data frames autonomously. By utilizing burst signals such as arlen, awlen, and last, the manager can transmit up to 512 samples in a single transaction, ensuring maximum utilization of the system bus and reducing the overhead typically associated with single-beat transfers.

The system is designed to handle multiple frames of data in a continuous sequence. Once a software trigger is received via the subordinate configuration registers, the manager iterates through a programmed number of frames. It maintains internal read and write address offsets similar to how a DMA operates.

During operation, the manager synchronizes the read and write channels to ensure data integrity through the FFT pipeline. As it pulls raw time-domain samples from a source buffer, it simultaneously writes back frequency-domain results to a destination buffer. This parallel state machine architecture allows the hardware to overlap memory access with computation, ensuring that the FFT core remains fed with data and the system processor is only notified once the entire batch of frames has been processed.

## How to run

Before running any testbenches, ensure that the base path is set correctly.

To see the SNR results:

```python3 ./Python/run.py syn``` or ```python3 ./Python/run.py src```

Note: running SNR with synthesis takes a significant amount of time

To see top level waves:

```make syn_axi_top``` + ```make qsimgui_axi_top_syn``` or ```make qsimgui_axi_top_src```

To see SRAM AXI waves:

```make syn_sram_axi``` + ```make qsimgui_sram_axi_syn``` or ```make qsimgui_sram_axi_src```

To see FFT AXI subordinate waves:

```make syn_fft_axi_subordinate``` + ```make qsimgui_fft_axi_subordinate_syn``` or ```make qsimgui_fft_axi_subordinate_src```

To see FFT AXI manager waves:

```make syn_fft_axi_manager``` + ```make qsimgui_fft_axi_manager_syn``` or ```make qsimgui_fft_axi_manager_src```

To see FFT Core waves:

```make syn_fft_core``` + ```make qsimgui_fft_core_syn``` or ```make qsimgui_fft_core_src```
