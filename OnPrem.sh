#!/bin/bash

## Replaces VDC VMs' default .bashrc with the one in Adam's VDC repo

[[ ! -f ~/.bashrc.orig ]] && cp -p ~/.bashrc ~/.bashrc.orig
curl --silent https://raw.githubusercontent.com/Araffe/vdc-networking-lab/master/.bashrc > ~/.bashrc && source ~/.bashrc