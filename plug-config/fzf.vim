
" Ejecutar comandos con alt-enter :Commands
let g:fzf_commands_expect = 'alt-enter'
" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Empezar a buscar presionando Ctrl + p
nnoremap <C-p> :Files<CR>
