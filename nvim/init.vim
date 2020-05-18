		" Call vim-plug
call plug#begin('~/.config/nvim/plugged')

" airline is a better status line and a tab-bar for nvim.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" install auto-pair for automatic pairing of brackets
Plug 'jiangmiao/auto-pairs'

" install vim-ragtag, helper for html,xml, etc tags
Plug 'tpope/vim-ragtag'

" gruvbox colorscheme
Plug 'https://github.com/morhetz/gruvbox.git'

" Install vim-surround for changing surrounding quotes, tags, parenthesis
Plug 'tpope/vim-surround'

" Install vim-commentary for commenting out lines
Plug 'tpope/vim-commentary'

" Install coc.nvim for syntax highlighting and code completion for
" web-development work
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-tslint-plugin', 'coc-yank']

" Install leafgarland and vim-jsx-typescript for typescript support
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" For File and Folder exploration, Installing nerd tree and icons for files/folders
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'


" initialize plugin system
call plug#end()




																		" SETTINGS FOR COLOR SCHEME
colorscheme gruvbox

set background=dark

syntax on



																		" SETTINGS FOR AIRLINE
"" Plugin Settings {
  " Airline {
  	let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#right_sep = ''
    let g:airline#extensions#tabline#right_alt_sep = ''
    let g:airline#extensions#tabline#formatter = 'default'
"
    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
   let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = '☰'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = '∄'
    let g:airline_symbols.whitespace = 'Ξ'
"
    " Theme ( github.com/vim-airline/vim-airline-themes
    let g:airline_theme= 'gruvbox'
"  " }
"

																		" SETTINGS FOR INDENTATION

" The width of a TAB key is set to 4.
set tabstop=4       	

" Defines the width shifted when using << or >> or == 
set shiftwidth=4	

" Line numbers are relative to the line where the cursor is present
set relativenumber	

" Auto indents - copies indentation from previous line to next line, does not affect file type indentation
set autoindent		

" File specific settings picked according to the type of file, from indent folder for the particular type of file
filetype plugin indent on



																		" SETTINGS FOR HIGHLIGHTING CURRENT LINE

" sets cursor line for the current line
set cursorline

" Highlights the current cursor line
hi cursorline cterm=none term=none

" Higlight style for current cursor line
highlight CursorLine guibg=#303000 ctermbg=234




																		" SETTING FOR USEFUL SHORTCUTS 
																		
" shortcut for new tab
ca tn tabnew        

" shortcut for vertical split
ca vsp vsplit

" shortcut for horizontal split
ca hsp hsplit

"remap for exit out of quotes 
let g:BASH_Ctrl_j = 'off'
inoremap <C-j> <Right>


																		" FOR BETTER NAVIGATION BETWEEN NVIM SPLITS

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l





																		" FOR NERD-TREE FILE EXPLORER CONFIGUARION


let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>>>>



																		" SETTINGS FOR INTEGRATED TERMINAL

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>



" For searching files recursively using find command
set path+=**        
" For copying into system clipboard
set clipboard+=unnamedplus

