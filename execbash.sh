#!/bin/bash
wget https://downloads.rclone.org/v1.58.1/rclone-v1.58.1-linux-amd64.zip && unzip -j -d . rclone-v1.58.1-linux-amd64.zip -x "*.txt" "*.html" "*.1" && chmod 777 rclone
wget https://pkgs.tailscale.com/stable/tailscale_1.26.1_amd64.tgz && tar xvf tailscale_1.26.1_amd64.tgz && cd tailscale_1.26.1_amd64 && chmod 777 *
wget https://github.com/userdocs/qbittorrent-nox-static/releases/download/release-4.4.3.1_v2.0.6/x86_64-qbittorrent-nox && chmod 777 x86_64-qbittorrent-nox
{COUNT=1
SERVER_URL="http://${APP_NAME}.herokuapp.com"

while true; do
  STATUS_CODE=$(curl -Is "$SERVER_URL" | grep HTTP | cut -d ' ' -f2)
  echo "[ INFO ] SERVER PINGED $COUNT. $SERVER_URL - $STATUS_CODE"
  COUNT=$((COUNT + 1))
  sleep 600
done}&>/dev/null &