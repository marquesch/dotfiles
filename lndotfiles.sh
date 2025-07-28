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

DOTFILES_DIR=$(dirname "$(readlink -f "$0")")
SOURCE_CONFIG_DIR="$DOTFILES_DIR/.config"
CONFIG_DIR="$HOME/.config"

files_to_link=(
    ".zshrc"
    ".vimrc"
    ".p10k.zsh"
    ".wezterm.lua" 
)

for file_name in "${files_to_link[@]}"; do
    source_file="$DOTFILES_DIR/$file_name"
    destination_file="$HOME/$file_name"
    
    link_file "$source_file" "$destination_file"
done

mkdir -p "$CONFIG_DIR"

for dir in "$SOURCE_CONFIG_DIR"/*; do
    item_name=$(basename "$item")
    ln -s -f "$dir" "$CONFIG_DIR/$item_name"
done
