#!/bin/bash
#
# https://github.com/HEXtoDEC/ActionWRT
# File name: x86-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add SSRP feed source
# sed -i "/helloworld/d" "feeds.conf.default"
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

# Add PassWall feeds
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
