filetype plugin on
let g:clang_library_path='C:\Program Files (x86)\LLVM\bin'
"set pythondll=C:\Users\Marius\AppData\Local\Programs\Python\Python38-32\python38.dll
autocmd FileType python nnoremap <F9> <Esc>:w<CR>:!python %<CR>
let g:syntastic_python_checkers = ['pylint']
set autoindent
set clipboard=unnamed
syntax on
set encoding=UTF-8
colorscheme space-vim-dark
let python_highlight_all=1
let g:plug_timeout=10000000000

function! g:BuffetSetCustomColors()
  hi! BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#292b2e guifg=#21af67
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#ff9c52 guifg=#000000
  hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#df5f00 guifg=#000000
  hi! BuffetModCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#f04e4e guifg=#000000
  hi! BuffetModActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#df0000 guifg=#000000
  hi! BuffetModBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#292b2e guifg=#df0000
  hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#292b2e guifg=#000000
endfunction

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
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
Plug 'vim-scripts/guifontpp.vim'
Plug 'joeytwiddle/sexy_scroller.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'bagrat/vim-buffet'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/coc-angular'
Plug 'gko/vim-coloresque'
Plug 'unblevable/quick-scope' 
Plug 'itchyny/vim-cursorword'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'alvan/vim-closetag'
Plug 'vim-scripts/AutoClose'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set guifont=Hack_NF:h9:cANSI:qDRAFT
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_w = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
set incsearch	"search as characters are entered
set hlsearch	"highlight matches
set expandtab ts=4 sw=4 ai
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab	"tabs are spaces
set number
set cursorline	"show current line
filetype indent on
set wildmenu	"autocomplete menu 
set showmatch	"patanthesis matching
set foldenable	"folding
set foldmethod=indent
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" toggle gundo

nnoremap <leader>u :GundoToggle<CR> 
nnoremap <F3> ggg?G
"leader and u shows undo tree
set number relativenumber
"control+movement to switch between windows
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

