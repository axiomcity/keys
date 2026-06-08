# Variables
banner="\n\n\033[32mSetup Linux \n\n"
keys="$HOME/.ssh/authorized_keys"
keysurl="https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/keys.txt"
# Setup Linux Script
setup() {
read -p "[1/5] - Mettre a jour les clées SSH ? [ Y / N ]" input
if [ $input == "y" ]; then
echo "you pressed $input"; elseif [ $input == "n" ]
echo "its a $input"; fi

read -p "[1/5] - Mettre a jour les clées SSH ? [ Y / N ]" input
read -p "[1/5] - Mettre a jour les clées SSH ? [ Y / N ]" input
curl $keysurl > $keys
cat $keys
}
if [ -z $1 ]; then printf "\n\nCommand >\033[32m$0 prod\033[0m< for use in production\n\n"; exit 0; fi
if [ $1 == "prod" ]; then setup; else printf "\n\nCommand >\033[32m$0 prod\033[0m< for use in production\n\n"; exit 0; fi
