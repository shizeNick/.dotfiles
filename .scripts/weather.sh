#!/bin/bash
location=$(curl ifconfig.co/city)
firstry=$(curl wttr.in/${location} | grep -m 1 "°C")
echo ${firstry} | sed 's/( )\.//' | sed 's/,\\_//' | sed 's/_ \/""//' | sed 's/\.-\. //' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"
# sed 1-3 for cancel the cloud and sun markdown
# sed (4) does delte the color(s) pattern
