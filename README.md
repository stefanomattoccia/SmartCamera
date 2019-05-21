Computer vision on Zynq platfotm with OV7670 (or any other) digital image sensor.

This repository contains the sorce code of a basic computer vision pipeline implemented on Xilinx devices (e.g., Zynq) only with HLS tools (specifically, Vivado HLS).
The input image stream from a OV7670 (or any other imaging device) is fed to the FPGA for processing and then transmitted (UDP) in real-time to a remote client (using the LWIp library) from the ARM processor of the Zyna device. 
The processed image stream is also sent to the VGA output available on the evaluation board (e.g., Zedboard).
Tested with operating system Baremetal (Zynq ARM processor) but easily portable to Linux OS.
An OpenCV client allows to visualize the image stream (raw image Luma, raw image Chroma, Color image and processed image)
A client running on the remote computer enables to change (via TCP) parameters of the convolutional filter (separable or standard) implemeted into the FPGA. 

For more details see 06 - Embedded_Vision.pdf in Documentation

https://www.youtube.com/watch?v=EG3NYqMJvZI

https://www.youtube.com/watch?v=QFxjXWgBBcc

https://www.youtube.com/watch?v=6HEgdZEHpsM

If you use this code please refer to: 

06 - Embedded_Vision.pdf available at www.vision.disi.unibo.it/smatt



