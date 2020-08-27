#! /bin/bash
BAT=$(nvidia-smi | egrep -Eo "[0-9]{3}MiB / | [0-9]{4}MiB / | [0-9]{5}MiB /" |       egrep -Eo "[0-9]{3}| [0-9]{4} | [0-9]{5}")
BAT=$((${BAT}*100))
BAT=$((${BAT}/8192))
echo " GPU $BAT %"
