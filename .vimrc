call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'airblade/vim-gitgutter'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'sven-strothoff/vim-clang_doxygen'

Plug 'Valloric/YouCompleteMe'

<<<<<<< HEAD
Plug 'SirVer/ultisnips'
=======
"::Plug 'SirVer/ultisnips'
>>>>>>> 6695f20... Initial .vimrc example and plug.vim plugin.

call plug#end()



set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


let g:seoul256_background = 233
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=50
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{','}']]

" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType c,cpp,lisp,clojure,scheme RainbowParentheses
augroup END

colo seoul256
