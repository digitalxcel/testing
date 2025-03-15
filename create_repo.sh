#!/bin/bash

# Vérifier si un nom de dépôt a été fourni
if [ -z "$1" ]; then
    echo "Usage: $0 nom_du_depot"
    exit 1
fi

REPO_NAME=$1

# Vérifier si le token est défini
if [ -z "$GITHUB_TOKEN" ]; then
    echo "Erreur : Le token GitHub n'est pas défini !"
    exit 1
fi

# Créer le dépôt en utilisant l'API GitHub
echo "Création du dépôt GitHub '$REPO_NAME'..."
curl -H "Authorization: token $GITHUB_TOKEN" \
     -H "Accept: application/vnd.github.v3+json" \
     https://api.github.com/user/repos \
     -d "{\"name\":\"$REPO_NAME\",\"private\":false}"

echo "Dépôt '$REPO_NAME' créé avec succès ! 🚀"

# Initialiser le dépôt localement
git init
git remote add origin "https://github.com/$(git config user.name)/$REPO_NAME.git"

echo "Dépôt local initialisé et lié à GitHub !"
