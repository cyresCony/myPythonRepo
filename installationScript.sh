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
#didnt work properly
source ~/.bashrc

#Testing the installation
conda list

#Installing JupyterLab with Anaconda
conda install -c conda-forge jupyterlab

#Install node.js for JupyterLab Extensions
conda install nodejs

#Install jupyterlab-github Extension
jupyter labextension install @jupyterlab/github

#Install Django 2.1.7
conda install -c anaconda django

#Install TexLive base (minimal)
sudo apt-get install texlive-base

#Install TexStudio
sudo apt-get install texstudio

#Install GnuRadio
sudo apt-get install gnuradio

#Get my files
git clone https://github.com/cyresCony/myPythonRepo

