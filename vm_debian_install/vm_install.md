## VM installaton

### Name and operating system

```
Name : vm_fbabin
Type : Linux
Version : Debian (64-bits)
```
### Memory size
```
2048 Mb
```
### Hard Disk
```
select "create a virtual hard disk now"
```
### Hard Disk file type
```
VDI (VirtualBox Disk Image)
```
### Storage 
```
Fixed size
```
### File location and size
```
/sgoinfre/goinfre/Perso/fbabin/vm_fbabin.vdi

8 Gb
```

## Network setup

### On the virtual machine

#Allow root connexion
Allow pubkey

set sudo user
import ecdsa key


### NAT and port forwarding

Forward port 2222 of host to port 22 of guest (ssh)

```
VBoxManage modifyvm "fbabin_vm" --natpf1 "guestssh,tcp,,2222,,22"
```

Then you can connect with

```
ssh -p 2222 fbabin@127.0.0.1
```

### Bridge adapter

If you want to be connected to the 42 network a bridge adapter

Settings -> network -> bridge adapter (connection between host and vm)
(-> en0)

Static ip and gateway will correspond to your current cluster:

| Cluster | ip | gateway |
| --- | --- | --- |
| 1 | 10.11.X.X | 10.11.254.254 |
| 2 | 10.12.X.X | 10.12.254.254 |
| 3 | 10.13.X.X | 10.13.254.254 |

For bridge adapter default ip is 10.13.0.254

else for your static ip, you will have the default one for virtualbox (10.0.2.X)