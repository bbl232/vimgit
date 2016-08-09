execute pathogen#infect()

"NERDTree shortcuts
nmap <C-I> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0

"Tab controls
nmap <C-t> :tabnew<CR>
nmap <C-f> :tabnext<CR>
nmap <C-b> :tabprev<CR>

"Pane navigation
nmap <C-h> <C-W><C-H>
nmap <C-l> <C-W><C-L>
nmap <C-j> <C-W><C-J>
nmap <C-k> <C-W><C-K>

"Pane resizing
nmap <S-h> :vertical resize -2<CR>
nmap <S-l> :vertical resize +2<CR>
nmap <S-j> :resize -2<CR>
nmap <S-k> :resize +2<CR>

"Inserting blank lines using enter
nmap <S-Enter> o<Esc>
nmap <CR> O<Esc>
imap <C-L> <C-X><C-L>

":O command for open in new tab
command -nargs=1 -complete=file O tabnew <args> 

"Unmap record
nmap q <Nop>

"lcd to current buffer pwd, useful for running commands
autocmd BufEnter * lcd %:p:h

"Syntax highlighting
syntax on

"Line numbers on
set number

"Indentation control
set softtabstop=2 shiftwidth=2 expandtab

set backspace=indent,eol,start
