set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=.,~/.vim/backup
set complete-=i
set directory=~/.vim/swap//
set display=lastline
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set mouse=a
set nocompatible
"set nrformats=bin,hex
set sessionoptions-=options
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set undodir=~/.vim/undo
set viminfo+=!
set wildmenu
set clipboard=unnamed
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set fileformats=unix,dos,mac
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set ruler

nnoremap y "+y
nnoremap m o<ESC>
nnoremap == gg=G'''
noremap <S-h>   ^
noremap <S-l>   $
noremap <Esc><Esc> :noh<CR>
inoremap <C-f> <C-x><C-f>
nnoremap <C-h> <C-?>
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
nnoremap e i <Esc>

let g:tex_conceal=''

if has('persistent_undo')
    set undodir=~/.vim/undo
    set undofile 
endif

"for python
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8
