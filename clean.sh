#!/bin/bash
# Colors
purple=$'\033[1;34m'
reset=$'\033[0;39m'
red=$'\033[0;31m'
green=$'\033[0;32m'

# Commands
git pull;
clear;
echo "--------------------------------------------------------------------------------"
initial_df=$(df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$")
echo -e "${purple}Current Area :\n${reset}${initial_df}${reset}"
echo ""
echo "--------------------------------------------------------------------------------"
cd;
read -n1 -p "${purple}Do you want to clean caches ?[${green}y${purple}/${red}N${purple}]${reset} " input
echo ""

if [ -n "$input" ] && [ "$input" = "y" ]; then
    echo "Starting Please Wait...";
    echo "Cleaning ./.Trash/* Please Wait..."
    rm -rf ./.Trash/*;
    echo "Cleaning ./.cache/* Please Wait..."
    rm -rf ./.cache/*;
    echo "Cleaning ./Library/Caches/* Please Wait..."
    rm -rf ./Library/Caches/*;
    echo "Cleaning ./Library/Containers/com.docker.docker/* Please Wait..."
    rm -rf ./Library/Containers/com.docker.docker/*;
    echo "Cleaning ./Library/Containers/* Please Wait..."
    rm -rf ./Library/Containers/*;
    echo "Cleaning ./Library/Application Support/Code/User/* Please Wait..."
    rm -rf ./Library/Application Support/Code/User/*;
    echo "Cleaning ./Library/Application Support/Code/CachedData/* Please Wait..."
    rm -rf ./Library/Application Support/Code/CachedData/*;
    echo "Cleaning ./Library/Developer/CoreSimulator/* Please Wait..."
    rm -rf ./Library/Developer/CoreSimulator/*;
    echo "${green}Cache Cleaning Completed."
    else
    echo "There Was an Error.";
    fi
read -n1 -p "${purple}Do you want to clean Downloads as well ?[${green}y${purple}/${red}N${purple}]${reset} " input
echo ""
if [ -n "$input" ] && [ "$input" = "y" ]; then
        echo "Cleaning Downloads Please Wait...";
		rm -rf ./Downloads/*;
        echo "${green}Cleaning Downloads Complete."
    echo "${reset}--------------------------------------------------------------------------------"
    echo -e "${purple}\nArea Before:\n${reset}${initial_df}${purple}\n\nArea After:${reset}"
        df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$"
    echo "--------------------------------------------------------------------------------"
    else
    echo "There Was an Error.";
    echo "--------------------------------------------------------------------------------"
    echo -e "${purple}\nArea Before:\n${reset}${initial_df}${purple}\n\nAre After:${reset}"
        df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$"
    echo "--------------------------------------------------------------------------------"
    
	fi
