#!/bin/bash

archivo="/dev/my_gpio_driver"

while true; do
    clear
    
    echo "Leyendo archivo: $archivo"
    echo "------------------------------------"
    
    valor=$(head -n 1 "$archivo")  # Guarda el valor en la variable "valor"
        
    if [ "$valor" -eq 1 ]; then
        echo ░░░░░░░░░░░▄▄
	echo ░░░░░░░░░░█░░█
	echo ░░░░░░░░░░█░░█
	echo ░░░░░░░░░█░░░█
	echo ░░░░░░░░█░░░░█
	echo ██████▄▄█░░░░░██████▄
	echo ▓▓▓▓▓█░░░░░░░░░░░░░░█
	echo ▓▓▓▓▓█░░░░░░░░░░░░░░█
	echo ▓▓▓▓▓█░░░░░░░░░░░░░░█
	echo ▓▓▓▓▓█░░░░░░░░░░░░░░█
	echo ▓▓▓▓▓█░░░░░░░░░░░░░░█
	echo ▓▓▓▓▓█████░░░░░░░░░█
	echo █████▀░░░░▀▀██████▀


        # Haz algo cuando el valor sea mayor que 10
    else
        echo ████▄▄▄▄▄▄▄▄▄▄▄▄
	echo ▓▓▓███░░░░░░░░░░█
	echo ▓▓▓██░░░░░░░░░░░░█
	echo ▓▓▓█░░░░░░░░░░░░░█
	echo ▓▓▓█░░░░░░░░░░░░░█
	echo ▓▓▓▓█░░░░░░░░░░░█
	echo █████▀█░░░█▀▀▀▀▀
	echo ░░░░░░░█░░░█
	echo ░░░░░░░░█░░█
	echo ░░░░░░░░░▀▀

        # Haz algo cuando el valor no sea mayor que 10
    fi
    
    sleep 0.5
done
