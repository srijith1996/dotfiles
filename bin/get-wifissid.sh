#!/bin/bash

iwconfig 2>/dev/null | grep ESSID | awk -F'"' '{print $2}'
