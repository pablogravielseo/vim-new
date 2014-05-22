" Ctrl+p-like file searching
nnoremap <leader>p :Unite -no-split -start-insert file<cr>
nnoremap <leader>ts :Unite -no-split -start-insert -default-action=vsplit file_rec<cr>
nnoremap <leader>tS :Unite -no-split -start-insert -default-action=split file_rec<cr>
nnoremap <leader>tt :Unite -no-split -start-insert -default-action=tabopen file_rec<cr>
" Yank history searching
nnoremap <leader>y :Unite -no-split -start-insert history/yank<cr>
" Buffer searching
nnoremap <leader>bb :Unite -no-split -start-insert buffer<cr>
nnoremap <leader>bs :Unite -no-split -start-insert -default-action=vsplit buffer<cr>
nnoremap <leader>bS :Unite -no-split -start-insert -default-action=vsplit buffer<cr>
nnoremap <leader>bt :Unite -no-split -start-insert -default-action=tabopen buffer<cr>

" Key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Turning visual mode a little nicer for indentation changes
vmap < <gv
vmap > >gv

" Clearing search results
nmap <silent> <C-l> :nohl<CR>

" Enabling emacs-style movement on command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

" Blocking arrow keys from work
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" Running specs from inside vim
nmap <leader>s :w<bar>:call RunSpec()<cr>

" NERDTree!
nmap <silent> <C-e> :NERDTreeToggle<CR>

" Make Y yank the rest of the line (like with C and D)
nnoremap Y y$

" Remove all trailing whitespace
nnoremap <silent> <leader><space> :call RemoveTraillingSpaces()<CR>
