# Install some packages
apt update -y
apt install -y zsh-syntax-highlighting
apt install -y vim

# Link my ZSH and vim configuration files.
rm ~/.zshrc
ln -s .zshrc ~/.zshrc 
rm ~/.vimrc
ln -s .vimrc ~/.vimrc
