## vumount/vuumount (v²)

These commands are like `mount(8)` and `umount(8)`.
Unfortunately the standard utilities perform unnecessary controls.
`mount(8)` requires the user to be root before trying to use the `mount(2)`
system call, denying a priori, an operation which is allowed in VUOS.
It is possible to use the standard `mount` and `umount` utilities in  a virtual root session (see vusu).
vumount and vuumount are not setuid (unlike mount/umount) and
permit to mount/unmount partitions (and services) if the user is allowed to
do it (as it is the case in umvu) avoiding the need to virtualize the user.
