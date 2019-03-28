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
