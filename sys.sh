#!/bin/bash

while true
clear
do
  echo "////////////////////////////////////////////////////////////////////////////"
  echo "|                                                                          |"
  echo "|                                                                          |"
  echo "|                                                                          |"
  echo "|               AZANGFACK DONGMO RONNY                                     |"
  echo "|                                                                          |"
  echo "|               14B404FS                                                   |"
  echo "|                                                                          |"
  echo "|                                                                          |"
  echo "|                                                                          |"
  echo "|                                                                          |"
  echo "|//////////////////////////////////////////////////////////////////////////|"



	echo " a) Informations des utilisateurs enregistré il y'a trois (03) jours"
	echo " b) Aquisition, Installation et Lancement de l'environnement XAMPP "
	echo " c) Archivage des éléments du repertoire personnel qui ont été modifier par l'utilisateur sudoer il y'a deux jour dans le peripherique eterne"
	echo " d) Information sur l'utilisation du disque, de la mémoire, du processeur et du swap"
	echo " q) Quitter !!! "

	echo -e "\n"
	echo -e "Entrer votre selction : \c "
	read reponse

	case "$reponse" in 
		a)  cut -d : -f 1 /etc/passwd>all_users;; 

		b)sudo /opt/lampp/lampp start 2> errtest ;
		  echo "XAMPP est déjà installé ";
			if [ $? -ne 0 ]; then
                		wget https://www.apachefriends.org/xampp-files/7.0.18/xampp-osx-7.0.18-0-installer.dmg;
				sudo chmod 755 xampp-linux-*-installer.run;
				sudo ./xampp-linux-*-installer.run;
				sudo /opt/lampp/lampp start 2> errtest;
			fi ;;
		c) echo "archivage"
	mkdir -p /home/ushi-deshi/archive
	find /home/ushi-deshi/ -type f -mtime 2 -print>/home/ushi-deshi/ficmodi
	while read line
	do
	cp $line archive
	done </home/ushi-deshi/ficmodi
	tar -czvf archive.tar.gz archive
	mv archive.tar.gz /media/ushideshi/lfd/archive.tar.gz
	;;
		d)vmstat ;;
		
		q) exit ;;
  	esac
     echo -e " Cliquer sur enter pour continue.... \c"
     read input

done		
