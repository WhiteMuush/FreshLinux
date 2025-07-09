#!/bin/bash

GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"
ORANGE='\033[0;33m'
RESET='\033[0m'

create_user() {
echo -e "${CYAN}[2/4] Création d’un utilisateur non-root avec sudo${RESET}"
read -p "Nom du nouvel utilisateur (laisse vide pour ignorer) : " new_user
if [[ -n "$new_user" ]]; then
  adduser "$new_user"
  usermod -aG sudo "$new_user"
  echo -e "${GREEN}✔ Utilisateur $new_user ajouté aux sudoers.${RESET}"
else
  echo -e "${YELLOW}⏩ Étape ignorée.${RESET}"
fi
echo
}