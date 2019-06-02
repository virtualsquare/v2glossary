## guardian\_angels (v²)

The "guardian angels" is a metaphor for the method with which vuos handles hypervisors.

Conceptually, every virtualized process has its own hypervisor, a "guardian angel". To implement
this, each time a process `p` creates a new process `q` the hypervisor of `p` creates a new
hypervisor for `q`. This way the hypervisors of `p` and `q` are separate, so that if `q` needs to do
a blocking system call `p` is not blocked as well.

The idea is as follows: when a traced process `p` creates a process `q` the hypervisor of `p` will,
eventually, detect an event from `q`, typically a `brk` syscall. At this point, the hypervisor of
`p` saves the registers and the syscall of `q`, injects a blocking call (poll(0,0,-1)) into `q` and
resumes it. This way, `q` will block right after resuming. Now, the hypervisor of `p` will detach
from `q` and create a new thread that will become the hypervisor of `q`. This thread will attach to
`q` and inject back the original system call, with the original registers, into `q` before resuming
it.
