#!/bin/bash
#
# https://github.com/HEXtoDEC/ActionWRT
# File name: imm-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add SSRP feed source
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
