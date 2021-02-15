#!/bin/bash

# Taken from https://stackoverflow.com/questions/17291233/how-to-check-internet-access-using-bash-script-in-linux
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
        echo "Online" > /dev/null
else
        shutdown now
fi
