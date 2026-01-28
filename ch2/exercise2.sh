#!/bin/bash

echo "==DATE=="
echo $(date)
echo

echo "==USERS=="
while IFS= read -r line; do
  echo "$line"
done < <(who)
echo

echo "==CURRENT UPTIME=="
echo $(uptime)
