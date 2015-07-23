set nocompatible
"if has("autocmd")
	"autocmd bufwritepost .vimrc source $MYVIMRC
"endif

" Activate Pathogen - It is essential that the following lines are called before enabling filetype detection.
call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
scriptencoding utf-8

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

set hidden
nmap <silent> bn :bn<CR>
nmap <silent> bp :bp<CR>
nmap <silent> bk :bd<CR>

let mapleader = ","
let g:mapleader = ","

nmap <leader>ws <c-w>s
nmap <leader>wv <c-w>v
nmap <leader>wc <c-w>c
nmap <leader>w <c-w>w

set visualbell
set noerrorbells
set tags=tags
set tabstop=4
set smarttab
set copyindent

" Autoremove Trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" Edit My .vimrc File
nmap <leader>vimrc :vsp $MYVIMRC<CR>

" Edit My todo.txt File
nmap <leader>todo :vsp todo.txt<CR>

" Please Install "ag" First - brew install ag
" This Will Speed Up Searching Like Hell
" Taken From - http://blog.patspam.com/2014/super-fast-ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .svn --ignore .hg --ignore .DS_Store --ignore "**/*.pyc" -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

nmap <leader>tnew :tabnew
nmap <leader>tn :tabnext
nmap <leader>tp :tabprevious
nmap <leader>tc :tabclose
