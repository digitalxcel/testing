#!/bin/bash

echo "Bienvenue dans la calculatrice Bash !"

# Fonction pour vérifier si l'entrée est un nombre
est_nombre() {
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

while true; do
    echo "----------------------------"
    echo "Choisissez une opération :"
    echo "1 - Addition"
    echo "2 - Soustraction"
    echo "3 - Multiplication"
    echo "4 - Division"
    echo "5 - Quitter"
    echo "----------------------------"
    read -p "Votre choix : " choix

    if [ "$choix" -eq 5 ]; then
        echo "Merci d'avoir utilisé la calculatrice !"
        break
    fi

    # Vérification que le choix est valide
    if ! [[ "$choix" =~ ^[1-4]$ ]]; then
        echo "❌ Choix invalide, veuillez entrer un nombre entre 1 et 5."
        continue
    fi

    # Demander le premier nombre
    while true; do
        read -p "Entrez le premier nombre : " num1
        if est_nombre "$num1"; then
            break
        else
            echo "❌ Erreur : Veuillez entrer un nombre valide."
        fi
    done

    # Demander le deuxième nombre
    while true; do
        read -p "Entrez le deuxième nombre : " num2
        if est_nombre "$num2"; then
            break
        else
            echo "❌ Erreur : Veuillez entrer un nombre valide."
        fi
    done

    case $choix in
        1) echo "✅ Résultat : $(($num1 + $num2))" ;;
        2) echo "✅ Résultat : $(($num1 - $num2))" ;;
        3) echo "✅ Résultat : $(($num1 * $num2))" ;;
        4) if [ "$num2" -ne 0 ]; then
               echo "✅ Résultat : $(($num1 / $num2))"
           else
               echo "❌ Erreur : Division par zéro impossible !"
           fi ;;
    esac
    echo ""
done

