autocmd! bufwritepost .vimrc source %
source /usr/share/doc/ranger/examples/vim_file_chooser.vim
set nocompatible

set scrolloff=5

"let mapleader = " "
let maplocalleader = " "

set listchars=space:·,eol:¬,tab:\ →,extends:>,precedes:<
noremap <localleader>w :set list! <CR>

" latex-suite settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='latexmk -pdf -outdir=./latexmk_out -interaction=nonstopmode $*'
let g:Tex_Env_figure="\\begin{figure}[H]\<cr>\\centering\<cr>\\includegraphics[width=\\textwidth]{<+file+>}\<cr>\\caption{<+captiontext+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
let g:Tex_ViewRuleComplete_pdf='okular "./latexmk_out/$*.pdf" 2>/dev/null &'
let g:Tex_GotoError=0
let g:Tex_ShowErrorContext=0

let g:Tex_FoldedSections=""
let g:Tex_FoldedEnvironments=""
let g:Tex_FoldedMisc=""

"" airline/bufferline settings
""let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#bufferline#enabled = 1
"let g:bufferline_echo=0

" NERDTree Settings
noremap <silent> <C-o> :NERDTreeToggle <CR>
noremap <silent> <C-f> :NERDTreeFind <CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeMapActivateNode = "l"

" ctrl-p settings
"let g:ctrlp_show_hidden = 1

" asyncrun settings
nnoremap <localleader>u :AsyncRun urxvt & <CR>
nnoremap <localleader>i :AsyncRun urxvt -e ipython -i % <CR>
nnoremap <localleader>r :AsyncRun urxvt -e ranger %:p:h <CR>
"nnoremap <localleader>ll :AsynRun latexmk -pdf -pvc -f % <CR> :AsyncRun okular %:r.pdf <CR>
"nnoremap <localleader>r :<C-U>RangerChooser<CR>

"" YouCompleteMe settings
""let g:ycm_server_log_level='debug'
""let g:ycm_goto_buffer_command = 'vertical-split'
""let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_insertion = 1

"ale settings
let g:ale_linters = {
\   'c': [],
\   'cpp': [],
\   'python': ['pylint'],
\}

"buffer mappings
nnoremap <localleader>b :ls<CR>
nnoremap <localleader>q :bp <BAR> bd #<CR>
nnoremap <localleader>h :bprevious<CR>
nnoremap <localleader>l :bnext<CR>

" general mappings
set timeoutlen=1000 ttimeoutlen=0
nnoremap J 10j
nnoremap K 10k
nnoremap <c-t> :tabnew <CR>
inoremap <c-t> <esc>:tabnew <CR>
inoremap kj <ESC>
vnoremap kj <ESC>
"inoremap <ESC> <NOP>
nnoremap <c-h> gT
inoremap <c-h> <ESC>gT
nnoremap <c-l> gt
inoremap <c-l> <ESC>gt

vnoremap < <gv
vnoremap > >gv

set t_Co=256
set background=dark
let g:zenburn_high_Contrast=0
colors zenburn


set number
set relativenumber

set clipboard=unnamedplus
set pastetoggle=<F2>

syntax enable

set autoindent
set smartindent
set breakindent

set wildmenu
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase

set nostartofline

set laststatus=2
"set statusline=%!getcwd()
"set statusline+=%F
"set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Show column at end of line
" set colorcolumn=100
" highlight ColorColumn ctermbg=233

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
set hidden "biaaaaaatch!

set confirm
set mouse=a

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'skywind3000/asyncrun.vim'
"Plugin 'w0rp/ale'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()

"filetype indent on
filetype plugin on

" Tab configurations
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
