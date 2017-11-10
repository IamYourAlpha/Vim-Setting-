# Vim-Setting-

set nocompatible "required
filetype off "required

" Set the runtime path to include vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where vundle should install plugins
call vundle#begin('~/.vim')

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
" add all your plugins here

call vundle#end() "required

"filetype plugin indent 


"set foldmethod=indent
"set foldlevel =99
"nnoremap <space> za

au BufNewFile,BufRead *.py
   \ set tabstop=4
   \ set softtabstop=4
   \ set shiftwidth=4
   \ set textwidth=79
   \ set expandtab
   \ set autoindent
   \ set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css
   \ set tabstop=2
   \ set softtabstop=2
   \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace  /\s\+$/

set encoding=utf-8

let python_highlight_all=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
