## vu\_insmod (v²)

It allows for the loading of a module to support some type of virtualization. Can be launched from a
process virtualized by umvu.

For example, suppose you want to virtualize file system mounting. You would use, for example in a
virtualized istance of xterm, the following command

    vu_insmod vufuse
