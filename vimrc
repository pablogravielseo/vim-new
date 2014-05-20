set nocompatible
filetype plugin indent on
filetype on

set ts=2 sts=2 sw=2 expandtab autoindent
let mapleader=","
set hlsearch
set nowrap
set visualbell t_vb=
set scrolloff=3
set nofoldenable
set wildmode=list:longest
set wildignore=*.o,*.obj,*.swp,*~,#*#
set list
set listchars=tab:\ ¬,trail:.
set mouse=a
set hidden
set switchbuf=useopen
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ttyfast
set lazyredraw
set undofile

" NeoBundle
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', { 'build' : { 'mac' : 'make -f make_mac.mak' } }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'vim-scripts/a.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'nelstrom/vim-textobj-rubyblock'

" Language Bundles
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'leafo/moonscript-vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim'

call neobundle#end()
NeoBundleCheck

syntax on
