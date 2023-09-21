#!/bin/bash

# TODO: Check if $CONFIGS is set - maybe do this in a high level script
sudo apt install -y unbound
sudo -E ln $CONFIGS/unbound/unbound.conf.d/pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf
