" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Empezar a buscar presionando Ctrl + p
nnoremap <C-p> :Files<CR>

" Empezar a buscar presionando Ctrl + l
nnoremap <C-o> :Buffers<CR>
