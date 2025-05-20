#!/bin/bash

function menu_vanilla {
    while true; do
        clear
        display_menu
        printf "${yellow}========================   Menu Minecraft Vanilla   =========================\n"
        printf "\n"
        printf "${green}Chọn phiên bản bạn muốn cài đặt: \n"
        printf "${yellow}01) 1.2.5        20) 1.6.4        39) 1.8.7        58) 1.13.2       77) 1.18.2\n"
        printf "${yellow}02) 1.3          21) 1.7          40) 1.8.8        59) 1.14         78) 1.19\n"
        printf "${yellow}03) 1.3.1        22) 1.7.1        41) 1.8.9        60) 1.14.1       79) 1.19.1\n"
        printf "${yellow}04) 1.3.2        23) 1.7.2        42) 1.9          61) 1.14.2       80) 1.19.2\n"
        printf "${yellow}05) 1.4          24) 1.7.3        43) 1.9.1        62) 1.14.3       81) 1.19.3\n"
        printf "${yellow}06) 1.4.1        25) 1.7.4        44) 1.9.2        63) 1.14.4       82) 1.19.4\n"
        printf "${yellow}07) 1.4.2        26) 1.7.5        45) 1.9.3        64) 1.15         83) 1.20\n"
        printf "${yellow}08) 1.4.3        27) 1.7.6        46) 1.9.4        65) 1.15.1       84) 1.20.1\n"
        printf "${yellow}09) 1.4.4        28) 1.7.7        47) 1.10         66) 1.15.2       85) 1.20.2\n"
        printf "${yellow}10) 1.4.5        29) 1.7.8        48) 1.10.1       67) 1.16         86) 1.20.3\n"
        printf "${yellow}11) 1.4.6        30) 1.7.9        49) 1.10.2       68) 1.16.1       87) 1.20.4\n"
        printf "${yellow}12) 1.4.7        31) 1.7.10       50) 1.11         69) 1.16.2       88) 1.20.5\n"
        printf "${yellow}13) 1.5          32) 1.8          51) 1.11.1       70) 1.16.3       89) 1.20.6\n"
        printf "${yellow}14) 1.5.1        33) 1.8.1        52) 1.11.2       71) 1.16.4       90) 1.21\n"
        printf "${yellow}15) 1.5.2        34) 1.8.2        53) 1.12         72) 1.16.5       91) 1.21.1\n"
        printf "${yellow}16) 1.6          35) 1.8.3        54) 1.12.1       73) 1.17         92) 1.21.2\n"
        printf "${yellow}17) 1.6.1        36) 1.8.4        55) 1.12.2       74) 1.17.1       93) 1.21.3\n"
        printf "${yellow}18) 1.6.2        37) 1.8.5        56) 1.13         75) 1.18         94) 1.21.4\n"
        printf "${yellow}19) 1.6.3        38) 1.8.6        57) 1.13.1       76) 1.18.1       95) 1.21.5\n"
        printf "${blue}00) Phiên bản đã cài đặt${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) install_vanilla 1.2.5 ;;
            2) install_vanilla 1.3 ;;
            3) install_vanilla 1.3.1 ;;
            4) install_vanilla 1.3.2 ;;
            5) install_vanilla 1.4 ;;
            6) install_vanilla 1.4.1 ;;
            7) install_vanilla 1.4.2 ;;
            8) install_vanilla 1.4.3 ;;
            9) install_vanilla 1.4.4 ;;
            10) install_vanilla 1.4.5 ;;
            11) install_vanilla 1.4.6 ;;
            12) install_vanilla 1.4.7 ;;
            13) install_vanilla 1.5 ;;
            14) install_vanilla 1.5.1 ;;
            15) install_vanilla 1.5.2 ;;
            16) install_vanilla 1.6 ;;
            17) install_vanilla 1.6.1 ;;
            18) install_vanilla 1.6.2 ;;
            19) install_vanilla 1.6.3 ;;
            20) install_vanilla 1.6.4 ;;
            21) install_vanilla 1.7 ;;
            22) install_vanilla 1.7.1 ;;
            23) install_vanilla 1.7.2 ;;
            24) install_vanilla 1.7.3 ;;
            25) install_vanilla 1.7.4 ;;
            26) install_vanilla 1.7.5 ;;
            27) install_vanilla 1.7.6 ;;
            28) install_vanilla 1.7.7 ;;
            29) install_vanilla 1.7.8 ;;
            30) install_vanilla 1.7.9 ;;
            31) install_vanilla 1.7.10 ;;
            32) install_vanilla 1.8 ;;
            33) install_vanilla 1.8.1 ;;
            34) install_vanilla 1.8.2 ;;
            35) install_vanilla 1.8.3 ;;
            36) install_vanilla 1.8.4 ;;
            37) install_vanilla 1.8.5 ;;
            38) install_vanilla 1.8.6 ;;
            39) install_vanilla 1.8.7 ;;
            40) install_vanilla 1.8.8 ;;
            41) install_vanilla 1.8.9 ;;
            42) install_vanilla 1.9 ;;
            43) install_vanilla 1.9.1 ;;
            44) install_vanilla 1.9.2 ;;
            45) install_vanilla 1.9.3 ;;
            46) install_vanilla 1.9.4 ;;
            47) install_vanilla 1.10 ;;
            48) install_vanilla 1.10.1 ;;
            49) install_vanilla 1.10.2 ;;
            50) install_vanilla 1.11 ;;
            51) install_vanilla 1.11.1 ;;
            52) install_vanilla 1.11.2 ;;
            53) install_vanilla 1.12 ;;
            54) install_vanilla 1.12.1 ;;
            55) install_vanilla 1.12.2 ;;
            56) install_vanilla 1.13 ;;
            57) install_vanilla 1.13.1 ;;
            58) install_vanilla 1.13.2 ;;
            59) install_vanilla 1.14 ;;
            60) install_vanilla 1.14.1 ;;
            61) install_vanilla 1.14.2 ;;
            62) install_vanilla 1.14.3 ;;
            63) install_vanilla 1.14.4 ;;
            64) install_vanilla 1.15 ;;
            65) install_vanilla 1.15.1 ;;
            66) install_vanilla 1.15.2 ;;
            67) install_vanilla 1.16 ;;
            68) install_vanilla 1.16.1 ;;
            69) install_vanilla 1.16.2 ;;
            70) install_vanilla 1.16.3 ;;
            71) install_vanilla 1.16.4 ;;
            72) install_vanilla 1.16.5 ;;
            73) install_vanilla 1.17 ;;
            74) install_vanilla 1.17.1 ;;
            75) install_vanilla 1.18 ;;
            76) install_vanilla 1.18.1 ;;
            77) install_vanilla 1.18.2 ;;
            78) install_vanilla 1.19 ;;
            79) install_vanilla 1.19.1 ;;
            80) install_vanilla 1.19.2 ;;
            81) install_vanilla 1.19.3 ;;
            82) install_vanilla 1.19.4 ;;
            83) install_vanilla 1.20 ;;
            84) install_vanilla 1.20.1 ;;
            85) install_vanilla 1.20.2 ;;
            86) install_vanilla 1.20.3 ;;
            87) install_vanilla 1.20.4 ;;
            88) install_vanilla 1.20.5 ;;
            89) install_vanilla 1.20.6 ;;
            90) install_vanilla 1.21 ;;
            91) install_vanilla 1.21.1 ;;
            92) install_vanilla 1.21.2 ;;
            93) install_vanilla 1.21.3 ;;
            94) install_vanilla 1.21.4 ;;
            95) install_vanilla 1.21.5 ;;
            00) subdirectory_vanilla ;;
            0) menu_vanilla_forks ;;
            *) printf "${red}Lựa chọn không hợp lệ. Vui lòng chọn lại.${reset}\n" ;;
        esac                          
    done
}

function install_vanilla {
    local version=$1
    local url=${vanilla_urls[$version]}
    local port=$(generate_port)
    local config_file="server.properties"
    printf "${green}Bạn đã chọn phiên bản: ${yellow}$version${green}\n"
    printf "Xác nhận cài đặt? ${yellow}[y/n]${reset}\n"
        while true; do
        read -r confirm
        if [[ "$confirm" =~ [yY] ]]; then
            while true; do
                clear
                printf "${green}Đang tiến hành tải và cài đặt...${reset}\n"
                sleep 1
                local main_directory="Vanilla Server"
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
                            if wget "$url" -O server.jar; then
                                echo "eula=true" > eula.txt
                                printf "${yellow}Bạn có muốn khởi động luôn không? [y/n]${reset}\n"
                                while true; do
                                    read -r confirm
                                    if [[ "$confirm" =~ [yY] ]]; then
                                        printf "${green}Bạn muốn chạy đơn hay đa Server?${reset}\n"
                                        printf "${yellow}1) Đơn${reset}\n"
                                        printf "${yellow}2) Đa Server${reset}\n"
                                        printf "\n"
                                        while true; do
                                            read -r option
                                            case $option in
                                                1)
                                                    printf "${green}Chọn loại phương thức khởi động Server:${reset}\n"
                                                    printf "${yellow}1) Normal${reset}\n"
                                                    printf "${yellow}2) Aikar's Flags${reset}\n"
                                                    printf "\n"
                                                    while true; do
                                                        read -r option
                                                        case $option in
                                                            1)
                                                                clear
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar --nogui
                                                                ;;
                                                            2)
                                                                clear
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar --nogui
                                                                ;;
                                                        esac
                                                        break 2
                                                    done
                                                    ;;
                                                2)
                                                    printf "${green}Chọn loại phương thức khởi động Server:${reset}\n"
                                                    printf "${yellow}1) Normal${reset}\n"
                                                    printf "${yellow}2) Aikar's Flags${reset}\n"
                                                    printf "\n"
                                                    while true; do
                                                        read -r option
                                                        case $option in
                                                            1)
                                                                if [[ -f "$config_file" ]]; then
                                                                    sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                                else
                                                                    echo "server-port=$port" > "$config_file"
                                                                fi
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                screen -dmS "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar --nogui"
                                                                printf "${green}Vanilla--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                                ;;
                                                            2)
                                                                if [[ -f "$config_file" ]]; then
                                                                    sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                                else
                                                                    echo "server-port=$port" > "$config_file"
                                                                fi
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                screen -dmS "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar --nogui"
                                                                printf "${green}Vanilla--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                                printf "${red}Không thể tải về Minecraft Vanilla. Vui lòng thử lại sau${reset}\n"
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
                    if wget "$url" -O server.jar; then
                        echo "eula=true" > eula.txt
                        printf "${yellow}Bạn có muốn khởi động luôn không? [y/n]${reset}\n"
                        printf "\n"
                        while true; do
                            read -r confirm
                            if [[ "$confirm" =~ [yY] ]]; then
                                printf "${green}Bạn muốn chạy đơn hay đa Server?${reset}\n"
                                printf "${yellow}1) Đơn${reset}\n"
                                printf "${yellow}2) Đa Server${reset}\n"
                                printf "\n"
                                while true; do
                                    read -r option
                                    case $option in
                                        1)
                                            printf "${green}Chọn loại phương thức khởi động Server:${reset}\n"
                                            printf "${yellow}1) Normal${reset}\n"
                                            printf "${yellow}2) Aikar's Flags${reset}\n"
                                            printf "\n"
                                            while true; do
                                                read -r option
                                                case $option in
                                                    1)
                                                        clear
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar --nogui
                                                        ;;
                                                    2)
                                                        clear
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar --nogui
                                                        ;;
                                                esac
                                                break 2
                                            done
                                            ;;
                                        2)
                                            printf "${green}Chọn loại phương thức khởi động Server:${reset}\n"
                                            printf "${yellow}1) Normal${reset}\n"
                                            printf "${yellow}2) Aikar's Flags${reset}\n"
                                            printf "\n"
                                            while true; do
                                                read -r option
                                                case $option in
                                                    1)
                                                        if [[ -f "$config_file" ]]; then
                                                            sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                        else
                                                            echo "server-port=$port" > "$config_file"
                                                        fi
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        screen -dmS "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar --nogui"
                                                        printf "${green}Vanilla--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                        ;;
                                                    2)
                                                        if [[ -f "$config_file" ]]; then
                                                            sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                        else
                                                            echo "server-port=$port" > "$config_file"
                                                        fi
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        screen -dmS "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar --nogui"
                                                        printf "${green}Vanilla--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                        ;;
                                                esac
                                                break 2
                                            done
                                            ;;
                                    esac
                                done
                                cd ../..
                                printf "\n"
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
                        printf "${red}Không thể tải về Minecraft Vanilla. Vui lòng thử lại sau${reset}\n"
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

function subdirectory_vanilla {
    while true; do
        clear
        display_menu
        printf "${yellow}========================   Menu Minecraft Vanilla   =========================\n"
        printf "\n"
        printf "${green}Danh sách phiên bản đã cài đặt trong hệ thống:${reset}\n"
        if [[ -d "Vanilla Server" ]]; then
            count=1
            declare -A version_map
            for subdirectory in "Vanilla Server"/*; do
                if [[ -d "$subdirectory" ]]; then
                    version=$(basename "$subdirectory")
                    printf "${yellow}$count) $version${reset}\n"
                    version_map[$count]="$version"
                    count=$((count + 1))
                elif [[ ! -d "$subdirectory" ]]; then
                    printf "${red}Không có phiên bản nào tồn tại trong hệ thống.${reset}\n"
                    printf "${blue}0) Quay lại${reset}\n"
                    read -r action
                    if [[ "$action" =~ "0" ]]; then
                        return
                    fi
                fi
            done
            printf "${blue}0) Quay lại${reset}\n"
            printf "\n"
            printf "${green}Chọn phiên bản để khởi động hoặc xóa: ${reset}\n"
            read -r choice
            selected_version=${version_map[$choice]}
            if [[ -n "$selected_version" && -d "Vanilla Server/$selected_version" ]]; then
                printf "\n"
                printf "${green}Bạn đã chọn phiên bản: ${yellow}$selected_version${reset}\n"
                printf "${yellow}1) Khởi động phiên bản${reset}\n"
                printf "${yellow}2) Xóa phiên bản${reset}\n"
                printf "${blue}0) Hủy${reset}\n"
                printf "\n"
                while true; do
                    read -r action
                    case $action in
                        1)
                            cd "Vanilla Server/$selected_version" || exit
                            printf "${green}Bạn muốn chạy đơn hay đa Server?${reset}\n"
                            printf "${yellow}1) Đơn${reset}\n"
                            printf "${yellow}2) Đa Server${reset}\n"
                            printf "\n"
                            read -r option
                            case $option in
                                1)
                                    printf "${green}Chọn loại phương thức khởi động Server:${reset}\n"
                                    printf "${yellow}1) Normal${reset}\n"
                                    printf "${yellow}2) Aikar's Flags${reset}\n"
                                    printf "\n"
                                    while true; do
                                        read -r option
                                        case $option in
                                            1)
                                                clear
                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar --nogui
                                                ;;
                                            2)
                                                clear
                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar --nogui
                                                ;;
                                        esac
                                        break 2
                                    done
                                    ;;
                                2)
                                    printf "${green}Chọn loại phương thức khởi động Server:${reset}\n"
                                    printf "${yellow}1) Normal${reset}\n"
                                    printf "${yellow}2) Aikar's Flags${reset}\n"
                                    printf "\n"
                                    while true; do
                                        read -r option
                                        case $option in
                                            1)
                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                screen -r "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar --nogui"
                                                port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                printf "${green}Vanilla--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                ;;
                                            2)
                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                screen -r "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar --nogui"
                                                port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                printf "${green}Vanilla--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                ;;
                                        esac
                                        break 2
                                    done
                                    ;;
                            esac
                            cd ../..
                            printf "\n"
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
                                    rm -rf "Vanilla Server/$selected_version"
                                    printf "${green}Đã xóa phiên bản: $selected_version${reset}\n"
                                    sleep 1
                                elif [[ "$confirm_delete" =~ [nN] ]]; then
                                    printf "${green}Hủy xóa phiên bản.${reset}\n"
                                    sleep 1
                                fi
                                break 2
                            done
                            ;;
                        0) menu_vanilla ;;
                    esac
                done
            elif [[ "$choice" =~ "0" ]]; then
                return
            fi
        fi
    done
}
