# After downloading the dotfiles repo, run this script to copy the files to the correct place on local machine
cd ~/dev/dotfiles
cp .vimrc ~/.vimrc

cp .bash_aliases ~/.bash_aliases
cp .gitignore_global ~/.gitignore_global
cp .bash_profile ~/.bash_profile
cp -a .scripts/. ~/.scripts
