execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufEnter * :lchdir %:p:h


au InsertLeave * match ExtraWhitespace /\s\+$/

set background=dark
colorscheme wombat256mod
"colorscheme grb256
autocmd! bufwritepost .vimrc source %

vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

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
map <C-w> <ESC>:tabclose<CR>

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
