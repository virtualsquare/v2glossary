## userbindmount (v²)

It is a utility based on the libuserbindmount library, which provides support for bind mount in
user namespaces. If the operation is not permitted in the current namespace a new user namespace is
created.

For example, the command
```bash
    userbindmount /tmp/resolv.conf /etc/resolv.conf
```
mounts `/tmp/resolv.conf` instead of `/etc/resolv.conf`. This way we can redefine the name servers for
name resolution. Every access to `/etc/resolv.conf` will actually be an access to `/tmp/resolv.conf`
