let NERDTreeShowHidden=1
call plug#begin(stdpath('data') . '/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

nnoremap gsv :so $MYVIMRC<CR>
nnoremap gsb :e $MYVIMRC<CR>
nnoremap tree :NERDTree<CR>

if has('mouse')
  set mouse=a
endif

set clipboard=unnamedplus

set nu

set autoread
set autowrite

set autoindent
set si

syntax on

set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif



map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

nnoremap <C-p> :CtrlP<CR>

cmap w!! %!sudo tee > /dev/null %
