#!/bin/bash

say () {
    RED="\033[0;31m"
    GREEN="\033[0;32m"
    CYAN="\033[0;36m"
    YELLOW="\033[1;33m"
    NC="\033[0m"

    case $1 in
        "-i") echo -e "${GREEN}INFO:: ${2}${NC}";;
        "-d") echo -e "${YELLOW}DEBUG:: ${2}${NC}";;
        "-w") echo -e "${CYAN}WARN:: ${2}${NC}";;
        "-e") echo -e "${RED}ERROR:: ${2}${NC}";;
    esac
}

say -i "INFO"
say -d "DEBUG"
say -w "WARN"
say -e "ERROR"
