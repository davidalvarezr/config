" Mapping
map <C-n> :NERDTreeToggle<CR>

" Cursor on a var `var`, writes: console.log('var', var)
nnoremap ,cl byiwiconsole.log('<Esc>ea', <Esc>pa)
nnoremap ,ce byiwiconsole.error('<Esc>ea', <Esc>pa)

" Inserting templates
nnoremap ,html :-1read $HOME/Templates/template.html<CR>=11j4jf>cit
nnoremap ,latex :-1read $HOME/Templates/template.tex<Esc>18jf{ci{

" Latex
nnoremap ,fig :-1read $HOME/Templates/figure.tex<Esc>

" Go to next <++> 
nnoremap <Space><Space> /<++><Enter>ca<

" Tabs
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>
