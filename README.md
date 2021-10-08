# CloudBD-PA2577-RashidDarwish

## Summary of Commands:

### Create a new configuration
$ vagrant init bento/ubuntu-18.04 

### Start vagrant & shh
$ vagrant up && vagrant ssh

### Installed versions & exist
$ node --version && npm --version

### Exit Vagrant Virtual Machine
$ exit

## Destroy vagrants / Clean up 
$ vagrant destroy -f

### Add a box (a virtual machine image) without attaching it to any particular configuration
vagrant box add bento/ubuntu-18.04

## Status active Vagrant environments
$ vagrant global-status

 ### Add a box (a virtual machine image) without attaching it to any particular configuration
$ vagrant box add bento/ubuntu-18.04

###
/usr/bin/apt install --reinstall ca-certificates