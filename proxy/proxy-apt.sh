#!/bin/bash

filename="/tmp/apt-proxy.conf"
target_path="/etc/apt/apt.conf.d/"
target_file="/etc/apt/apt.conf.d/proxy.conf"

sudo mkdir -p $target_path
touch $filename

if cat <<EOF >"$filename" 2>/dev/null; then
  Acquire::http::Proxy "${HTTP_PROXY}";
  Acquire::https::Proxy "${HTTPS_PROXY}";
EOF
  echo "write successfully"
else
  echo "write failed, try sudo..."
  sudo cat <<EOF >"$filename"
  Acquire::http::Proxy "${HTTP_PROXY}";
  Acquire::https::Proxy "${HTTPS_PROXY}";
EOF
  echo "sudo write successfully"
fi

if [ -e "$target_file" ]; then
  echo "file exists, remove it"
  sudo rm $target_file
fi

sudo mv $filename $target_file
sudo chmod 644 $target_file

echo "Apt proxy set"
