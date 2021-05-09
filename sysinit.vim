source /usr/share/nvim/plugins/coc-config.vim

set nu
set mouse=a
set tabstop=3
set shiftwidth=3
set ignorecase
set numberwidth=3
set clipboard=unnamed
syntax enable
set expandtab
set showcmd
set ruler
set encoding=utf-8

set relativenumber
set timeoutlen=500
set nowrap

" plugins
call plug#begin('~/.config/nvim/plugged')
   " Themes
   Plug 'morhetz/gruvbox'
   Plug 'rakr/vim-one'

   Plug 'rizzatti/funcoo.vim'
   Plug 'neoclide/coc.nvim'
   Plug 'scrooloose/nerdtree'
   Plug 'junegunn/fzf'
   " Syntax react
   Plug 'maxmellon/vim-jsx-pretty'
   Plug 'yuezk/vim-js'
   Plug 'maxmellon/vim-jsx-pretty'
   Plug 'dracula/dracula-theme'
   Plug 'easymotion/vim-easymotion'
   Plug 'christoomey/vim-tmux-navigator'

   Plug 'ryanoasis/vim-devicons'
   Plug 'jiangmiao/auto-pairs'
   Plug 'alvan/vim-closetag'
   Plug 'terryma/vim-multiple-cursors'
   Plug 'yggdroot/indentline'
   Plug 'psliwka/vim-smoothie'
   Plug 'joshdick/onedark.vim'
   Plug 'rakr/vim-one'
   Plug 'doums/darcula'
   Plug 'sainnhe/edge'
   Plug 'larsbs/vimterial'
   Plug 'prettier/vim-prettier'
   Plug 'dracula/vim'
   Plug 'ghifarit53/tokyonight-vim'
   Plug 'drewtempelmeyer/palenight.vim'
   Plug  'tomasiser/vim-code-dark'
   "Plug 'vim-scripts/Emmet.vim'
   Plug 'vim-scripts/WebAPI.vim'
   Plug 'mattn/emmet-vim'
   Plug 'ayu-theme/ayu-vim'
   "Plug 'arcticicestudio/nord-vim'
   Plug 'bling/vim-airline'
   Plug 'liuchengxu/vim-which-key'
   Plug 'othree/html5.vim'
   Plug 'aliev/vim-python'
   Plug 'tpope/vim-dispatch'
   Plug 'radenling/vim-dispatch-neovim'

   Plug 'honza/vim-snippets'

   Plug 'francoiscabrol/ranger.vim'
   Plug 'rbgrouleff/bclose.vim'
   Plug 'sbdchd/vim-run'
call plug#end()

colorscheme tokyonight

let g:rainbow_active = 1
let g:python_highlight_all = 1
let g:palenight_terminal_italics=1
let g:tokyonight_style='night'
let g:tokyonight_curso='red'
let g:tokyonight_current_word='bold'
let g:gruvbox_contrast_dark='hard'
let mapleader=" "
let NERDTreeQuitOnOpen=1
let g:airline#extensions#tabline#enabled = 1
let g:indentLine_leadingSpaceEnabled=0
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <leader>cm :WhichKey '<Space>'<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>rl :source %<CR>
nmap <Leader>ab :m +1<CR>
nmap <Tab> :bnext<CR>
nmap <F9> :Run<CR>
map <leader>f :Ranger<CR>

noremap <A-Down> ddp
noremap <A-Up> :call feedkeys( line('.')==1 ? '' : 'ddkP'  )<CR>

nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-x> :!./%:r.out

source /usr/share/nvim/more.vim
