#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
#

# Удаляем встроенный helloworld (если он есть), чтобы избежать конфликтов
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Добавляем правильные и полные ссылки на репозитории
echo 'src-git passwall_packages https://github.com' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com' >>feeds.conf.default
echo 'src-git zapret https://github.com' >>feeds.conf.default
