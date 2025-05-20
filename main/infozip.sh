#!/bin/bash

function infozip {
    if ! command -v zip &> /dev/null || ! command -v unzip &> /dev/null; then
        printf "${yellow}Zip hoặc Unzip ${red}chưa được cài đặt. ${yellow}Đang tiến hành tải và cài đặt...${reset}\n"
        # ZIP
        wget -qO zip.zip https://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/zip30.tar.gz/download
        tar -xzf zip.zip
        cd zip30
        make -f unix/Makefile generic
        cd ..
        rm -rf zip.zip
        # UNZIP
        wget -qO unzip.zip https://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz/download
        tar -xzf unzip.zip
        cd unzip60
        make -f unix/Makefile generic
        cd ..
        rm -rf unzip.zip
        
        found_file=$(find . -type f -name "unzip" | head -n 1)
        if [[ -n "$found_file" ]]; then
            cp "$found_file" .
        fi
        found_file=$(find . -type f -name "zip" | head -n 1)
        if [[ -n "$found_file" ]]; then
            cp "$found_file" .
        fi
        rm unzip60 zip30 server.properties
        chmod +x unzip 
        printf "${green}Cài đặt thành công Zip và Unzip.${reset}\n"
    fi
}

