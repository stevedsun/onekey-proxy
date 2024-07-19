function set_p() {
  mkdir -p /etc/apt/apt.conf.d/
  touch /etc/apt/apt.conf.d/proxy.conf
  echo "apt proxy set"
}

function unset_p() {
  rm /etc/apt/apt.conf.d/proxy.conf
  echo "apt proxy unset"
}

if [ "$USER_OPTION" = "set proxy" ]; then
  set_p
else
  unset_p
fi
