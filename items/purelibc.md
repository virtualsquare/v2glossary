## purelibc (v²)

It is a glibc overlay library for process self-virtualization. Purelibc basically converts glibc
from a libc+system interfacing library into a libc-only library. To do that it uses the so called
"LD\_PRELOAD trick": using the LD\_PRELOAD environment variable the user can specify a shared object
that will be loaded before any other, including the C runtine (libc.so). With Purelibc a user can
define a function that will intercept all the system calls and execute user defined code. This way
processes can virtualize their own system calls.

It is used in vuos to implement virtualization efficiently: the additional cost of the
virtualization is that of a function call. This way umvu can have an efficient implementation of
module nesting.

<!-- If you want to use a Markdown to HTML conversion tool be sure to remove this comment. The
method of using LD_PRELOAD has been referenced as the "LD_PRELOAD trick" in this stack overflow
question, which references a discussion on a subreddit called "proggit":
https://stackoverflow.com/questions/426230/what-is-the-ld-preload-trick . It has also been
referenced with that name in this blog post:
http://www.goldsborough.me/c/low-level/kernel/2016/08/29/16-48-53-the_-ld_preload-_trick/
) -->

