"------------------------------------
" Mappings
"

" Buffer jumping
noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>

" Buffer window jumps
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-k>k
noremap <C-l> <C-w>l

" Buffer close
noremap <C-c> :bdelete<CR>

" Terminal niceness
tnoremap    <ESC><ESC>     <C-\><C-n>

" For plumbing arbitrary things
function! s:get_visual_selection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

vmap p :`<,. w !plumber <CR>
vmap m :`<,. w !sh<CR>
vmap M :`<,. !sh<CR>
