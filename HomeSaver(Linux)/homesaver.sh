#!/bin/bash
#
#	Auteur: ZFD21SE
#	


#Home Saver
clear
echo "/***********************/"
echo "/*      Home Saver     */"
echo "/***********************/"
echo
echo -n "Ce script fais une copie de tous votre dossier home, êtes vous sur de vouloir continuer (y pour continuer) ?"
read cont

if [ "$cont" == "y" ]; then
	echo -n "Ou devra être stocker l'archive?"
	read upath
	tar -cvzf $upath/backup.tar.gz "/home"
	echo "------------------------------------------------------";
	echo "";

	echo "Vérification de l'existence de l'archive";
	# On teste si l'archive a bien été créée
	if [ -e $upath/backup.tar.gz ]; then
		echo ""
		echo "Votre archive a bien été créée.";
		echo ""
	else
		echo ""
		echo "Il y a eu un problème lors de la création de l'archive.";
		echo ""
	fi

else
	echo "Le script va maintenant quitter"
	sleep 2
	clear
	exit 0
fi