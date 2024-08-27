set number

set background=dark
color industry
syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4

set wildmenu
set hidden

set wildignore=*.exe,*.dll,*.pdb,*.so

set guifont=Lucida_Console:h25

set guioptions-=m
set guioptions-=T
set guioptions-=r

"set cursorline
set nospell


call plug#begin('~/vimplugins')

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'epheien/termdbg'
Plug 'habamax/vim-godot'

call plug#end()

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gi <plug>(lsp-definition)
    nmap <buffer> gd <plug>(lsp-declaration)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gl <plug>(lsp-document-diagnostics)
    nmap <buffer> <f2> <plug>(lsp-rename)
    nmap <buffer> <f3> <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set is
set modifiable

set ignorecase
set smartcase

set gp=git\ grep\ -n
set ruler

map <silent> fz :FZF<CR>
map <silent> fr :Rg<CR>

map <F5> :call CurtineIncSw()<CR>
map<C-S-g> :!git blame -c %<CR>
"map<C-G> :0 r !git blame %<CR>

packadd! matchit

set clipboard=unnamedplus
vnoremap <C-y> :w !xclip -i -sel c<CR>
noremap <C-p> :r !xclip -o <CR>

"copy the full path fo the current file to the clipboard
noremap <C-q> :let @" = expand("%:p") \| call system("xclip -i -sel c", getreg("\""))<CR>

"copy just the current file name to the clipboard
noremap <C-S-f> :let @" = expand("%:t") \| call system("xclip -i -sel c", getreg("\""))<CR>

map <leader>n :bnext<cr>
map <leader>p :bprevious<cr>
map <leader>d :bdelete<cr>
