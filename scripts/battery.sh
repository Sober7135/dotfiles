#!/bin/bash
# 100  0+  10+  20+  30+  40+  50+  60+  70+  80+  90+
#                                             
capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
# charging
if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Charging" ]; then
  echo $capacity && exit
fi

if [ $capacity -eq 100 ]; then
  echo $capacity
elif [ $capacity -ge 90 ]; then
  echo $capacity
elif [ $capacity -ge 80 ]; then
  echo $capacity
elif [ $capacity -ge 70 ]; then
  echo $capacity
elif [ $capacity -ge 60 ]; then
  echo $capacity
elif [ $capacity -ge 50 ]; then
  echo $capacity
elif [ capacity -ge 40 ]; then
  echo $capacity
elif [ capacity -ge 30 ]; then
  echo $capacity
elif [ $capacity -ge 20 ]; then
  echo $capacity
elif [ $capacity -ge 10 ]; then
  echo $capacity
else
  echo $capacity
fi
