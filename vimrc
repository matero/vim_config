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

"CtrlP should ignore files in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore.
"If a custom listing command is being used, exclusions are ignored:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"parens colorization
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" This should enable Emacs like indentation
let g:clojure_fuzzy_indent=1
let g:clojure_align_multiline_strings = 1

" Add some words which should be indented like defn etc:
" Compojure/compojure-api, midje and schema stuff mostly.
let g:clojure_fuzzy_indent_patterns=['^GET', '^POST', '^PUT', '^DELETE', '^ANY', '^HEAD', '^PATCH', '^OPTIONS', '^def']
autocmd FileType clojure setlocal
