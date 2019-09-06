.. _Installing Raspian:

Installing Raspian
================================

Raspian is the official operating system for the Raspberry Pi. You will need a microSD Card and a computer with a SD card reader to install the image.

1)	Visit https://www.raspberrypi.org/downloads/raspbian/ and download a Raspian image of your choice. (Desktop or light version work both)

2)	Install an image writing software on your compouter (for example etcher: https://www.balena.io/etcher/)

3)	Insert a microSD Card in your Pi

4)	Run your image writing software, select the downloaded image and your microSD Card and click “Flash”

5)	When its finished eject the microSD Card, insert it in your Pi and plug in the power supply

6)	Follow the steps to setup your Pi. You are now a proud owner of a fully functional Raspberry Pi!!


Connect to your Raspberry Pi over the network
---------------------------------------------------

You don´t necessarily have to control your Pi with a keyboard, mouse and monitor. It is possible to access it from another device over the local network.

1) Plug your microSD Card with a working Raspian operating system into your computer and open it in your file manager.

2) Add a file named "ssh" and make sure it has no file extension. 

3) Start your Raspberry Pi with the customized microSD card image and make sure it is connected to your network.

4) Open a shell on a computer in the same network and type in ``ssh <username>@<hostname>``. The standard version of this command would be ``ssh pi@raspberrypi`` 

5) Enter the password, which is "raspberry" by default.

Now you are able to remote control your Raspberry Pi. 