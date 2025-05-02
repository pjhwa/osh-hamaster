#!/bin/bash

banner "k4 reboot"
ssh citec@172.16.2.161 "sudo reboot"
banner "k3 reboot"
ssh citec@172.16.2.223 "sudo reboot"
banner "k2 reboot"
ssh citec@172.16.2.52 "sudo reboot"
banner "k1 reboot"
ssh citec@172.16.2.149 "sudo reboot"
