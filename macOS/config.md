# macOS

## Terminal Proxy

如果可能的话，设置终端代理方便后续命令安装，因为一些软件安装脚步使用了 github 的网址，因此不加代理可能会安装失败，此时需要寻找国内代理，或者其他手工方法。

```
export http_proxy="http://127.0.0.1:8888"; export HTTP_PROXY="http://127.0.0.1:8888"; export https_proxy="http://127.0.0.1:8888"; export HTTPS_PROXY="http://127.0.0.1:8888"
```

其中，HTTP(s) 和 Socks 代理端口根据代理端口而定，且需要不同。（本例没有设置 Socks 代理）

注意：这样的设置仅在该终端窗口有效。

## Homebrew

官方安装命令（需要代理）：

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

国内镜像：

```
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```

## ZSH & Oh-my-zsh

首先需要[安装ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)，然后再安装 ohmyzsh，官方安装命令（需要代理）：

```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

推荐使用内置主题 `ys` 。

## Vim

使用自己的 `.vimrc` 。

```
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
```



