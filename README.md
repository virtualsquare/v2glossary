# VirtualSquare Glossary

*... a commented list of acronyms and definitions used in VirtualSquare's ideas
and tools, and other related concepts*


## BPF: Berkeley Packet Filter.

Fast filtering mechanism originally developed for network packets.
Wireshark, TCPdump, libpcap use BPF.

BPF filters are programs written in a specific language and uploaded
to the kernel.

Recent Linux kernels:
* provide support for an extended version of BPF named eBPF
* implement a JIT compiler for BPF/eBPF
* use BPF/eBPF for other purposes (e.g. kernel tracing).
* currently BPF (and *not* eBPF) is used for sandboxing (SECCOMP)

## cado: Capability Ambient DO (v²)

Cado  permits  to delegate capabilities to users.  Cado is a capability based
sudo. Sudo allows authorized users to run programs as root (or as another
		user),  cado allows authorized users to run programs with specific
(ambient) capabilities

## dpipe: bi-directional pipe command (v²)

dpipe is a general tool to run two commands diverting the standard output  of
the  first  command  into the standard input of the second and vice-versa.

## eBPF

## execs-s2argv (v²)

It is a library (libexecs) providing a  group  of functions extends the family
of exec(3) provided by the libc.

execs, execse, execsp and execspe are similar to  execv(3),  execve(2),
execvp(3) and execvpe(3), respectively, but take a command line argument string as the file to execute.

s2argv converts a command line string in argv format.

libexecs can be used in embedded systems (it has a very low memory footprint,
		can be used using stack allocationonly) and does not use any shell.
Libexecs provides also a safereplacement for system(3) and tools for
coprocessing.

## exotcp (v²)

## FUSE

## guardian\_angels (v²)

## hashaddr-vde\_dnsutils (v²)

## libpam-net: pam-newnet pam-usernet (v²)


## libslirp (v²)

## libvdeplug (v²)

## lwipv6 (v²)

## N2N

## namespace

## netlink

It's a socket family designed to configure the network in a more elegant fashion. It allows
communication between userspace processes and kernel processes. It has been created to offer a more
versatile solution for network configuration and to be an alternative to the traditional method of
using ioctl calls.

It is (partly) documented in RFC 3549.

## nstools (v²)

## otip-vde\_dnsutils (v²)

## picotcp

## play\_it\_again\_sam (v²)

## purelibc (v²)

## pycotcp (v²)

## scado (v²)

## slirp

## strcase (v²)

## stropt (v²)

## umview (v²)

## umvu (v²)

It's a user mode implementation of VUOS. It is designed to implement a partial virtual machine for
the process it virtualizes and its offspring. The virtualized process has a virtualized view of its
environment (in opposition to the global view that processes usually have).

It allows the loading and unloading of various modules for different types of virtualization (of the
file system, of the devices, etc.).

See:

    vu_insmod, vu_lsmod, vu_rmmod

## unreal (v²)

## unrealuidgid (v²)
It's a module of **VuOS**. It virtualizes the system calls involving the user identity (*getuid*, *getgid*, etc.) returning always the value 0, as happens when the super user executes them.

See:

    vusu

## userbindmount (v²)

## VDE: Virtual Distributed Ethernet (v²)

It is a virtual data-link network compatible with the Ethernet standards.
VDE has been implemented in VirtualSquare in a set of tools and libraries
VDE is supported by user-mode linux, qemu/kvm, virtualbox

see:

	vde_switch, vde_plug, libvdeplug, vdens

## vdens (v²)

## vde\_plug (v²)

It's a component of VDE. It's an abstraction for the physical network plug. These can be created and
processes using VDE can attach to them. It allows for the creation of a distributed network.

The network traffic is translated in a simple bidirectional character stream between two plugs.

## vdestack (v²)

## vde\_switch (v²)

It's a component of VDE. It's an abstraction for the physical switch. It allows for the creation of
a virtual switch to which processes can connect. It supports many usual switch features (like port
control, creation of VLANs, network filtering, etc.). The switch is created in a user directory and
can be managed through the use of an interactive command line prompt.

## volatilestream (v²)

## vubinfmt (v²)

## vudebug (v²)

## vudev (v²)
It's a module of **VuOS** that allows the virtualization and management of devices in the umvu virtual environment. 

## vufs (v²)

## vufuse (v²)
It's a module of **VuOS**. It allows the *mount* operation of **FUSE** file systems in the umvu virtual environment.

## vu\_insmod (v²)

It allows for the loading of a module to support some type of virtualization. Can be launched from a
process virtualized by umvu.

For example, suppose you want to virtualize file system mounting. You would use, for example in a
virtualized istance of xterm, the following command

    vu_insmod vufuse

## vu\_lsmod (v²)

It allows the user of a virtualized process to see which modules have been loaded so far.

See:

    vu_insmod

## vuname (v²)

## vunet (v²)

## VUOS (v²)

## vu\_rmmod (v²)

It allows a user of a virtualized process to unload a previously loaded module.

See:

    vu_insmod

## vustack (v²)

## vusu (v²)
Utility that comes with the **unrealuidgid** module. It works like the *su* command, but in virtual environment.

See:

    unrealuidgid

## vxvde (v²)

It's a plugin for VDE4 to create virtual subnetworks without creating switches to route the traffic
between the machines in the network. Instead it makes use of multicast addresses to create a virtual
distributed subnetwork with virtually zero configuration and high performance.

It does not provide access control for users connecting to the network. In a multiuser system any
user with shell access can connect to any vxvde created by another user. To avoid this you may make
use of `vxvde`

## vxvdex (v²)

Works the same way as `vxvde` but provides access control and "network privacy". A sysadmin can
define which virtual networks a user can join or not.

See also:

    vxvde

## wirefilter (v²)
