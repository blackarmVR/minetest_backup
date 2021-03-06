#!/bin/sh

executable="/home/mineclone2/minetest-stable/bin/minetestserver"
configfile="/home/mineclone2/mineclone2.conf"
logfile="/home/mineclone2/mineclone2.log"

$executable --config $configfile --logfile $logfile
