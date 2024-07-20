#!/bin/bash

source ~/.bashrc

echo ${HTTP_PROXY}
echo ${HTTPS_PROXY}

for script in proxy/*.sh; do source $script; done
