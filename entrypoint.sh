#!/bin/bash
set -e

echo "Welcome to the oc tools container"
oc version

x=0
while true
do
 echo "docker kill to stop me"
 sleep 30
 x=$((x+30))
 echo "+30 more seconds = Total" + $x + " seconds"
done
