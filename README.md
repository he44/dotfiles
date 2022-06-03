# dotfiles

# Neovim

- soft link to the system setting.

```bash
ln -s ~/Dev/dotfiles/init.lua ~/.config/nvim/init.lua
```

- need to download Packer (the package manager I chose) [Installation](https://github.com/wbthomason/packer.nvim#quickstart)

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# VSCode

- soft link to the system file.

  - on Mac:

    ```bash
    ln -s ~/Dev/dotfiles/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json 
    ln -s ~/Dev/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
    ```

  - on Ubuntu:
    
    ```bash
    ln -s ~/Dev/dotfiles/keybindings.json ~/.config/Code/User/keybindings.json
    ```

# Tmux

- soft link to the system file.

```bash
ln -s ~/Dev/dotfiles/tmux.conf ~/.tmux.conf
```

