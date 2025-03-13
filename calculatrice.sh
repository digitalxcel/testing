#!/bin/bash

echo "Bienvenue dans la calculatrice Bash !"
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

    read -p "Entrez le premier nombre : " num1
    read -p "Entrez le deuxième nombre : " num2

    case $choix in
        1) echo "Résultat : $(($num1 + $num2))" ;;
        2) echo "Résultat : $(($num1 - $num2))" ;;
        3) echo "Résultat : $(($num1 * $num2))" ;;
        4) if [ "$num2" -ne 0 ]; then
               echo "Résultat : $(($num1 / $num2))"
           else
               echo "Erreur : Division par zéro impossible !"
           fi ;;
        *) echo "Choix invalide, veuillez réessayer !" ;;
    esac
    echo ""
done
#!/bin/bash

echo "Bienvenue dans la calculatrice Bash !"
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

    read -p "Entrez le premier nombre : " num1
    read -p "Entrez le deuxième nombre : " num2

    case $choix in
        1) echo "Résultat : $(($num1 + $num2))" ;;
        2) echo "Résultat : $(($num1 - $num2))" ;;
        3) echo "Résultat : $(($num1 * $num2))" ;;
        4) if [ "$num2" -ne 0 ]; then
               echo "Résultat : $(($num1 / $num2))"
           else
               echo "Erreur : Division par zéro impossible !"
           fi ;;
        *) echo "Choix invalide, veuillez réessayer !" ;;
    esac
    echo ""
done

