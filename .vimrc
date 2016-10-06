call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

Plug 'airblade/vim-gitgutter'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'sven-strothoff/vim-clang_doxygen'

Plug 'SirVer/ultisnips'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'kergoth/vim-bitbake'

Plug 'vim-scripts/vim-misc'

Plug 'vim-scripts/easytags.vim'

Plug 'sheerun/vim-polyglot'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()



set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set tags=./tags;
let g:easytags_dynamic_files = 1


let g:seoul256_background = 233
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=50
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{','}']]

let g:ctrlp_root_markers = ['.repo','.git','sources','src','cellnovo']
let g:ctrlp_working_path_mode = 'rw' 

" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType c,cpp,lisp,clojure,scheme RainbowParentheses
augroup END

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

let g:ycm_confirm_extra_conf = 0

let g:used_javascript_libs = 'jquery,react'

colo seoul256

syntax on
