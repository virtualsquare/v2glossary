## play\_it\_again\_sam (v²)

`Play_it_again_sam` is a mechanism used by `vuos` that allows the hypervisor to make more than one
"real" system call in the virtualization of a single system call. It's a reference to the movie
"Casablanca".

It works like this: under normal circumstances, the hypervisor is a ptrace tracer for the
virtualized processes. When a virtualized process `p` makes a syscall `s` the hypervisor stops
waiting and can examine the status to handle the event that occurred. After the hypervisor has done
its job in virtualizing the system call and is ready to resume the virtualized process, it can set a
`syscall action`. It will then resume the virtualized process.

One of the possible action is `DO_IT_AGAIN`. If the hypervisor is signaled at the exit of `s`
and the action is `DO_IT_AGAIN`, the hypervisor will set the PC of `p` one instruction back and
inject the modified PC into the `p`'s registers.  This way `p`, after being resumed, will make
the same system call `s` and the hypervisor will be signaled again, so that it can make the other
needed "real" syscalls in the virtualization of `s`. This loop may continue as
many times as needed.
