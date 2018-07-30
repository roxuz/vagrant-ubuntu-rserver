#!/bin/bash

sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

sudo apt-get update
sudo apt-get install r-base r-base-dev
sudo apt-get install gdebi-core

wget https://download2.rstudio.org/rstudio-server-1.1.456-amd64.deb
sudo gdebi -n rstudio-server-1.1.456-amd64.deb
sudo rstudio-server verify-installation
