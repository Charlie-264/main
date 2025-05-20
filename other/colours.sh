#!/bin/bash
declare -A colours=(
    [green]="\e[32m"
    [yellow]="\e[33m"
    [red]="\e[31m"
    [blue]="\e[34m"
    [reset]="\e[0m"
)

export green="${colours[green]}"
export yellow="${colours[yellow]}"
export red="${colours[red]}"
export blue="${colours[blue]}"
export reset="${colours[reset]}"