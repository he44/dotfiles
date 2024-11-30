# Install some packages
DEBIAN_FRONTEND=noninteractive apt update -y
DEBIAN_FRONTEND=noninteractive apt install --yes zsh-syntax-highlighting
DEBIAN_FRONTEND=noninteractive apt install --yes vim
DEBIAN_FRONTEND=noninteractive apt install --yes curl
# Installing oh-my-zsh will ask if we want to make zsh the default shell.
# Let's just pipe the answer to avoid getting stuck.
Y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Link my ZSH and vim configuration files.
rm ~/.zshrc
ln -s .zshrc ~/.zshrc 
rm ~/.vimrc
ln -s .vimrc ~/.vimrc
