#!/bin/bash

function menu_bungeecord {
    while true; do
        clear
        display_menu
        printf "${yellow}=============================   Menu Waterfall   ============================${reset}\n"
        printf "\n"
        printf "${green}Chọn phiên bản bạn muốn cài đặt:${reset}\n"
        printf "${yellow}01) 1.0        12) 1.12${reset}\n"
        printf "${yellow}02) 1.4.7      13) 1.13${reset}\n"
        printf "${yellow}03) 1.5        14) 1.14${reset}\n"
        printf "${yellow}04) 1.6.1      15) 1.15${reset}\n"
        printf "${yellow}05) 1.6.2      16) 1.16${reset}\n"
        printf "${yellow}06) 1.6.4      17) 1.17${reset}\n"
        printf "${yellow}07) 1.7        18) 1.18${reset}\n"
        printf "${yellow}08) 1.8        19) 1.19${reset}\n"
        printf "${yellow}09) 1.9        20) 1.20${reset}\n"
        printf "${yellow}10) 1.10       21) 1.21${reset}\n"
        printf "${yellow}11) 1.11${reset}\n"
        printf "${blue}00) Phiên bản đã cài đặt${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        read -r choice
        case $choice in
            1) install_bungeecord 1.0 ;;
            2) install_bungeecord 1.4.7 ;;
            3) install_bungeecord 1.5 ;;
            4) install_bungeecord 1.6.1 ;;
            5) install_bungeecord 1.6.2 ;;
            6) install_bungeecord 1.6.4 ;;
            7) install_bungeecord 1.7 ;;
            8) install_bungeecord 1.8 ;;
            9) install_bungeecord 1.9 ;;
            10) install_bungeecord 1.10 ;;
            11) install_bungeecord 1.11 ;;
            12) install_bungeecord 1.12 ;;
            13) install_bungeecord 1.13 ;;
            14) install_bungeecord 1.14 ;;
            15) install_bungeecord 1.15 ;;
            16) install_bungeecord 1.16 ;;
            17) install_bungeecord 1.17 ;;
            18) install_bungeecord 1.18 ;;
            19) install_bungeecord 1.19 ;;
            20) install_bungeecord 1.20 ;;
            21) install_bungeecord 1.21 ;;
            00) subdirectory_bungeecord ;;
            0) menu_network ;;
        esac
    done
}

function install_bungeecord {
    local version=$1
    local url=${bungeecord_urls[$version]}
    printf "${green}Bạn đã chọn phiên bản: ${yellow}$version${green}\n"
    printf "Xác nhận cài đặt? ${yellow}[y/n]${reset}\n"
        while true; do
        read -r confirm
        if [[ "$confirm" =~ [yY] ]]; then
            while true; do
                clear
                printf "${green}Đang tiến hành tải và cài đặt...${reset}\n"
                sleep 1
                local main_directory="BungeeCord"
                local subdirectory="$version"
                if [[ -d "$main_directory/$subdirectory" ]]; then
                    printf "${yellow}Phiên bản đã tồn tại. Bạn có muốn ghi đè không? [y/n]${reset}\n"
                    printf "${yellow}Lưu ý: ghi đè sẽ xóa toàn bộ dữ liệu và cài đặt lại từ đầu. Xin hãy cân nhắc!${reset}\n"
                    while true; do
                        read -r overwrite
                        if [[ "$overwrite" =~ [yY] ]]; then
                            rm -rf "$main_directory/$subdirectory"
                            printf "${green}Đang xóa phiên bản và cài đặt lại...${reset}\n"
                            sleep 1
                            mkdir -p "$main_directory/$subdirectory"
                            cd "$main_directory/$subdirectory" || exit
                            if wget "$url" -O bungeecord.jar; then
                                echo "eula=true" > eula.txt
                                printf "${yellow}Bạn có muốn khởi động luôn không? [y/n]${reset}\n"
                                while true; do
                                    read -r confirm
                                    if [[ "$confirm" =~ [yY] ]]; then
                                        printf "${green}Bạn muốn chạy đơn hay đa Proxy Server?${reset}\n"
                                        printf "${yellow}1) Đơn${reset}\n"
                                        printf "${yellow}2) Đa Server${reset}\n"
                                        printf "\n"
                                        while true; do
                                            read -r option
                                            case $option in
                                                1)
                                                    printf "${green}Chọn loại phương thức khởi động Proxy Server:${reset}\n"
                                                    printf "${yellow}1) Normal${reset}\n"
                                                    printf "${yellow}2) Aikar's Flags${reset}\n"
                                                    printf "\n"
                                                    while true; do
                                                        read -r option
                                                        case $option in
                                                            1)
                                                                clear
                                                                printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -jar bungeecord.jar
                                                                ;;
                                                            2)
                                                                clear
                                                                printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar bungeecord.jar
                                                                ;;
                                                        esac
                                                        break 2
                                                    done
                                                    ;;
                                                2)
                                                    printf "${green}Chọn loại phương thức khởi động Proxy Server:${reset}\n"
                                                    printf "${yellow}1) Normal${reset}\n"
                                                    printf "${yellow}2) Aikar's Flags${reset}\n"
                                                    printf "\n"
                                                    while true; do
                                                        read -r option
                                                        case $option in
                                                            1)
                                                                printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                                screen -dmS "Proxy-BungeeCord--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar bungeecord.jar"
                                                                printf "${green}Proxy-BungeeCord--$version đã khởi động ${reset}\n"
                                                                ;;
                                                            2)
                                                                printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                                screen -dmS "Proxy-BungeeCord--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar bungeecord.jar"
                                                                printf "${green}Proxy-BungeeCord--$version đã khởi động ${reset}\n"
                                                                ;;
                                                        esac
                                                        break 2
                                                    done
                                                    ;;
                                            esac
                                        done
                                        cd ../..
                                        printf "${yellow}Bạn có muốn quay lại Menu không? [y/n]${reset}\n"
                                        while true; do
                                            read -r confirm
                                            if [[ "$confirm" =~ [yY] ]]; then
                                                printf "${green}Đang quay lại Menu...${reset}\n"
                                                sleep 1
                                                return
                                            elif [[ "$confirm" =~ [nN] ]]; then
                                                printf "${green}Tạm biệt và hẹn gặp lại!${reset}\n"
                                                sleep 0.5
                                                exit 0
                                            fi
                                        done
                                    elif [[ "$confirm" =~ [nN] ]]; then
                                        printf "${green}Đang quay lại Menu...${reset}\n"
                                        cd ../..
                                        sleep 1
                                        return
                                    fi
                                done
                            else
                                printf "${red}Không thể tải về BungeeCord Proxy. Vui lòng thử lại sau${reset}\n"
                                sleep 0.5
                                printf "${yellow}Đang quay lại Menu...${reset}\n"
                                sleep 1
                                return
                            fi
                        elif [[ "$overwrite" =~ [nN] ]]; then
                            return
                        fi
                    done
                else
                    mkdir -p "$main_directory/$subdirectory"
                    cd "$main_directory/$subdirectory" || exit
                    if wget "$url" -O bungeecord.jar; then
                        echo "eula=true" > eula.txt
                        printf "${yellow}Bạn có muốn khởi động luôn không? [y/n]${reset}\n"
                        while true; do
                        read -r confirm
                            if [[ "$confirm" =~ [yY] ]]; then
                                printf "${green}Bạn muốn chạy đơn hay đa Proxy Server?${reset}\n"
                                printf "${yellow}1) Đơn${reset}\n"
                                printf "${yellow}2) Đa Server${reset}\n"
                                printf "\n"
                                while true; do
                                    read -r option
                                    case $option in
                                        1)
                                            printf "${green}Chọn loại phương thức khởi động Proxy Server:${reset}\n"
                                            printf "${yellow}1) Normal${reset}\n"
                                            printf "${yellow}2) Aikar's Flags${reset}\n"
                                            printf "\n"
                                            while true; do
                                                read -r option
                                                case $option in
                                                    1)
                                                        clear
                                                        printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -jar bungeecord.jar
                                                        ;;
                                                    2)
                                                        clear
                                                        printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar bungeecord.jar
                                                        ;;
                                                esac
                                                break 2
                                            done
                                            ;;
                                        2)
                                            printf "${green}Chọn loại phương thức khởi động Proxy Server:${reset}\n"
                                            printf "${yellow}1) Normal${reset}\n"
                                            printf "${yellow}2) Aikar's Flags${reset}\n"
                                            printf "\n"
                                            while true; do
                                                read -r option
                                                case $option in
                                                    1)
                                                        printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                        screen -dmS "Proxy-BungeeCord--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar bungeecord.jar"
                                                        printf "${green}Proxy-BungeeCord--$version đã khởi động ${reset}\n"
                                                        ;;
                                                    2)
                                                        printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                        screen -dmS "Proxy-BungeeCord--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar bungeecord.jar"
                                                        printf "${green}Proxy-BungeeCord--$version đã khởi động ${reset}\n"
                                                        ;;
                                                esac
                                                break 2
                                            done
                                            ;;
                                    esac
                                done
                                cd ../..
                                printf "${yellow}Bạn có muốn quay lại Menu không? [y/n]${reset}\n"
                                while true; do
                                    read -r confirm
                                    if [[ "$confirm" =~ [yY] ]]; then
                                        printf "${green}Đang quay lại Menu...${reset}\n"
                                        sleep 1
                                        return
                                    elif [[ "$confirm" =~ [nN] ]]; then
                                        printf "${green}Tạm biệt và hẹn gặp lại!${reset}\n"
                                        sleep 0.5
                                        exit 0
                                    fi
                                done
                            elif [[ "$confirm" =~ [nN] ]]; then
                                printf "${green}Đang quay lại Menu...${reset}\n"
                                cd ../..
                                sleep 1
                                return
                            fi
                        done
                    else
                        printf "${red}Không thể tải về BungeeCord Proxy. Vui lòng thử lại sau${reset}\n"
                        sleep 0.5
                        printf "${yellow}Đang quay lại Menu...${reset}\n"
                        sleep 1
                        return
                    fi
                fi
            done
        elif [[ "$confirm" =~ [nN] ]]; then
            printf "${green}Đã hủy cài đặt.${reset}\n"
            sleep 0.5
            return
        fi
    done
}

function subdirectory_bungeecord {
    while true; do
        clear
        display_menu
        printf "${yellow}=============================   Menu Waterfall   ============================${reset}\n"
        printf "\n"
        printf "${green}Danh sách phiên bản đã cài đặt trong hệ thống:${reset}\n"
        if [[ -d "BungeeCord" ]]; then
            count=1
            declare -A version_map
            for subdirectory in "BungeeCord"/*; do
            if [[ -d "$subdirectory" ]]; then
                version=$(basename "$subdirectory")
                printf "${yellow}$count) $version${reset}\n"
                version_map[$count]="$version"
                count=$((count + 1))
            fi
            done
            printf "${blue}0) Quay lại${reset}\n"
            printf "\n"
            printf "${green}Chọn phiên bản để khởi động hoặc xóa: ${reset}\n"
            read -r choice
            selected_version=${version_map[$choice]}
            if [[ -n "$selected_version" && -d "BungeeCord/$selected_version" ]]; then
                printf "\n"
                printf "${green}Bạn đã chọn phiên bản: ${yellow}$selected_version${reset}\n"
                printf "${yellow}1) Khởi động phiên bản${reset}\n"
                printf "${yellow}2) Xóa phiên bản${reset}\n"
                printf "${blue}0) Hủy${reset}\n"
                while true; do
                    read -r action
                    case $action in
                        1)
                            cd "BungeeCord/$selected_version" || exit
                            printf "${green}Bạn muốn chạy đơn hay đa Proxy Server?${reset}\n"
                            printf "${yellow}1) Đơn${reset}\n"
                            printf "${yellow}2) Đa Server${reset}\n"
                            printf "\n"
                            while true; do
                                read -r option
                                case $option in
                                    1)
                                        printf "${green}Chọn loại phương thức khởi động Proxy Server:${reset}\n"
                                        printf "${yellow}1) Normal${reset}\n"
                                        printf "${yellow}2) Aikar's Flags${reset}\n"
                                        printf "\n"
                                        while true; do
                                            read -r option
                                            case $option in
                                                1)
                                                    clear
                                                    printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                    java -Xms128M -XX:MaxRAMPercentage=95.0 -jar bungeecord.jar
                                                    ;;
                                                2)
                                                    clear
                                                    printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                    java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar bungeecord.jar
                                                    ;;
                                            esac
                                            break 2
                                        done
                                        ;;
                                    2)
                                        printf "${green}Chọn loại phương thức khởi động Proxy Server:${reset}\n"
                                        printf "${yellow}1) Normal${reset}\n"
                                        printf "${yellow}2) Aikar's Flags${reset}\n"
                                        printf "\n"
                                        while true; do
                                            read -r option
                                            case $option in
                                                1)
                                                    printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                    screen -dmS "Proxy-BungeeCord--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar bungeecord.jar"
                                                    printf "${green}Proxy-BungeeCord--$version đã khởi động ${reset}\n"
                                                    ;;
                                                2)
                                                    printf "${green}Đang khởi động Proxy Server...${reset}\n"
                                                    screen -dmS "Proxy-BungeeCord--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar bungeecord.jar"
                                                    printf "${green}Proxy-BungeeCord--$version đã khởi động ${reset}\n"
                                                    ;;
                                            esac
                                            break 2
                                        done
                                        ;;
                                esac
                            done
                            cd ../..
                            printf "${yellow}Bạn có muốn quay lại Menu không? [y/n]${reset}\n"
                            while true; do
                                read -r confirm
                                if [[ "$confirm" =~ [yY] ]]; then
                                    printf "${green}Đang quay lại Menu...${reset}\n"
                                    sleep 1
                                    return
                                elif [[ "$confirm" =~ [nN] ]]; then
                                    printf "${green}Tạm biệt và hẹn gặp lại!${reset}\n"
                                    sleep 0.5
                                    exit 0
                                fi
                            done
                            ;;
                        2)
                            printf "${yellow}Bạn có chắc chắn muốn xóa phiên bản này không? [y/n]${reset}\n"
                            while true; do
                                read -r confirm_delete
                                if [[ "$confirm_delete" =~ [yY] ]]; then
                                    rm -rf "BungeeCord/$selected_version"
                                    printf "${green}Đã xóa phiên bản: $selected_version${reset}\n"
                                    sleep 1
                                elif [[ "$confirm_delete" =~ [nN] ]]; then
                                    printf "${green}Hủy xóa phiên bản.${reset}\n"
                                    sleep 1
                                fi
                            done
                            break
                            ;;
                        0) break ;;
                    esac
                done
            elif [[ "$choice" = "0" ]]; then
                return
            fi
        else
            printf "${red}Không có phiên bản nào tồn tại trong hệ thống.${reset}\n"
            printf "${blue}0) Quay lại${reset}\n"
            read -r action
            if [[ "$action" =~ "0" ]]; then
                return
            fi
        fi
    done
}

