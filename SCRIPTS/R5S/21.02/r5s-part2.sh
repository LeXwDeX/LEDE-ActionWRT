#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/HEXtoDEC/ActionWRT
# File name: r2s-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Add applications

# Theme Argon
rm -rf ./package/feeds/luci/luci-theme-argon
git clone -b master --depth=1 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon
git clone -b master --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/LEDE/g' package/base-files/files/bin/config_generate

# Clean build directory before compilation
rm -rf tmp/
