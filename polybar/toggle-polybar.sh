#!/bin/bash

# Check if Polybar is running
if pgrep -x "polybar" > /dev/null; then
then
    # If running, kill all Polybar instances
    pkill -q polybar
else
    # If not running, launch Polybar
    polybar bar1 &
fi

