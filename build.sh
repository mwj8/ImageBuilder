#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES=""

# 状态组件

# Netdata 系统监控界面
PACKAGES="$PACKAGES luci-i18n-netdata-zh-cn"
# 释放内存
PACKAGES="$PACKAGES luci-i18n-ramfree-zh-cn"

# 常用主题

# Argon 主题
# PACKAGES="$PACKAGES luci-theme-argon"
PACKAGES="$PACKAGES luci-theme-material"

# 常用系统管理组件

# web管理
PACKAGES="$PACKAGES luci-i18n-webadmin-zh-cn"
# Diskman 磁盘管理
PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn"
# CPU 占用限制
# PACKAGES="$PACKAGES luci-i18n-cpulimit-zh-cn"
# collectd 统计
# PACKAGES="$PACKAGES luci-i18n-statistics-zh-cn"
# ttyd终端
PACKAGES="$PACKAGES luci-i18n-ttyd-zh-cn"
# 定时重启
PACKAGES="$PACKAGES luci-i18n-autoreboot-zh-cn"

# 常用软件服务

# ssr-plus代理
PACKAGES="$PACKAGES luci-i18n-ssr-plus-zh-cn"
# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"
# Passwall 代理
PACKAGES="$PACKAGES luci-i18n-passwall-zh-cn chinadns-ng hysteria naiveproxy xray-plugin"
# frp 和 nps 内网穿透
PACKAGES="$PACKAGES luci-i18n-nps-zh-cn luci-i18n-frpc-zh-cn"
# upnp端口自动转发
PACKAGES="$PACKAGES luci-i18n-upnp-zh-cn"
# 阿里云盘webdav
PACKAGES="$PACKAGES luci-i18n-aliyundrive-webdav-zh-cn"
# 动态dns
PACKAGES="$PACKAGES luci-i18n-ddns-zh-cn"
# 微信推送
PACKAGES="$PACKAGES luci-app-serverchan"
# pushbot
# PACKAGES="$PACKAGES luci-app-pushbot"
# adguardhome
# PACKAGES="$PACKAGES luci-app-adguardhome"
# smartdns
PACKAGES="$PACKAGES luci-i18n-smartdns-zh-cn"
# watchcat
PACKAGES="$PACKAGES luci-i18n-watchcat-zh-cn"
#wake on lan
PACKAGES="$PACKAGES luci-i18n-wol-zh-cn"

# 常用的网络存储组件

# 文件助手
PACKAGES="$PACKAGES luci-app-fileassistant"
# 硬盘休眠
PACKAGES="$PACKAGES luci-i18n-hd-idle-zh-cn"
# p910nd 打印服务器
# PACKAGES="$PACKAGES luci-i18n-p910nd-zh-cn"
# GoWebDav
# PACKAGES="$PACKAGES luci-i18n-gowebdav-zh-cn"
# Samba 网络共享
PACKAGES="$PACKAGES luci-i18n-samba4-zh-cn"
# qBittorrent 下载器
PACKAGES="$PACKAGES luci-i18n-qbittorrent-zh-cn"
# Aria2 下载器
# PACKAGES="$PACKAGES luci-i18n-aria2-zh-cn"
# FTP 服务器
# PACKAGES="$PACKAGES luci-i18n-vsftpd-zh-cn"
# NFS 管理
PACKAGES="$PACKAGES luci-i18n-nfs-zh-cn"
# alist
PACKAGES="$PACKAGES luci-i18n-alist-zh-cn"

# Docker 组件
# PACKAGES="$PACKAGES luci-i18n-dockerman-zh-cn luci-i18n-docker-zh-cn docker-compose"

# VPN 类

# openvpn
PACKAGES="$PACKAGES luci-i18n-openvpn-server-zh-cn"
# Zerotier
PACKAGES="$PACKAGES luci-i18n-zerotier-zh-cn"
# Wireguard
PACKAGES="$PACKAGES luci-i18n-wireguard-zh-cn"

# 网络组件

# EQoS 网速控制
PACKAGES="$PACKAGES luci-i18n-eqos-zh-cn"
# 多线多拨与负载均衡
# PACKAGES="$PACKAGES luci-app-syncdial luci-i18n-mwan3-zh-cn luci-i18n-mwan3helper-zh-cn"
# 宽带监控 Nlbwmon
PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn"
# ip/mac 绑定
PACKAGES="$PACKAGES luci-i18n-arpbind-zh-cn"
# 流量智能队列管理(QOS)
PACKAGES="$PACKAGES luci-i18n-sqm-zh-cn"
# Turbo ACC 网络加速
PACKAGES="$PACKAGES luci-i18n-turboacc-zh-cn kmod-tcp-bbr "
# socat
PACKAGES="$PACKAGES luci-i18n-socat-zh-cn"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn luci-i18n-filetransfer-zh-cn"

# Packages 文件夹下的 ipk 包
PACKAGES="$PACKAGES luci-i18n-wrtbwmon-zh-cn"

# 一些自己需要的内核组件
# PACKAGES="$PACKAGES kmod-usb-printer kmod-lp"
PACKAGES="$PACKAGES kmod-usb3"

# 一些其他可能有用的包

# zsh 终端
# PACKAGES="$PACKAGES zsh"
# Vim Nano完整版，带语法高亮
PACKAGES="$PACKAGES vim-fuller nano-plus"
# X/Y/ZMODEM 文件传输
# PACKAGES="$PACKAGES lrzsz"
# OpenSSH
PACKAGES="$PACKAGES openssh-sftp-client openssh-sftp-server"
# ipv6
PACKAGES="$PACKAGES ipv6helper ip6tables-extra ip6tables-mod-nat"

PACKAGES="$PACKAGES iperf3 htop"

#去除
PACKAGES="$PACKAGES -samba36-server"

# 一些自定义文件
FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
# DISABLED_SERVICES="dockerd"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
