## exotcp (v²)

ExoTCP is a minimal userspace network stack that has been optimized for traffic based on the
HTTP protocol.

Since the only traffic the stack needs to handle is HTTP traffic only a subset of the components of
a full generic network stack have been implemented in ExoTCP. Furthermore ExoTCP does not use a
layer architecture, and this reduces the overhead needed to handle packets. Finally it's a zero copy
stack: packets are read and written directly to/from NIC rings.

It is based on the Netmap framework.
