#!/bin/bash

GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"
ORANGE='\033[0;33m'
RESET='\033[0m'


Firewall() {
    echo -e "${CYAN}[4/5] Configuration du pare-feu UFW${RESET}"
    read -p "Port à autoriser (par ex: 22 pour SSH) : " port
    apt install -y ufw > /dev/null
    ufw allow "$port"
    ufw --force enable
    echo -e "${GREEN}✔ UFW activé, port $port autorisé.${RESET}"
    echo
}