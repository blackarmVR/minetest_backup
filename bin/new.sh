#!/bin/sh

executable="/home/mineclone2/minetest-stable/bin/minetestserver"
configfile="/home/mineclone2/new_server.conf"
logfile="/home/mineclone2/w.log"

$executable --config $configfile --logfile $logfile --gameid MineClone2
