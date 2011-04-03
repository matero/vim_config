call pathogen#runtime_append_all_bundles()

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
  set guifont=Droid\ Sans\ Mono:h10
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

"undo persistente
set undodir=C:\Windows\Temp
set undofile

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
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c


function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

" Configuracion del plugin NERDTree
nmap <F2> :NERDTreeToggle<cr>
imap <F2> <esc>:NERDTreeToggle<cr>
nmap <S-F2> :NERDTreeFind<cr>
imap <S-F2> <esc>:NERDTreeFind<cr>
