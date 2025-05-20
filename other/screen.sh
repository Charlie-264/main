#!/bin/bash

function screen_running {
    while true; do
        clear
        display_menu
        printf "${yellow}==================================   MENU   =================================${reset}\n"
        printf "\n"
        printf "${green}Đang kiểm tra Server đang chạy...${reset}\n"
        sleep 1
        sessions=($(screen -ls | awk '/Detached/ {print $1}'))
        if [[ ${#sessions[@]} -eq 0 ]]; then
            printf "${red}Không có Server nào đang chạy.${reset}\n"
            printf "${blue}0) Quay lại${reset}\n"
            while true; do
                read -r action
                if [[ "$action" = "0" ]]; then
                    return
                fi
            done
        fi
        clear
        display_menu
        printf "${yellow}==================================   MENU   =================================${reset}\n"
        printf "\n"
        printf "${green}Danh sách các Server đang chạy:${reset}\n"
        for i in "${!sessions[@]}"; do
            printf "${yellow}$((i+1)). ${sessions[$i]}${reset}\n"
        done
        printf "${blue}0) Quay lại${reset}\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        while true; do
            read -r choice
            if [[ $choice -gt 0 && $choice -le ${#sessions[@]} ]]; then
                selected_session="${sessions[$((choice-1))]}"
                printf "${green}Bạn muốn làm gì với Server: ${yellow}$selected_session${reset}\n"
                printf "${yellow}1) Truy cập vào Terminal${reset}\n"
                printf "${yellow}2) Dừng Server${reset}\n"
                printf "${blue}0) Quay lại${reset}\n"
                while true; do
                    read -r action
                    case $action in
                        1)
                            printf "${green}Đang truy cập Terminal...${reset}\n"
                            sleep 1
                            screen -r "$selected_session"
                            break 2
                            ;;
                        2)
                            printf "${green}Đang dừng Server: ${yellow}$selected_session...${reset}\n"
                            screen -S "$selected_session" -X stuff "save-all\n"
                            sleep 2
                            screen -S "$selected_session" -X stuff "stop\n"
                            sleep 5
                            printf "${green}Đã dừng Server: $selected_session${reset}\n"
                            sleep 1
                            break 2
                            ;;
                        0) break 2 ;;
                    esac
                done
            elif [[ $choice = "0" ]]; then
                return
            fi
        done
    done
}
