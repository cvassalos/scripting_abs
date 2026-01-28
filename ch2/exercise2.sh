#!/bin/bash

echo $(date)

while IFS= read -r line; do
  echo "$line"
done < <(who)

echo $(uptime)
