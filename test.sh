#!/bin/bash


PROFILE="generic"

PACKAGES="$PACKAGES luci-app-ssr-plus"

PACKAGES="$PACKAGES luci-i18n-passwall-zh-cn"

PACKAGES="$PACKAGES luci-i18n-turboacc-zh-cn"



# 宽带监控 Nlbwmon
# PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn"

# 界面翻译补全
# PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn luci-i18n-turboacc-zh-cn"

# Packages 文件夹下的 ipk 包
# PACKAGES="$PACKAGES luci-i18n-wrtbwmon-zh-cn"

# OpenSSH
PACKAGES="$PACKAGES openssh-server openssh-client"
# Netdata 系统监控界面
# PACKAGES="$PACKAGES netdata"

# 一些自定义文件
FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
