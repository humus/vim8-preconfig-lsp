let mapleader=','

noremap! <Leader>t <><Left>
noremap! <Leader>g <
noremap! <Leader>f >
noremap! <Leader>1 /
noremap! <Leader>q ""
noremap! <Leader>Q @
noremap! <Leader>a ''<Left>
noremap! <Leader>s *
noremap! <C-f> <Right>
noremap! <C-b> <Left>
noremap! <Leader>c ()<Left>

nnoremap -g :Lexplore<cr>

nnoremap gs :w<cr>
nnoremap <Space> :
nnoremap ,. <C-^>

inoremap gc <Esc>
inoremap ,x {}<Left>
inoremap ,r []<Left>
nnoremap ,. :e #<CR>

nnoremap <C-n> :Buffers<CR>
nnoremap <C-p> :Files<CR>
nnoremap <F3> :History<CR>
nnoremap <C-g><C-e> :History:<CR>
nnoremap -m :Marks<CR>

cnoremap <C-g><C-g> <Esc>
cnoremap %% <C-r>=expand('%:h')<cr>/

