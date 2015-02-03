execute pathogen#infect()

map <C-I> :NERDTreeToggle<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <C-j> :tablast<CR>
map <C-k> :tabfirst<CR>
command Q qa
command -nargs=1 -complete=file O tabnew <args> 
let NERDTreeShowHidden=1
syntax on
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set number
