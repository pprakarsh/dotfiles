
																		" SETTING FOR PARENTHESIS COMPLETION
" For parenthesis and quotes completion, other types of parenthesis are
" controlled by plugin autopair
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap < <><Esc>i



"useful for exit out of quotes 
let g:BASH_Ctrl_j = 'off'                                                                                                                                                                               
inoremap <C-j> <Right>
"
"Setup for competitive programming
autocmd BufNewFile *.cpp :0r ~/.vim/cpp

" For compiling and running c++ files
map <F8> :!g++ -g  % && ./a.out <CR>
map <F5> :!g++ -g % <CR>
