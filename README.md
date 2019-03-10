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
* surrently BPF (and *not* eBPF) is used for sandboxing (SECCOMP)

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

## libslirp (v²)

## libvdeplug (v²)

## lwipv6 (v²)

## N2N

## namespace

## netlink

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

## unreal (v²)

## userbindmount (v²)

## VDE: Virtual Distributed Ethernet (v²)

It is a virtual data-link network compatible with the Ethernet standards.
VDE has been implemented in VirtualSquare in a set of tools and libraries
VDE is supported by user-mode linux, qemu/kvm, virtualbox

see:

	vde_switch, vde_plug, libvdeplug, vdens

## vdens (v²)

## vdestack (v²)

## vde\_plug (v²)

## vde\_switch (v²)

## volatilestream (v²)

## vubinfmt (v²)

## vudebug (v²)

## vudev (v²)

## vufs (v²)

## vufuse (v²)

## vuname (v²)

## vunet (v²)

## VUOS (v²)

## vustack (v²)

## vusu (v²)

## vu\_insmod (v²)

## vu\_lsmod (v²)

## vu\_rmmod (v²)

## vxvde (v²)

## vxvdex (v²)

## wirefilter (v²)
