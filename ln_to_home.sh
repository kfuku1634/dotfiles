#!/bin/bash

######################
##     .vim lnk     ##
######################
y_or_n="y"
if [ -e ${HOME}/dotfiles/.vim ] ;then
echo "${HOME}/.vim is exist" >&2
echo "Do you want to overwrite? [y/n]"
read y_or_n
if [ -z $y_or_n ];then
	echo exit
	exit
fi
fi

if [ $y_or_n = "y" ] ;then
rm ${HOME}/.vim
ln -s ${HOME}/dotfiles/vim ${HOME}/.vim
echo "ln -sf ${HOME}/dotfiles/vim ${HOME}/.vim"
elif [ $y_or_n = "n" ] ;then
	:
else
	echo you must type "y" or "n"
fi

echo ""

######################
##    .vimrc lnk    ##
######################
y_or_n="y"
if [ -e ${HOME}/.vimrc ] ;then
echo "${HOME}/.vimrc is exist" >&2
echo "Do you want to overwrite? [y/n]"
read y_or_n
if [ -z $y_or_n ];then
	echo exit
	exit
fi
fi

if [ $y_or_n = "y" ] ;then
ln -sf ${HOME}/dotfiles/vimrc ${HOME}/.vimrc
echo "ln -s ${HOME}/dotfiles/vimrc ${HOME}/.vimrc"
elif [ $y_or_n = "n" ] ;then
	:
else
	echo you must type "y" or "n"
fi


######################
##  .tmux.conf lnk  ##
######################
y_or_n="y"
if [ -e ${HOME}/.tmux.conf ] ;then
echo "${HOME}/.tmux.conf is exist" >&2
echo "Do you want to overwrite? [y/n]"
read y_or_n
if [ -z $y_or_n ];then
	echo exit
	exit
fi
fi

if [ $y_or_n = "y" ] ;then
ln -sf ${HOME}/dotfiles/tmux.conf ${HOME}/.tmux.conf
echo "ln -s ${HOME}/dotfiles/tmux.conf ${HOME}/.tmux.conf"
elif [ $y_or_n = "n" ] ;then
	:
else
	echo you must type "y" or "n"
fi


######################
##   .bashrc lnk    ##
######################
y_or_n="y"
if [ -e ${HOME}/.bashrc ] ;then
echo "${HOME}/.bashrc is exist" >&2
echo "Do you want to overwrite? [y/n]"
read y_or_n
if [ -z $y_or_n ];then
	echo exit
	exit
fi
fi

if [ $y_or_n = "y" ] ;then
ln -sf ${HOME}/dotfiles/bashrc ${HOME}/.bashrc
echo "ln -s ${HOME}/dotfiles/bashrc ${HOME}/.bashrc"
elif [ $y_or_n = "n" ] ;then
	:
else
	echo you must type "y" or "n"
fi

######################
##    .zshrc lnk    ##
######################
y_or_n="y"
if [ -e ${HOME}/.zshrc ] ;then
echo "${HOME}/.zshrc is exist" >&2
echo "Do you want to overwrite? [y/n]"
read y_or_n
if [ -z $y_or_n ];then
	echo exit
	exit
fi
fi

if [ $y_or_n = "y" ] ;then
ln -sf ${HOME}/dotfiles/zshrc ${HOME}/.zshrc
echo "ln -s ${HOME}/dotfiles/zshrc ${HOME}/.zshrc"
elif [ $y_or_n = "n" ] ;then
	:
else
	echo you must type "y" or "n"
fi
