call pathogen#infect()

syntax on
filetype plugin indent on
colo badwolf

set nu
set t_Co=256
set showcmd
set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set incsearch
set hlsearch
set hidden
set wildmenu
set splitbelow
set splitright
set scrolloff=5
set cc=81
set cursorline
set showmatch
set wildignore+=*/.git/*,*/.svn/*,.*.swp
set go-=lrLMbT

map j gj
map k gk
map Y y$
map <Space> <C-f>
vmap <Tab> >gv
vmap <S-Tab> <gv

"clear search
nnoremap <silent> <leader><space> :let @/=''<CR>

"move between splits
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-S-Left> <C-w>h
nnoremap <C-S-Right> <C-w>l
nnoremap <C-S-Up> <C-w>k
nnoremap <C-S-Down> <C-w>j

"highlight last inserted text
nnoremap gV `[v`]

"emacs movement keys
noremap b B
noremap f E
noremap d dw

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

"plugin-specific bindings
let g:ctrlp_map='<leader>p'
let g:ctrlp_command='CtrlP'
let g:ctrlp_working_path_mode='ra'

nnoremap <leader>o :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1

let g:airline_powerline_fonts=1
set laststatus=2 "always show status line

vmap <leader>xv <Plug>SendSelectionToTmux
nmap <leader>xp <Plug>NormalModeSendToTmux
nmap <leader>xs <Plug>SetTmuxVars

au BufNewFile,BufRead *.twig set ft=htmldjango

"android stuff
let g:android_sdk_path = '/home/mz/opt/android-sdk'
let g:gradle_path = '/home/mz/opt/android-studio/gradle/gradle-2.4'

"javacomplete2
autocmd FileType java set omnifunc=javacomplete#Complete
noremap <F4> call javacomplete#AddImport()<cr>
