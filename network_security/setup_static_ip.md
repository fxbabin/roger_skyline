# Set up a static ip

## Connect to 42 network

vm -> settings -> network -> connection_bridge

## Modify /etc/network/interfaces

```
iface enp0s3 inet static
	address 10.13.2.144     # 10.1<cluster>.XX.XX
	netmask 255.255.255.252 # /30 netmask
	gateway 10.13.254.254   # 42 gateway 10.1<cluster>.254.254
```

### Restart network and check ip
 
```
sudo service networking restart
ip addr
```