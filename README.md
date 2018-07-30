# Tutorials

Hitchhiker's guide to a galaxy of painful installations - now in your system!

# Vagrant for running Ubuntu 16.04 with RStudio on Windows

Install [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox version 5.1](https://www.virtualbox.org/wiki/Download_Old_Builds_5_1) for Windows (important as most recent release is not supported by Vagrant).

For all following steps, use the GitHub shell (`MINGW64`) or similar on Windows.

```
# Make a new directory for the VM

cd $HOME

mkdir vagrant/ubuntu-xenial
cd vagrant/ubuntu-xenial

# Create the Vagrantfile

vagrant init ubuntu/xenial64

# Edit the generated Vagrantfile in your favourite editor:






```
