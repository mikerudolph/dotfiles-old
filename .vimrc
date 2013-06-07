set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'stash/syntastic'
Bundle 'ervandew/supertab'

filetype plugin indent on
syntax on
set nobackup
set noswapfile
set backspace=indent,eol,start
set colorcolumn=80
set nocompatible
set completeopt=menu,menuone
set confirm
set encoding=utf-8
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set scrolljump=10
set showcmd
set smartcase
set termencoding=utf-8
set mouse=a
set undofile
set undolevels=1000
set nowrap
set expandtab
set smarttab
set number

set ts=2
set shiftwidth=2

" wildmenu
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,*/.tox/*,*.egg-info/*
set wildmenu
set wildmode=list:longest,full

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Change the syntax highlighting for .ejs files to be html
autocmd BufNewFile,BufRead *.ejs set syntax=html

" Toggle relative number
function! Togglenumbers()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call Togglenumbers()<cr>

let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes = ['html, css']

let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/](haproxy-1.4.20|node_modules|.git|yui-compressor)$',
      \ }

hi StatusLine cterm=bold
hi StatusLineNC cterm=bold
