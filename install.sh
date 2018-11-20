#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    OS='Cygwin'
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi


if [ ${OS} == 'Mac' ]; then
    if !(type "nvim" > /dev/null 2>&1); then
        brew install neovim
    fi
    if [ ! -e ${HOME}/.config/ ] ;then
        mkdir -p ${HOME}/.config/
    fi
    ln -snf ${PWD}/.vim  ${HOME}/.config/nvim/
    ln -snf ${PWD}/.vim/vimrc ${HOME}/.config/nvim/init.vim

if [ ! -e ${HOME}/.cache/dein/repos/github.com/tbodt/deoplete-tabnine/rplugin ] ;then
    ${HOME}/.cache/dein/repos/github.com/tbodt/deoplete-tabnine/install.sh
fi

fi
