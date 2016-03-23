call plug#begin('~/.config/nvim/plugged')
Plug 'tpoPE/VIM-SENSIBLE'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'godlygeek/tabular'
Plug 'sirver/ultisnips'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/neomru.vim'
Plug 'majutsushi/tagbar'
Plug 'kana/vim-arpeggio'
Plug 'scrooloose/nerdtree'  | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug 'Shougo/vimproc.vim', {'do': 'make -f make_mac.mak'}
Plug 'mustache/vim-mustache-handlebars', {'for': 'html.handlebars'}
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'Valloric/MatchTagAlways'
Plug 'vim-scripts/paredit.vim', {'for': 'clojure'}
Plug 'guns/vim-clojure-static', {'for': 'clojure'}
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-salve', {'for': 'clojure'}
Plug 'wlangstroth/vim-racket', {'for': 'racket'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffeescript'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'raichoo/haskell-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'raichoo/purescript-vim', {'for': 'purescript'}
Plug 'lambdatoast/elm.vim', {'for': 'elm'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'junegunn/seoul256.vim', {'for': 'erlang'}
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'tpope/vim-haml', {'for': 'haml'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'mxw/vim-jsx', {'for': 'javascript'}
Plug 'facebook/vim-flow', {'for': 'javascript'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
Plug 'mtscout6/vim-cjsx', {'for': 'coffee'}
call plug#end()

"Basics Setup
syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set nolazyredraw
"theme config
colorscheme solarized
set background=dark
"let g:solarized_termcolors=256
" set timeoutlen=50
set number
set scrolloff=7
set shortmess=flmnrxIstToO
set history=1000
set nofoldenable foldmethod=manual
set browsedir=buffer
set shellslash
set hidden
set cmdheight=1
set completeopt=longest,menu complete=.,w,b,u
set confirm
set guioptions=egc
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
set fillchars=
set mouse=a mousehide " ttymouse=xterm2
set noequalalways
set noerrorbells novisualbell
set scrollopt=jump,ver,hor
set sidescroll=10
set splitbelow splitright
set statusline=%<%f\ %h%m%r%y[%{&ff}]%=%-14.(%l,%c%V%)\ %P
set wildmenu wildmode=list:longest,full
set winminheight=0 winminwidth=0
set ignorecase incsearch nohlsearch smartcase
set wildignore+=.svn\*,*.pyc,*.pyo,*.so,*.o,*.dll,*.lib,*.pyd
set wildignore+=*.obj,*.h5,*.ttf,*.pdf,*.xls,*.pcl,*.gz,*.png
set wildignore+=*.gif,*.jpg,*.ico,*.bak,*~
set wildignore+=*.sln,*.csproj,*.resx,*.suo
set wildignore+=*.exe,*.pdb,*.map
set wildignore+=*.doc
set wildignore+=tmp,tags,cscope.out
set autoread
set encoding=utf-8
set fileformats=unix,dos
set nobackup nowritebackup noswapfile
set autoindent
set smartindent
set backspace=indent,eol,start
set formatoptions=tcrqn
set nowrap nojoinspaces
set showmatch
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab shiftround
set virtualedit=block
set whichwrap+=<,>,h,l
if version >= 703 && !has("nvim")
  set cryptmethod=blowfish
endif

set guicursor+=a:blinkon0
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:airline_powerline_fonts=1
set clipboard=unnamed
set noshowmode
set ruler
set laststatus=2
set showcmd
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <S-h> :call ToggleHiddenAll()<CR>
"autocmd BufNewFile,BufRead * :call ToggleHiddenAll()

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute "]

au BufNewFile,BufRead *.cshtml set filetype=html
au BufNewFile,BufRead *.src set filetype=erlang
au BufNewFile,BufRead rebar.config set filetype=erlang
au BufNewFile,BufRead *.cljx set filetype=clojure
au BufNewFile,BufRead *.pxi set filetype=clojure

let mapleader = "\<SPACE>"
"------------- mappings -------------------
" Moving between splits
nmap <leader>w <C-w>w
noremap <silent><C-s> :w<CR>
noremap <silent> <leader>n :bn<CR>
noremap <silent> <leader>b :bp<CR>
noremap <silent> <leader>x :bp\|bd #<CR>
noremap <silent> <leader>q :q<CR>
noremap <silent> <leader><S-q> :qa<CR>

"Nerd tree
"Display the current file in the NERDTree panel
noremap <silent> <leader>f :NERDTreeFind<CR>
noremap <silent> <leader>p :set invpaste paste?<CR>

"vim arpeggio
"-------------------------

call arpeggio#map('i', '', 0, 'jk', '<ESC>')

if has("nvim")
  tnoremap <C-w> <C-\><C-n><C-w>
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

noremap x "_x

vnoremap <tab> >gv
vnoremap <s-tab> <gv
vnoremap > >gv
vnoremap < <gv

vmap <C-j> /^[^a-zA-Z0-9]*$<CR>k
vmap <C-k> ?^[^a-zA-Z0-9]*$<CR>j

if has("gui_running")
  nnoremap <S-Up> 10<C-W>+
  nnoremap <S-Down> 10<C-W>-
  nnoremap <S-Left> 10<C-W><
  nnoremap <S-Right> 10<C-W>>
else
  nnoremap <Up> 10<C-W>+
  nnoremap <Down> 10<C-W>-
  nnoremap <Left> 10<C-W><
  nnoremap <Right> 10<C-W>>
endif

noremap <leader>sp :split<CR>
noremap <leader>vs :vsplit<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Airline:
let g:airline_left_sep=''
let g:airline_right_sep=''

" Mustacle  handlebars
let g:mustache_abbreviations = 1

" file type specific settings
if has('autocmd') && !exists('autocommands_loaded')
    let autocommands_loaded = 1
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab indentkeys-=*<return>
    autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType *.md.js :call SyntasticReset<cr>
    autocmd FileType markdown,textile setlocal textwidth=0 wrapmargin=0 wrap spell
    autocmd FileType .xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
    autocmd FileType crontab setlocal nobackup nowritebackup
    "autocmd WinEnter * setlocal cursorline
    "autocmd WinLeave * setlocal nocursorline

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! wa

    autocmd BufNewFile,BufRead *.ejs set filetype=html
    autocmd BufNewFile,BufRead *.ino set filetype=c
    autocmd BufNewFile,BufRead *.svg set filetype=xml
    autocmd BufNewFile,BufRead .babelrc set filetype=json
    autocmd BufNewFile,BufRead .jshintrc set filetype=json
    autocmd BufNewFile,BufRead .eslintrc set filetype=json

    " make quickfix windows take all the lower section of the screen when there
    " are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call ApplyLocalSettings(expand('<afile>:p:h'))

    autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/

    autocmd! BufWritePost * Neomake
endif

"-------------------------
" Fugitive

" Blame on current line
nmap <silent> <leader>b :.Gblame<cr>
" Blame on all selected lines in visual mode
vmap <silent> <leader>b :Gblame<cr>
" Git status
nmap <silent> <leader>gst :Gstatus<cr>
" like git add
nmap <silent> <leader>gw :Gwrite<cr>
" git diff
nmap <silent> <leader>gd :Gdiff<cr>
" git commit
nmap <silent> <leader>gc :Gcommit<cr>
" git commit all
nmap <silent> <leader>gca :Gcommit -a<cr>
" git fixup previous commit
nmap <silent> <leader>gcf :Gcommit -a --amend<cr>

" Jsx:
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0


" NERD Commenter:
let NERDShutUp = 1
let NERDRemoveExtraSpaces=0


" Syntastic:
let g:syntastic_check_on_open = 0
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_signs = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = {
      \ "mode": "passive",
      \ "active_filetypes": [],
      \ "passive_filetypes": [] }
let g:syntastic_python_checkers = ["pyflakes"]
map <Leader>syc :SyntasticCheck<CR>
map <Leader>syr :SyntasticReset<CR>


" Vim Slime:
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "%1"}


" Fireplace:
map <leader>e :Eval<cr>


" Dbext:
let g:localvimrc_whitelist = "/Users/trotter"


" Neco-ghc:
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:necoghc_enable_detailed_browse = 1


" Paredit:
let g:paredit_electric_return = 0
let g:paredit_smartjump = 1
" let g:paredit_shortmaps = 1


" EditorConfig:
let g:EditorConfig_core_mode = 'external_command'


" Flow:
let g:flow#autoclose = 1
map <leader>fc :FlowMake<cr>
map <leader>ft :FlowToggle<cr>
map <leader>fv :FlowType<cr>
map <leader>fa :FlowFindRefs<cr>


" Standardjs:
" let g:syntastic_javascript_checkers = ['standard']
" autocmd bufwritepost *.js silent !standard % --format
" autocmd bufwritepost *.jsx silent !standard % --format
" set autoread


" Haskell:
autocmd BufWritePost *.hs GhcModCheckAndLintAsync
let &l:statusline = '%{empty(getqflist()) ? "[No Errors]" : "[Errors Found]"}' . (empty(&l:statusline) ? &statusline : &l:statusline)

au FileType haskell nnoremap <buffer> <F1> :GhcModType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :GhcModTypeClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :GhcModInfo<CR>
" au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
" au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
" au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

autocmd BufEnter *.hs set formatprg=pointfree

let g:ghcmod_hlint_options = ['--ignore=Redundant do']


" Tagbar:
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1


"-------------------------
" Unite

" Set unite window height
let g:unite_winheight = 20

" Start unite in insert mode by default
let g:unite_enable_start_insert = 1

" Display unite on the bottom (or bottom right) part of the screen
let g:unite_split_rule = 'botright'

" Set short limit for max most recent files count.
" It less unrelative recent files this way
let g:unite_source_file_mru_limit = 100

" Enable history for yanks
let g:unite_source_history_yank_enable = 1

" Make samll limit for yank history,
let g:unite_source_history_yank_limit = 40

" Grep options Default for unite + supress error messages
let g:unite_source_grep_default_opts = '-iRHns'

let g:unite_source_rec_max_cache_files = 99999

" If ack exists use it instead of grep
if executable('ack-grep')
    " Use ack-grep
    let g:unite_source_grep_command = 'ack-grep'
    " Set up ack options
    let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
    let g:unite_source_grep_recursive_opt = ''
endif


" Hotkey for open window with most recent files
nnoremap <silent><leader>m :<C-u>Unite file_mru <CR>

" Hotkey for open history window
nnoremap <silent><leader>h :Unite -quick-match -max-multi-lines=2 -start-insert -auto-quit history/yank<CR>

" Quick tab navigation
nnoremap <silent><leader>' :Unite -quick-match -auto-quit tab<CR>

" Fuzzy find files
nnoremap <silent><leader>; :Unite file_rec/async:! -buffer-name=files -start-insert<CR>

" Unite-grep
nnoremap <silent><leader>/ :Unite grep: -no-start-insert -no-quit -keep-focus -wrap<CR>

"terminal maps ;)
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"Tabular cucubertables snnipet

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

autocmd FileType javascript let g:neomake_javascript_enabled_makers =  ['eslint']
