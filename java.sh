#!/bin/bash

function java_check {
    if ! java -version &> /dev/null; then
        printf "${yellow}Java chưa được cài đặt. Bạn có muốn tự động cài đặt? [Y/N]${reset}\n"
        read -r option
        if [[ $option =~ ^[Yy]$ ]]; then
            printf "${green}Đang cài đặt Java...${reset}\n"
            sudo apt update
            sleep 0.5
            sudo apt install openjdk-8-jdk openjdk-11-jdk openjdk-17-jdk openjdk-21-jdk -y
            sleep 0.5
            [[ -d /usr/lib/jvm/java-8-openjdk-amd64 ]] && \
                sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-8-openjdk-amd64/bin/java 8 && \
                sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac 8
            [[ -d /usr/lib/jvm/java-11-openjdk-amd64 ]] && \
                sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-11-openjdk-amd64/bin/java 11 && \
                sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-11-openjdk-amd64/bin/javac 11
            [[ -d /usr/lib/jvm/java-17-openjdk-amd64 ]] && \
                sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-17-openjdk-amd64/bin/java 17 && \
                sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac 17
            [[ -d /usr/lib/jvm/java-21-openjdk-amd64 ]] && \
                sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 21 && \
                sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-21-openjdk-amd64/bin/javac 21
            printf "${yellow}Bạn có muốn chọn phiên bản Java mặc định không?${reset}\n"
            printf "${yellow}Nhập 'Y' để chọn hoặc 'N' để tự động chọn: ${reset}"
            while true; do
                read -r option
                if [[ $option =~ ^[Yy]$ ]]; then
                    printf "${yellow}Chọn phiên bản Java mặc định:${reset}\n"
                    printf "${yellow}1) Java 8${reset}\n"
                    printf "${yellow}2) Java 11${reset}\n"
                    printf "${yellow}3) Java 17${reset}\n"
                    printf "${yellow}4) Java 21${reset}\n"
                    read -r version
                    case $version in
                        1)
                            sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/bin/java
                            sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
                            break
                            ;;
                        2)
                            sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java
                            sudo update-alternatives --set javac /usr/lib/jvm/java-11-openjdk-amd64/bin/javac
                            break
                            ;;
                        3)
                            sudo update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java
                            sudo update-alternatives --set javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac
                            break
                            ;;
                        4)
                            sudo update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java
                            sudo update-alternatives --set javac /usr/lib/jvm/java-21-openjdk-amd64/bin/javac
                            break
                            ;;
                        *)
                            printf "${red}Lựa chọn không hợp lệ.${reset}\n"
                            ;;
                    esac
                elif [[ $option =~ ^[Nn]$ ]]; then
                    printf "${yellow}Đã tự động chọn phiên bản Java mới nhất.${reset}\n"
                    if [[ -d /usr/lib/jvm/java-21-openjdk-amd64 ]]; then
                        sudo update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java
                        sudo update-alternatives --set javac /usr/lib/jvm/java-21-openjdk-amd64/bin/javac
                    elif [[ -d /usr/lib/jvm/java-17-openjdk-amd64 ]]; then
                        sudo update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java
                        sudo update-alternatives --set javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac
                    elif [[ -d /usr/lib/jvm/java-11-openjdk-amd64 ]]; then
                        sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java
                        sudo update-alternatives --set javac /usr/lib/jvm/java-11-openjdk-amd64/bin/javac
                    elif [[ -d /usr/lib/jvm/java-8-openjdk-amd64 ]]; then
                        sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/bin/java
                        sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
                    fi
                    break
                else
                    printf "${red}Lựa chọn không hợp lệ.${reset}\n"
                fi
            done
            printf "${green}Java đã được cài đặt thành công.${reset}\n"
            printf "${green}Đang chuyển đến menu...${reset}\n"
            sleep 1
            main_menu
        elif [[ $option =~ ^[Nn]$ ]]; then
            printf "${red}Vui lòng cài đặt Java trước khi chạy script này.${reset}\n"
            exit 1
        fi
    fi
}

function set_java {
    while true; do
        local version=$1
        printf "\n"
        printf "${green}Đã chọn ${yellow}Java $version${reset}\n"
        printf "${green}Bạn muốn đặt mặc định hay cài đặt lại?${reset}\n"
        printf "${yellow}01) Đặt mặc định${reset}\n"
        printf "${yellow}02) Cài đặt lại${reset}\n"
        printf "${blue}0) Quay lại${reset}\n"
        printf "\n"
        printf "${green}Nhập lựa chọn của bạn: ${reset}"
        read -r action
        case $action in
            1)  
                printf "${yellow}Đang thay đổi phiên bản...${reset}\n"
                sleep 1
                sudo update-alternatives --set java /usr/lib/jvm/java-$version-openjdk-amd64/bin/java
                sleep 0.5
                sudo update-alternatives --set javac /usr/lib/jvm/java-$version-openjdk-amd64/bin/javac
                printf "${green}Đã thay đổi phiên bản Java mặc định thành ${yellow}Java $version.${reset}\n"
                sleep 1.5
                break
                ;;
            2)
                printf "${yellow}Bạn có chắc chắn muốn cài đặt lại? [y/n]${reset}\n"
                read -r action
                if [[ "$action" =~ [yY] ]]; then
                    printf "${yellow}Đang cài đặt lại Java $version...${reset}\n"
                    clear
                    sudo apt remove --purge openjdk-$version-jdk -y
                    sudo apt autoremove -y
                    sleep 0.5
                    sudo update-alternatives --remove java /usr/lib/jvm/java-$version-openjdk-amd64/bin/java
                    sudo update-alternatives --remove javac /usr/lib/jvm/java-$version-openjdk-amd64/bin/javac
                    clear
                    sudo apt update
                    sleep 0.5
                    sudo apt install openjdk-$version-jdk -y
                    sleep 0.5
                    [[ -d /usr/lib/jvm/java-$version-openjdk-amd64 ]] && \
                        sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-$version-openjdk-amd64/bin/java $version && \
                        sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-$version-openjdk-amd64/bin/javac $version
                    printf "${green}Đã cài đặt lại Java $version thành công${reset}\n" 
                    sleep 1
                elif [[ "$action" =~ [nN] ]]; then
                    printf "${green}Đã hủy cài đặt Java $version.${reset}\n"
                    sleep 1
                fi
                break
                ;;
            0) break ;;
        esac
    done
}

function java_default {
    java=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
    printf "${green}Phiên bản Java đang sử dụng: ${yellow}Java $java${reset}\n"
}
