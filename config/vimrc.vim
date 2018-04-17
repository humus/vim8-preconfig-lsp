if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/bundle')
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'aserebryakov/vim-todo-lists'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-ragtag'
Plug 'drmingdrmer/xptemplate'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }
call plug#end()

set hidden
set noswf
set ls=2
set bs=eol,start
set sts=4 sw=4 ts=4 et
set ai
set undofile
let &undodir=$HOME . '/.vim/undo'


filetype plugin indent on
syntax on

let mappings_file=fnamemodify(resolve(glob('~/.vimrc')), ':p:h').'/mappings.vim'
if filereadable(mappings_file)
  exe 'silent! source '.mappings_file
endif

let g:user_emmet_leader_key='<C-e>'


let g:xptemplate_key = '<Leader><Tab>'
let g:xptemplate_key_pum_only = '<S-Tab>'
let g:xptemplate_nav_next = '<Tab>'
let g:xptemplate_goback = '<S-Tab>'


let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls']
    \ }
