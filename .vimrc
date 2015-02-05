execute pathogen#infect()

map <C-I> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <C-j> :tablast<CR>
map <C-k> :tabfirst<CR>
map <C-x> :close<CR>
map <C-b> :ls<CR>:buffer<SPACE>
nmap f w
command Q qa
command -nargs=1 -complete=file O tabnew <args> 
let NERDTreeShowHidden=1
syntax on
set number
