#!/bin/bash

echo "Bienvenue dans la calculatrice Bash"
echo "Entrez le premier nombre : "
read num1

echo "Entrez le second nombre : "
read num2

echo "Choisissez une opération (+, -, *, /) : "
read op

case $op in
    +) result=$(echo "$num1 + $num2" | bc) ;;
    -) result=$(echo "$num1 - $num2" | bc) ;;
    \*) result=$(echo "$num1 * $num2" | bc) ;;
    /) 
        if [ "$num2" -eq 0 ]; then
            echo "Erreur : Division par zéro !"
            exit 1
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
        fi
        ;;
    *) echo "Opération invalide"; exit 1 ;;
esac

echo "Résultat : $result"
