# Set up a static ip

## Connect to 42 network (optionnal) 

vm -> settings -> network -> connection_bridge

## Modify /etc/network/interfaces

```
iface enp0s3 inet static
	address 10.12.2.144		# 10.1<cluster>.XX.XX
	netmask 255.255.255.252	# /30 netmask
	gateway 10.12.254.254	# 42 gateway 10.1<cluster>.254.254
```

## Modify /etc/resolv.conf to add

```
nameserver 8.8.8.8
nameserver 8.8.4.4
```

## restart network

```
service networking restart
ifup enp0s3
reboot
```