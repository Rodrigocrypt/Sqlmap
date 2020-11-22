#!/bin/bash
clear

echo "********************************************************"
echo "*****  POR QUESTOES DE SEGURANCA INSTALE O TOR    ******"
echo "********************************************************"
echo "********************************************************"
echo "**** Script de Verificacao de sites Vulns a SQL ********"
echo "********************************************************"
echo "*****              Anon_X95                       ******"
echo "********************************************************"
echo ""
read -p "Aperte para Prosseguir"

clear

while true
do

clear
echo ""
echo "******************************************************"
echo "******         Selecione uma Opcao               *****"
echo "******************************************************"
echo "***** 1. Sqlmap (Menos Seguro)                   *****"
echo "***** 2. Sqlmap + Tor (Mais Seguro)              *****"
echo "***** 3. TESTE                                   *****"
echo "******************************************************"
echo "********             Anon_X95            *************"
echo "******************************************************"
read n
echo ""
case $n in

1) clear
echo "Informe a Url do Site:"
read USITEX
(xterm -title "SQLMAP" -e sqlmap -u $USITEX --dbs ) &

esac
done

