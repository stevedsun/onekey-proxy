function set_p() {
  git config --global http.proxy $HTTP_PROXY
  git config --global https.proxy $HTTPS_PROXY
  echo "git proxy set"
}

function unset_p() {
  git config --global --unset http.proxy
  git config --global --unset https.proxy
  echo "git proxy unset"
}

if [ "$USER_OPTION" = "set proxy" ]; then
  set_p
else
  unset_p
fi
