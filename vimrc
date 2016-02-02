execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set cursorline

if !has('gui_running')
 let g:solarized_termcolors=256
 let g:solarized_degrade = 1
 let g:solarized_bold = 1
 let g:solarized_underline = 1
 let g:solarized_italic = 1
 set background=light
 colorscheme solarized
endif

map <F2> <ESC>:NERDTreeToggle<CR>
map <S-F2> <ESC>:NERDTreeFind<CR>
map <C-R> <ESC>:so ~/.vimrc<CR>

"""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""
"displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
"use airline powered fonts
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
