if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

set backspace=2
set nocompatible
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set expandtab
syntax on
set number

"pathogen
execute pathogen#infect()
filetype plugin indent on

"nerd tree        
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
