#! /bin/bash
BAT=$(sensors | grep Tdie | grep -Eo --color "[0-9]{2}")
echo "CPU $BAT C"
