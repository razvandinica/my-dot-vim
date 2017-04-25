set nocompatible

" Source the vimrc file after saving it
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
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
let g:NERDTreeWinSize=40

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

set list lcs=tab:⋮\ ,trail:‹,eol:┐
nmap <leader>l :set list!<CR>
set nolist

colorscheme solarized
"set t_Co=256
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
highlight Folded term=bold cterm=bold ctermfg=12 ctermbg=0 guifg=Cyan guibg=DarkGrey
set background=dark
colorscheme solarized

"call togglebg#map("<F5>")

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
set expandtab


" Autoremove trailing spaces for php and js files
autocmd BufWritePre *.[php|js] :%s/\s\+$//e

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

" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal ts=2 sw=2 sts=2
autocmd FileType yaml setlocal ts=2 sw=2 sts=2

"RE-ENEABLE THIS FOR js STANDARD
"autocmd BufWritePost *.js silent !~/.npm-packages/bin/standard-format -w %

autocmd BufWritePost * retab!
autocmd bufwritepost * redraw!
set autoread

"" YouCompleteMe
"" These Will Allow You To Use <tab> For Snippets
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"" XDebug
"let g:dbgPavimPort = 9009
"let g:dbgPavimBreakAtEntry = 0

"" Syntastic
"" brew install tidy-html5
let g:syntastic_id_checkers = 1
"" npm install -g standard
let g:syntastic_javascript_checkers = ['standard']

let g:ctags_statusline=1


"" Lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"Χ ":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?"±  ".fugitive#head():""}'
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
      \ }


""" 'separator': { 'left': '〉', 'right': '〈' },
""" 'subseparator': { 'left': '»', 'right': '«' }

""" nnoremap <silent> <ESC> :nohlsearch <CR>

"" Sort PHP use statements
"" http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
"A
"" vmap <Leader>su ! awk '{ print length(), $0 \| \"sort -n \| cut -d\\  -f2-\" }'<cr>

""" Make red everything over 80 chars length
""" match ErrorMsg '\%>80v.\+'

" If php-cs-fixer is in $PATH, you don't need to define line below
" " let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the
" php-cs-fixer.phar
" let g:php_cs_fixer_level = "symfony"              " which level ?
" let g:php_cs_fixer_config = "default"             " configuration
" "let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" " If you want to define specific fixers:
" "let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by
" default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                    " Call command with
" dry-run option
" let g:php_cs_fixer_verbose = 0                    " Return the output of
" command if 1, else an inline information.
" nnoremap <silent><leader>cd :call PhpCsFixerFixDirectory()<CR>
" nnoremap <silent><leader>cf :call PhpCsFixerFixFile()<CR>
