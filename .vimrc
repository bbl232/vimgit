execute pathogen#infect()

nmap <C-I> :NERDTreeToggle<CR>
nmap <C-t> :tabnew<CR>
nmap <C-f> :tabnext<CR>
nmap <C-b> :tabprev<CR>
nmap <C-h> <C-W><C-H>
nmap <C-l> <C-W><C-L>
nmap <C-j> <C-W><C-J>
nmap <C-k> <C-W><C-K>
nmap <C-x> :close<CR>
nmap <S-b> :ls<CR>:buffer<SPACE>
nmap <S-Enter> o<Esc>
nmap <CR> O<Esc>
command -nargs=1 -complete=file O tabnew <args> 
nmap f w
vmap f w
command Q qa
autocmd BufEnter * lcd %:p:h
let NERDTreeShowHidden=1
syntax on
set number
set softtabstop=4 shiftwidth=4 expandtab
