"Section: Plugins managed by vim-plug
"Vim-Plug Installation directory :: ~/.local/share/nvim/site/autoload/plug.vim
"Plugin Installation directory :: ~/.config/nvim/plugged/
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
call plug#end()


"Section: Themes/ColorSchemes
autocmd vimenter * colorscheme gruvbox

"Section: Key Maps
"Note :: C -> Ctrl ; w -> window ; p -> previous
let mapleader=" "
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeFocus<CR>r<C-w><C-p>
nnoremap <silent> <C-s> :FZF<CR>

"Section: Vim config
set number

"Section: Plugin configs
"Config begin :: scrooloose/nerdtree
"About :: To open NERDTree automatically when vim begins up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"Config end :: scrooloose/nerdtree

"Config begin :: Xuyuanp/nerdtree-git-plugin
"About :: git status indicators
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Ignored"   : "☒",
    \ "Unknown"   : "?"
    \ }
"Config end :: Xuyuanp/nerdtree-git-plugin

"Config begin :: Xuyuanp/vim-airline
"About :: status/footerlinebar
let g:airline_powerline_fonts = 1
"Config end :: Xuyuanp/vim-airline
