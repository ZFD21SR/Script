#!/bin/bash
#
#	Auteur: ZFD21SE
#

#Nom du script
echo "/*********************/"
echo "Preparateur de Session"
echo "/*********************/"
echo.
	#Information
	echo "  Ce script va automatiquement créer des dossiers ainsi que des fichiers pour vous
	 afin d'avoir une sessions prête à l'emploi pour votre année scolaire en licence ou master.
	 Il est basique est évite juste quelque clics. N'hésitez pas à le mettre à jour si le 
	 programme a changer depuis sa création."
	echo
	#Mise en place d'un temps de pause pour la lecture. 
	sleep 10

#Prise d'info
	#Prise d'indentité
	echo -n "Quel est votre nom ? "
	read unom  #On demande une entré pour la variable à l'utilisateur
	echo -n "Quel est votre prenom ? "
	read upre

	#Annee Scolaire
	echo -n "Licence ou Master ? (l pour licence, m pour master) "
	read lmc
	#Test de validité et Demande de l'année
	if [ "$lmc" = "l" ]; then
		$lmc == "Licence"
		echo -n "En quelle annee est tu ? (1, 2 ,3)"
		read ann
		if [ "$ann" != "1" ] | [ "$ann" != "2" ]; then 
			echo "Erreur, Cette annee est incorrect!"
			exit 101 
		fi
	elif [ "$lmc" = "m" ]; then
		$lmc == "Master"
		echo -n "En quelle annee est tu ? (1, 2)"
		read ann
		if [ "$ann" != "1" ] | [ "$ann" != "2" ]; then 
			echo "Erreur, Cette annee est incorrect!"
			exit 101 
		fi
	else
		echo "Erreur! La réponse est incorrect"
		exit 102
	fi

sleep 2
# Nettoyage de l'affichage
clear

#Fonction de création des fichiers
	function Creerfichier
	{
		#Génération de l'abro type avec les fichier types
		echo "Création des fichiers"
		mkdir Cours
		mkdir Tp
			cd Tp/
			touch modele.txt
				#gestion du paramétres
				case $1 in
					"c" )Ajout du code minimal dans un fichier modele.txt 
						#
						echo -e "/*Code Minimal*/\n#include <stdio.h>\n\nint main(void){\nprintf(\"hello world\");\nreturn 0;\n}" >> modele.c
						mat = "langageC"	;;
					"py" ) 
						echo -e "pas de modele ici" >> modele.py
						mat = "langagePython"	;;
					"ja" ) 
						echo -e "//code minimal\nclass Model{\static void main(){\n}\n}" >> modele.java
						mat = "langageJava"	;;
					"cp" ) 
						echo -e "//Code minimal\n#include<iostream>\nint main(){\nreturn 0;\n}" >> modele.cpp
						mat = "langageC++"	;;
					"as" ) 
						echo -e "pas de modele ici" >> modele.asm
						mat = "langageAssembleur"	;;
					"sq" ) 
						echo -e "pas de modele ici" >> modele.sql
						mat = "langageSQL"	;;
					"or" ) 
						echo -e "pas de modele ici" >> modele.sql
						mat = "langageOracle"	;;
					"rs" ) 
						echo -e "Pas de Modéle ici" >> modele.txt
						mat = "Reseaux"	;;
					"sh" ) 
						echo -e "#!/bin/bash\necho \"test\"\nexit 0" >> modele.sh
						mat = "ScriptShell"	;;
					"ht" ) 
						echo -e "<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n</body>\n</html>" >> modele.html
						mat = "langageHTML"	;;
					"ph" ) 
						echo -e "<?php\necho\"hello world\";\n?>" >> modele.php
						mat = "langagePHP"	;;
					"js" ) 
						echo -e "pas de modéle ici" >> modele.js
						mat = "langageJS"	;;
					"pj" ) 
						echo -e "Pas de modele ici" >> modele.txt
						mat = "Projet"	;;
					"*" ) 
						echo "Une erreure est survenu!"
						exit 103;;
				esac
			cd..
		mkdir Td
		#Création du fichier pour les compte rendu - tp noté
		toucht $unom"_"$upre"_"$lmc$ann"_"$mat.txt
	}

#Création de l'arboresence et des fichiers
echo "Le script va maintenant créer les dossiers et les fichiers"
	#On se place dans le /home de l'utilisateur
	cd $HOME
	#Création des Dossiers
	mkdir Programmation
		cd Programmation/
		mkdir Langage_C
			cd Langage_C/
			Creerfichier c
			cd ..
		mkdir Langage_Python
			cd Langage_Python/
			Creerfichier py
			cd ..
		mkdir Langage_Java
			cd Langage_Java/
			Creerfichier ja
			cd ..
		mkdir Langage_C++
			cd Langage_C++/
			Creerfichier cp
			cd ..
		mkdir Langage_Assembleur
			cd Langage_Assembleur/
			Creerfichier as
			cd ..
		cd ..
	mkdir Systeme_Et_Reseaux
		cd Systeme_Et_Reseaux/
		mkdir Base_de_donne
			cd Base_de_donne/
			mkdir SQL
				cd SQL/
				Creerfichier sq
				cd ..
			mkdir Oracle
				cd Oracle/
				Creerfichier or
				cd .
			c.d ..
		mkdir Réseaux
			cd Réseaux/
			Creerfichier re
			cd ..
		mkdir Systeme_linux
			cd Systeme_linux/
			Creerfichier sh
			cd ..
		cd ..
	mkdir Web
		cd Web/
		mkdir Langage_HTML
			cd Langage_HTML/
			Creerfichier ht
			cd ..
		mkdir Langage_Php
			cd Langage_Php/
			Creerfichier ph
			cd ..
		mkdir Javascript
			cd Javascript/
			Creerfichier js
			cd ..
		cd..
	mkdir Projet
		cd Projet/
		Creerfichier pj
		cd ..
	echo "Les dossiers et fichiers sont crees"

#On gére les droit d'accès à nos fichiers et dossiers
echo "Attribution des Droits d'acces"
	#On attribut tous les droit au propriétaire, et seulement Lectuere et Execution aux autres
	chmod -R 755 Programmation/
	chmod -R 755 Systeme_Et_Reseaux/
	chmod -R 755 Web/
	chmod -R 755 Projet/
#Fin du script
#Nettoyage de l'affichage
clear
#Message Récapitulatif
echo "Le scrit est maintenant terminer, les dossier ont été créé dans " $HOME
#Temps d'attente et Fermeture du script
sleep 2
exit 0