#!/bin/bash

function menu_paper {
    while true; do
        clear
        display_menu
        printf "${yellow}=========================   Menu Minecraft Paper   ==========================\n"
        printf "\n"
        printf "${green}Chọn phiên bản bạn muốn cài đặt:${reset}\n"
        printf "${yellow}01) 1.8.8        10) 1.13.1       19) 1.15.2       28) 1.18.1       37) 1.20.2\n"
        printf "${yellow}02) 1.9.4        11) 1.13.2       20) 1.16.1       29) 1.18.2       38) 1.20.4\n"
        printf "${yellow}03) 1.10.2       12) 1.14         21) 1.16.2       30) 1.19         39) 1.20.5\n"
        printf "${yellow}04) 1.11.2       13) 1.14.1       22) 1.16.3       31) 1.19.1       40) 1.20.6\n"
        printf "${yellow}05) 1.12         14) 1.14.2       23) 1.16.4       32) 1.19.2       41) 1.21\n"
        printf "${yellow}06) 1.12.1       15) 1.14.3       24) 1.16.5       33) 1.19.3       42) 1.21.1\n"
        printf "${yellow}07) 1.12.2       16) 1.14.4       25) 1.17         34) 1.19.4       43) 1.21.3\n"
        printf "${yellow}08) 1.13-pre7    17) 1.15         26) 1.17.1       35) 1.20         44) 1.21.4\n"
        printf "${yellow}09) 1.13         18) 1.15.1       27) 1.18         36) 1.20.1       45) 1.21.5\n"
        printf "${blue}00) Phiên bản đã cài đặt${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r choice
        case $choice in
            1) install_paper 1.8.8 ;;
            2) install_paper 1.9.4 ;;
            3) install_paper 1.10.2 ;;
            4) install_paper 1.11.2 ;;
            5) install_paper 1.12 ;;
            6) install_paper 1.12.1 ;;
            7) install_paper 1.12.2 ;;
            8) install_paper 1.13-pre7 ;;
            9) install_paper 1.13 ;;
            10) install_paper 1.13.1 ;;
            11) install_paper 1.13.2 ;;
            12) install_paper 1.14 ;;
            13) install_paper 1.14.1 ;;
            14) install_paper 1.14.2 ;;
            15) install_paper 1.14.3 ;;
            16) install_paper 1.14.4 ;;
            17) install_paper 1.15 ;;
            18) install_paper 1.15.1 ;;
            19) install_paper 1.15.2 ;;
            20) install_paper 1.16.1 ;;
            21) install_paper 1.16.2 ;;
            22) install_paper 1.16.3 ;;
            23) install_paper 1.16.4 ;;
            24) install_paper 1.16.5 ;;
            25) install_paper 1.17 ;;
            26) install_paper 1.17.1 ;;
            27) install_paper 1.18 ;;
            28) install_paper 1.18.1 ;;
            29) install_paper 1.18.2 ;;
            30) install_paper 1.19 ;;
            31) install_paper 1.19.1 ;;
            32) install_paper 1.19.2 ;;
            33) install_paper 1.19.3 ;;
            34) install_paper 1.19.4 ;;
            35) install_paper 1.20 ;;
            36) install_paper 1.20.1 ;;
            37) install_paper 1.20.2 ;;
            38) install_paper 1.20.4 ;;
            39) install_paper 1.20.5 ;;
            40) install_paper 1.20.6 ;;
            41) install_paper 1.21 ;;
            42) install_paper 1.21.1 ;;
            43) install_paper 1.21.3 ;;
            44) install_paper 1.21.4 ;;
            45) install_paper 1.21.5 ;;
            00) subdirectory_paper ;;
            0) menu_vanilla_forks ;;
        esac
    done
}

function install_paper {
    local version=$1
    local url=${paper_urls[$version]}
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
                local main_directory="Paper Server"
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
                            if wget "$url" -O paper.jar; then
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
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -jar paper.jar --nogui
                                                                ;;
                                                            2)
                                                                clear
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar paper.jar --nogui
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
                                                                screen -dmS "Paper--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar paper.jar --nogui"
                                                                printf "${green}Paper--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                                ;;
                                                            2)
                                                                if [[ -f "$config_file" ]]; then
                                                                    sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                                else
                                                                    echo "server-port=$port" > "$config_file"
                                                                fi
                                                                printf "${green}Đang khởi động Server...${reset}\n"
                                                                screen -dmS "Paper--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar paper.jar --nogui"
                                                                printf "${green}Paper--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                                printf "${red}Không thể tải về Minecraft Paper. Vui lòng thử lại sau${reset}\n"
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
                    if wget "$url" -O paper.jar; then
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
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -jar paper.jar --nogui
                                                        ;;
                                                    2)
                                                        clear
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar paper.jar --nogui
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
                                                        screen -dmS "Paper--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar paper.jar --nogui"
                                                        printf "${green}Paper--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                        ;;
                                                    2)
                                                        if [[ -f "$config_file" ]]; then
                                                            sed -i "s/^server-port=.*/server-port=$port/" "$config_file"
                                                        else
                                                            echo "server-port=$port" > "$config_file"
                                                        fi
                                                        printf "${green}Đang khởi động Server...${reset}\n"
                                                        screen -dmS "Paper--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar paper.jar --nogui"
                                                        printf "${green}Paper--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                        printf "${red}Không thể tải về Minecraft Paper. Vui lòng thử lại sau${reset}\n"
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

function subdirectory_paper {
    while true; do
        clear
        display_menu
        printf "\n"
        printf "\n"
        printf "\n"
        printf "${yellow}=========================   Menu Minecraft Paper   ==========================\n"
        printf "\n"
        printf "${green}Danh sách phiên bản đã cài đặt trong hệ thống:${reset}\n"
        if [[ -d "Paper Server" ]]; then
            count=1
            declare -A version_map
            for subdirectory in "Paper Server"/*; do
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
            if [[ -n "$selected_version" && -d "Paper Server/$selected_version" ]]; then
                printf "\n"
                printf "${green}Bạn đã chọn phiên bản: ${yellow}$selected_version${reset}\n"
                printf "${yellow}1) Khởi động phiên bản${reset}\n"
                printf "${yellow}2) Xóa phiên bản${reset}\n"
                printf "${blue}0) Hủy${reset}\n"
                while true; do
                    read -r action
                    case $action in
                        1)
                        cd "Paper Server/$selected_version" || exit
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
                                                    java -Xms128M -XX:MaxRAMPercentage=95.0 -jar paper.jar --nogui
                                                    ;;
                                                2)
                                                    clear
                                                    printf "${green}Đang khởi động Server...${reset}\n"
                                                    java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar paper.jar --nogui
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
                                                    screen -dmS "Paper--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -jar paper.jar --nogui"
                                                    port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                    printf "${green}Paper--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
                                                    ;;
                                                2)
                                                    printf "${green}Đang khởi động Server...${reset}\n"
                                                    screen -dmS "Paper--$version" bash -c "java -Xms128M -XX:MaxRAMPercentage=95.0 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20  -Dterminal.jline=false -Dterminal.ansi=true -jar paper.jar --nogui"
                                                    port=$(awk -F= '/server-port/ {print $2}' server.properties)
                                                    printf "${green}Paper--$version đã khởi động trên cổng: ${yellow}$port${reset}\n"
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
                                    rm -rf "Paper Server/$selected_version"
                                    printf "${green}Đã xóa phiên bản: $selected_version${reset}\n"
                                    sleep 1
                                elif [[ "$confirm_delete" =~ [nN] ]]; then
                                    printf "${green}Hủy xóa phiên bản.${reset}\n"
                                    sleep 1
                                fi
                                break 2
                            done
                            ;;
                        0) break ;;
                    esac
                done
            elif [[ "$choice" =~ "0" ]]; then
                return
            fi
        fi
    done
}
