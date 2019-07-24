" vim-plug Plugins Manager
call plug#begin('~/.vim/plugins')
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tlib_vim'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'
Plug 'majutsushi/tagbar'
Plug 'shawncplus/phpcomplete.vim'
Plug 'posva/vim-vue'
Plug 'junegunn/vim-easy-align'
Plug 'Raimondi/delimitMate'
Plug 'honza/vim-snippets'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'SirVer/ultisnips'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'ervandew/supertab'
Plug 'marcweber/vim-addon-mw-utils'
call plug#end()

" BASIC CONFIGURATION
noh
filetype plugin indent on
syntax on
set t_Co=256
set nocompatible
set notimeout
set showmode
set showcmd
set ruler
set number
set cursorline
set expandtab
set noshiftround
set lazyredraw
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set list
set mouse=a
set hidden
set listchars=tab:\│\ 
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*\ 
set statusline+=%=\ 
set statusline+=%3*\ %l\ of\ %L\ %2*\ line\ 
set scrolloff=8
set nopaste
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
let mapleader= ","

"""""""""""""""""""""""
" PLUGINS CONFIGURATION
"""""""""""""""""""""""
" ULTISNIPPETS AND SUPERTAB
"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugins/vim-snippets/UltiSnips/']
let g:UltiSnipsExpandTrigger="<C-r>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" VIM-EMMET
"
let g:user_emmet_install_global = 0
"let g:user_emmet_leader_key='<C-Y>'
let g:user_emmet_expandabbr_key='<C-e>'
imap <expr> <C-e> emmet#expandAbbrIntelligent("\<C-e>")
autocmd FileType html,css,php,vue EmmetInstall
vnoremap <C-b> <C-Y>,
let g:user_emmet_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
\}


" VIM VUE AND SCSS
"
autocmd FileType vue syntax sync fromstart
autocmd FileType scss set iskeyword+=-


" VIM AIRLINES 
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.dirty='⚡'

let g:airline_theme='deus'
"let g:airline_theme='fruit_punch'


" TAGBAR
"
nmap <F4> :TagbarToggle<CR>


" PHP NAMESPACE
"
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>
let g:php_namespace_sort_after_insert = 1


" NERDTREE PLUGINS
"
map <F2> :NERDTree <CR>
map <F3> :NERDTreeToggle <CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


" TAB CONFIGURATION
"
nmap tp :tabprevious<CR>
nmap to :tabnext<CR>
nmap tn :tabnew<CR>


" Copy Paste Toggle
"
vnoremap <C-c> "+y
map <C-v> "+p

" Move to jumping point
"
vnoremap <leader><leader> <Esc>/++<Enter>"_c2l
noremap <leader><leader> <Esc>/++<Enter>"_c2l
map <leader><leader> <Esc>/++<Enter>"_c2l

" Window Split Movement
"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""""""""""""""""""""""
"" THEME CONFIGURATION
""""""""""""""""""""""
"highlight Normal ctermfg=grey ctermbg=darkblue
let g:solarized_termcolors=256
let g:solarized_termtrans=1
"colorscheme nord
colorscheme minimalist
set background=dark
let g:lightline = { 'colorscheme': 'minimalist'}
"hi! Normal guifg=NONE ctermbg=NONE guibg=NONE
"hi! LineNr guifg=NONE ctermbg=NONE guibg=NONE
