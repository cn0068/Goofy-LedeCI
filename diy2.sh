
#!/bin/bash
# 本脚本工作目录必须是git仓库的主目录

cd package/lean/
#删除会被替换或者占用安装资源的包
rm -rf luci-theme-argon
rm -rf luci-app-diskman
rm -rf luci-app-wrtbwmon
rm -rf qBittorrent
rm -rf luci-app-qbittorrent
rm -rf qt5
rm -rf rblibtorrent
svn co https://github.com/openwrt/luci/trunk/applications/luci-app-acme
git clone https://github.com/lisaac/luci-app-diskman
git clone https://github.com/brvphoenix/luci-app-wrtbwmon
git clone https://github.com/brvphoenix/wrtbwmon
git clone https://github.com/lisaac/luci-app-dockerman
git clone https://github.com/goofysun/r8125
git clone https://github.com/ElonH/Rclone-OpenWrt && mv -f Rclone-OpenWrt/* ./
git clone https://github.com/goofysun/luci-app-baidupcs-web
git clone https://github.com/rufengsuixing/luci-app-adguardhome
git clone https://github.com/goofysun/openwrt-adguardhome
git clone https://github.com/honwen/luci-app-aliddns
git clone https://github.com/jerrykuku/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr
git clone https://github.com/jerrykuku/luci-theme-argon
git clone https://github.com/pymumu/luci-app-smartdns -b lede
cd ../../

# Add some default settings
cp -rf ../zzz-default-settings  package/lean/default-settings/files/zzz-default-settings
./scripts/feeds install -a
# rm -rf package/feeds/kenzo/luci-app-adguardhome
# rm -rf package/feeds/kenzo/adguardhome
# rm -rf package/feeds/kenzo/luci-app-aliddns
