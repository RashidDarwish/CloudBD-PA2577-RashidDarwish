# CloudBD-PA2577-RashidDarwish

## Summary of Commands:

### Create a new configuration
vagrant init bento/ubuntu-18.04 

### Start vagrant & shh
$ vagrant up && vagrant ssh

### Installed versions & exist
vagrant@precise64:~$ node --version && npm --version

### Exit Vagrant Virtual Machine
vagrant@precise64:~$ exit

## Destroy vagrants / Clean up 
$ vagrant destroy -f

### Add a box (a virtual machine image) without attaching it to any particular configuration
vagrant box add bento/ubuntu-18.04