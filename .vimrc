" vim nocompatible
set nocompatible

" setup search path
set path+=**

" vim history
set history=500

" enable filetype plugin/indent
filetype plugin on
filetype indent on

" autoread when file is modified.
set autoread

" set map leader
let mapleader=","

" set scroll off line
set so=7

" trun on wild menu
set wildmenu
set wildcharm=<Tab>

" ignore specific files
set wildignore=*.o,*~,*.pyc,*.obj,*.swp,*.zip
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" show line number
set nu

" show position
set ruler

" command bar height
set cmdheight=1

" buffer become hide when it is abondoned
set hid

" ignore case search
set ignorecase

" smart case search
set smartcase

" highlight search
set hlsearch

" drawing performance improving
set lazyredraw

" regular expression
set magic

" show brackets match
set showmatch
" the period of matching brackets blinked
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set fold column
set foldcolumn=1

" enable syntax highlighting
syntax enable

" set encoding
set encoding=utf8

" set file fomrats
set ffs=unix,dos,mac

" backspace setuo
set backspace=indent,eol,start

" turn off backup
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs
set expandtab

" set smart tab
set smarttab

" set tabstop 
set tabstop=4
set shiftwidth=4
set softtabstop=4

" line break
set lbr
set tw=500

" set indent
set cindent
set wrap

" disable highlight when <leader><cr> is pressed
nnoremap <leader><cr> <Cmd>noh<cr>

""
" setup your keybindings outside to control window/buffer/tabpage
""

" move window
nnoremap <leader>wj <Cmd>wincmd j<cr>
nnoremap <leader>wk <Cmd>wincmd k<cr>
nnoremap <leader>wl <Cmd>wincmd l<cr>
nnoremap <leader>wh <Cmd>wincmd h<cr>

" close current buffer
nnoremap <leader>bd <Cmd>bdelete!<cr>

" delete all buffers
nnoremap <leader>ba <Cmd>bufdo bd<cr>

" buffer next/previous
nnoremap <leader>bl <Cmd>bnext<cr>
nnoremap <leader>bh <Cmd>bprevious<cr>

" split buffer next/previous
nnoremap <leader>sbl <Cmd>sbnext<cr>
nnoremap <leader>sbh <Cmd>sbprevious<cr>

" buffer search
"nnoremap <leader>b\ <ESC>:sb <Tab>

" switch buffer
set switchbuf=useopen,usetab,split

" tabs handle
set showtabline=0
set tabpagemax=100
nnoremap <leader>tn <Cmd>tabnew<cr>
nnoremap <leader>to <Cmd>tabonly<cr>
nnoremap <leader>tc <Cmd>tabclose<cr>
nnoremap <leader>tm <Cmd>tabmove<cr>
nnoremap <leader>t[ <Cmd>tabprevious<cr>
nnoremap <leader>t] <Cmd>tabnext<cr>

"quickfix window
nnoremap <leader>co <Cmd>copen<cr>
nnoremap <leader>cc <Cmd>cclose<cr>

"location window
nnoremap <leader>lo <Cmd>lopen<cr>
nnoremap <leader>lc <Cmd>lclose<cr>

" set mouse
set ttymouse=xterm2
set mouse=a

" terminal mapping
if has('terminal')
  inoremap <F12> <C-O>
  cnoremap <F12> <ESC>
  tnoremap <F12> <C-W>N
  nnoremap <leader>tty <Cmd>tab terminal<cr>
endif

" status line
set laststatus=2

" remove all trailing whitespace
augroup rm_trailing_group
    autocmd!
    autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
augroup end

" spell check
map <leader>ss <Cmd>setlocal spell!<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" colortheme
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme jellybeans

" grep setting
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

" airline theme
let g:airline_theme='jellybeans'

" ale
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_cpp_options="-std=c++23 -Wall"
let g:ale_completion_enabled = 0
"set omnifunc=ale#completion#OmniFunc

" nerd tree
nnoremap <leader>nt <Cmd>NERDTreeToggle<CR>

" gutentags
let g:gutentags_file_list_command = {
  \ 'markers': {
    \ '.git': 'git ls-files -co --exclude-standard',
    \ '.hg': 'hg files',
    \ },
  \ }

" ctrlp
let g:ctrlp_map = '<leader>ctrlp'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<c-t>', '<2-LeftMouse>'],
  \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
  \ 'AcceptSelection("t")': ['<cr>'],
  \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
  \ 'ToggleType(1)':        ['<s-left>', '<c-f>', '<c-up>'],
  \ 'ToggleType(-1)':       ['<s-right>', '<c-b>', '<c-down>'],
  \ }

let g:ctrlp_extensions = ['tag', 'quickfix']
let g:ctrlp_open_new_file = 't'
let g:ctrlp_switch_buffer = 'Et'

" supertab
let g:SuperTabDefaultCompletionType = "context"

" tabular
nnoremap <leader>a= <Cmd>Tabularize /=<CR>
vnoremap <leader>a= <Cmd>Tabularize /=<CR>

" tagbar
nnoremap <leader>tg <Cmd>TagbarToggle<CR>

" latex flavor
let g:tex_flavor='latex'

" linux kernel coding style
let g:LinuxKernelDeveloping = get(g:, 'LinuxKernelDeveloping', 0)

if g:LinuxKernelDeveloping
  packadd vim-addon-linux-coding-style
  SetLinuxFormatting
endif
