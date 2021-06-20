#!/bin/bash

dev=$(bluetoothctl info)
if [ "$dev" = "Missing device address argument" ]; then
  echo "N/A"
else
  devname=$(echo "$dev" | grep "Name:" | awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}')
  echo $devname
fi
