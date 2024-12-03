set nocompatible
set encoding=utf-8
set fileencoding=utf-8

"se nu ai hls ru ic is sc cul
se nu ai hls ru is sc cul
"se re=1 ts=4 sts=4 sw=4 ls=2 mouse=a
se re=1 ts=4 sts=4 sw=4 ls=2
syntax on
hi cursorline cterm=none ctermbg=89
set bg=dark
"set ar fdm=manual rnu
set ar fdm=manual
set noexpandtab
ca Hash w !cpp -dD -P -fpreprocessed \| tr -d '[:space:]' \| md5sum \| cut -c-6

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'lervag/vimtex'
"call vundle#end()
"filetype plugin indent on
"syntax enable
"set noexpandtab

function InitLatex()
    se ts=2 sts=2 sw=2 ls=2
    map <F9> :w<bar>!~/xelatex.sh<CR><CR>
    inoremap <F9> <Esc>:w<bar>!~/xelatex.sh<CR><CR>
    map <F10> :w<bar>!~/Github/ioicamp2024-book/Math/run.sh<CR><CR>
    inoremap <F10> <Esc>:w<bar>!~/Github/ioicamp2024-book/Math/run.sh<CR><CR>
	" map <C-j> i\begin{}<CR>\end{}<up><right><right><CR><Esc>cse<CR>
	" inoremap <C-j> \begin{}<CR>\end{}<up><right><right><CR><Esc>cse<CR>
endfunction

function InitCpp()
    map <F9> :w<bar>!~/g++.sh "%"
    inoremap <F9> <Esc>:w<bar>!~/g++.sh "%"
	map <F8> :w<bar>!~/copy "%"
	inoremap <F8> <Esc>:w<bar>!/copy "%"
	map <F7> :w<bar>!~/g++.sh "%" f
    inoremap <F7> <Esc>:w<bar>!~/g++.sh "%" f
endfunction

function InitHtml()
    map <F9> :w<bar>!~/html.sh "%"<CR>
    inoremap <F9> <Esc>:w<bar>!~/html.sh "%"<CR>
endfunction

function InitJs()
	map <F9> :w<bar>!~/html.sh index.html<CR>
	inoremap <F9> <Esc>:w<bar>!~/html.sh index.html<CR>
endfunction

function InitC()
    map <F9> :w<bar>!~/gcc.sh "%"
    inoremap <F9> <Esc>:w<bar>!~/gcc.sh "%"
endfunction

function InitSh()
    map <F9> :w<bar>!./"%"
    inoremap <F9> <Esc>:w<bar>!./"%"
endfunction

function InitPy()
    map <F9> :w<bar>!python3 "%"
    inoremap <F9> <Esc>:w<bar>!python3 "%"
endfunction

noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

map <F7> :w<bar>!make
inoremap <F7> <Esc>:w<bar>!make

au Bufenter *.tex call InitLatex()
au Bufenter *.cpp call InitCpp()
au Bufenter *.html call InitHtml()
au Bufenter *.js call InitJs()
au Bufenter *.css call InitJs()
au Bufenter *.c call InitC()
au Bufenter *.sh call InitSh()
au Bufenter *.py call InitPy()
