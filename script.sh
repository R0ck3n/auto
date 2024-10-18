#!/bin/bash

fichier="README.md"
date_jour=$(date +%d/%m/%Y)


cd C:/Users/graci/Documents/auto


# Compter les occurrences de la date dans le fichier
occurrences=$(grep -o "$date_jour" "$fichier" | wc -l)
push_number=$((occurrences + 1))

# Edite le fichier et ajoute une ligne
echo "push n° $push_number du $date_jour.  " >> $fichier

# Push les modif sur gitHub
git add .
git commit -m "push n° $push_number du $date_jour."
git push

read -n 1