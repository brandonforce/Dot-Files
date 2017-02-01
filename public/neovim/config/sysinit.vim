"                         ███████████████████████████
"                         ███████▀▀▀░░░░░░░▀▀▀███████
"                         ████▀░░░░░░░░░░░░░░░░░▀████
"                         ███│░░░░░░░░░░░░░░░░░░░│███
"                         ██▌│░░░░░░░░░░░░░░░░░░░│▐██
"                         ██░└┐░░░░░░░░░░░░░░░░░┌┘░██
"                         ██░░└┐░░░░░░░░░░░░░░░┌┘░░██
"                         ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██
"                         ██▌░│██████▌░░░▐██████│░▐██
"                         ███░│▐███▀▀░░▄░░▀▀███▌│░███
"                         ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
"                         ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
"                         ████▄─┘██▌░░░░░░░▐██└─▄████
"                         █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
"                         ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
"                         █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
"                         ███████▄░░░░░░░░░░░▄███████
"                         ██████████▄▄▄▄▄▄▄██████████
"                         ███████████████████████████
"
"    You are about to experience a potent dosage of Vim. Watch your step.
"
"                ╔══════════════════════════════════════════╗
"                ║           ⎋ HERE BE VIMPIRES ⎋           ║
"                ╚══════════════════════════════════════════╝
"autocmd BufEnter * :syntax sync fromstart


" Enables filetype detection, filetype-specific scripts (ftplugins), and filetype-specific indent scripts.
filetype indent plugin on

syntax on                               " Turns on syntax highlighting
set ruler                               " Show row and column ruler information
set number				" Show line numbers
set spelllang=en		        " Enable spell-checking
set softtabstop=4			" Number of spaces per tab
set title				" Set the terminal title to the current file
set visualbell				" Turn on the visual bell
set cursorline				" Highlight the line under the cursor
set hidden				" Hide inactive buffers
set ttimeoutlen=0	                " Eliminate delay when switching modes 
set expandtab				" Converts tabs into spaces
set showmatch                           " Highlights matching parenthesis-like characters
set smartindent

set clipboard=unnamed                   " Allows to "Yank" and Pase to clipboard 

"so $VIMRUNTIME/syntax/syntax.vim       " Load syntax files
"let g:python_host_prog = '/usr/local/bin/python'
so ~/.dotfiles/public/neovim/config/python.vim

" Enable all Python syntax highlighting features
"let python_highlight_all = 1

"set foldmethod=marker                   " Fold sections by marker rather than indentation
"set foldlevel=0                         " Close all folds by default


" Lazyredraw attempts to solve Vim lag by reducing processing required. When
" enabled, any action that is not typed will not cause the screen to redraw.
set lazyredraw


" Don't display the current mode in the status line.
" This info is already displayed in the Airline status bar.
set noshowmode


" Key Mappings {{{
inoremap jj <esc>			" Remaps the esc key to 'jj' 
inoremap jk <esc>			" Remaps the esc key to 'jk'

" Disabling all of the cursor keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" }}}

" Changes the cursor shape. (Flashing pipe in insert mode, block in normal node.)
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1	

" Colors and Theme Options
set termguicolors			" Enables 'True Color' support
silent! colorscheme gruvbox             " Sets the color scheme, if present
set background=dark			" Sets the default background to dark mode
let g:gruvbox_contrast_dark="hard"	" Changes dark mode contrasts. Possible values are soft, medium, and hard. Default is medium
let g:gruvbox_contrast_light="hard"	" Changes light mode contrasts. Possible values are soft, medium, and hard. Default is medium
let g:gruvbox_italicize_comments= 1	" Enables italics for comments
let g:gruvbox_italicize_strings=1	" Enables italics for strings

" CtrlP settings
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


" change the working directory to the current file's directory
command! -nargs=0 CD exec 'cd' expand('%:h')


" Tells only this file to use manually set fold markers and close all markers
" by default when the file is opened. Helps with organizing vimrc.
set modelines=1
" vim: set foldmethod=marker:set foldlevel=0
