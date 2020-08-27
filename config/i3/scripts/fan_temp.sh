#!/bin/bash
BAT=$(echo "akash" | sudo -S OpenCorsairLink.elf --device 0  | grep "Temperature" | egrep -Eo "[0-9]{2}.[0-9]{2}")
echo "FAN $BAT C"
