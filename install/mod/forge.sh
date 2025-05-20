#!/bin/bash


function menu_forge {
    while true; do
        clear
        display_menu
        printf "${yellow}=========================   Menu Minecraft Forge   ==========================\n"
        printf "\n"
        printf "${green}Chọn phiên bản bạn muốn cài đặt: \n"
        printf "${yellow}01) 1.1           15) 1.5.1        29) 1.10         43) 1.16.1       57) 1.20\n"
        printf "${yellow}02) 1.2.3         16) 1.5.2        30) 1.10.2       44) 1.16.2       58) 1.20.1\n"
        printf "${yellow}03) 1.2.4         17) 1.6.1        31) 1.11         45) 1.16.3       59) 1.20.2\n"
        printf "${yellow}04) 1.2.5         18) 1.6.2        32) 1.11.2       46) 1.16.4       60) 1.20.3\n"
        printf "${yellow}05) 1.3.2         19) 1.6.3        33) 1.12         47) 1.16.5       61) 1.20.4\n"
        printf "${yellow}06) 1.4           20) 1.6.4        34) 1.12.1       48) 1.17.1       62) 1.20.6\n"
        printf "${yellow}07) 1.4.1         21) 1.7.2        35) 1.12.2       49) 1.18         63) 1.21\n"
        printf "${yellow}08) 1.4.2         22) 1.7.10-pre4  36) 1.13.2       50) 1.18.1       64) 1.21.1\n"
        printf "${yellow}09) 1.4.3         23) 1.7.10       37) 1.14.2       51) 1.18.2       65) 1.21.3\n"
        printf "${yellow}10) 1.4.4         24) 1.8          38) 1.14.3       52) 1.19         66) 1.21.4\n"
        printf "${yellow}11) 1.4.5         25) 1.8.8        39) 1.14.4       53) 1.19.1       67) 1.21.5\n"
        printf "${yellow}12) 1.4.6         26) 1.8.9        40) 1.15         54) 1.19.2\n"
        printf "${yellow}13) 1.4.7         27) 1.9          41) 1.15.1       55) 1.19.3\n"
        printf "${yellow}14) 1.5           28) 1.9.4        42) 1.15.2       56) 1.19.4\n"
        printf "${blue}00) Phiên bản đã cài đặt${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) install_forge 1.1-1.3.4.29 ;;
            2) install_forge 1.2.3-1.4.1.64 ;;
            3) install_forge 1.2.4-2.0.0.68 ;;
            4) install_forge 1.2.5-3.4.9.171 ;;
            5) install_forge 1.3.2-4.3.5.318 ;;
            6) install_forge 1.4-5.0.0.326 ;;
            7) install_forge 1.4.1-6.0.0.329 ;;
            8) install_forge 1.4.2-6.0.1.355 ;;
            9) install_forge 1.4.3-6.2.1.358 ;;
            10) install_forge 1.4.4-6.3.0.378 ;;
            11) install_forge 1.4.5-6.4.2.448 ;;
            12) install_forge 1.4.6-6.5.0.489 ;;
            13) install_forge 1.4.7-6.6.2.534 ;;
            14) install_forge 1.5-7.7.0.598 ;;
            15) install_forge 1.5.1-7.7.2.682 ;;
            16) install_forge 1.5.2-7.8.1.738 ;;
            17) install_forge 1.6.1-8.9.0.775 ;;
            18) install_forge 1.6.2-9.10.1.871 ;;
            19) install_forge 1.6.3-9.11.0.878 ;;
            20) install_forge 1.6.4-9.11.1.1345 ;;
            21) install_forge 1.7.2-10.12.2.1161 ;;
            22) install_forge 1.7.10-pre4-10.12.2.1149 ;;
            23) install_forge 1.7.10-10.13.4.1614 ;;
            24) install_forge 1.8-11.14.4.1563 ;;
            25) install_forge 1.8.8-11.15.0.1655 ;;
            26) install_forge 1.8.9-11.15.1.2318 ;;
            27) install_forge 1.9-12.16.1.1887 ;;
            28) install_forge 1.9.4-12.17.0.2317 ;;
            29) install_forge 1.10-12.18.0.2000 ;;
            30) install_forge 1.10.2-12.18.3.2511 ;;
            31) install_forge 1.11-13.19.1.2189 ;;
            32) install_forge 1.11.2-13.20.1.2588 ;;
            33) install_forge 1.12-14.21.1.2387 ;;
            34) install_forge 1.12.1-14.22.1.2478 ;;
            35) install_forge 1.12.2-14.23.5.2859 ;;
            36) install_forge 1.13.2-25.0.223 ;;
            37) install_forge 1.14.2-26.0.63 ;;
            38) install_forge 1.14.3-27.0.60 ;;
            39) install_forge 1.14.4-28.2.26 ;;
            40) install_forge 1.15-29.0.4 ;;
            41) install_forge 1.15.1-30.0.51 ;;
            42) install_forge 1.15.2-31.2.57 ;;
            43) install_forge 1.16.1-32.0.108 ;;
            44) install_forge 1.16.2-33.0.61 ;;
            45) install_forge 1.16.3-34.1.0 ;;
            46) install_forge 1.16.4-35.1.4 ;;
            47) install_forge 1.16.5-36.2.34 ;;
            48) install_forge 1.17.1-37.1.1 ;;
            49) install_forge 1.18-38.0.17 ;;
            50) install_forge 1.18.1-39.1.0 ;;
            51) install_forge 1.18.2-40.3.0 ;;
            52) install_forge 1.19-41.1.0 ;;
            53) install_forge 1.19.1-42.0.9 ;;
            54) install_forge 1.19.2-43.5.0 ;;
            55) install_forge 1.19.3-44.1.0 ;;
            56) install_forge 1.19.4-45.4.0 ;;
            57) install_forge 1.20-46.0.14 ;;
            58) install_forge 1.20.1-47.4.0 ;;
            59) install_forge 1.20.2-48.1.0 ;;
            60) install_forge 1.20.3-49.0.2 ;;
            61) install_forge 1.20.4-49.2.0 ;;
            62) install_forge 1.20.6-50.2.0 ;;
            63) install_forge 1.21-51.0.33 ;;
            64) install_forge 1.21.1-52.1.0 ;;
            65) install_forge 1.21.3-53.1.0 ;;
            66) install_forge 1.21.4-54.1.0 ;;
            67) install_forge 1.21.5-55.0.9 ;;
            00) subdirectory_forge ;;
            0) menu_modding_server ;;
            *) printf "${red}Lựa chọn không hợp lệ, vui lòng thử lại.${reset}" ;;
        esac
    done
}

function install_forge {
    local version=$1
    local url=${forge_urls[$version]}
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
                local main_directory="Forge Server"
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
                            if wget "$url" -O forge.jar; then
                                java -jar forge.jar --installServer
                                echo "eula=true" > eula.txt
                                found_file=$(find . -type f -name "unix_args.txt" | head -n 1)
                                if [[ -n "$found_file" ]]; then
                                    cp "$found_file" .
                                fi
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
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 @unix_args.txt --nogui "$@"
                                                                ;;
                                                            2)
                                                                clear
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true @unix_args.txt --nogui "$@"
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
                                                                screen -dmS "Forge--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 @unix_args.txt --nogui "$@""
                                                                printf "${green}Forge--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                                ;;
                                                            2)
                                                                if [[ -f "$config_file" ]]; then
                                                                    sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                                else
                                                                    echo "server-port=$port" > "$config_file"
                                                                fi
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                screen -dmS "Forge--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true @unix_args.txt --nogui "$@""
                                                                printf "${green}Forge--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                                printf "${red}Không thể tải về Minecraft Forge. Vui lòng thử lại sau${reset}\n"
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
                    if wget "$url" -O forge.jar; then
                        java -jar forge.jar --installServer
                        echo "eula=true" > eula.txt
                        found_file=$(find . -type f -name "unix_args.txt" | head -n 1)
                        if [[ -n "$found_file" ]]; then
                            cp "$found_file" .
                        fi
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
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 @unix_args.txt --nogui "$@"
                                                        ;;
                                                    2)
                                                        clear
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true @unix_args.txt --nogui "$@"
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
                                                        screen -dmS "Forge--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 @unix_args.txt --nogui "$@""
                                                        printf "${green}Forge--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                        ;;
                                                    2)
                                                        if [[ -f "$config_file" ]]; then
                                                            sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                        else
                                                            echo "server-port=$port" > "$config_file"
                                                        fi
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        screen -dmS "Forge--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true @unix_args.txt --nogui "$@""
                                                        printf "${green}Forge--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                        printf "${red}Không thể tải về Minecraft Forge. Vui lòng thử lại sau${reset}\n"
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

function subdirectory_forge {
    while true; do
        clear
        display_menu
        printf "${yellow}==========================   Menu Minecraft Forge   =========================\n"
        printf "\n"
        printf "${green}Danh sách phiên bản đã cài đặt trong hệ thống:${reset}\n"
        if [[ -d "Forge Server" ]]; then
            count=1
            declare -A version_map
            for subdirectory in "Forge Server"/*; do
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
            if [[ -n "$selected_version" && -d "Forge Server/$selected_version" ]]; then
                printf "\n"
                printf "${green}Bạn đã chọn phiên bản: ${yellow}$selected_version${reset}\n"
                printf "${yellow}1) Khởi động phiên bản${reset}\n"
                printf "${yellow}2) Xóa phiên bản${reset}\n"
                printf "${blue}0) Hủy${reset}\n"
                while true; do
                    read -r action
                    case $action in
                        1)
                            cd "Forge Server/$selected_version" || exit
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
                                                java -Xms128M -XX:MaxRAMPercentage=95.0 @unix_args.txt --nogui "$@"
                                                ;;
                                            2)
                                                clear
                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true @unix_args.txt --nogui "$@"
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
                                                screen -r "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 @unix_args.txt --nogui "$@""
                                                port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                printf "${green}Forge--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                ;;
                                            2)
                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                screen -r "Vanilla--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true @unix_args.txt --nogui "$@""
                                                port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                printf "${green}Forge--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                                    rm -rf "Forge Server/$selected_version"
                                    printf "${green}Đã xóa phiên bản: $selected_version${reset}\n"
                                    sleep 1
                                elif [[ "$confirm_delete" =~ [nN] ]]; then
                                    printf "${green}Hủy xóa phiên bản.${reset}\n"
                                    sleep 1
                                fi
                            done
                            break
                            ;;
                        0) menu_forge ;;
                    esac
                done
            elif [[ "$choice" =~ "0" ]]; then
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

