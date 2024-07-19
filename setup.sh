sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git

for proxy in ~/.local/share/onekey-proxy/proxy/*.sh; do source $proxy; done
