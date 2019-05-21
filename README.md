Computer vision on Zynq devices with OV7670

This repository contains the sorce code of computer vision pipeline implemented on Xilinx devices (e.g., Zynq) with HLS tools.
The input image streaming from a OV7670 (or any other imaging device) is fed to the FPGA for processing and then transmitted (via UDP) to a remote computer via LWIp from the ARM processor.
The processed image stream is also sent to the VGA output of the evaluation board (e.g., Zedboard).
An OpenCV client allows to visualize the image stream (raw image Luma, raw imahe Chroma, Color image and processed image)
The client also allows to change (via TCP) parameters of the convolutional filter (separable or standard) implemeted on the FPGA. 

For more details see 06 - Embedded_Vision.pdf in Documentation

https://www.youtube.com/watch?v=EG3NYqMJvZI

https://www.youtube.com/watch?v=QFxjXWgBBcc

https://www.youtube.com/watch?v=6HEgdZEHpsM

If you use this code please cite: 

06 - Embedded_Vision.pdf available 

www.vision.disi.unibo.it/smatt

