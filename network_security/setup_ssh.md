# Set up ssh on vm

## Change ssh port in /etc/ssh/sshd_config

```
port 54321
```

Restart machine

## Connect to the vm through ssh

```
ssh fbabin@10.13.2.144 -p 54321
```