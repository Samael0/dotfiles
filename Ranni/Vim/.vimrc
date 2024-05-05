let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'aonemd/kuroi.vim', { 'as': 'kuroi' }
Plug 'jdsimcoe/hyper.vim', { 'as': 'hyper' }

call plug#end()

set number
set backspace=indent,eol,start

hi StatusLine ctermfg=white ctermbg=darkblue cterm=NONE
hi StatusLineNC ctermfg=white ctermbg=darkblue cterm=NONE
hi User1 ctermfg=white ctermbg=none
hi User2 ctermfg=NONE ctermbg=none
hi User3 ctermfg=white ctermbg=darkblue
hi User4 ctermfg=white ctermbg=darkblue
highlight LineNr ctermfg=darkblue
