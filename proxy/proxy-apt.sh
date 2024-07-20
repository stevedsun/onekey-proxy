sudo mkdir -p /etc/apt/apt.conf.d/
cd /etc/apt/apt.conf.d/
sudo touch proxy.conf
sudo cat <<EOF >"proxy.conf"
[Service]
  Acquire::http::Proxy "${HTTP_PROXY}"
  Acquire::https::Proxy "${HTTPS_PROXY}"
EOF
cd -
echo "apt proxy set"
