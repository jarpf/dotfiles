" This are some vim-latex settings
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on


" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*


" OPTIONAL: This enables automatic indentation as you type.
filetype indent on


" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


" Spell check
set spell spelllang=de,en


" theme setting
set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
"colorscheme solarized

" Initializing Pathogen runtimepath
execute pathogen#infect()


" Installing powerline for better status
"  on Fedora sudo dnf install vim-plugin-powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256


" Rebind <Leader> key
let mapleader=","


" Tab switching
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Split change
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" map soprt function to <,s>
vnoremap <Leader>s :sort<CR>


" moving code-blocks
vnoremap < <gv 
vnoremap > >gv 


" Line numbers and length
set number
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=233


" Tabs puts spaces 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Some search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Turn of YCM for some files e,g. tex files
let g:ycm_filetype_blacklist={
    \ 'tex' : 1,
    \ 'text' : 1
    \}

" Fast check spelling last word
nnoremap <leader>sp :normal! mm[s1z='m<cr>

" Fast window split and jump on split 
nnoremap <leader>w <C-w>v<C-w>l

