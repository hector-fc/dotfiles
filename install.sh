rsync -vi .bash* .gitconfig .latexmkrc .screenrc .vimrc ~
mkdir -p ~/.vim/colors
rsync abel.vim ~/.vim/colors/
cp i3.config ~/.i3/config
