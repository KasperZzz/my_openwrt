# Принудительно отключаем Xray, так как Sing-box более универсален и экономит место
echo "CONFIG_PACKAGE_xray-core=n" >> .config

# Отключаем встроенный в LEDE софт, который дублирует функции и занимает место
echo "CONFIG_PACKAGE_luci-app-ssr-plus=n" >> .config
echo "CONFIG_PACKAGE_luci-app-vssr=n" >> .config

# Добавляем поддержку русского языка для интерфейса (по желанию)
echo "CONFIG_LUCI_LANG_ru=y" >> .config
