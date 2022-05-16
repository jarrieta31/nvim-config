set wrap
set linebreak
" par de opciones para hacer que la terminal se pinte cuando se necesite y para aprovechar las ventajas de las terminales rápidas.
set lazyredraw  
set ttyfast

" Lo que hace es que cuando tienes puesto el editor que haga wrap de las líneas (que si hay una líena muy larga hace un salto de línea “virtual” el editor para que quepa en pantalla), al moverte por las líneas que han saltado puedas hacerlo como si fueran líneas normales.
noremap <silent> <Up> gk  
noremap <silent> <Down> gj 

" La última opción es para que al buscar cosas en un fichero, cuando navegues a los resultados se borre el higlight, ya que me pone muy nervioso que se mantenga cuando ya he buscado algo.
set nohlsearch     " clear highlight after a search

nnoremap Y y$

nnoremap n nzzzv 
nnoremap N Nzzzv 
nnoremap * *zzzv 

" También tengo estos comandos para poder mover el cursor entre los splits abiertos a la vez en pantalla.

map <C-h> <C-w>h 
map <C-j> <C-w>j 
map <C-k> <C-w>k
map <C-l> <C-w>l
" Julio Arrieta
"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************
" Required:
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocomletado Conquer of Completions
Plug 'sheerun/vim-polyglot' "Resaltado de sintaxis
Plug 'sainnhe/sonokai' " tema de Nuevo
Plug 'sainnhe/everforest' " tema everforest
Plug 'crusoexia/vim-monokai' " Tema monokai, bueno para trabajar con html
Plug 'phanviet/vim-monokai-pro' " Tema monokai-pro
Plug 'morhetz/gruvbox' " Tema llamado gruvbox, muy bueno
Plug 'kaicataldo/material.vim', { 'branch': 'main' } " Tema Maerial https://github.com/kaicataldo/material.vim
Plug 'sonph/onehalf' " Tema llamado onehalf 
Plug 'easymotion/vim-easymotion' " Acelera el movimiento dentro del fichero
Plug 'scrooloose/nerdtree' " Explorar y abrir directorios 
Plug 'christoomey/vim-tmux-navigator' " Sirve para moverse entre ventanas 
Plug 'jiangmiao/auto-pairs' " agrega las llaves de cierre
Plug 'xolox/vim-misc'  " vim-session
Plug 'xolox/vim-session' " vim-session
Plug 'SirVer/ultisnips' " Snippets
Plug 'honza/vim-snippets' " Snippets
Plug 'tpope/vim-surround' " vim-surround  https://github.com/tpope/vim-surround
Plug 'andrewradev/tagalong.vim' "Al cambiar el nombre de la etiqueta de cierre también.
Plug 'vim-scripts/ShowMarks' " Muestra las marcas que vamos creando
" ******* Plugins solo para neovim ******************************************
Plug 'nvim-lualine/lualine.nvim' " status bar lualine
Plug 'kyazdani42/nvim-web-devicons' " iconos para status bar lualine
"************* Lenguajes de programacionLenguajes de programacion ***************************************************
" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
" javascript
Plug 'jelera/vim-javascript-syntax'
" python
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" lua
Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-lua-inspect'
" php
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'stephpy/vim-php-cs-fixer'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

if filereadable(expand("~/.config/nvim/local_bundles.vim"))
source ~/.config/nvim/local_bundles.vim
endif
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keymapping/keys.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/lualine.vim
source $HOME/.config/nvim/plug-config/vim-session.vim
source $HOME/.config/nvim/plug-config/emmet.vim
source $HOME/.config/nvim/plug-config/showMarks.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/gruvbox.vim
source $HOME/.config/nvim/plug-config/material.vim
source $HOME/.config/nvim/plug-config/monokai.vim
source $HOME/.config/nvim/plug-config/easymotion.vim

