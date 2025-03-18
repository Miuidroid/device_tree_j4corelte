#! /vendor/bin/sh

# ZRAM Starter
echo "deflate" > /sys/block/zram0/comp_algorithm
echo "8" > /sys/block/zram0/max_comp_streams
mkswap /dev/block/zram0
swapon /dev/block/zram0
