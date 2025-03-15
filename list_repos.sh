#!/bin/bash

# Vérifier si le token est défini
if [ -z "$GITHUB_TOKEN" ]; then
    echo "Erreur : Le token GitHub n'est pas défini !"
    exit 1
fi

# Récupérer le nom d'utilisateur GitHub
GITHUB_USER=$(curl -s -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/user | jq -r '.login')

# Vérifier si l'utilisateur a été récupéré
if [ -z "$GITHUB_USER" ]; then
    echo "Erreur : Impossible de récupérer le nom d'utilisateur GitHub."
    exit 1
fi

echo "🔍 Récupération des dépôts GitHub de $GITHUB_USER..."

# Obtenir la liste des dépôts et afficher les noms
curl -s -H "Authorization: token $GITHUB_TOKEN" \
     "https://api.github.com/users/$GITHUB_USER/repos?per_page=100" | \
     jq -r '.[].full_name'

echo "✅ Affichage terminé !"
