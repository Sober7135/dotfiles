#!/bin/bash

name=$HOME/.config/nvim
backup_name=$HOME/.config/nvim.bak
if [ -d $name ];
then
  mv $name $backup_name
elif [ -d $backup_name ];
then 
  mv $backup_name $name
fi
