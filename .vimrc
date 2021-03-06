filetype plugin on
let g:clang_library_path='C:\Program Files (x86)\LLVM\bin'
"set pythondll=C:\Users\Marius\AppData\Local\Programs\Python\Python38-32\python38.dll
autocmd FileType python nnoremap <F9> <Esc>:w<CR>:!python %<CR>
let g:syntastic_python_checkers = ['pylint']
set autoindent
set clipboard=unnamed
syntax on
set encoding=utf-8
colorscheme space-vim-dark
let python_highlight_all=1
let g:plug_timeout=10000000000
call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'rip-rip/clang_complete'
Plug 'vim-scripts/vim-compile'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'gikmx/ctrlp-obsession'
Plug 'derekwyatt/vim-fswitch'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'





call plug#end()

let g:syntastic_quiet_messages = { "type":"style" }
set incsearch	"search as characters are entered
set hlsearch	"highlight matches
set tabstop=4
set expandtab	"tabs are spaces
set number
set cursorline	"show current line
filetype indent on
set wildmenu	"autocomplete menu 
set showmatch	"patanthesis matching
set foldenable	"folding
set foldmethod=indent
" toggle gundo

nnoremap <leader>u :GundoToggle<CR> 
"leader and u shows undo tree
set number relativenumber
"control+movement to switch between windows
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

