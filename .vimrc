"-------------------------------------------------------------------------------
" Vundle
"-------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
"Plug 'Shougo/vimproc.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rakr/vim-one'
Plug 'mhinz/vim-grepper'
Plug 'rhysd/clever-f.vim'
"Plug 'Shougo/deoplete.nvim'
Plug 'w0rp/ale'


" colors
Plug 'flazz/vim-colorschemes'
Plug 'cocopon/iceberg.vim' " colorscheme


" julia
Plug 'JuliaEditorSupport/julia-vim'

" js
Plug 'pangloss/vim-javascript'

" typescript
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'jason0x43/vim-js-indent'


" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" elm
Plug 'lambdatoast/elm.vim'

" arduino
Plug 'sudar/vim-arduino-syntax'

call plug#end()


"let g:deoplete#enable_at_startup = 1
syntax on
filetype plugin indent on
autocmd FileType yaml,ruby,javascript,typescript,tf setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>



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

" buffers
set hidden
nnoremap <C-O> :bnext<CR>
nnoremap <C-I> :bprev<CR>
nnoremap <C-W> :bdelete<CR>
nnoremap <C-T> :vsp<CR>

" colorz

let g:airline_theme='one'
let g:one_allow_italics = 1
"set background=dark " for the dark version
"colorscheme one
"call one#highlight('Comment', '98c379', '', 'none')
"call one#highlight('Normal', 'abb2bf', '1e1e1e', 'none')

colorscheme iceberg


set number

" typescript

autocmd FileType typescript nmap <buffer> gd :TsuDefinition<CR>
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
let g:tsuquyomi_use_local_typescript = 0 " See: https://github.com/Quramy/tsuquyomi/issues/231


autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2

" fzf
set rtp+=/usr/local/opt/fzf

" The Silver Searcher
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"
"  let g:ackprg = 'ag --vimgrep'
"endif
"
" Ctrl+S to save
noremap <C-S> :w<CR>
vnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-O>:w<CR>


" ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\}

let g:ale_typescript_tslint_config_path = expand("~/tslint.yml")

" fzf
let g:fzf_command_prefix = 'Fzf'

" Search binaris folder
nnoremap <Leader>a :call fzf#vim#ag(expand('~/bn'), '"^(?=.)"', 0)<CR>
nnoremap <c-a> :let $FZF_DEFAULT_COMMAND='ag -p ~/bn/.ignore --hidden -g "" ~/bn' <bar> FzfFiles<CR>
nnoremap <c-p> :FzfGFiles<CR>

" status line
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

" always show statusline
set ls=2
set statusline=%F%m%r%h%w
set statusline+=%= " stick to right
set statusline+=%#warningmsg#
set statusline+=%{LinterStatus()}
set statusline+=%*
set statusline+=[line\ %l\/%L\ %c%V]

