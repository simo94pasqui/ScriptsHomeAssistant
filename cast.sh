#!/bin/bash

cmdCatt="/home/pi/.local/bin/catt"

while true
do
  if ! $cmdCatt -d "Cucina" status | grep 'PLAYING'; then 
      $cmdCatt -d "Cucina" volume 0
      $cmdCatt -d "Cucina" cast_site http://192.168.178.232:10014/lovelace/default_view
  fi
  sleep 60
done
