set nocompatible

" Source the vimrc file after saving it
augroup reload_vimrc
	autocmd!
	autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

" Activate Pathogen - It is essential that the following lines are called before enabling filetype detection.
call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
scriptencoding utf-8

syntax on
filetype plugin indent on

" Set Key Shortcut For nerdtree
nnoremap <silent> <F9> :NERDTreeToggle <CR>
let g:NERDTreeWinSize=50

set wildmenu
set number
set nowrap
set autoindent
set foldmethod=indent

set ts=4
set sw=4
set sts=4

set backspace=indent,eol,start

" Set Custom Folded Style
set foldtext=""
set fillchars="fold: "


set list lcs=tab:⋮\ ,trail:‹
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
nmap <silent>bn :bn<CR>
nmap <silent>bp :bp<CR>
nmap <silent>bk :BD<CR>
nmap <silent>bl :bl<CR>

let mapleader = ","
let g:mapleader = ","

"nmap <leader>ws <c-w>s
"nmap <leader>wv <c-w>v
"nmap <leader>wc <c-w>c
"nmap <leader>w <c-w>w

set visualbell
set noerrorbells
set tags=tags
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

" Also we are using ag to search text
let g:vim_action_ag_escape_chars = '#%.^$*+?()[{\\|'

nmap <silent> <leader>tnew :tabnew<CR>
nmap <silent> <leader>tn :tabnext<CR>
nmap <silent> <leader>tp :tabprevious<CR>
nmap <silent> <leader>tc :tabclose<CR>

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd Filetype javascript setlocal ts=2 sw=2 sts=2
" autocmd Filetype javascript set expandtab
" autocmd bufwritepost *.js silent !standard-format % --format
" set autoread

"" YouCompleteMe
"" These Will Allow You To Use <tab> For Snippets
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"" XDebug
let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 0

"" Syntastic
"" brew install tidy-html5
let g:syntastic_id_checkers = 1
"" npm install -g standard
"" let g:syntastic_javascript_checkers = ['standard']

let g:ctags_statusline=1


"" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"Χ ":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?"ㄓ ".fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'separator': { 'left': '〉', 'right': '〈' },
      \ 'subseparator': { 'left': '»', 'right': '«' }
      \ }

nnoremap <silent> <ESC> :nohlsearch <CR>

"" Sort PHP use statements
"" http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
"" vmap <Leader>su ! awk '{ print length(), $0 \| \"sort -n \| cut -d\\  -f2-\" }'<cr>
