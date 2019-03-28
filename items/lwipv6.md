## lwipv6 (v²)

It is an IPv4/IPv6 hybrid stack with an architecture based on the logical model called "one process
for message": every network protocol is represented by an API and a single process moves the packets
through the stacks calling the methods of the APIs of the involved protocols.

It is based on the LwIP stack, which was designed for embedded systems with reduced hardware and
software resources. LwIPv6 has been designed to be used as a virtualization tool for userspace
programs.
