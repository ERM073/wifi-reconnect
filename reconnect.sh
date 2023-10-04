#!/bin/bash

# 接続するSSID
SSID="SSID"
# インターフェイス名
INTERFACE="wlan0"
# パスワード
PASSWORD="password"

# 大元のwifiの使用状況を調べる
if ! nmcli radio wifi | grep -q "STATE: up"; then
    echo "大元のwifiがOFFになっています。ONにします。"
    sudo nmcli radio wifi on
fi

# 接続が切断されているか確認する
if ! nmcli d | grep -q "STATE: up"; then
    # 10秒待機
    sleep 10
    # 接続する
    echo "接続を再開します。"
    sudo nmcli device wifi connect "$SSID" password "$PASSWORD" ifname "$INTERFACE"
fi
