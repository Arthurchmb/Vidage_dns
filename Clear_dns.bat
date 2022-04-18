:: Désactive l'affichage des commande dans le cmd
@echo off 

echo ┌---------------------------------------┑
echo  Lancer ce Script en mode administrateur
echo ┕---------------------------------------┙

timeout /t 10

cls

:: Libere la connexion
ipconfig /release

timeout /t 2

:: Vide tout le dns de la carte reseau
ipconfig /flushdns

timeout /t 2

:: Réactive la carte reseau
ipconfig /renew

pause