#! /bin/bash
BAT=$(free -m | grep Mem | awk '{print ($3)}')
BAT=$((${BAT}*100))
BAT=$((${BAT}/16022))
echo " RAM $BAT %"
