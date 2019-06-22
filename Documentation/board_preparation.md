# Installing Ubuntu on Zynq-7000 SoC

#### Prerequisites
- Host PC with Linux
- SD Card
- Vivado Design Suite - HLx Editions 2018.1
- Xilinx SDK 2016.4
- Xilinx PetaLinux 2016.4

### Step 01 - Hardware Design Creation
In this step I will use the most basic hardware design that Linux can be booted in.
In particular the steps needed to generate the hardware design are:

- Create a new RTL project for ZYNQ-7000 SoC in Vivado HLx.
- Click ‘Create Block Design’ from the ‘Project Manager’ window
- Add ‘ZYNQ7 Processing System’ IP from the ‘Add IP’ window
- Connect FCLK_CLK0 output pin to M_AXI_GP0_ACLK input pin of ‘ZYNQ7 Processing System’ IP
- Click ‘Run Block Automation’

After these steps the block design will be like in the following figure:

![alt text](https://git.hipert.unimore.it/F1-10/Thundershot/raw/master/docs/zedboard/img/hardware_design.png)

Then right click the block design file, and select ‘Create HDL Wrapper’. 
Tick “Let Vivado manage wrapper and auto-update” and click ok. And finally:

- Synthesize the design and generate the bit stream
- After bit stream is generated, go to File > Export > Export Hardware, tick Include bitstream and click OK.

After the steps described above, the hardware description file (.hdf) will be generated under <project-name>.sdk folder,
located under the project directory.
This file is required for building the kernel image in the following step

### Step 02 - Kernel Image generation

Open a terminal in the Linux OS that you installed PetaLinux and go to the 
directory that you want to create the PetaLinux project. First of all we must source from PetaLinux and XSDK installation directories: 

```console
$ source PetaLinux-2016-4/settings.sh
$ source XSDK-2016-04/SDK/2016.4/settings64.sh
```

Create a PetaLinux project with this command:

```console
$ petalinux-create --type project --template zynq --name ZynqLinux
$ cd ZynqLinux
```

Add the .hdf file to the project and configure some aspects in the kernel in order 
to point the kernel itself to a custom root file system (ubuntu 16.04 in this case):

```console
$ petalinux-config --get-hw-description=/path/to/hardware/description/file.hdf
```

This command will also pop-up a window, in which we have to configure some parameters:

- Subsystem AUTO Hardware Settings > Advanced bootable images storage Settings > boot image settings and set ‘image storage media’ option to ‘primary sd’
- Subsystem AUTO Hardware Settings > Advanced bootable images storage Settings > kernel image settings and set ‘image storage media’ option to ‘primary sd’
- Subsystem AUTO Hardware Settings > Advanced bootable images storage Settings > dtb image settings and set ‘image storage media’ option to ‘primary sd’
- Image Packaging Configurations and set ‘Root filesystem type’ option to ‘SD card’

Select Exit and save the new configuration, then the following command will build the project and generate the boot files:

```console
$ petalinux-build
```

After project is successfully built, run the following command to generate the BOOT.BIN file:

```console
$ petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/bitfile.bit --u-boot
```

### Step 03 - Preparing SD Card

Partitioning an SD Card with at least 16GB of capacity, in particular we need to create two partitions as follows:

- Free Space Proceeding (MiB): 4, New Size (MiB) : 512, File System : FAT32, Label : BOOT.
- Free Space Proceeding (MiB): 0, Free Space Following(MiB): 0, File System : ext4, Label : rootfs

Download the Ubuntu 16.04 rootfs using the following command:

```console
$ wget -c https://rcn-ee.com/rootfs/eewiki/minfs/ubuntu-16.04.2-minimal-armhf-2017-06-18.tar.xz
```

Then extract the content and copy in the rootfs partition:

```console
$ tar xf ubuntu-16.04.2-minimal-armhf-2017-06-18.tar.xz
$ cd ubuntu-16.04.2-minimal-armhf-2017-06-18/
$ sudo tar xfvp armhf-rootfs-ubuntu-xenial.tar -C /media/rootfs/
$ sync
$ sudo chown root:root /media/rootfs/
$ sudo chmod 755 /media/rootfs/
```

Then copy the boot files in the boot partition, in particular we need only BOOT, kernel image and device tree:

```console
$ sudo cp ./images/linux/BOOT.BIN /media/BOOT/
$ sudo cp ./images/linux/image.ub /media/BOOT/
$ sudo cp ./images/linux/system.dtb /media/BOOT/
```

Finally umount the partitions

```console
$ sudo umount /media/rootfs
$ sudo umount /media/BOOT
```

Place the SD Card into the Zedboard, connect an uart-usb cable to zedboard and host pc and connect a serial monitor 
(like screen, cu, minicom, ...) to /dev/ttyACM0 with a baudrate of 115200.

### Step 04 - Boot Ubuntu Linux on Zedboard

After the Ubuntu boot, we can log in the new system with:

- User: ubuntu
- Pass: temppwd

Then we have to create a swap partition, because the Zynq-7000 SoC only 
have 512MB of RAM that is not enough to compile ROS packages.

```console
$ sudo dd if=/dev/zero of=/swap bs=1024 count=524288
```

secure the swap file:

```console
$ sudo chown root:root /swap
$ sudo chmod 0600 /swap
```

setup and enable the swap file:

```console
$ sudo mkswap /swap
$ sudo swapon /swap
```

To activate /swap after Linux system reboot, add entry to /etc/fstab file. Open this file using a text editor such as vim:

```console
$ sudo vim /etc/fstab
```

Append the line `/swap none swap sw 0 0` Save and close the file. 
Next time Linux comes up after reboot, it enables the new swap file for you automatically.


