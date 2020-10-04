#!/usr/bin/env bash

#sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -S

yes Y  | sudo cp access.conf /etc/fwknop/
yes Y  | sudo cp fwknopd.conf /etc/fwknop/
yes Y  | sudo cp gate_sdp_ctrl_client.conf /etc/fwknop/
yes Y  | sudo cp gate.fwknoprc /etc/fwknop/

fwknopd -f 
#netcat -l 4444
while true; do
    sleep 100
done
