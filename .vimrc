"Leaderkey
let mapleader = ","

"magic key
map <F5> ggg?G``
"set t_Co=256
"color molokai
"colorscheme mustang

"display utf-8
set fencs=utf-8,chinese,latin1 fenc=utf-8 enc=utf-8
set nu
set rnu
syntax on
"copy to clipboard
"set clipboard=unnamedplus

""""""Practical vim  by doom
set hlsearch nospell
set incsearch
set is
set smartcase
"
if has("autocmd")
    filetype on
    autocmd FileType html setlocal ts=2 sts=2 sw=2 et textwidth=0
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noet
    autocmd FileType css set ts=2 sts=2 sw=2 noet
endif
""""
"I am a real programmer and tab not space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
"stupid swp file ....
set nobackup
set nowritebackup
set noswapfile
"advance movement ctrl+w
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-_> <c-w>-
map <c-0> <c-w>+
"Quick quit <CR> meaning enter keyboard
map <Leader>e :q!<CR>
map <Leader>E :qa!<CR>
"Fast saving with leader + w
nmap <leader>w :w!<cr>
"
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
"set dictionary
set dictionary+=~/.vim/doc/engspchk.dict
let g:SuperTabDefaultCompletionType = "context"

execute pathogen#infect()
syntax on
filetype plugin indent on

"colorscheme solarized
let g:solarized_termcolors=256  
set background=dark  
colorscheme solarized

"supertab
set completeopt=longest,menu "防止抖动

"jedi for autocomplete python ide from github vim-as-a-ide
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-l>"
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview

"Automatic headers
 autocmd bufnewfile *.sh so ~/.vim/doc/sh.t
 autocmd bufnewfile *.sh exe "1," . 6 . "g/File Name :.*/s//File Name : " .expand("%")
 autocmd bufnewfile *.sh exe "1," . 6 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
 autocmd bufnewfile *.sh exe "1," . 6 . "g/Release By :.*/s//Release By : " ."Doom.zhou"
 autocmd Bufwritepre,filewritepre *.sh execute "normal ma"
 autocmd Bufwritepre,filewritepre *.sh exe "1," .  6 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
 autocmd bufwritepost,filewritepost *.sh execute "normal `a"
"Automatic headers for python
 autocmd bufnewfile *.py so ~/.vim/template/py.t
 autocmd bufnewfile *.py exe "1," . 7 . "g/File Name :.*/s//File Name : " .expand("%")
 autocmd bufnewfile *.py exe "1," . 7 . "g/Creation Date :.*/s//Creation Date : " .strftime("%s")
 autocmd bufnewfile *.py exe "1," . 7 . "g/Release By :.*/s//Release By : " ."Doom.zhou"
 autocmd Bufwritepre,filewritepre *.py execute "normal ma"
"autocmd QuitPre *.py exe "1," .  7 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
 autocmd bufwritepost,filewritepost *.py execute "normal `a"
"Automatic headers for HTML
"autocmd bufnewfile *.\(html\|htm\) so ~/.vim/template/html.t


"##############################################################################
"yodiaditya 
"##############################################################################
"When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

"Set undodir
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
"Tab configuration
map <leader>tn :tabnew! %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
set wildmenu   " Menu completion in command mode on <Tab> "
set cursorline 
set colorcolumn=80 "make 80th column with a red
"Taken From http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd FileType python match OverLength /\%98v.\+/
nnoremap <leader>v "+gP

"You can change with this :
let g:pep8_map='<F6>'

" Press F3 for toggle paste mode
set pastetoggle=<F3>         

"MRU
map <leader><space> :MRU<CR> 

" Open Window Explorer NerdTree & Tagbar using (left-right sidebar) using <F8>
" write by yodiaditya python django
function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

" Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

" Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTreeToggle
    else
        NERDTreeToggle
        TagbarOpen
    endif

" Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction
" now you can open NERDTree and Tagbar using F8
" http://stackoverflow.com/questions/6624043/how-to-open-or-close-nerdtree-and-tagbar-with-leader
nmap <F8> :call ToggleNERDTreeAndTagbar()<CR>

" TagBar Configuration
let g:tagbar_usearrows=1
let g:tagbar_width=25
let g:tagbar_singleclick=1

let g:NERDTreeShowBookmarks=0
let g:NERDTreeMouseMode=3
let g:NERDTreeWinSize=20

"doomzhou 
"vim's help type :h i_ctrl-r
imap <C-R>c <C-R>+
imap <C-R>f <C-R>%
imap <C-R>y <C-R>"
"Restore cursor to file position in previous 
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal g`\"" |
     \ endif"


"Practical vim book
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

