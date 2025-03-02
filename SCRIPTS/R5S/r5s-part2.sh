#!/bin/bash
#
# https://github.com/HEXtoDEC/ActionWRT
# File name: r2s-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Add applications

# # Passwall
# git clone -b packages --depth=1 https://github.com/xiaorouji/openwrt-passwall.git ./package/lean/passwall_package
# git clone -b luci --depth=1 https://github.com/xiaorouji/openwrt-passwall.git ./package/lean/passwall
# cp -rf ./package/lean/passwall_package/* ./package/lean/passwall
# rm -rf ./package/lean/passwall_package

# # Openclash
# git clone -b master --depth=1 https://github.com/vernesong/OpenClash.git ./package/lean/luci-app-openclash
# mkdir -p ./package/lean/openclash
# cp -rf ./package/lean/luci-app-openclash/luci-app-openclash/* ./package/lean/openclash
# rm -rf ./package/lean/luci-app-openclash

# Theme Argon
# rm -rf ./package/feeds/luci/luci-theme-argon
# git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon
# git clone -b master --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/LEDE/g' package/base-files/files/bin/config_generate

# Clean build directory before compilation
rm -rf tmp/
