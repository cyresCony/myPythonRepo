#!/bin/bash

#Updating System
sudo apt-get update -y && sudo apt-get upgrade -y

#Download Anaconda from https://repo.continuum.io/archive/
cd /tmp/
wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh

#Compare Checksum with website
md5sum Anaconda3-2018.12-Linux-x86_64.sh

#Install Anaconda
bash Anaconda3-2018.12-Linux-x86_64.sh

#Activate installation
source ~/.bashrc

#Testing the installation
conda list

#Installing JupyterLab with Anaconda
conda install -c conda-forge jupyterlab

#Install node.js for JupyterLab Extensions
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs

#Install jupyterlab-github Extension
jupyter labextension install @jupyterlab/github
