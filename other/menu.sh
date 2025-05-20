#!/bin/bash

function display_menu {
    printf "${blue}=============================================================================\n"
    printf "${blue}=============================================================================\n"
    printf "${blue}====                                                                     ====\n"
    printf "${blue}==                       ${yellow}M I N E C R A F T    T O O L${blue}                      ==\n"
    printf "${blue}====                                                                     ====\n"
    printf "${blue}=============================================================================\n"
    printf "${blue}=============================================================================\n"
    printf "${green}Code by Charlie264${reset}\n"
    printf "\n"
    printf "\n"
}

function main_menu {
    while true; do
        clear
        display_menu
        printf "${yellow}==================================   MENU   =================================${reset}\n"
        printf "\n"
        printf "${green}Chọn kiểu Server bạn muốn:${reset}\n"
        printf "${yellow}1) Vanilla & Forks${reset}\n"
        printf "${yellow}2) Modding Server${reset}\n"
        printf "${yellow}3) Hybrid${reset}\n"
        printf "${yellow}4) Proxy${reset}\n"
        printf "${yellow}5) Bedrock${reset}\n"
        printf "${blue}00) Thay đổi phiên bản hoặc cài đặt lại Java${reset}\n"
        printf "${blue}01) Server đang chạy${reset}\n"
        printf "${blue}0) Thoát${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) menu_vanilla_forks ;;
            2) menu_modding_server ;;
            3) menu_hybrid ;;
            4) menu_network ;;
            5) menu_bedrock ;;
            00) menu_java ;;
            01) screen_running ;;
            0) end_script ;;
        esac
    done
}

function menu_vanilla_forks {
    while true; do
        clear
        display_menu
        printf "${yellow}==========================   Menu Vanilla & Forks   =========================${reset}\n"
        printf "\n"
        printf "${green}Chọn loại Server:${reset}\n"
        printf "${yellow}01) Vanilla${reset}\n"
        printf "${yellow}02) Paper${reset}\n"
        printf "${yellow}03) Pufferfish${reset}\n"
        printf "${yellow}04) Spigot-Bukkit${reset}\n"
        printf "${yellow}05) Folia${reset}\n"
        printf "${yellow}06) Purpur${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) menu_vanilla ;;
            2) menu_paper ;;
            3) menu_pufferfish ;;
            4) menu_spigot_bukkit ;;
            5) menu_folia ;;
            6) menu_purpur ;;
            0) main_menu ;;
        esac
    done
}

function menu_modding_server {
    while true; do
        clear
        display_menu
        printf "${yellow}==========================   Menu Modding Server   ==========================${reset}\n"
        printf "\n"
        printf "${green}Chọn loại Modding Server:${reset}\n"
        printf "${yellow}01) Fabric${reset}\n"
        printf "${yellow}02) Forge${reset}\n"
        printf "${yellow}03) NeoForge${reset}\n"
        printf "${yellow}04) Quilt${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) menu_fabric ;;
            2) menu_forge ;;
            3) menu_neoforge ;;
            4) menu_quilt ;;
            0) main_menu ;;
        esac
    done
}

function menu_hybrid {
    while true; do
        clear
        display_menu
        printf "${yellow}===========================   Menu Hybrid Server   ==========================${reset}\n"
        printf "\n"
        printf "${green}Chọn loại Hybrid Server:${reset}\n"
        printf "${yellow}01) Mohist${reset}\n"
        printf "${yellow}02) Arclight${reset}\n"
        printf "${yellow}03) Sponge${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) menu_mohist ;;
            2) menu_arclight ;;
            3) menu_sponge ;;
            0) main_menu ;;
        esac
    done
}

function menu_network {
    while true; do
        clear
        display_menu
        printf "${yellow}===========================   Menu Proxy Server   ===========================${reset}\n"
        printf "\n"
        printf "${green}Chọn loại Proxy:${reset}\n"
        printf "${yellow}01) Waterfall${reset}\n"
        printf "${yellow}02) Velocity${reset}\n"
        printf "${yellow}03) BungeeCord${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"       
        read -r choice
        case $choice in
            1) menu_waterfall ;;
            2) menu_velocity ;;
            3) menu_bungeecord ;;
            0) main_menu ;;
        esac 
    done
}

function menu_bedrock {
    while true; do
        clear
        display_menu
        printf "${yellow}==============================   Menu Bedrock   =============================${reset}\n"
        printf "\n"
        printf "${green}Chọn loại Bedrock Dedicated Server:${reset}\n"
        printf "${yellow}01) Normal${reset}\n"
        printf "${yellow}02) Preview${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}\n"
        read -r choice
        case $choice in
            1) menu_bedrock_normal ;;
            2) menu_bedrock_preview ;;
            0) main_menu ;;
        esac
    done
}

function menu_java {
    while true; do
        clear
        display_menu
        printf "${yellow}===============================   Menu Java   ===============================${reset}\n"
        printf "\n"
        java_default
        printf "\n"
        printf "${green}Chọn phiên bản Java bạn muốn thay đổi hoặc cài đặt lại:${reset}\n"
        printf "${yellow}01) Java 8${reset}\n"
        printf "${yellow}02) Java 11${reset}\n"
        printf "${yellow}03) Java 17${reset}\n"
        printf "${yellow}04) Java 21${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"       
        read -r choice
        case $choice in
            1) set_java 8 ;;
            2) set_java 11 ;;
            3) set_java 17 ;;
            4) set_java 21 ;;
            0) main_menu ;;
        esac 
    done
}

function end_script {
    clear
    display_menu
    printf "${yellow}==================================   MENU   =================================${reset}\n"
    printf "\n"
    printf "${yellow}Đang kiểm tra và thoát những Server đang chạy...${reset}\n"
    sleep 1
    server_running=$(screen -ls | awk '/Detached/ {print $1}')
    if [[ -z "$server_running" ]]; then
        printf "${green}Không có Server nào đang chạy.${reset}\n"
        sleep 0.5
    elif [[ ! -z "$server_running" ]]; then
        printf "${yellow}Đang dừng tất cả Server đang chạy...${reset}\n"
        for server in $server_running; do
            screen -S "$server" -X stuff "save-all\n"
            sleep 2
            screen -S "$server" -X stuff "stop\n"
            sleep 5
            printf "${green}Đã dừng tất cả Server."
        done
    fi
    sleep 0.5
    printf "\n"
    printf "\n"
    printf "${green}Cảm ơn bạn đã sử dụng Tool Minecraft Server!\n"
    printf "${green}Hẹn gặp lại!\n"
    printf "${reset}\n"
    sleep 0.5
    exit 0
}