#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install --install-recommends linux-generic-hwe-18.04
sudo reboot
