## Vagrant box: Ubuntu 16.04 running *rstudio-server* on Windows

Install [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox version 5.1](https://www.virtualbox.org/wiki/Download_Old_Builds_5_1) for Windows (important as most recent release is not supported by Vagrant).

For all following steps, you could use the [GitHub Desktop](https://desktop.github.com/) shell or similar ([Cmder](http://cmder.net/)) on Windows.

```bash
# clone this repository and cd 
git clone https://github.com/esteinig/vagrant-ubuntu-rserver && cd vagrant-ubuntu-server

# boot and ssh into vm
vagrant up && vagrant ssh

# manual config of vm
bash /host/config.sh

# add a user for non-root access to RStudio
sudo useradd -m -p <password> <user>

# disconnect
exit
```

Start `RStudio` in your web-browser by navigating to `localhost:8787` (on the local network `192.0.0.1`) and enter your username and password.

#### Vagrant box (ubuntu/xenial64)
---

Once the VM is booted you can enter it with `vagrant ssh`, leave with `exit` and shut it down with `vagrant halt`. Pleae not that this box is provisioned with 4096 MB RAM and 2 processors, so memory- or processor-intensive code in R is not really supported. You can change these provisions in the `Vagrantfile`, when the box is shut down. To restart after changing the Vagrantfile, you can use `vagrant up --no-provisions`. You can see the forwarding port (`8787` on host and guest) with `vagrant port`. Files can be transferred into the VM in the same directory in which the `Vagrantfile` is located (on Windows) and in the `/host` directory of the VM. 

