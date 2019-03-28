## namespace

*A namespace wraps a global system resource in an abstraction that makes it appear to the processes
within the namespaces that they have their own isolated instance of the global resource. Changes to
the global resource are visible to other processes that are members of the namespace, but are
invisible to other processes.* (Linux Programmer's Manual)

Namespaces are used to implement containers, virtual networks, virtual mount points, virtual PIDs,
virtual users, and so on. Namespaces have been a feature of Linux kernel since version 2.4.19.
