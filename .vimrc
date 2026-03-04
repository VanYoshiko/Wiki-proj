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
set statusline=%(%1*%m%w%k%q%*%)%(%2*%<%t%*%)%=%(%3*%c-%l-%L%*[%n]%)
hi User1 ctermfg=202 ctermbg=0
hi User2 ctermfg=82 ctermbg=0
hi User3 ctermfg=226 ctermbg=0
hi StatusLine ctermfg=15 ctermbg=0 cterm=bold
hi StatusLineNC ctermfg=15 ctermbg=236 cterm=bold

augroup wraptext
	autocmd!
	autocmd FileType * vnoremap <buffer> <leader>' :<c-u>s/\%V.*\%V/'&'/<CR>
	autocmd FileType * vnoremap <buffer> <leader>" :<c-u>s/\%V.*\%V/"&"/<CR>
	autocmd FileType * vnoremap <buffer> <leader>[ :<c-u>s/\%V.*\%V/[&]/<CR>
	autocmd FileType * vnoremap <buffer> <leader>{ :<c-u>s/\%V.*\%V/{&}/<CR>
	autocmd filetype * vnoremap <buffer> <leader>( :<c-u>s/\%V.*\%V/(&)/<cr>
	autocmd filetype * vnoremap <buffer> <leader>.' :<c-u>s/\%V'\(.*\)\%V'/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>." :<c-u>s/\%V"\(.*\)\%V"/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.] :<c-u>s/\%V\[\(.*\)\%V\]/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.} :<c-u>s/\%V{\(.*\)\%V}/\1/<CR>
	autocmd FileType * vnoremap <buffer> <leader>.) :<c-u>s/\%V(\(.*\)\%V)/\1/g<CR>
augroup END

nnoremap <Localleader>v :version<CR>
nnoremap <Localleader>% :echo expand ('%')
nnoremap <Localleader>- :q!<CR>

nnoremap <leader>, :undolist<CR>
nnoremap <leader>@ :args<CR>
nnoremap <leader>" :registers<CR>
nnoremap <leader>; :jumps<CR>
nnoremap <leader>' :marks<CR>
nnoremap <leader>$ :buffers<CR>
nnoremap <leader>: :history<CR>
nnoremap <leader>! :messages<CR>
nnoremap <leader>/ q/
nnoremap <leader>? :changes<CR>
nnoremap <leader>. :e .<CR>
nnoremap <leader>b :b
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bn :bnext<CR>
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
