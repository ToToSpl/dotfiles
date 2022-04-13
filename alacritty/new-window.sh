#!/bin/bash
# To run alacritty efficiently, we want only one instance.
# This script checks if alacritty is running and if so, launches new window else a new instance

pidof alacritty > /dev/null
if [ $? -eq 0 ]
then
	alacritty msg create-window
else
	alacritty
fi
