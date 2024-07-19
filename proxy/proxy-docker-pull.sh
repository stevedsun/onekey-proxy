function set_p() {
  mkdir /etc/systemd/system/docker.service.d/
  touch /etc/systemd/system/docker.service.d/proxy.conf
  cat << EOF > /etc/systemd/system/docker.service.d/proxy.conf
  [Service]
  Environment="HTTP_PROXY=$HTTP_PROXY"
  Environment="HTTPS_PROXY=https://proxy.example.com:443"
  EOF

  sudo sytemctl daemon-reload
  sudo systemctl restart docker
  echo "docker pull proxy set"
}

function unset_p() {
  rm /etc/systemd/system/docker.service.d/proxy.conf
  sudo sytemctl daemon-reload
  sudo systemctl restart docker
  echo "docker pull proxy unset"
}

if [ "$USER_OPTION" = "set proxy" ]; then
  set_p
else
  unset_p
fi
