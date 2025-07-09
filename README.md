# 🔐 FreshLinux - Script de sécurisation Linux automatisée

FreshLinux est un script Bash interactif permettant de sécuriser rapidement une machine Linux fraîchement installée. Il applique des bonnes pratiques de hardening (pare-feu, SSH, utilisateur, etc.) de manière simple et guidée.

## ✅ Fonctionnalités

- Suppression de services inutiles (ex: telnet, ftp, nfs-common)
- Création d’un utilisateur non-root avec accès sudo
- Activation et configuration du pare-feu UFW (avec port personnalisé)
- Sécurisation de SSH :
    - Désactivation de la connexion root
    - Changement du port SSH
- Interface interactive (avec confirmation à chaque étape)

## ⚙️ Installation & exécution

Clone le dépôt :
```bash
git clone https://github.com/tonpseudo/freshlinux.git
cd freshlinux
```

Rends le script exécutable :
```bash
chmod +x freshlinux.sh
```

Lance-le avec sudo :
```bash
sudo ./freshlinux.sh
```

## 📁 Structure du projet

```
freshlinux/
├── freshlinux.sh       # Script principal
└── modules/            
        ├── cleanup.sh
        ├── user_setup.sh
        ├── firewall.sh
        └── ssh_hardening.sh
```

---
**Remarque :** Utilise ce script sur une machine fraîchement installée. Vérifie chaque étape selon tes besoins spécifiques.

![gif](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExNGFuZm5lcDVoeXVqczluaW5ndjExbTdqaDEyeGZxeHVmZHJwbGFwZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xsBP0RdvxJfhu/giphy.gif)