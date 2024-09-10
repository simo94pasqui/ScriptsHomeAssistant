#!/bin/bash

cmdCatt="/home/pi/.local/bin/catt"
deviceCucina="192.168.178.104"

if ! $cmdCatt -d $deviceCucina info | grep 'display_name: DashCast'; then
    $cmdCatt -d $deviceCucina volume 0
    $cmdCatt -d $deviceCucina cast_site http://192.168.178.232:10014/lovelace/default_view
fi