
#!/bin/bash

#Definition du mot de passe
USER="admin"
PASSWORD="MasterPass123"

echo "verification de l'etat des services sur Master"

# verifier si docker est actif
 if systemctl is-active --quiet docker; then
    echo "docker est actif"
else
    echo "docker est inactif"
fi

# validation bonne install ansible

if ansible --version &>/dev/null; then
    echo"Ansible est installé"
else 
    echo"Ansible n'est pas installé"
fi

#verification si git est installé

if git --version &>:/dev/null; then
    echo"git est installé"
else
    echo"git n'est pas installé"
fi 

# changer le IDs

echo "$USER:$PASSWORD" | sudo chpasswd

# Affichage des infos de connexion

echo "infos de connexion à Master"
echo "ID : $USER"
echo "Password : $PASSWORD"
echo "Adresse IP : 190.168.10.1"
  


