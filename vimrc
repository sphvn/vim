" Disable backwards compatibility with vi
set nocompatible

" Font
if has("win32") || has("win64")
  set guifont=DejaVu_Sans_Mono:h11:cANSI
else
  set guifont=Monospace\ 13
endif

" Color scheme
colorscheme jellybeans

" Disable highlighting on Escape
nnoremap <esc> :noh<cr><esc>
