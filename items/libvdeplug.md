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
