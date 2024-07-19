function set_p() {
  export HTTP_PROXY=$MY_HTTP_PROXY
  export HTTPS_PROXY=$MY_HTTPS_PROXY
  export NO_PROXY=$MY_NO_PROXY
  echo "http proxy set"
}

function unset_p() {
  export HTTP_PROXY=
  export HTTPS_PROXY=
  export NO_PROXY=
  echo "http proxy unset"
}

if [ "$USER_OPTION" = "set proxy" ]; then
  set_p
else
  unset_p
fi
