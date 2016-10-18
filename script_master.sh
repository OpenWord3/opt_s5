#!/bin/bash

echo "*****************************************************************"
echo "*                                                               *"
echo "*    BIENVENUE SUR LE SCRIPT MASTER DE GESTION DES SERVICES     *"
echo "*                                                               *"
echo "*****************************************************************"

choix="oui"
while [ "$choix" == "oui" ]
do
echo "Que souhaitez-vous faire ?"
reponse=0
while [ "$reponse" -lt 1 ] || [ "$reponse" -gt 3 ]
do
echo "1- Service PKI"
echo "2- Service VPN"
echo "3- Service FIREWALL"
read reponse
done

case $reponse in
	"1")
		/opt/script/script_gestion_certificats.sh
	;;
	"2")
		/opt/script/script_vpn.sh
	;;
	"3")
		/opt/script/script_firewall.sh
	;;
esac

echo " "
echo "Voulez-vous relancer le service principal ? oui/non"
read choix
done
echo " "
echo "AU REVOIR ET À BIENTÔT"
