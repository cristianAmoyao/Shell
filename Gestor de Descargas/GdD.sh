#GPL 2.0
#!/bin/bash
read -p "Link De descarga:" desc
echo "wget -c $desc" >>  descargar.sh
echo "¿Desea agregar más?"
echo "1.Si"
echo "2.No" 
echo "3.limpiar historial"
echo "4.ver historial"
read opcion 
case $opcion in 
1)sh GdD.sh;;
2)sh descargar.sh;wait 3 ;rm descargar.sh;;
3)rm descargar.sh;;
4)cat descargar.sh;;
esac
