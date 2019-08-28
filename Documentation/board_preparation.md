# Installing Ubuntu on Zynq-7000 SoC

#### Prerequisites
- Host PC with Linux
- SD Card
- Vivado Design Suite - HLx Editions
- Xilinx PetaLinux

### Step 01 - Kernel Image generation

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
$ petalinux-config --get-hw-description=/path/to/hardware/description/OV7670.sdk
```

This command will also pop-up a window, in which we have to configure some parameters:

- Subsystem AUTO Hardware Settings > Advanced bootable images storage Settings > boot image settings and set ‘image storage media’ option to ‘primary sd’

- Subsystem AUTO Hardware Settings > Advanced bootable images storage Settings > kernel image settings and set ‘image storage media’ option to ‘primary sd’
- Subsystem AUTO Hardware Settings > Advanced bootable images storage Settings > dtb image settings and set ‘image storage media’ option to ‘primary sd’
- Image Packaging Configurations and set ‘Root filesystem type’ option to ‘SD card’

Disable the auto-generated bootargs:

```console
$ petalinux-config
```
DTG Settings > Kernel Bootargs 

and remove the flag on "generate boot args automatically", then insert below the following string:

```console
console=ttyPS0,115200 earlyprintk uio_pdrv_genirq.of_id=generic-uio clk_ignore_unused root=/dev/mmcblk0p2 rw rootwait sdhci.debug_quirks=64 cpuidle.off=1
```
Then save and exit.

After this run the following command to build the project and generate the device-tree:

```console
$ petalinux-build
```

After this, copy the content of pl.dtsi, that can be found on <project-dir>/components/device-tree/device-tree, inside the system-user.dtsi, that can be found in <project-dir>/project-spec/meta-user/recipes-bsp/device-tree/files, and change all the "compatible" field to "generic-uio", as for example:

```console
/include/ "system-conf.dtsi"
/ {
	amba_pl: amba_pl {
		#address-cells = <1>;
		#size-cells = <1>;
		compatible = "simple-bus";
		ranges ;
		VDMA_axis_to_ddr_writer_0: axis_to_ddr_writer@43c00000 {
			clock-names = "ap_clk";
			clocks = <&clkc 15>;
			compatible = "generic-uio";
			reg = <0x43c00000 0x10000>;
			xlnx,s-axi-axilites-addr-width = <0x6>;
			xlnx,s-axi-axilites-data-width = <0x20>;
		};
        ...
        ...
};
```
Then include the UIO kernel modules, through the followind command:
```console
$ petalinux-config -c kernel
```
Go to Device Drivers > Userspace IO Drivers and insert "Userspace IO Platform Driver with generic IRQ Handling" and "Userspace Platform Driver with generic irq and dynamic memory" as a modules.

Select Exit and save the new configuration, then the following command will build the project and generate the boot files:

```console
$ petalinux-build
```

After project is successfully built, run the following command to generate the BOOT.BIN file:

```console
$ petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/bitfile.bit --u-boot
```

### Step 02 - Preparing SD Card

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

### Step 03 - Boot Ubuntu Linux on Zedboard

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


