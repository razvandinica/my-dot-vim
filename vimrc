" Activate Pathogen - It is essential that the following lines are called before enabling filetype detection.
						call pathogen#infect()
			call pathogen#helptags()

set encoding=utf-8
scriptencoding utf-8
set nocompatible

" Set Key Shortcut For nerdtree
nnoremap <F9> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50

set wildmenu
set number
set nowrap
set autoindent
set foldmethod=indent

set ts=4
set sw=4
set sts=4

"set t_Co=256

set backspace=indent,eol,start

" Set Custom Folded Style
set foldtext=""
set fillchars="fold: "


syntax on
set list lcs=tab:\|\ ,trail:‹
"set lcs=eol:┐

colorscheme solarized
set t_Co=256
"let g:solarized_termcolors=16
let g:solarized_termtrans=0
let g:solarized_underline=0
let g:solarized_visibility="low"
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_italic=0
let g:solarized_contrast="high"
let g:solarized_diffmode="high"
let g:solarized_hitrail=0
let g:solarized_menu=1
highlight Folded term=bold cterm=bold ctermfg=12 ctermbg=0 guifg=Cyan guibg=DarkGrey
set background=dark

call togglebg#map("<F5>")
nmap <leader>l :set list!<CR>
