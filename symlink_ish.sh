#!/bin/sh

# Access files by symlinking to sandbox
clear

if [ -d "/private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/sharedlocal/home" ] [ -d /mnt/shared/home" ] 
echo "$home_dir"
asci_colors="$home_dir/.local/xdg_state_home/terminal_graphics/.asci_colors"
source $asci_colors

symlink_ishfiles() {
	ln -sf "$home_dir/.bash_profile" "$HOME" && echo "[INFO] Symlinked .profile"
	ln -sf "$home_dir/.ssh" "$HOME" && echo "[INFO] Symlinked .ssh"
}

symlink_aShell() {
	local logger="$home_dir/.local/xdg_config_home/logger_a-Shell"
	local log_file="$home_dir/.local/xdg_state_home/logs/a-Shell_logs/a-Shell_logs"
	. "$logger" "Symlink manager" "INFO"
	ln -sf "$home_dir/.profile" "$HOME/Documents" && echo "[INFO] Symlinked .profile"
	ln -sf "$home_dir/.ssh" "$HOME/Documents" && echo "[INFO] Symlinked .ssh"
	ln -sf "$home_dir/.vim" "$HOME/Documents" && echo "[INFO] Symlinked .vim"
	ln -sf "$home_dir/.vimrc" "$HOME/Documents" && echo "[INFO] Symlinked .vimrc"
}

# printf "%s\t\t%s\n" "🟢🟡🔴" "SYMLINK DOTFILES"
# Main Logic
if [ -d "$home_dir_a_Shell" ]; then
	. asci
	syntax_hl
	header
	# symlink_aShell
	echo "Symlinking a-Shell files"
else
	header
	# symlink_ishfiles
	echo "Symlinking ish files"
fi
