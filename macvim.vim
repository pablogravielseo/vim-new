" Removing boring toolbar (We don't like you, get out. NOW!)
set guioptions-=T

" Removing scrollbars (GTFO, bitch.)
set guioptions-=L
set guioptions-=r

" Removing fancy native tabs
set guioptions-=e

" GUI Font config
set guifont=Monaco:h16

" Removing transparency on MacVim window
set transparency=5

" Window size fix
set fuopt+=maxvert
set fuopt+=maxhorz

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Start on fullscreen
set fu

