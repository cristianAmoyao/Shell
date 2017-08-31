#!/bin/bash
clear
echo "_________licencia GPL 3.0_________"
echo "=================================="
echo "==========Ayuda==================="
echo "r = read (lectura) "
echo "w = write(escritura)"
echo "x = execution (ejecucion)"
echo "=================================="
echo "=================================="
echo "   "
ls -l .ICE*
echo "   "
echo "   "
echo "Pregunta:"
echo "   "
echo "¿aparece esto?"
echo "-rw------- "
echo "¿o similar?"
echo "===Opciones===="
echo "1) si"
echo "2) no"
echo -n "Respuesta:  "

read opcion 
case $opcion in
1)echo "su usuario es : $USER";
read -p "¿Cual es su usuario?:  " user
echo "sudo chown _"$user"_ .ICEauthority" >>reparar.sh;
echo "   ";
clear
echo "se ejecutara el siguiente comando";cat reparar.sh;
echo "iniciando script..."
echo "para cancelar presione Ctrl + c"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
sh reparar.sh ;;


2)exit ;;
esac


