#!/bin/bash
#
#	Auteur: ZFD21SE
#	


#HDD READY
clear
echo "/***********************/"
echo "/*      HDD Ready      */"
echo "/***********************/"
echo
echo " Ce Script va créer automatiquement plusieurs dossiers afin de prèparer automatiquement votre Session au stockage des différentes donnèes que vous serez succeptible de stocker. Pour utiliser ce script sur un autre disque veuillez indiquer le chemin en paramètres"
echo -n "Êtes vous sur de vouloir continuer ? (Y pour continuer)"
read unom

if [ -n "$1" ]; then
	uhdd=$1
else
	uhdd=$HOME
fi

#Fonction de création
	function Creerprj
	{
		cd $uhdd
		mkdir Projets
		chmod -R 755 Projets/
	}	
	function Creerpic
	{
		cd $uhdd
		mkdir Images
		chmod -R 755 Images/
	}
	function Creermus
	{
		cd $uhdd
		mkdir Musiques
		chmod -R 755 Musiques/
	}
	function Creercour
	{
		cd $uhdd
		mkdir Cours
		chmod -R 755 Cours/
	}
	function Creerdoc
	{
		cd $uhdd
		mkdir Documents
		chmod -R 755 Documents/
	}
	function Creervid
	{
		cd $uhdd
		mkdir Vidéos
		chmod -R 755 Vidéos/
	}	
	function Creerdll
	{
		cd $uhdd
		mkdir Télèchargements
		chmod -R 755 Télèchargements/
	}

if [ "$unom" == "y" ]; then
	clear
	echo "/*********************************/"
	echo "/*   Quelles type de dossier ?   */"
	echo "/*********************************/"
	echo
	echo -n "Allez vous stocker des projets sur le disque ? (Y pour oui)"
	read uprj 
	echo -n "Allez vous stocker des images sur le disque ? (Y pour oui)"
	read upic 
	echo -n "Allez vous stocker de la musiques sur le disque ? (Y pour oui)"
	read umus
	echo -n "Allez vous stocker vos cours sur le disque ? (Y pour oui)"
	read ucour
	echo -n "Allez vous stocker vos documents le disque ? (Y pour oui)"
	read udoc
	echo -n "Allez vous stocker des videos sur le disque ? (Y pour oui)"
	read uvid 	
	echo -n "Allez vous stocker des Télèchargement sur le disque ? (Y pour oui)"
	read udll 
	echo
	echo "Création des dossiers requis..."
	sleep 1
	if [ "$uprj" == "y" ]; then
	   	Creerprj
	fi 	
	if [ "$upic" == "y" ]; then
	   	Creerpic
	fi 	
	if [ "$umus" == "y" ]; then
	   	Creermus
	fi 	
	if [ "$ucour" == "y" ]; then
	   	Creercour
	fi 	
	if [ "$udoc" == "y" ]; then
	   	Creerdoc
	fi 	
	if [ "$uvid" == "y" ]; then
	   	Creervid
	fi 	
	if [ "$udll" == "y" ]; then
	   	Creerdll
	fi 
	echo "Opération fini, les dossier peuvent etre trouver dans: " $uhdd
	sleep 10
	echo "Le script va maintenant fermer..."
	sleep 2
	clear
	exit 0
else
	echo
	echo
    echo "Opération annulée ! Le script va maintenant quitter.. "
    sleep 2
    clear
    exit 0
fi