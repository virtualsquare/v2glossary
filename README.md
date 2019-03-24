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

Cado permits the delegation of capabilities to users.  Cado is a *capability 
based* sudo. 
Sudo allows authorized users to run programs as root (or as another
user), cado permits authorized users to run programs with specific
(ambient) capabilities.

## dpipe: bi-directional pipe command (v²)

dpipe is a general tool. It runs two commands diverting the standard output of
the  first  command  into the standard input of the second and vice-versa.

## eBPF

## exotcp (v²)

ExoTCP is a minimal userspace network stack that has been optimized for traffic based on the
HTTP protocol.

Since the only traffic the stack needs to handle is HTTP traffic only a subset of the components of
a full generic network stack have been implemented in ExoTCP. Furthermore ExoTCP does not use a
layer architecture, and this reduces the overhead needed to handle packets. Finally it's a zero copy
stack: packets are read and written directly to/from NIC rings.

It is based on the Netmap framework.

## FUSE

*It is a software interface for Unix-like computer operating systems that lets non-privileged users create their own file systems without editing kernel code. This is achieved by running file system code in user space while the FUSE (Filesystem in Userspace) module provides only a "bridge" to the actual kernel interfaces.* (Wikipedia)

## guardian\_angels (v²)

## hashaddr-vde\_dnsutils (v²)

## libpam-net: pam-newnet pam-usernet (v²)


## libslirp (v²)

It is a wrapper for slirp that makes its code available in a library with a clean and simple
interface.

See `slirp` for more details.

## libvdeplug (v²)

It is a library to connect to a VDE switch. The interface of the library is based on 6 functions:
1. `vde_open`, to open a VDE connection
2. `vde_recv`, to receive data from a VDE connection
3. `vde_send`, to send data in a VDE connection
4. `vde_datafd`, to poll for new packets
5. `vde_ctlfd`, to poll for the connection closing
6. `vde_close`, to close a VDE connection

A VDE connection is represented with a VDECONN object, which keeps the connection's information and
is used as an argument in all the functions of the interface.

## lwipv6 (v²)

It is an IPv4/IPv6 hybrid stack with an architecture based on the logical model called "one process
for message": every network protocol is represented by an API and a single process moves the packets
through the stacks calling the methods of the APIs of the involved protocols.

It is based on the LwIP stack, which was designed for embedded systems with reduced hardware and
software resources. LwIPv6 has been designed to be used as a virtualization tool for userspace
programs.

## N2N

## namespace

*A namespace wraps a global system resource in an abstraction that makes it appear to the processes
within the namespaces that they have their own isolated instance of the global resource. Changes to
the global resource are visible to other processes that are members of the namespace, but are
invisible to other processes.* (Linux Programmer's Manual)

Namespaces are used to implement containers, virtual networks, virtual mount points, virtual PIDs,
virtual users, and so on. Namespaces have been a feature of Linux kernel since version 2.4.19.

## netlink

It's a socket family designed to exchange information between the kernel and
user-space processes.
It permits also to configure the network in a more elegant 
and efficient way (than the previous netdevice(7)). 
It has been created to offer a more
versatile solution for network configuration and to be an alternative to the traditional method of
using ioctl calls.

It is (partly) documented in RFC 3549.

## nstools (v²)

## otip-vde\_dnsutils (v²)

## picotcp

## play\_it\_again\_sam (v²)

## purelibc (v²)

## pycotcp (v²)

## s2argv-execs (v²)

It is a library (libexecs) providing a  group  of functions extending the 
exec(3) family provided by the libc.

execs, execse, execsp and execspe are similar to  execv(3),  execve(2),
execvp(3) and execvpe(3), respectively, but they take a command line argument 
string as the file to execute.

s2argv converts a command line string in argv format.

libexecs can be used in embedded systems (it has a very low memory footprint,
		can be used using stack allocationonly) and does not use any shell.
Libexecs provides also a safereplacement for system(3) and tools for
coprocessing.

## scado (v²)

## slirp

It is a program that emulates a PPP, SLIP or CSLIP connection to Internet via a shell account. It
is widely used by virtual machine hypervisors to provide virtual networking services. It can work as
a general purpose TCP/IP emulator. No configuration is required on the guest side and no privileged
services are required on the host side.

## strcase (v²)

## stropt (v²)

## umview (v²)

It is a is a View OS implementation. UMView is a partial virtual machine and userspace hypervisor capable
of intercepting system calls and modifying their behavior according to the
calling process' view. In order to provide flexibility and modularity UMView
supports modules loadable at runtime using a plugin architecture.

## umvu (v²)

It's a user mode implementation of VUOS. It has been designed to implement a
partial virtual machine for the process it virtualizes and its offspring. The
virtualized process has a virtualized view of its environment (in opposition to
		the global view that processes usually have).

It allows the loading and unloading of various modules for different types of
virtualization (of the file system, of the devices, etc.).

See:

    vu_insmod, vu_lsmod, vu_rmmod

## unreal (v²)

It is a test module of VUOS. It virtualize the entire file system in `/unreal` and in `/unreal/unreal` (for second level virtualization). 

## unrealuidgid (v²)

It is a module of VUOS. It virtualizes the system calls involving the user
identity (`getuid`, `getgid`, etc.) returning always the value 0, as happens
when the super user executes them.

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

It's a component of VDE. It's an abstraction for the physical network plug.
These can be created and processes using VDE can attach to them. It allows for
the creation of a distributed network.

The network traffic is translated in a simple bidirectional character stream
between two plugs.

## vdestack (v²)

## vde\_switch (v²)

It is a component of VDE. It is the virtual counterpart of a physical switch. 
`vde_switch` command creates a
virtual switch. Processes (virtual machines, VUOS instances, VDE namespaces)
can be interconneced by a `vde_switch`.	It
supports many common switch features (like port control, creation of VLANs,
network filtering, etc.). The switch can
be managed through the use of an interactive command line prompt.

## volatilestream (v²)

## vubinfmt (v²)

## vudebug (v²)

## vudev (v²)

It is a module of VUOS that allows the virtualization and management of devices
in a VUOS virtual environment. 

## vufs (v²)

## vufuse (v²)

It is a module of VUOS. It allows the `mount` operation of FUSE file systems in
a VUOS virtual environment.

## vu\_insmod (v²)

It loads a module in a VUOS partial virtual machine to support some type of 
virtualization.
Can be launched from a process virtualized by umvu.

For example, in a shell running inside a umvu session the following command

    vu_insmod vufuse

loads the vufuse module, allowing the mounting of vufuse file systems.

## vu\_lsmod (v²)

It allows the user of a virtualized process to see which modules have been
loaded so far.

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

It works like the `su` command, but in a VUOS virtual environment.

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

It is a program that simulates a network link with problems or limitation in a VDE network. For
example it may simulate a given delay in packet transmission or a specified drop rate for packets on
the link, with many options to choose from. It is very useful for testing purposes and simulations.
One of the most interesting use of this tool has been the test of protocols for transmissions with
long RTT, like the ones between Earth and probes on Mars.

The following coomand inserts a wirefilter into a bi-directional pipeline between two vde\_plugs that
interconnect two vde\_switches:
```bash
    $ dpipe vde_plug /tmp/vde1.ctl = wirefilter -M /tmp/wiremgmt = vde_plug /tmp/vde2.ctl
```

The following command then opens an interactive prompt to insert anomalies into the network
```bash
    $ vdeterm /tmp/wiremgmt
```
