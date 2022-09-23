#!/bin/bash

[ $(pamixer --get-mute) == true ] && echo  && exit

vol="$(pamixer --get-volume)"

echo "$vol"