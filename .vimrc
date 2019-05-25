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
set cmdheight=2

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
let g:LinuxKernelDeveloping = get(g:, 'LinuxKernelDeveloping', 0)
if g:LinuxKernelDeveloping
  set tabstop=8
  set shiftwidth=8
  set softtabstop=8
else
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
end

" line break
set lbr
set tw=500

" set indent
set cindent
set wrap

" disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><cr> :noh<cr>

" move window
nnoremap <silent><C-j> :wincmd j<cr>
nnoremap <silent><C-k> :wincmd k<cr>
nnoremap <silent><C-l> :wincmd l<cr>
nnoremap <silent><C-h> :wincmd h<cr>

" close current buffer
nnoremap <leader>bd :bdelete!<cr>

" delete all buffers
nnoremap <leader>ba :bufdo bd<cr>

" buffer next/previous
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>

" tabs handle
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <silent><M-[> :tabprevious<cr>
nnoremap <silent><M-]> :tabnext<cr>
nnoremap <silent><C-t> :tabnew<cr>

" status line
set laststatus=2

" remove all trailing whitespace
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e

" spell check
map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" nerd tree
nnoremap <leader>nt :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" tabular
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>

" tagbar
nnoremap <leader>tg :TagbarToggle<CR>

" vim expand region
" map K <Plug>(expand_region_expand) " default +
" map J <Plug>(expand_region_shrink) " default _

" vim multiple cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
