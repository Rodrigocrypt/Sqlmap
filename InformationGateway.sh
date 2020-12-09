#!/bin/bash

clear

echo "********************************************************"
echo "*****  POR QUESTOES DE SEGURANCA INSTALE O TOR    ******"
echo "********************************************************"
echo "********************************************************"
echo "**** Script de Verificacao de sites Vulns a SQL ********"
echo "********************************************************"
echo "*****               Anon_X95                      ******"
echo "********************************************************"
echo ""
read -p "Aperte para Iniciar"
service tor start
echo ""
clear
echo "********************************************************"
echo "***            SERVICO TOR FOI INICIADO              ***"
echo "********************************************************"
echo ""
read -p "Aperte para ver se o TOR esta Ativo"
clear
service tor status
echo ""
echo ""
echo ""
read -p "Aperte para Prosseguir"
clear

for i in {1..5000}
	do
clear
echo ""
echo "*****************************************************"
echo "***** Digite a Url do Site:  ************************"
echo "*****************************************************"
echo ""
read USITEX
sqlmap --tor --tor-type=SOCKS5 -u "$USITEX" --check-tor --time-sec 10 --random-agent
echo ""
echo ""
echo ""
sleep 5
read -p "Aperte para Analisar um novo Site"

done

