#!/bin/sh

executable='/home/mineclone2/minetestmapper/minetestmapper'
mapfile='/var/www/html/map.png'
colorfile='/home/mineclone2/minetestmapper/mineclone2mapper/colors.txt'

# clear old files from /tmp
while [ -f /tmp/map.sqlite ]
do
	rm /tmp/map.sqlite
done

# copy files to /tmp
backup='false'
while [ $backup = 'false' ]
do
	if sqlite3 /home/mineclone2/.minetest/worlds/mineclone2/map.sqlite ".backup /tmp/map.sqlite"
	then
		backup='true'
		echo "backup worked"
	else 
		echo "backup failed, retrying"
	fi
done

cp /home/mineclone2/.minetest/worlds/mineclone2/world.mt /tmp

# generate map
$executable -i /tmp/ -o $mapfile --colors $colorfile --zoom 1
