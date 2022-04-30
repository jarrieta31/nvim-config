

" define la " " el espacio como la tecla lider
let mapleader = " " " Leader is the space key
let g:mapleader = " "

" jj Volver al modo comando desde el modo inserción al teclear 2 íes seguídas. Es complicado encontrar palabras y expresiones que tengan 2 íes seguidas
imap jj <Esc>

" Presionar Escape para activar mayúsculas
"imap <Esc> <Caps>


" Cambiar de buffers
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
