#!/bin/bash

#Definition du mot de passe
USER="cible"
PASSWORD="ciblePass123"

echo "verification de l'etat des services sur Master"

# verifier si python3 est actif

 if python3  --version&>/dev/null; then
    echo "python3 est actif"
else
    echo "python3est inactif"
fi

# validation bonne install ansible

# changer le IDs

echo "$USER:$PASSWORD" | sudo chpasswd

# Affichage des infos de connexion

echo "infos de connexion à VM cible"
echo "ID : $USER"
echo "Password : $PASSWORD"
echo "Adresse IP : 190.168.10.2"