" Activate Pathogen - It is essential that the following lines are called before enabling filetype detection.
call pathogen#infect()
call pathogen#helptags()

" Set Key Shortcut For nerdtree
nnoremap <F9> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50

set encoding=UTF-8
set nocompatible
set wildmenu
set number
set nowrap
set autoindent
set foldmethod=indent

set ts=4
set sw=4
set sts=4

set background=dark
set t_Co=256∾
let g:solarized_termcolors=16∾
let g:solarized_underline=0∾
let g:solarized_visibility="low"∾
let g:solarized_termtrans=0∾
let g:solarized_degrade=1∾
let g:solarized_bold=1∾
let g:solarized_italic=0∾
let g:solarized_contrast="high"∾
let g:solarized_diffmode="high"∾
let g:solarized_hitrail=0∾
let g:solarized_menu=1∾

syntax on
colorscheme solarized
