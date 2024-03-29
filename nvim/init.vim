call plug#begin('~/.vim/bundle')

Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
"Plug 'davidhalter/jedi-vim'
"Plug 'nvie/vim-flake8'

Plug 'EinfachToll/DidYouMean'
Plug 'edgedb/edgedb-vim'
Plug 'junegunn/limelight.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Plug 'clojure-vim/clojure.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Olical/conjure', {'tag': 'v4.23.0'}
Plug 'luochen1990/rainbow'
Plug 'bhurlow/vim-parinfer'

"Plug 'frazrepo/vim-rainbow'
Plug 'calebsmith/vim-lambdify'

"Plug 'folke/lsp-colors.nvim'

"Plug 'guns/vim-sexp'
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'tpope/vim-fireplace'
"Plug 'guns/vim-clojure-static'
"Plug 'guns/vim-clojure-highlight'
"Plug 'dense-analysis/ale'



" colors
Plug 'tjdevries/colorbuddy.vim'
Plug 'bkegley/gloombuddy'
Plug 'flazz/vim-colorschemes'
Plug 'cocopon/iceberg.vim' " colorscheme
Plug 'rockerBOO/boo-colorscheme-nvim', { 'branch': 'main' }
Plug 'haishanh/night-owl.vim'


"Plug 'rafamadriz/neon'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

let g:mapleader = ","
let maplocalleader=","
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
syntax on
filetype plugin indent on
autocmd FileType yaml,ruby,javascript,typescript,tf setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
"autocmd CursorHold * silent call CocActionAsync('highlight')
"autocmd FileType clojure call rainbow#load()

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1


" highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234


set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
let g:bufferline_echo = 0

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

nnoremap <tab> :bnext<CR>
nnoremap <S-tab> :bprev<CR>

" clojure
nnoremap <silent>§§ :ConjureEvalRootForm<CR>
nnoremap <silent>±± :ConjureEvalCurrentForm<CR>
"let g:ale_linters = {'clojure': ['clj-kondo']}


" colorz

"let g:airline_theme='one'
"let g:one_allow_italics = 1
"set background=dark " for the dark version
"colorscheme one
"call one#highlight('Comment', '98c379', '', 'none')
"call one#highlight('Normal', 'abb2bf', '1e1e1e', 'none')

set backspace=indent,eol,start

colorscheme iceberg
highlight Comment cterm=italic gui=italic


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

" let didyoumean use fzf
"let g:dym_use_fzf = 1

" Search binaris folder
nnoremap <Leader>a :call fzf#vim#ag(expand('~/bn'), '"^(?=.)"', 0)<CR>
nnoremap <c-a> :let $FZF_DEFAULT_COMMAND='ag -p ~/bn/.ignore --hidden -g "" ~/bn' <bar> FzfFiles<CR>
nnoremap <c-p> :FzfFiles<CR>

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
set hlsearch
set formatoptions+=r
set relativenumber
