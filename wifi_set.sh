#!/bin/bash

case $(nmcli networking connectivity) in
    "full")
        echo "网络连接成功，可上网"
        ;;
    "limited")
        echo "网络连接成功，但不可上网"
        ;;
    "portal")
        echo "网络连接成功，需要登录认证后才可上网"
        ;;
    "none")
        echo "网络已断开"
        ;;
    "unknown")
        echo "未知错误"
        ;;
    *)
        ;;
esac

read -p "Enter your WIFI SSID: " wifi_ssid
read -p "Enter your WIFI Password: " wifi_password
#连接wifi
nmcli device wifi connect "$wifi_ssid" password "$wifi_password" 

# 检查连接状态
if [ $? -eq 0 ]; then
    echo "WiFi连接成功"
else
    echo "WiFi连接失败"
fi
