set nocompatible

set number
set wrap
set encoding=utf-8
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set expandtab 

set wildmenu
set showmatch
set ruler

" Set GUI stuff
set guifont=Fira\ Code:h12
colorscheme desert
syntax on

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" Fun Little remaps that don't work well
nmap <F9> <Esc>:! python % <CR>
imap <F9> <Esc>:! python % <CR>
imap pp <Esc>pi
imap ff <Esc>
imap uu <Esc>ui

command Launch w | !start %
