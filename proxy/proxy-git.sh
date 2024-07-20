#!/bin/bash
git config --global http.proxy $HTTP_PROXY
git config --global https.proxy $HTTPS_PROXY
echo "Git proxy set"
