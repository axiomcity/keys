# Variables
banner="\n\n\033[32mSetup Linux \n\n"
bashrcUrl="https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/.bashrc"
keys="$HOME/.ssh/authorized_keys"
keysUrl="https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/keys.txt"
zellijUrl="https://github.com/zellij-org/zellij/releases/download/v0.41.2/zellij-x86_64-unknown-linux-musl.tar.gz"
zellifZip="zellij-x86_64-unknown-linux-musl.tar.gz"
neofetchUrl="https://raw.githubusercontent.com/dylanaraps/neofetch/refs/heads/master/neofetch"

# Setup Linux Script
setup() {
read -p "[1/5] - Mettre a jour les clées SSH ? [ Y / N ]" input
if [ $input == "y" ]; then
printf "\n\033[32m $input" && curl $keysUrl > $keys; elseif [ $input == "n" ]; 
printf "\n\033[31m $input"; fi

read -p "[1/5] - Mettre a jour le profile .bashrc ? [ Y / N ]" input
if [ $input == "y" ]; then
printf "\n\033[32m $input" && curl bashrcUrl >> $HOME/.bashrc; elseif [ $input == "n" ]; 
printf "\n\033[31m $input"; fi

read -p "[1/5] - Installer Zellij ? [ Y / N ]" input
if [ $input == "y" ]; then
printf "\n\033[32m $input" && wget $zellijUrl && tar -xvf $zellifZip && chmod +x zellij && mv zellij /usr/bin; elseif [ $input == "n" ]; 
printf "\n\033[31m $input"; fi

read -p "[1/5] - Installer Neofetch ? [ Y / N ]" input
if [ $input == "y" ]; then
printf "\n\033[32m $input" && curl -LO $neofetchUrl && chmod +x neofetch && mv neofetch /usr/bin/; elseif [ $input == "n" ]; 
printf "\n\033[31m $input"; fi
}
if [ -z $1 ]; then printf "\n\nCommand >\033[32m$0 prod\033[0m< for use in production\n\n"; exit 0; fi
if [ $1 == "prod" ]; then setup; else printf "\n\nCommand >\033[32m$0 prod\033[0m< for use in production\n\n"; exit 0; fi
