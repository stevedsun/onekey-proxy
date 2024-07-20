sudo mkdir /etc/systemd/system/docker.service.d/
cd /etc/systemd/system/docker.service.d/
sudo touch proxy.conf
sudo cat <<EOF >"proxy.conf"
[Service]
Environment="HTTP_PROXY=${HTTP_PROXY}"
Environment="HTTPS_PROXY=${HTTPS_PROXY}"
EOF

sudo sytemctl daemon-reload
sudo systemctl restart docker
echo "docker pull proxy set"
