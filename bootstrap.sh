#!/bin/bash
set -x  # Enable debug mode to echo each command
# Install some packages
DEBIAN_FRONTEND=noninteractive apt update -y
DEBIAN_FRONTEND=noninteractive apt install --yes zsh-syntax-highlighting
DEBIAN_FRONTEND=noninteractive apt install --yes vim
DEBIAN_FRONTEND=noninteractive apt install --yes curl
# Installing oh-my-zsh will ask if we want to make zsh the default shell.
# Let's just pipe the answer to avoid getting stuck.
if [ -e "$HOME/.oh-my-zsh" ]; then
    echo "Skipping downloading oh-my-zsh since it exists already."
else
    echo "Y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Function to handle file checks, removal, and symlink creation
manage_symlink() {
    local filename="$1"
    local target="$HOME/$filename"
    local source_path="$(pwd)/$filename"  # Absolute path to the source file

    # Check and remove the file or symlink
    if [ -L "$target" ] || [ -e "$target" ]; then
        echo "Removing existing $target"
        rm "$target"
    else
        echo "File $target does not exist. Skipping removal."
    fi

    # Create symbolic link with absolute path
    echo "Creating symbolic link for $target pointing to $source_path"
    ln -s "$source_path" "$target"
}

# Call the function for .zshrc and .vimrc
manage_symlink ".zshrc"
manage_symlink ".vimrc"

echo "Done!"