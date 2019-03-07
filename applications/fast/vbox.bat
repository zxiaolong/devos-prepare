@echo off

@echo Usage: vbox.bat start/startd/pause/stop/sleep/resume
@echo 	start - start normal
@echo 	startd - start without window display
@echo 	stop - poweroff
@echo 	sleep - save state to disk
@echo 	pause - gray and can not interact
@echo 	resume - resume from pause
@echo 	usblist - list usb
@echo 	usbadd - add usb
@echo 	usbrem - remove usb

@echo param0 = %0
@echo param1 = %1
@echo param2 = %2

set vmname="xenial"
@echo default vmname is: %vmname%

set usbuuid=%2
@echo default usbuuid is: %usbuuid%

if "%1" == "start" (
	@echo start %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm %vmname%
)

if "%1" == "startd" (
	@echo start %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm %vmname% --type headless
)

if "%1" == "pause" (
	@echo pause %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm %vmname% pause
)

if "%1" == "stop" (
	@echo stop %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm %vmname% poweroff
)

if "%1" == "sleep" (
	@echo sleep %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm %vmname% savestate
)

if "%1" == "resume" (
	@echo resume %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm %vmname% resume
)

if "%1" == "usblist" (
	@echo list usb
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" list usbhost
)

if "%1" == "usbadd" (
	@echo add usb to %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm %vmname% usbattach %usbuuid%
)

if "%1" == "usbrem" (
	@echo remove usb from %vmname%
	"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" controlvm %vmname% usbdetach %usbuuid%
)
