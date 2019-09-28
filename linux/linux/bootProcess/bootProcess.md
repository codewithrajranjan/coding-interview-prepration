# Power on
BIOS (Basic Input Output System) is a software program comes pre-built in a motherboard chipset.
BIOS loads and scans for devices such as Hard Disk, CD-ROM, RAM, etc.
BIOS searches for MBR (Master Boot Record: 1st sector) of the primary hard drive, it scans for 1st stage loader (In our case boot loader is (GRUB LILO) and hands over the responsibility to MBR.
Boot PROM/FLASH/BIOS is proficient of loading the MBR into RAM and executing it.


MBR (Master Boot Record)
512 bytes of space –> MBR
MBR contains the information of loader of most operating system e.g UNIX, Linux and WINDOWS
MBR holds the small binary information of 1st stage of loader
MBR consist physical sector of the first disk drive (i.e 512 bytes) and it’s not part of any partition.
Placed on the prime disk drive, in the prime sector of the first cylinder of track is 0 and head is 0 (this whole path is generally booked for boot programs)
MBR involve a mini executable programs and a table specify the primary partitions.
Boot Code (GRUB) 446 bytes
partition 1: 16 bytes
partition 2: 16 bytes
partition 3: 16 bytes
partition 4: 16 bytes
magic Number: 2 bytes
MBR also document which primary partition is ACTIVE.
The BIOS surrender rights to the first stage boot loader, which then scans partition table and finds second stage boot loader on the partition configured as bootable.
Boot Loader
The boot loader termed from 1st stage loader and loads itself into RAM. All this go on in milliseconds.
The default stage 2 boot loader is a GRUB (Grand Unified Boot Loader) or LILO (Linux Loader)
Once GRUB is loaded into RAM, then it’s search for the location of Kernel.
GRUB will scrutinize the map file to find the kernel image, that is located under (/boot) and load it.
GRUB loads the kernel (vmlinuz-version) from /boot partition
Trivia 1

GRUB organize RAMDISK for initrd —> (RAMDISK is reserved space from RAM). In addition, it drives initrd into RAM to ready the kernel for loading itself into memory and depended modules so that it can leave the system to “init” process

In, Linux most of the drivers are pre-built as modules, these would be initial ram drive (initrd.img) where it can keep all the information of additional modules. So, when the kernel boots, it creates ramdrive, loads the initrd.img and its depended modules.

GRUB reads /boot/grub/grub.conf & shows us a clean interface for selecting Operating System

Once Kernel loads its depended modules and then it hand over to “init” process. The kernel image has a small, unpacked program that un-compresses kernel and runs it.

Trivia 2

LILO needed to indicate MBR in order to locate operating systems on the hard drive. Any modifications done to /etc/lilo.conf, that must be updated in MBR, but in GRUB‘s case no need to update, it reads directly from the file /boot/grub/grub.conf.

After making changes in /etc/lilo.conf, we’ll have to update the MBR manually

# /sbin/lilo -v
Trivia 3

The GRUB second stage loader resides within the MBR and within /boot partition. Once GRUB is loaded into memory it becomes 2nd stage loader.

Trivia 4

The /initrd directory should not be removed it is a temporary place holder for kernel to have quick access to the modules that it needs to start the system modules include device drivers.

Kernel initialization highlights include:
initialize CPU components, eg, MMU
initialize the scheduler (PID 0)
mount the root filesystem in rw mode
fork off the init process (PID 1)
In essence, kernel initialization does two things:

Start the core system of shared resource managers (RAM, processor and mass storage).
Starts a single process, /sbin/init.
Init process (sbin/init) is the very fist process which loads all the various daemons and mounts all the partitions which are listed under /etc/fstab.

About /etc/fstab
The /sbin/init reads /etc/inittab file
Set default runlevel ( the telinit command allows administrators to tell the init process to change its current runlevel)
Calls /etc/rc.d/rc.sysinit and /etc/rc.d/rc x (where ‘x‘ is a runlevel)
In /etc/rc.d/rc5.d directory files starting with letter K –> kill scripts and files starting with letter S –> Startup scripts.
Start up the tty processes and xdm ( X display manager)
Starts User’s login screen
