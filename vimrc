syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Distraction-free Writing Plugin: 
" Usage: :Goyo || The window can be resized with the usual [count]<CTRL-W> + >, <, +, - keys, and <CTRL-W> + = will resize it back to the initial size.

Plug 'junegunn/goyo.vim'

" Pencil - initialize pencil with auto-detect for the current buffer
" NoPencil (or PencilOff) - removes navigation mappings and restores buffer to global settings
" TogglePencil (or PencilToggle) - if on, turns off; if off, initializes with auto-detect
" Because auto-detect might not work as intended, you can invoke a command to set the behavior for the current buffer:
" SoftPencil (or PencilSoft) - initialize pencil with soft line wrap mode
" HardPencil (or PencilHard) - initialize pencil with hard line break mode (and Vim’s autoformat)

Plug 'reedes/vim-pencil'

call plug#end()

