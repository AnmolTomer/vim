" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
" set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" Powerline setup
"set  rtp+=$HOME/anaconda3/lib/python3.7/site-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256
" You can't stop ME
cmap w!! w !sudo tee %


" ------------------------------------ CP -----------------------------------



" autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++14 -O2 -Wall % -o %:r && %:r.out <cr>

"Save F6 and F5 for CPP files build
map <F6> :w <CR>
" map <F5> :!g++ -std=c++14 -Wall -g % -o %:r.out <CR>
autocmd filetype cpp nnoremap <F5> :w <CR> :!g++ -std=c++14 -Wall -g % -o %:r.out <CR>
" F9 Compile and Run
" map <F9> :!g++ -g % -o %:r && ./%:r <CR>
" F5 compile, not used much
map <C-b> :bd <CR>
