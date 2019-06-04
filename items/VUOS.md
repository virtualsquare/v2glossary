## VUOS (v²)

VUOS: give your processes a new VU.

VUOS is a different perspective on namespaces, anykernels and related concepts.
The main idea behind VUOS is that it is possible to give processes their own "view"
using partial virtual machines.

A partial virtual machine intercepts the system call requests and operates like a filter:
system call can be forwarded to the kernel of the hosting system or processed by the partial
virtual machine hypervisor.

          Processes
              v
    +------------------+
    |  PSV hypervisor  | --> virtualizing modules
    +------------------+
              v
       (linux) kernel

In this way processes can see a *mix* of resources provided by the kernel (on which they have
the same *view* of the other processes) and virtual resource.
It is possible to mount filesystems, load networking stack, change the structure of the file system
tree, create virtual devices.

The hypervisor is just a user process so while it gives new perspective for processes, **it does not widen the attack surface of the kernel**.

