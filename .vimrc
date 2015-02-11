execute pathogen#infect()

"NERDTree shortcuts
nmap <C-I> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Tab controls
nmap <C-t> :tabnew<CR>
nmap <C-f> :tabnext<CR>
nmap <C-b> :tabprev<CR>

"Pane navigation
nmap <C-h> <C-W><C-H>
nmap <C-l> <C-W><C-L>
nmap <C-j> <C-W><C-J>
nmap <C-k> <C-W><C-K>

"Tab/Pane close
nmap <C-x> :close<CR>

"Shift-B for buffer management
nmap <S-b> :ls<CR>:buffer<SPACE>

"Inserting blank lines using enter
nmap <S-Enter> o<Esc>
nmap <CR> O<Esc>

":O command for open in new tab
command -nargs=1 -complete=file O tabnew <args> 

":GA, GC and GP commands for git add and git commit
command GA !git add %
command -nargs=1 GC !git commit -m <args>
command GP !git push

"Map f for forward word
nmap f w
vmap f w

":Q for quit all
command Q qa

"lcd to current buffer pwd, useful for running commands
autocmd BufEnter * lcd %:p:h

"Syntax highlighting
syntax on

"Line numbers on
set number

"Indentation control
set softtabstop=2 shiftwidth=2 expandtab
