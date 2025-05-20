#!/bin/bash

function menu_quilt {
    while true; do
        clear
        display_menu
        printf "${yellow}===============================   Menu Quilt   ==============================${reset}\n"
        printf "\n"
        printf "${green}Chọn phiên bản bạn muốn cài đặt:${reset}\n"
        printf "${red}Quilt hiện tại đang được cập nhật.${reset}\n"
        printf "${red}Vui lòng chọn loại Server khác.${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            0) menu_modding_server ;;
        esac
    done
}