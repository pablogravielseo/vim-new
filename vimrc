set nocompatible
filetype plugin indent on
filetype on

set ts=2 sts=2 sw=2 expandtab autoindent
let mapleader=","
set incsearch
set hlsearch
set nowrap
set visualbell t_vb=
set scrolloff=3
set nofoldenable
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*.swp,*~,#*#
set list
set listchars=tab:\ ¬,trail:.
set mouse=a
set hidden
set switchbuf=useopen
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
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
NeoBundle 'slim-template/vim-slim'

call neobundle#end()
NeoBundleCheck

let g:unite_source_history_yank_enable = 1
" Ctrl+p-like file searching
nnoremap <leader>p :Unite -no-split -start-insert file_rec/async<cr>
nnoremap <leader>ts :Unite -no-split -start-insert -default-action=vsplit file_rec/async<cr>
nnoremap <leader>tS :Unite -no-split -start-insert -default-action=split file_rec/async<cr>
nnoremap <leader>tt :Unite -no-split -start-insert -default-action=tabopen file_rec/async<cr>
" Yank history searching
nnoremap <leader>y :Unite -no-split -start-insert history/yank<cr>
" Buffer searching
nnoremap <leader>bb :Unite -no-split -start-insert buffer<cr>
nnoremap <leader>bs :Unite -no-split -start-insert -default-action=vsplit buffer<cr>
nnoremap <leader>bS :Unite -no-split -start-insert -default-action=vsplit buffer<cr>
nnoremap <leader>bt :Unite -no-split -start-insert -default-action=tabopen buffer<cr>

" Trailing whitespace removal
function! RemoveTraillingSpaces()
        let cursor_pos = getpos(".")
        %s/[ \t]*$//g
        call setpos(".", cursor_pos)
endfunction

nnoremap <silent> <leader><space> :call RemoveTraillingSpaces()<CR>

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

syntax on
