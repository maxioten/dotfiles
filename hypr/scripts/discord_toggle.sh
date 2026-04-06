#!/bin/bash

# Intentamos buscar el proceso de Discord (ignorando mayúsculas/minúsculas)
if pgrep -fi "discord" > /dev/null
then
    # Si lo encuentra, lo mata a la fuerza para que no quede "zombie"
    pkill -9 -fi "discord"
else
    # Si no lo encuentra, lo lanza. 
    # Usamos nohup y & para que el proceso sea independiente de la terminal/script
    nohup discord > /dev/null 2>&1 &
fi
