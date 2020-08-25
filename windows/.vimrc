" Basics of all
set number
set relativenumber
syntax enable
set colorcolumn=80
highlight ColorColumn ctermbg=3 guibg=lightgrey
set nowrap
set ruler

" Fix the indentation: 4 spaces
set tabstop=4
set expandtab
set smartindent
set shiftwidth=4

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set laststatus=2

" Backup files
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Search as type
set incsearch

" Mapping the quit command, I tend to hold shift too long
cnoremap W w
cnoremap Wq wq
cnoremap Q q

" jk to exit insert mode
imap jk <Esc>

" Plugin managed by Vim Plug: https://github.com/junegunn/vim-plug 
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
call plug#end()

" map C-n to open NERDTree view
map <C-n> :NERDTreeToggle<CR>
nmap <C-x> <Plug>NERDCommenterToggle
vmap <C-x> <Plug>NERDCommenterToggle<CR>gv

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
 augroup WSLYank
     autocmd!
     autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
 augroup END
end
