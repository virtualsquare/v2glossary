## vxvde (v²)

It's a plugin for VDE4 to create virtual subnetworks without creating switches to route the traffic
between the machines in the network. Instead it makes use of multicast addresses to create a virtual
distributed subnetwork with virtually zero configuration and high performance.

It does not provide access control for users connecting to the network. In a multiuser system any
user with shell access can connect to any vxvde created by another user. To avoid this you may make
use of `vxvde`
