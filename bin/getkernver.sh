#!/bin/bash

uname -r | awk -F'.' '{printf("%s.%s.%s\n", $1, $2, $3)}' | awk -F'-' '{print $1}'
