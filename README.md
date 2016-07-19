
DOTFILES
========

vimproc requires a `make` before being able to use

## To install

    cd dotfiles
    ./setup.sh    # this still needs work
    cd ~/.vim     # install vim plugins
    git submodule update --init

    # git clone git@github.com:alexyoung/dotvim.git ~/.vim
    # cd ~/.vim
    # git submodule init
    # git submodule update

Update the .ignore for dotfiles you would like excluded.

## To install new vim plugins

    cd ~/dotfiles/.vim
    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    git add .
    git commit -m "added fugitive.vim"

    # cd ~/.vim
    # git submodule init
    # git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
    # git commit -m 'Added vim-fugitive'
    # git push
