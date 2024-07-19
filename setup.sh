source ~/.local/share/onekey-proxy/required/app-gum.sh >/dev/null
source ~/.local/share/onekey-proxy/choices.sh

for proxy in ~/.local/share/onekey-proxy/proxy/*.sh; do source $proxy; done
