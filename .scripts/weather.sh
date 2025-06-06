#!/bin/bash

firstry=$(curl wttr.in | grep -m 1 "°C")
echo ${firstry} | sed 's/( )\.//' |sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"

# sed (2) does delte the color(s) pattern
