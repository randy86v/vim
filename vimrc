call pathogen#infect()
call pathogen#helptags()

" Load VIM in nocompatible mode to use enhanced features
" This must be first, because it changes other options as side effect
set nocompatible

set hidden                      " Handle multpile buffers better

set textwidth=80                " tw to specify a default text width

set history=1000	              " Keep 100 lines of command line history
 
set number                      " Show line numbers

filetype plugin indent on       " Enable filetype plugin and indentation

let mapleader = ","

set nohlsearch                  " turn off highlight searches, but:
                                " Turn hlsearch off/on with CTRL-N
:map <silent> <C-N> :se invhlsearch<CR>

set virtualedit=all             " allow you to walk thru virtual spaces

" Visual Enhancement
set t_Co=256
colorscheme railscasts
syntax enable                   " Enable syntax highlighting
set cursorline                  " Highlight the cursor line
set showmatch                   " Highlight matching brackets
set magic                       " Set magic on, for regular expressions

" Tabs and indentation
set expandtab                   " Use spaces instead if tabs
set autoindent                  " Auto indent
set smartindent                 " Smart indent
set shiftwidth=2                " Maintain 2 level indentation
set tabstop=2                   " 2 level indentation for Tab
set wrap linebreak textwidth=0  " Wrap lines

" Start the status line
set statusline=%f\ %m\ %r
set statusline+=Line:%l/%L[%p%%]
set statusline+=Col:%v
set statusline+=Buf:#%n
set statusline+=[%b][0x%B]
set laststatus=2                " always show the status bar

" puts a $ marker for the end of words/lines in cw/c$ commands
:set cpoptions+=$ 

set runtimepath^=~/.vim/bundle/ctrlp.vim

" keymap for ack plugin
nnoremap <leader>a :Ack<space>

" keymap for NERDTree
map <F2> :NERDTreeToggle<CR>

let g:NERDTreeWinPos = "right"  " place the Nerdtree window to the right of vim

imap <F3> <ESC>:BufExplorer<CR>
map <F3> :BufExplorer<CR>

" keymap for :UltisnipsEdit
nnoremap <leader>u :UltiSnipsEdit<CR>
