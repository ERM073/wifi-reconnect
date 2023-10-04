# wifi-reconnect
無線LAN接続している貧弱なUbuntuサーバー向けShellスクリプト

# なにこれ？

このスクリプトは、無線LANが切断された場合に自動で再接続するスクリプトです。

諸事情で無線LANしか使えないネット環境でUbuntuサーバー運用している人向け

WiFi接続が解除されたり、回線が不安定な時にcronで定期実行することで安定性を保ちます。

## 使い方

1. SSID、インターフェイス名、パスワードを設定します。
2. スクリプトを実行します。

## 設定

SSID、インターフェイス名、パスワードは、スクリプトの冒頭で定義します。

SSID="SSID"

INTERFACE="wlan0"

PASSWORD="password"

インターフェイス名は ifconfig コマンドで確認できます。

## 実行

スクリプトを実行するには、以下のコマンドを実行します。

chmod +x reconnect.sh

./reconnect.sh
