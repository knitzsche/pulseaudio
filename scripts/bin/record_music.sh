#!/bin/bash

# Pull GPIO 21 High
# gpio is already exported by gadget snap
# echo 408 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio408/direction
echo 1 > /sys/class/gpio/gpio408/value

echo "^^^^^mic initialised^^^^^"
