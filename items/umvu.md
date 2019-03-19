## umvu (v²)

It's a user mode implementation of VUOS. It has been designed to implement a
partial virtual machine for the process it virtualizes and its offspring. The
virtualized process has a virtualized view of its environment (in opposition to
		the global view that processes usually have).

It allows the loading and unloading of various modules for different types of
virtualization (of the file system, of the devices, etc.).

See:

    vu_insmod, vu_lsmod, vu_rmmod
