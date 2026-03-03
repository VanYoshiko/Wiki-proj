set nocompatible
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let maplocalleader="\\"
let mapleader=" "
set path+=**
set tabstop=2
set shiftwidth=2
set wildmenu
set wildmode=list:longest,full
set incsearch
set wildignorecase
set nobackup
set nowritebackup
set noswapfile
set smartindent
set autoindent
filetype plugin indent on
set number
set relativenumber
syntax on 
syntax enable
colorscheme murphy
set showcmd
set laststatus=2
set statusline=%(%1*%m%w%k%q%*%)%(%2*%<%t%*%)%=%(%3*%c/%L-%P-[%n]%*%)
# set statusline=%(%2*%m%r%h%w%k%q%y\%*\%)%(%6*%<%f%*%)\%=%a%-4y%(\ %5*\ %n\ %*%)\%(%4*\ %l%*/%3*%L\ %*%1*%P%*%)
hi User1 ctermfg=226 ctermbg=0
hi User2 ctermfg=202 ctermbg=0
hi User3 ctermfg=82 ctermbg=0
hi StatusLine ctermfg=15 ctermbg=0 cterm=bold
hi StatusLineNC ctermfg=15 ctermbg=236 cterm=bold

augroup foldmethod
	autocmd!
	autocmd FileType * setlocal foldmethod=marker
augroup END

augroup wraptext
	autocmd!
	autocmd FileType * setlocal foldmethod=marker
augroup END

augroup wraptext
	autocmd!
	autocmd FileType * vnoremap <buffer> <leader>' :<c-u>s/\%V.*\%V/'&'/<CR>
	autocmd FileType * vnoremap <buffer> <leader>" :<c-u>s/\%V.*\%V/"&"/<CR>
	autocmd FileType * vnoremap <buffer> <leader>[ :<c-u>s/\%V.*\%V/[&]/<CR>
	autocmd FileType * vnoremap <buffer> <leader>{ :<c-u>s/\%V.*\%V/{&}/<CR>
	autocmd FileType * vnoremap <buffer> <leader>( :<c-u>s/\%V.*\%V/(&)/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.' :<c-u>s/\%V'\(.*\)\%V'/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>." :<c-u>s/\%V"\(.*\)\%V"/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.] :<c-u>s/\%V\[\(.*\)\%V\]/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.} :<c-u>s/\%V{\(.*\)\%V}/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.) :<c-u>s/\%V(\(.*\)\%V)/\1/g<CR>
augroup END

nnoremap <Localleader>v :version<CR>
nnoremap <Localleader>% :!%
nnoremap <Localleader>- :q!<CR>

nnoremap <leader>1 :undolist<CR>
nnoremap <leader>2 :args<CR>
nnoremap <leader>3 :registers<CR>
nnoremap <leader>4 :jumps<CR>
nnoremap <leader>5 :marks<CR>
nnoremap <leader>6 :buffers<CR>
nnoremap <leader>7 :history<CR>
nnoremap <leader>8 :messages<CR>
nnoremap <leader>q q/
nnoremap <leader>9 :changes<CR>
nnoremap <leader>b :b
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>. :e .<CR>
nnoremap <leader>C :%s/<C-R><C-W>/<C-R>0/g<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap ZC <C-w>c
nnoremap ZW :w!<CR>
nnoremap £ <C-d>zz
nnoremap ¥ <C-u>zz
nnoremap € <C-^>
nnoremap [ <C-i>
nnoremap ] <C-o>
inoremap jk <ESC>
vnoremap jk <esc>


