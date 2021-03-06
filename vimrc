call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" sin compatibilitad hacia atras con vi
set nocompatible
set encoding=utf8

" sin resaltar errores
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set ffs=unix,dos,mac "tipos de archivo por defecto

" habilito plugins por tipo de archivo
filetype plugin on
filetype indent on

" que actualice la conf cuando se cambia el vimrc desde afuera
set autoread

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Droid\ Sans\ Mono\ 11
  elseif has("gui_win32")
    set guifont=Droid\ Sans\ Mono:h11
  endif

  set guioptions-=T
  set guioptions+=m
  set background=light 
  colorscheme beachcomber
else
  set background=dark
  colorscheme ir_black
endif

syntax on
set nu
set ruler
set cmdheight=1

" no diferencia minusculas de mayusculas en las busquedas
set ignorecase
set smartcase
set hlsearch  "remarcar busquedas
set incsearch "realizar busquedas parciales/incrementales (como en ff)

set showmatch " resaltar pares
set mat=3     " durante 3 decimas de seg

" deshabilita los archivos de backup
set nobackup
set nowb
set noswapfile

" manejo de tabuladores
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set linebreak
set tw=200

set autoindent
set smartindent
set nowrap

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=1

" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c

" Configuracion del plugin NERDTree
nmap <silent> <F2> :NERDTreeToggle<cr>
imap <silent> <F2> <esc>:NERDTreeToggle<cr>
nmap <silent> <S-F2> :NERDTreeFind<cr>
imap <silent> <S-F2> <esc>:NERDTreeFind<cr>
nmap <silent> <F10> :FufFile<CR>
imap <silent> <F10> <esc>:FufFile<CR>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
