#! /bin/bash
BAT=$(nvidia-smi | grep -Eo --color "[0-9]{2}C" | grep -Eo --color "[0-9]{2}")
echo "GPU $BAT C"
