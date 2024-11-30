# Install some packages
apt update -y
apt install --yes --force-yes zsh-syntax-highlighting
apt install -y vim

# Link my ZSH and vim configuration files.
rm ~/.zshrc
ln -s .zshrc ~/.zshrc 
rm ~/.vimrc
ln -s .vimrc ~/.vimrc
