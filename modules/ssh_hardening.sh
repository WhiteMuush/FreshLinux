#!/bin/bash

GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"
ORANGE='\033[0;33m'
RESET='\033[0m'

SSH(){
    echo -e "${CYAN}[4/4] Sécurisation SSH${RESET}"
sshd_config="/etc/ssh/sshd_config"

if [[ -f "$sshd_config" ]]; then
  read -p "Désactiver la connexion SSH root ? (y/n) : " disable_root
  if [[ "$disable_root" == "y" ]]; then
    sed -i 's/^#*PermitRootLogin .*/PermitRootLogin no/' "$sshd_config"
    echo -e "${GREEN}✔ Root SSH désactivé.${RESET}"
  fi

  read -p "Changer le port SSH (y/n) ? : " change_port
  if [[ "$change_port" == "y" ]]; then
    read -p "→ Nouveau port SSH : " new_ssh_port
    sed -i "s/^#*Port .*/Port $new_ssh_port/" "$sshd_config"
    ufw allow "$new_ssh_port"
    echo -e "${GREEN}✔ Port SSH modifié et ouvert sur UFW.${RESET}"
  fi

  systemctl restart ssh
else
  echo -e "${RED}❌ sshd_config non trouvé.${RESET}"
fi
}