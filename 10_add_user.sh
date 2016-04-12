#!bin/bash

PUID=${PUID:-777}
GUID=${GUID:-777}

if [ ! "$(id -u baca)" -eq "$PUID" ]; then usermod -o -u "$PUID" baca ; fi
if [ ! "$(id -g baca)" -eq "$GUID" ]; then groupmod -o -u "$GUID" baca ; fi

echo "
----------------------------------------------------
| \ | \ \      / / |   | \ | | ____\ \/ / | | / ___| 
|  \| |\ \ /\ / /| |   |  \| |  _|  \  /| | | \___ \ 
| |\  | \ V  V / | |___| |\  | |___ /  \| |_| |___) |
|_| \_|  \_/\_/  |_____|_| \_|_____/_/\_\\___/|____/                                                
----------------------------------------------------
GID/UID
----------------------------------------------------
User uid:    $(id -u baca)
User gid:    $(id -g baca)
----------------------------------------------------
"
chown baca:baca /app
chown baca:baca /config
chown baca:baca /defaults