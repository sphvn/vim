" Always store vim directory in ~/.vim, even on Windows
set runtimepath=$HOME/.vim,$VIMRUNTIME,$HOME/.vim/after

" Disable backwards compatibility with vi
set nocompatible

" Font
if has("win32") || has("win64")
  set guifont=DejaVu_Sans_Mono:h11:cANSI
else
  set guifont=Monospace\ 13
endif

" Color scheme
syntax on
source ~/.vim/enable16colors.vim
colorscheme jellybeans

" Disable highlighting on Escape
nnoremap <esc> :noh<cr><esc>

" Turn on syntax highlighting for XAML files
filetype on
au BufNewFile,BufRead *.xaml set filetype=xml

execute pathogen#infect()

