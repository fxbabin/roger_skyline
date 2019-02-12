# Debian install 

### Download debian 

```
https://www.debian.org/distrib/netinst

select

amd64
```

## Starting Iso

```
Run the vm

select debian iso
```

## Debian installation

### GUI

```
Install 
```

### Language

```
English
```

### Country

```
United States
```
### Keymap to use

```
American English
```

### Configure the network

```
Hostname: debian
```

### Domain name

```
None
```

### Root password + confirm

### Set up users and passwords

```
fbabin
```

### Select your timezone

```
Eastern
```

### Partitions

```
Manual

SCSI1 (sda)
Create new empty partition

pri/log
create a new partition
4.2 Gb -> Primary -> Beginning -> Ext4
2.4 Gb -> Primary -> End -> Ext4
2.0 Gb -> Primary -> End -> Swap Area

Finish partitioning and write changes to disk -> yes
```

### Use another CD
```
no
```
### Debian archive mirror
```
United States

ftp.us.debian.org

HTTP proxy: None
```
## Install running

### Participate in the survey
```
no
```
### Choose Software to Install 
```
SSH Server
```
### Install GRUB
```
yes
```