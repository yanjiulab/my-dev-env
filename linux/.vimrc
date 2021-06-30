
"""""""""""""""""""
" Custom Settings "
"""""""""""""""""""

" vim basic
set nocompatible
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256

" display
set number          " 显示行号
set relativenumber  " 显示相对行号
set cursorline      " 高亮当前光标所在行
set textwidth=120    " 显示行宽
set wrap            " 自动折行
set wrapmargin=2    " 折行边缘宽度
set linebreak       " 单词内不折行
set scrolloff=5     
set ruler
set matchtime=1
set laststatus=2

" enable filetype detection:
filetype on
filetype plugin on
filetype indent on  " file type based indentation

" indent
set autoindent      " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
set smartindent     " 智能缩进
set tabstop=4       " 按下 Tab 键时，Vim 显示的空格数。
set softtabstop=4   " 按退格键时退回缩进的长度
set shiftwidth=4    " 按下缩进字符数
set expandtab
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" searching
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

" edit
autocmd FileType markdown,tex set spell spelllang=en,cjk
set wildmenu
set wildmode=longest:list,full
set autoread
set nobackup
set nowb
set noswapfile

" coding
syntax on

" custom map
map j gj
map k gk
inoremap jj <Esc>

