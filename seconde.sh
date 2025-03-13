#!/bin/bash

echo "Bienvenue dans la calculatrice en Bash"
echo "-------------------------------------"

read -p "Entrez le premier nombre : " num1
read -p "Entrez le deuxième nombre : " num2

echo "Choisissez une opération :"
echo "1) Addition (+)"
echo "2) Soustraction (-)"
echo "3) Multiplication (*)"
echo "4) Division (/)"

read -p "Votre choix (1-4) : " choix

case $choix in
    1) result=$((num1 + num2))
       echo "Résultat : $num1 + $num2 = $result"
       ;;
    2) result=$((num1 - num2))
       echo "Résultat : $num1 - $num2 = $result"
       ;;
    3) result=$((num1 * num2))
       echo "Résultat : $num1 * $num2 = $result"
       ;;
    4) 
       if [ $num2 -ne 0 ]; then
           result=$(echo "scale=2; $num1 / $num2" | bc)
           echo "Résultat : $num1 / $num2 = $result"
       else
           echo "Erreur : Division par zéro impossible !"
       fi
       ;;
    *) echo "Choix invalide !"
       ;;
esac
