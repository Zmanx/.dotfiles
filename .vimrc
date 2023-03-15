set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
colorscheme slate 
set textwidth=80
set expandtab 
set nocompatible 
filetype on
filetype plugin on
filetype indent on
syntax on 
colorscheme slate 
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode = 0
let g:lightline = {'colorscheme': 'nord'}

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

call plug#end()

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
let maplocalleader = "-"
set encoding=utf-8


let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype indent on      " load file-specific indentation

set clipboard+=unnamed
set laststatus=2 

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']         
