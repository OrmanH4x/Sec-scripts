#!/bin/bash
# Script para generar informacion de las IP en Kali XFCE panel Generic mon.

custom_ip=$(cat target.txt)  # Lee la dirección IP personalizada desde el archivo target.txt
current_ip=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}') # current_ip=$(curl -s ifconfig.me)  # Obtiene la dirección IP pública actual
vpn_ip=$(ifconfig tun0 2>/dev/null | grep 'inet ' | awk '{print $2}')  # Obtiene la dirección IP de la VPN (redirige stderr a /dev/null)

# Colores para los componentes
green="<span color='lightgreen'>"  # Verde
yellow="<span color='yellow'>"  # Amarillo
red="<span color='red'>"  # Rojo
reset="</span>"  # Restablecer color

if [ -z "$vpn_ip" ]; then
    echo "<txt>   ${yellow}$current_ip${reset}     ${green} desconectado${reset}      Target  >>>  ${red}$custom_ip${reset}</txt>"
else
    echo "<txt>   ${yellow}$current_ip${reset}      ${green}$vpn_ip${reset}       Target >>>  ${red}$custom_ip${reset}</txt>"
fi
