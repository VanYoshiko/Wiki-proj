#!/bin/sh

# Access files by symlinking to sandbox

home_dir="/private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/sharedlocal/home"
logger="$home_dir/.local/xdg_config_home/a-Shell_logger"
log_file="$home_dir/.local/xdg_state_home/logs/a-Shell_logs/a-Shell_logs"

. "$logger" "Symlink manager" "INFO"

symlink_dotfiles() {
ln -s "$home_dir/.vim" "$HOME/Documents" && echo "[INFO] Symlinked .vim"
ln -s "$home_dir/.profile" "$HOME/Documents" && echo "[INFO] Symlinked .profile"
ln -s "$home_dir/.vimrc" "$HOME/Documents" && echo "[INFO] Symlinked .vimrc"
ln -s "$home_dir/.ssh" "$HOME/Documents" && echo "[INFO] Symlinked .ssh"
}

# Main Logic
printf "%s\t\t%s\n" "🟢🟡🔴" "SYMLINK DOTFILES"
symlink_dotfiles
