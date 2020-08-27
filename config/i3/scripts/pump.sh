#!/bin/bash
BAT=$(echo "akash" | sudo -S OpenCorsairLink.elf --device 0  | grep "Pump:" -A 1 | egrep -Eo "[0-9]{3} | [0-9]{4}")
echo "☯ PUMP $BAT RPM"
