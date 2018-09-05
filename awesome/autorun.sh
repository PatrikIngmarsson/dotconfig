#!/usr/bin/env bash

setxkbmap -layout "us,se"

exec xautolock -detectsleep -time 10 -locker "i3lock" 
