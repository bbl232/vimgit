execute pathogen#infect()

nmap <C-I> :call VexToggle(getcwd())<CR>

"Tab controls
nmap <C-t> :Texplore<CR>
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
"set tabstop=4
set softtabstop=2 shiftwidth=2 expandtab

set backspace=indent,eol,start

set iskeyword-=_
set laststatus=2

fun! VexToggle(dir)
  if exists("t:vex_buf_nr")
    call VexClose()
  else
    call VexOpen(a:dir)
  endif
endf

fun! VexOpen(dir)
  let g:netrw_browse_split=4    " open files in previous window
  let g:netrw_altv=1
  let vex_width = 25

  execute "Vexplore " . a:dir
  let t:vex_buf_nr = bufnr("%")
  wincmd H

  call VexSize(vex_width)
endf

fun! VexClose()
  let cur_win_nr = winnr()
  let target_nr = ( cur_win_nr == 1 ? winnr("#") : cur_win_nr )

  1wincmd w
  close
  unlet t:vex_buf_nr

  execute (target_nr - 1) . "wincmd w"
  call NormalizeWidths()
endf

fun! VexSize(vex_width)
  execute "vertical resize" . a:vex_width
  set winfixwidth
  call NormalizeWidths()
endf

fun! NormalizeWidths()
  let eadir_pref = &eadirection
  set eadirection=hor
  set equalalways! equalalways!
  let &eadirection = eadir_pref
endf

augroup NetrwGroup
  autocmd! BufEnter * call NormalizeWidths()
augroup END
