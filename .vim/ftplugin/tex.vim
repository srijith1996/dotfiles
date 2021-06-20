" Latex 

" set tabstop to 2
set tabstop=2 expandtab

" Create new command out of selection
vnoremap <buffer> <leader>n y?\\begin{document<CR>O\newcommand{<C-r>"}{
vnoremap <buffer> <leader>d y?\\begin{document<CR>O\def<C-r>"{

" On/Off commenting
nnoremap <buffer> <leader>t mm0i% <ESC>`m 
"inoremap <buffer> <leader>t <ESC><M-/>i
vnoremap <buffer> <leader>t <ESC>`<0<C-V>`>0I% <ESC>`>

" compiling and viewing
"nnoremap <buffer> <leader>p :!pdflatex % && bibtex %:t:r.aux && pdflatex % && pdflatex %<CR><CR>
nnoremap <buffer> <leader>p :!texcomp %<CR><CR>
inoremap <buffer> <C-s> <ESC>:w<CR> :!pdflatex % && bibtex %:t:r.aux && pdflatex % && pdflatex %<CR><CR>i
nnoremap <buffer> <leader>s :w<CR> :!pdflatex % && bibtex %:t:r.aux && pdflatex % && pdflatex %<CR><CR>
nnoremap <buffer> <leader>b :!bibtex %:t:r.aux
nnoremap <buffer> <leader>P :!pdflatex % && pdflatex %<CR><CR>
nnoremap <buffer> <leader>e :!evince %:t:r.pdf &<CR><CR>

" Prepare equations
nnoremap <buffer> <leader>b o\begin{equation}<CR><CR>\end{equation}<ESC>k$a
nnoremap <buffer> <leader>a i<TAB>\begin{aligned}<CR><CR>\end{aligned}<ESC>k$a
