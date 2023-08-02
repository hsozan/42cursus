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
    /bin/rm -rf ./.Trash/*;
    echo "Cleaning ./.cache/* Please Wait..."
    /bin/rm -rf ./.cache/*;
    echo "Cleaning ./Library/Caches/* Please Wait..."
    /bin/rm -rf ./Library/Caches/*/*;
    echo "Cleaning ./Library/Containers/com.docker.docker/* Please Wait..."
    /bin/rm -rf ./Library/Containers/com.docker.docker/*;
    echo "Cleaning ./Library/Containers/* Please Wait..."
    /bin/rm -rf ./Library/Containers/*;
    echo "Cleaning ./Library/Application Support/Code/User/* Please Wait..."
    /bin/rm -rf ./Library/Application Support/Code/User/*;
    echo "Cleaning ./Library/Application Support/Code/CachedData/* Please Wait..."
    /bin/rm -rf ./Library/Application Support/Code/CachedData/*;
    echo "Cleaning ./Library/Developer/CoreSimulator/* Please Wait..."
    /bin/rm -rf ./Library/Developer/CoreSimulator/*;
	    /bin/rm -rf "$HOME"/Library/*.42* &>/dev/null
    /bin/rm -rf "$HOME"/*.42* &>/dev/null
    /bin/rm -rf "$HOME"/.zcompdump* &>/dev/null
    /bin/rm -rf "$HOME"/.cocoapods.42_cache_bak* &>/dev/null
    /bin/chmod -R 777 "$HOME"/Library/Caches/Homebrew &>/dev/null
    /bin/rm -rf "$HOME"/Library/Caches/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Caches/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Slack/Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/discord/Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/discord/Code\ Cache/js* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/discord/Crashpad/completed/*  &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/CachedData/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/Crashpad/completed/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Code/User/workspaceStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Service\ Worker/CacheStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Application\ Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/Application\ Cache/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Crashpad/completed/* &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Chromium/Default/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Chromium/Profile\ [0-9]/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Default/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/File\ System &>/dev/null
    /bin/rm -rf "$HOME"/Desktop/Piscine\ Rules\ *.mp4
    /bin/rm -rf "$HOME"/Desktop/PLAY_ME.webloc
    find "$HOME"/Desktop -name .DS_Store -depth -exec /bin/rm {} \; &>/dev/null
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
