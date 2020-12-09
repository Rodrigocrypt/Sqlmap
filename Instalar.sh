#!/bin/bash

clear
echo "*****************************************"
echo "***        Vamos Instalar o TOR       ***"
echo "*****************************************"
echo ""
read -p "Aperte para Continuar"

apt-get update && apt-get upgrade && apt-get install tor

echo "Pronto Ja pode Iniciar o Script"
