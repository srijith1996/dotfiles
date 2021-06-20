#!/bin/bash

updates=$(dnf list upgrades 2>/dev/null | wc -l)
updates=$(echo "$updates - 1" | bc -l)
echo $updates
