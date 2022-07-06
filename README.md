## Vagrant box: Ubuntu 16.04 running *rstudio-server* on Windows

Install [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox version 5.1](https://www.virtualbox.org/wiki/Download_Old_Builds_5_1) for Windows (important as most recent release is not supported by Vagrant).

For all following steps, you could use the [GitHub Desktop](https://desktop.github.com/) shell or similar ([Cmder](http://cmder.net/)) on Windows.

```bash
# clone this repository and cd 
git clone https://github.com/esteinig/vagrant-ubuntu-rserver && cd vagrant-ubuntu-rserver

# boot and ssh into vm
vagrant up && vagrant ssh

# manual config of vm
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

# https://stackoverflow.com/questions/10255082/installing-r-from-cran-ubuntu-repository-no-public-key-error
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9


sudo apt-get -y update
sudo apt-get install -y r-base r-base-dev
sudo apt-get install -y gdebi-core

wget https://download2.rstudio.org/rstudio-server-1.1.456-amd64.deb
sudo gdebi -n rstudio-server-1.1.456-amd64.deb

# disconnect
exit
```

Start `RStudio` in your web-browser by navigating to `localhost:8787`. Enter username: `vagrant` and password: `vagrant`.

#### Vagrant box (ubuntu/xenial64)
---

Once the VM is booted you can enter it with `vagrant ssh`, leave with `exit` and shut it down with `vagrant halt`. Please note that this box is provisioned with 4096 MB RAM and 2 processors, so memory- or processor-intensive code in R is not really supported. You can change these provisions in the `Vagrantfile`, when the box is shut down. To restart after changing the Vagrantfile, you can use `vagrant up --no-provisions`. You can see the forwarding port (`8787` on host and guest) with `vagrant port`. Files can be transferred into the VM in the same directory in which the `Vagrantfile` is located (on Windows) and in the `/host` directory of the VM. 

