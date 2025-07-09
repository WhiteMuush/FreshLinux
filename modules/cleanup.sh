#!/bin/bash

GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"
ORANGE='\033[0;33m'
RESET='\033[0m'

cleanup() {
echo -e "${CYAN}[1/4] Suppression des paquets inutiles (telnet, ftp, nfs-common)${RESET}"
read -p "Souhaitez-vous supprimer ces paquets ? (y/n) : " cleanup
if [[ "$cleanup" == "y" ]]; then
  apt remove -y telnet ftp nfs-common || true
  echo -e "${GREEN}✔ Paquets supprimés.${RESET}"
else
  echo -e "${YELLOW}⏩ Étape ignorée.${RESET}"
fi
echo
}

