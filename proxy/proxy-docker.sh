#!/bin/bash

filename="/tmp/docker-proxy.conf"
target_path="/etc/systemd/system/docker.service.d/"
target_file="/etc/systemd/system/docker.service.d/proxy.conf"

sudo mkdir -p $target_path
touch $filename

if cat <<EOF >"$filename" 2>/dev/null; then
[Service]
Environment="HTTP_PROXY=${HTTP_PROXY}"
Environment="HTTPS_PROXY=${HTTPS_PROXY}"
EOF
  echo "write successfully"
else
  echo "write failed, try sudo..."
  sudo cat <<EOF >"$filename"
[Service]
Environment="HTTP_PROXY=${HTTP_PROXY}"
Environment="HTTPS_PROXY=${HTTPS_PROXY}"
EOF
  echo "sudo write successfully"
fi

if [ -e "$target_file" ]; then
  echo "file exists, remove it"
  sudo rm $target_file
fi

sudo mv $filename $target_file
sudo chmod 644 $target_file

sudo systemctl daemon-reload
sudo systemctl restart docker
echo "Docker proxy set"
