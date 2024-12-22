#!/bin/bash

# if folder isnt decleared
if [ $1 == null ]; then
    waypaper --backend swww --folder ~/.wallapepr/Professional --random
else 

    # if image is not selected
    if [ $2 == null ]; then
        waypaper --backend sww --folder $1 --random

    # if image is choosen
    else 
        waypaper --backend sww --wallpaper $2
    fi
fi


