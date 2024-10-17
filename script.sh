#!/bin/bash

# Récupérer le fichier
fichier="README.md"

# Obtenir la date du jour au format d/m/Y
date_jour=$(date +%d/%m/%Y)

# Compter les occurrences de la date dans le fichier
occurrences=$(grep -o "$date_jour" "$fichier" | wc -l)
pushnumber=$((occurrences + 1))

# Afficher le résultat
echo "push n° $pushnumber du $date_jour." >> $fichier



# Attendre que l'utilisateur appuie sur une touche pour continuer
read -n1 -r -p "Appuyez sur une touche pour continuer..."
