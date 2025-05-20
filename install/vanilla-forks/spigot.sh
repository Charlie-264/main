#!/bin/bash

function menu_spigot_bukkit {
    while true; do
        clear
        display_menu
        printf "${yellow}=========================   Menu Minecraft Spigot   =========================\n"
        printf "\n"
        printf "${green}Chọn phiên bản bạn muốn cài đặt:${reset}\n"
        printf "${yellow}01) 1.8        13) 1.11        25) 1.14.3      37) 1.18        49) 1.20.4\n"
        printf "${yellow}02) 1.8.3      14) 1.11.1      26) 1.14.4      38) 1.18.1      50) 1.20.5 \n"
        printf "${yellow}03) 1.8.4      15) 1.11.2      27) 1.15        39) 1.18.2      51) 1.20.6\n"
        printf "${yellow}04) 1.8.5      16) 1.12        28) 1.15.1      40) 1.19        52) 1.21\n"
        printf "${yellow}05) 1.8.6      17) 1.12.1      29) 1.15.2      41) 1.19.1      53) 1.21.1\n"
        printf "${yellow}06) 1.8.7      18) 1.12.2      30) 1.16.1      42) 1.19.2      54) 1.21.2\n"
        printf "${yellow}07) 1.8.8      19) 1.13        31) 1.16.2      43) 1.19.3      55) 1.21.3\n"
        printf "${yellow}08) 1.9        20) 1.13.1      32) 1.16.3      44) 1.19.4      56) 1.21.4\n"
        printf "${yellow}09) 1.9.2      21) 1.13.2      33) 1.16.4      45) 1.20        57) 1.21.5\n"
        printf "${yellow}10) 1.9.4      22) 1.14        34) 1.16.5      46) 1.20.1\n"
        printf "${yellow}11) 1.10       23) 1.14.1      35) 1.17        47) 1.20.2\n"
        printf "${yellow}12) 1.10.2     24) 1.14.2      36) 1.17.1      48) 1.20.3\n"
        printf "${blue}00) Phiên bản đã cài đặt${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) install_spigot_bukkit 1.8 ;;    
            2) install_spigot_bukkit 1.8.3 ;;
            3) install_spigot_bukkit 1.8.4 ;;
            4) install_spigot_bukkit 1.8.5 ;;
            5) install_spigot_bukkit 1.8.6 ;;
            6) install_spigot_bukkit 1.8.7 ;;
            7) install_spigot_bukkit 1.8.8 ;;
            8) install_spigot_bukkit 1.9 ;;
            9) install_spigot_bukkit 1.9.2 ;;
            10) install_spigot_bukkit 1.9.4 ;;
            11) install_spigot_bukkit 1.10 ;;
            12) install_spigot_bukkit 1.10.2 ;;
            13) install_spigot_bukkit 1.11 ;;
            14) install_spigot_bukkit 1.11.1 ;;
            15) install_spigot_bukkit 1.11.2 ;;
            16) install_spigot_bukkit 1.12 ;;
            17) install_spigot_bukkit 1.12.1 ;;
            18) install_spigot_bukkit 1.12.2 ;;
            19) install_spigot_bukkit 1.13 ;;
            20) install_spigot_bukkit 1.13.1 ;;
            21) install_spigot_bukkit 1.13.2 ;;
            22) install_spigot_bukkit 1.14 ;;
            23) install_spigot_bukkit 1.14.1 ;;
            24) install_spigot_bukkit 1.14.2 ;;
            25) install_spigot_bukkit 1.14.3 ;;
            26) install_spigot_bukkit 1.14.4 ;;
            27) install_spigot_bukkit 1.15 ;;
            28) install_spigot_bukkit 1.15.1 ;;
            29) install_spigot_bukkit 1.15.2 ;;
            30) install_spigot_bukkit 1.16.1 ;;
            31) install_spigot_bukkit 1.16.2 ;;
            32) install_spigot_bukkit 1.16.3 ;;
            33) install_spigot_bukkit 1.16.4 ;;
            34) install_spigot_bukkit 1.16.5 ;;
            35) install_spigot_bukkit 1.17 ;;
            36) install_spigot_bukkit 1.17.1 ;;
            37) install_spigot_bukkit 1.18 ;;
            38) install_spigot_bukkit 1.18.1 ;;
            39) install_spigot_bukkit 1.18.2 ;;
            40) install_spigot_bukkit 1.19 ;;
            41) install_spigot_bukkit 1.19.1 ;;
            42) install_spigot_bukkit 1.19.2 ;;
            43) install_spigot_bukkit 1.19.3 ;;
            44) install_spigot_bukkit 1.19.4 ;;
            45) install_spigot_bukkit 1.20 ;;
            46) install_spigot_bukkit 1.20.1 ;;
            47) install_spigot_bukkit 1.20.2 ;;
            48) install_spigot_bukkit 1.20.3 ;;
            49) install_spigot_bukkit 1.20.4 ;;
            50) install_spigot_bukkit 1.20.5 ;;
            51) install_spigot_bukkit 1.20.6 ;;
            52) install_spigot_bukkit 1.21 ;;
            53) install_spigot_bukkit 1.21.1 ;;
            54) install_spigot_bukkit 1.21.2 ;;
            55) install_spigot_bukkit 1.21.3 ;;
            56) install_spigot_bukkit 1.21.4 ;;
            57) install_spigot_bukkit 1.21.5 ;;
            00) subdirectory_spigot ;;
            0) return ;;
        esac
    done
}

function install_spigot_bukkit {
    local version=$1
    local url=${spigot_bukkit_urls[$version]}
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
                local main_directory="Spigot-Bukkit Server"
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
                            if wget "$url" -O spigot.jar; then
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
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -jar spigot.jar --nogui
                                                                ;;
                                                            2)
                                                                clear
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar spigot.jar --nogui
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
                                                                screen -dmS "Spigot-Bukkit--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar spigot.jar --nogui"
                                                                printf "${green}Spigot-Bukkit--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                                ;;
                                                            2)
                                                                if [[ -f "$config_file" ]]; then
                                                                    sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                                else
                                                                    echo "server-port=$port" > "$config_file"
                                                                fi
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                screen -dmS "Spigot-Bukkit--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar spigot.jar --nogui"
                                                                printf "${green}Spigot-Bukkit--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                                printf "${red}Không thể tải về Minecraft Spigot-Bukkit. Vui lòng thử lại sau${reset}\n"
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
                    if wget "$url" -O spigot.jar; then
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
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -jar spigot.jar --nogui
                                                        ;;
                                                    2)
                                                        clear
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar spigot.jar --nogui
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
                                                        screen -dmS "Spigot-Bukkit--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar spigot.jar --nogui"
                                                        printf "${green}Spigot-Bukkit--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                        ;;
                                                    2)
                                                        if [[ -f "$config_file" ]]; then
                                                            sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                        else
                                                            echo "server-port=$port" > "$config_file"
                                                        fi
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        screen -dmS "Spigot-Bukkit--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar spigot.jar --nogui"
                                                        printf "${green}Spigot-Bukkit--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                        printf "${red}Không thể tải về Minecraft Spigot-Bukkit. Vui lòng thử lại sau${reset}\n"
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

function subdirectory_spigot {
    while true; do
        clear
        display_menu
        printf "${yellow}=========================   Menu Minecraft Spigot   =========================\n"
        printf "\n"
        printf "${green}Danh sách phiên bản đã cài đặt trong hệ thống:${reset}\n"
        if [[ -d "Spigot-Bukkit Server" ]]; then
            count=1
            declare -A version_map
            for subdirectory in "Spigot-Bukkit Server"/*; do
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
            if [[ -n "$selected_version" && -d "Spigot-Bukkit Server/$selected_version" ]]; then
                printf "\n"
                printf "${green}Bạn đã chọn phiên bản: ${yellow}$selected_version${reset}\n"
                printf "${yellow}1) Khởi động phiên bản${reset}\n"
                printf "${yellow}2) Xóa phiên bản${reset}\n"
                printf "${blue}0) Hủy${reset}\n"
                while true; do
                    read -r action
                    case $action in
                        1)
                        cd "Spigot-Bukkit Server/$selected_version" || exit
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
                                                    java -Xms128M -XX:MaxRAMPercentage=95.0 -jar spigot.jar --nogui
                                                    ;;
                                                2)
                                                    clear
                                                    printf "${green}Đang khởi động Server...${reset}\n"
                                                    java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar spigot.jar --nogui
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
                                                    screen -dmS "Spigot-Bukkit--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar spigot.jar --nogui"
                                                    port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                    printf "${green}Spigot-Bukkit--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                    ;;
                                                2)
                                                    printf "${green}Đang khởi động Server...${reset}\n"
                                                    screen -dmS "Spigot-Bukkit--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar spigot.jar --nogui"
                                                    port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                    printf "${green}Spigot-Bukkit--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                            ;;
                        2)
                            printf "${yellow}Bạn có chắc chắn muốn xóa phiên bản này không? [y/n]${reset}\n"
                            while true; do
                                read -r confirm_delete
                                if [[ "$confirm_delete" =~ [yY] ]]; then
                                    rm -rf "Spigot-Bukkit Server/$selected_version"
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
