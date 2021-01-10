"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set belloff=all
" tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.h setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.c setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.cc setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.cp setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.cxx setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Manage plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" LSP and auto-completion
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Color theme
Plug 'sickill/vim-monokai', {'do': 'mkdir -p ~/.vim/colors && cp ~/.vim/plugged/vim-monokai/colors/* ~/.vim/colors/'}
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin variables
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LSP
let g:lsp_diagnostics_echo_cursor = 1  " show dianostics message on bar
autocmd BufWritePre <buffer> LspDocumentFormatSync  " apply format on save

" Color theme
colorscheme monokai

