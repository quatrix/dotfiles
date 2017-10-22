set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'lambdatoast/elm.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rakr/vim-one'
Plugin 'mhinz/vim-grepper'
Plugin 'rhysd/clever-f.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/deoplete.nvim'


call vundle#end()


let g:deoplete#enable_at_startup = 1




syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
let g:bufferline_echo = 0

let mapleader = "\<Space>"
set noshowmode

nnoremap <Leader>f :Unite -ignorecase -buffer-name=files -start-insert file_rec<CR>


" better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> vv <C-w>v
nnoremap <silent> vs <C-w>s
set splitbelow
set splitright

" upper case by mistake commands
command WQ wq
command Wq wq
command W w
command Q q

" colors

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif


set background=dark " for the dark version

let g:one_allow_italics = 1
let g:airline_theme='one'

colorscheme one


call one#highlight('Comment', '98c379', '', 'none')
call one#highlight('Normal', 'abb2bf', '1e1e1e', 'none')

set number

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>


autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2

" fzf
set rtp+=/usr/local/opt/fzf

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  let g:ackprg = 'ag --vimgrep'
endif
