#!/bin/bash

echo "_________licencia GPL 3.0_________
=================================="
# Obtenemos dirección completa del archivo para que pueda
# ser ejecutado en cualquier sitio
file="$HOME/.ICEauthority" 

# Creamos opciones para el menú básico
OPT="Eliminar Cambiar Nada"

# Obtenemos el nombre del propietario del archivo
owner=$(stat -c %U $file )

# Compararemos el propietario con el usuario
# Si no es igual, pediremos respuesta
if [ $owner != $USER ]; then
    echo "El archivo pertenece a $owner"
    select opt in $OPT; do
        if [ "$opt" = "Eliminar" ]; then
            echo "Será elminado, después reinicie sesión"
            #TODO mover $file a $file.back
            exit
        elif [ "$opt" = "Cambiar" ]; then
            # Usamos el Handler de SUDO en terminal para obtener privilegios
            # Se le pedira contraseña al usuario, el scrip terminara en caso de error
            sudo -S chown $USER $file
            echo "Terminado, se cambio $owner por $USER"
            exit
        elif [ "$opt" = "Nada" ]; then
            exit
        else
            # En caso de que la opción no sea identificada, poner lo necesario aca
            echo "Opción no identificada"
        fi
    done
else
    echo "Propietario correcto, terminando."
fi
