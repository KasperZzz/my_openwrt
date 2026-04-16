#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# Настройка модели
echo "CONFIG_TARGET_mediatek=y" >>.config
echo "CONFIG_TARGET_mediatek_filogic=y" >>.config
echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cudy_wr3000-v1=y" >>.config

# Пакеты
echo "CONFIG_PACKAGE_luci-app-passwall=y" >>.config
echo "CONFIG_PACKAGE_sing-box=y" >>.config
echo "CONFIG_PACKAGE_zapret=y" >>.config
echo "CONFIG_PACKAGE_luci-app-zapret=y" >>.config

# Удаляем лишнее для экономии места
echo "CONFIG_PACKAGE_wpad-openssl=n" >>.config
echo "CONFIG_PACKAGE_wpad-basic-mbedtls=y" >>.config
