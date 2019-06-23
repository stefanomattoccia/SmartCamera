# SmartCamera - Computer vision on Zynq


![alt text](https://github.com/smatt-github/SmartCamera/blob/master/Screenshot.png)

## About

Computer vision on Zynq platfotm with OV7670 (or any other) digital image sensor.

This repository contains the sorce code of a basic computer vision pipeline implemented on Xilinx devices (e.g., Zynq) only with HLS tools (specifically, Vivado HLS).
The input image stream from a OV7670 (or any other imaging device) is fed to the FPGA for processing and then transmitted (UDP) in real-time to a remote client (using the LWIp library) from the ARM processor of the Zynq device. 
The processed image stream is also sent to the VGA output available on the evaluation board (e.g., Zedboard).
Tested with operating system Baremetal (Zynq ARM processor) but easily portable to Linux OS.
An OpenCV client allows to visualize the image stream (raw image Luma, raw image Chroma, Color image and processed image)
A client running on the remote computer enables to change (via TCP) parameters of the convolutional filter (separable or standard) implemeted into the FPGA. 

## Supported Boards and Images


| Board   |      Linux Image      | MD5 Checksum | Documentation |
|:----------:|:-------------:|:------:|:------:|
| Xilinx Zedboard   |   [ubuntu-16.04.2-minimal-armhf.zip](https://cloud.hipert.unimore.it/s/DPBQLzLA79nFZF8/download) |  447a9e0dd4a61ef5f11d082b964ebf24 | [User Guide](google.it) |
| Xilinx ZCU102     |   Work in progress |  Work in progress | Work in progress |
| Xilinx Ultra96    |   Work in progress |  Work in progress | Work in progress |

### Other Resources

* [Create custom Linux Images](https://github.com/smatt-github/SmartCamera/blob/master/Documentation/board_preparation.md)

## Other Informations

For more details see 06 - Embedded_Vision.pdf in Documentation

* https://www.youtube.com/watch?v=EG3NYqMJvZI
* https://www.youtube.com/watch?v=QFxjXWgBBcc
* https://www.youtube.com/watch?v=6HEgdZEHpsM

If you use this code please refer to: 

06 - Embedded_Vision.pdf available at www.vision.disi.unibo.it/smatt
