#!/bin/bash

link_file() {
    source_file=$1
    destination_file=$2

    if [ ! -f "$source_file" ]; then
        echo "$source_file not found"
        return 1
    fi

    ln -s -f "$source_file" "$destination_file"

    if [ $? -ne 0 ]; then
        echo "Error linking $source_file to $destination_file"
        echo "$?"
        return 1
    fi

    return 0
}

dotfiles_dir=$(dirname "$(readlink -f "$0")")
echo $dotfiles_dir

files_to_link=(
    ".zshrc"
    ".vimrc"
    ".p10k.zsh"
    ".wezterm.lua" 
)

for file_name in "${files_to_link[@]}"; do
    source_file="$dotfiles_dir/$file_name"
    destination_file="$HOME/$file_name"
    
    link_file "$source_file" "$destination_file"
done

mkdir -p "$HOME/.config/nvim"
touch "$HOME/.config/nvim/init.vim"
link_file "$dotfiles_dir/.vimrc" "$HOME/.config/nvim/init.vim"

