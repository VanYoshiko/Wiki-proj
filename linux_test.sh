#!/bin/sh

RESET="\e[0m"
OUTPUT="\e[0;33m"
INFO="\e[0;34m"
ish_pkg="bash tree C git"
ashell_plugins="ale vim-lsp ale-vimlspPC"
printf "$INFO Installed packages:\n$OUTPUT%s\n%s\n%s\n%s\n" "$(which git || echo "pkg not installed")"  "$(which tree || echo "pkg not installed")"  "$(which C || echo "pkg not installed")" "$(which bash || echo "pkg not installed")"

asci_colors() {
printf "\e[0;30mBlack \e[1;30mbold Black \e[0;90mhigh intensity Black\n"
printf "\e[0;30mBlack \e[1;30mbold Black \e[0;90mhigh intensity Black\n"
printf "\e[0;31mRed \e[1;31mbold Red \e[0;91mhigh intensity Red\n"
printf "\e[0;31mRed \e[1;31mbold Red \e[0;91mhigh intensity Red\n"
printf "\e[0;32mGreen \e[1;32mbold Green \e[0;92mhigh intensity Green\n"
printf "\e[0;32mGreen \e[1;32mbold Green \e[0;92mhigh intensity Green\n"
printf "\e[0;33mYellow \e[1;33mbold Yellow \e[0;93mhigh intensity Yellow\n"
printf "\e[0;33mYellow \e[1;33mbold Yellow \e[0;93mhigh intensity Yellow\n"
printf "\e[0;34mBlue \e[1;34mbold Blue \e[0;94mhigh intensity Blue\n"
printf "\e[0;34mBlue \e[1;34mbold Blue \e[0;94mhigh intensity Blue\n"
printf "\e[0;35mPurple \e[1;35mbold Purple \e[0;95mhigh intensity Purple\n"
printf "\e[0;35mPurple \e[1;35mbold Purple \e[0;95mhigh intensity Purple\n"
printf "\e[0;36mCyan \e[1;36mbold Cyan \e[0;96mhigh intensity Cyan\n"
printf "\e[0;36mCyan \e[1;36mbold Cyan \e[0;96mhigh intensity Cyan\n"
printf "\e[0;37mWhite \e[1;37mbold White \e[0;97mhigh intensity White\n"
printf "\e[0;37mWhite \e[1;37mbold White \e[0;97mhigh intensity White\n"
}
asci_colors

create_keygen() {
	ssh-keygen -t ed25519 -f $pri_key -N "" -C "khorihenry@hotmail.com"  >> $output_log 2>&1
	# 	echo "[INFO] Installing openssh_client..."
	echo "$LINENO [INFO] 🔑 Add this key to https://github.com/settings/keys" >> $output_log 2>&1
	cat $pub_key
	mkdir $ssh_dir/config
	chmod 600 $pri_key >/dev/null
	chmod 644 $pub_key >/dev/null
	chmod 600 $ssh_dir/config >/dev/null
	chmod 700 $ssh_dir >/dev/null
	echo "Permissions set"
	ls "$ssh_dir"
}
# create_keygen
file_count="$(ls | wc -l)"
current_dir="$(ls)"
echo "$file_count files are in directory"
for file in $current_dir; do
cp $file ~xdg
done
