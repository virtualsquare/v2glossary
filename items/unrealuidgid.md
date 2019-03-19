## unrealuidgid (v²)

It's a module of VUOS. It virtualizes the system calls involving the user
identity (`getuid`, `getgid`, etc.) returning always the value 0, as happens
when the super user executes them.

See:

    vusu
