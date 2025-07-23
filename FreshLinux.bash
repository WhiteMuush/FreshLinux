#!/bin/bash
set -e

GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"
ORANGE='\033[0;33m'
RESET='\033[0m'


clear
echo -e "${ORANGE}"
echo "___________                     .__    .____    .__                      "
echo "\_   _____/______   ____   _____|  |__ |    |   |__| ____  __ _____  ___"
echo " |    __) \_  __ \_/ __ \ /  ___/  |  \|    |   |  |/    \|  |  \  \/  /"
echo " |     \   |  | \/\  ___/ \___ \|   Y  \    |___|  |   |  \  |  />    < "
echo " \___  /   |__|    \___  >____  >___|  /_______ \__|___|  /____//__/\_ \\"
echo "     \/                \/     \/     \/        \/       \/            \/"
echo -e "${RESET}"

echo -e "${ORANGE}Info System"
echo "-----------------"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Distro: $(lsb_release -d | cut -f2)"
echo "Release: $(lsb_release -r | cut -f2)"
echo "Codename: $(lsb_release -c | cut -f2)"
echo "Description: $(lsb_release -d | cut -f2)"

echo ""
echo ""
echo ""
echo ""
echo ""

# Obtenir le répertoire du script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[ -f "$SCRIPT_DIR/modules/cleanup.sh" ] && source "$SCRIPT_DIR/modules/cleanup.sh"
[ -f "$SCRIPT_DIR/modules/user_setup.sh" ] && source "$SCRIPT_DIR/modules/user_setup.sh"
[ -f "$SCRIPT_DIR/modules/Firewall.sh" ] && source "$SCRIPT_DIR/modules/Firewall.sh"
[ -f "$SCRIPT_DIR/modules/ssh_hardening.sh" ] && source "$SCRIPT_DIR/modules/ssh_hardening.sh"

cleanup
create_user
Firewall
SSH


echo -e "${GREEN}✔ Configuration terminée.${RESET}"
echo -e "${CYAN}Merci d'avoir utilisé FreshLinux !${RESET}"
echo -e "${YELLOW}N'oubliez pas de redémarrer votre système pour appliquer toutes les modifications.${RESET}"
exit 0
