let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set termguicolors
set number
set backspace=indent,eol,start

colorscheme hyper
