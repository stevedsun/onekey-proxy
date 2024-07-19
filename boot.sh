set -e

ascii_art=' _______  __    _  _______  ___   _  _______  __   __    _______  ______    _______  __   __  __   __ 
|       ||  |  | ||       ||   | | ||       ||  | |  |  |       ||    _ |  |       ||  |_|  ||  | |  |
|   _   ||   |_| ||    ___||   |_| ||    ___||  |_|  |  |    _  ||   | ||  |   _   ||       ||  |_|  |
|  | |  ||       ||   |___ |      _||   |___ |       |  |   |_| ||   |_||_ |  | |  ||       ||       |
|  |_|  ||  _    ||    ___||     |_ |    ___||_     _|  |    ___||    __  ||  |_|  | |     | |_     _|
|       || | |   ||   |___ |    _  ||   |___   |   |    |   |    |   |  | ||       ||   _   |  |   |  
|_______||_|  |__||_______||___| |_||_______|  |___|    |___|    |___|  |_||_______||__| |__|  |___|  
'

echo -e "$ascii_art"
echo -e "\nBegin setup (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning onekey-proxy..."
rm -rf ~/.local/share/onekey-proxy
git clone -b main https://github.com/stevedsun/onekey-proxy.git ~/.local/share/onekey-proxy >/dev/null

echo "Installation starting..."
source ~/.local/share/onekey-proxy/setup.sh
