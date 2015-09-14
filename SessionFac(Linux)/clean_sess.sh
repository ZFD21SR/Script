#!/bin/bash
#
#	Auteur: ZFD21SE
#
echo "Session_Cleaner"
#Information
echo "Ce script va supprimers, tous les dossiers creer par le préparateur de session"
#Prise d'info
echo -n "Sauvegarder les dossiers ? (y/n) "
read dsav
if [ "$dsav" = "y" ]; then
	echo "Creation d'une archive de sauvegarde"
	#Creation de l'archive
	backup_files="/Programmation" "/Systeme_Et_Reseaux" "/Web" "/Projet"
	dest="/home/"
	day=$date
	hostname= $hostname
	archive_file="DataSave-"$hostname"-"$day".tgz"
	tar czf $dest/$archive_file $backup_files
	echo "Archive creer dans" $HOME
elif [ "$dsav" = "n" ]; then
	echo "Aucune archive de sauvegarde creer"
else
	echo "Une erreur est survenu"
	exit 101
fi
echo "Le script va maintenant supprimer les dossiers"
#Création des dossiers
cd $HOME
	rm -rf Programmation
	rm -rf Systeme_Et_Reseaux
	rm -rf Web
	rm -rf Projet
echo "Les dossiers et fichiers ont ete supprimer"
sleep 5
clr
#Fin du script
echo "Fin du script, Bonne vacances"
sleep 2
exit 0