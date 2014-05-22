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

source $HOME/.vim/bundle.vim

call neobundle#end()
NeoBundleCheck

source $HOME/.vim/keymaps.vim

" Loading macvim config
if has("gui_mac") || has("gui_macvim")
  source $HOME/.vim/macvim.vim
endif

function! RunSpec()
  if executable('./script/test')
    :!./script/test %
  elseif executable('./b/rspec')
    :!./b/rspec %
  elseif executable('bundle')
    :!bundle exec ruby -I'lib:app:test' %
  endif
endfunction

" Abbreviations to keep me from going insane
iab lenght length
iab widht width
iab heigth height
iab vizualisação visualização
cab W w
cab Q q
cab Wq wq
cab WQ wq
cab qw wq
cab X x
cab Xa xa
cab xA xa
cab Qa qa
cab qA qa

let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Trailing whitespace removal
function! RemoveTraillingSpaces()
        let cursor_pos = getpos(".")
        %s/[ \t]*$//g
        call setpos(".", cursor_pos)
endfunction

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

syntax on
