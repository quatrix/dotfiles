if has('vim_starting')
  set nocompatible               " Be iMproved

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'


" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


set t_Co=256
let g:Powerline_symbols = 'fancy'
set encoding=utf-8

let g:neocomplcache_enable_at_startup = 1

syntax on

autocmd BufEnter * :lchdir %:p:h



set background=dark
colorscheme wombat256
"autocmd! bufwritepost .vimrc source %

"vnoremap < <gv  " better indentation
"vnoremap > >gv  " better indentation

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

let mapleader=","

set ai
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
highlight ColorColumn ctermbg=233

function! <SID>StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nmap <silent> <Leader><space> :call <SID>StripTrailingWhitespace()<CR>

" unselect
nnoremap <CR> :nohlsearch<cr>

map <C-t> <ESC>:tabnew<CR>
map <C-h> <ESC>:tabprev<CR>
map <C-l> <ESC>:tabnext<CR>
"map <C-w> <ESC>:tabclose<CR>

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
imap <C-a> <C-o>^
imap <C-e> <C-o>$

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
