#!/bin/sh

RESET="\e[0m"
OUTPUT="\e[0;33m"
INFO="\e[0;34m"
home_dir="/private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/sharedlocal/home"
logger="$home_dir/.local/xdg_config_home/a-Shell_logger"
ssh_dir="$HOME/Documents/.ssh"
gitconfig="$HOME/Documents/.gitconfig"
pri_key="$ssh_dir/id_ed25519"
. $logger "Add git config" INFO

user_configs() {
	lg2 config user.identityFile "$pri_key"
	lreg2 config user.password ""
	lg2 config user.name "VanYoshiko"
	lg2 config user.email "khorihenry@hotmail.com"
	printf "$INFO  Manually adding user configs..."
}

mkdir ~/Documents/.gitconfig
user_config >> $output_log 2>&1
