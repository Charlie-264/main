#!/bin/bash

printf "Vui lòng đợi nạp dữ liệu...\n"
for file in ../install/vanilla-forks/*.sh ../install/proxy/*.sh ../install/mod/*.sh ../install/hybrid/arclight/*.sh ../install/hybrid/mohist/*.sh ../install/hybrid/sponge/*.sh ../other/*.sh; do
    source $file
done
source java.sh
source mc-urls.sh
cd ..
if [[ -d "Server" ]]; then
    cd Server
elif [[ ! -d "Server" ]]; then
    mkdir -p "Server"
    cd Server
fi
main_menu
