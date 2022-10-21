#!/bin/bash
echo $@ >> /sys/class/backlight/amdgpu_bl0/brightness
exit
