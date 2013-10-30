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

" Start Pathogen
execute pathogen#infect()

" Color scheme
syntax on
source ~/.vim/enable16colors.vim
colorscheme jellybeans

" I added this because the pathogen setup told me to...
filetype plugin indent on

" Turn on search highlighting
set hlsearch

" Disable highlighting on Escape
nnoremap <silent> <esc> :noh<cr><esc>

" Turn on syntax highlighting for XAML files
filetype on
au BufNewFile,BufRead *.xaml set filetype=xml

" NERDTree Toggle button mapping
map <F4> :NERDTreeToggle <cr>

" Make backspace work as expected
set backspace=2

" Show line numbers
set number

" Set case insensitivity for searching/substituting
set ignorecase

" Set tabs == 4 spaces
set tabstop=4

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <C-j> :bn<CR>
nnoremap <silent> <C-k> :bp<CR>

" Search recursively in all files in working dir for current word under cursor
nnoremap <silent> <F9> :vimgrep /<C-R><C-W>/gj ./**/*.*<cr>:cw<cr>

" Search recursively in all files in working dir for custom word
nnoremap <C-s> :vimgrep //gj ./**/*.* \| :cw<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

set wildignore+=.*,*\\tmp\\*,*.swp,*.zip,*.exe,*.doc,*.dll,*.db,*.pdf,*.jpg,*.gif,*.msi,*.pdb,*.png,*.docx,*.suo,*.com,*.ico

