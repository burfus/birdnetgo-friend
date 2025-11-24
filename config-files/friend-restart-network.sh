#!/bin/bash

/usr/bin/ping -c 1 1.1.1
received=$?
echo $received
if [[ $received -ne 0 ]] ; then
    /usr/bin/systemctl restart NetworkManager
fi
