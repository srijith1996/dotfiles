" Latex 

" set tabstop to 2
set tabstop=2 expandtab

" On/Off commenting
nnoremap <buffer> <leader>t mm0i# <ESC>`m 
vnoremap <buffer> <leader>t <ESC>`<0<C-V>`>0I# <ESC>`>

" running
nnoremap <buffer> <leader>p :!python %<CR>
inoremap <buffer> <C-s> <ESC>:w<CR>i
