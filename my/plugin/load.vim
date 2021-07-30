"set runtimepath+=~/.vim

"set pythonthreedll=D:\\Software\\Python\\Python3.7\\python37.dll 

"plug '[author]/[plugin]' default map to url: 'github.com/[author]/[plugin repo]' 
"if installed, find plugins in runtime locations, and plug them.
"silent! call plug#begin('~/.vim/plugged')
call plug#begin('$VIM/vimfiles/plugged')

"code:
"complete:
	"Plug 'neoclide/coc.nvim', "{'branch':'release'}
	"Plug 'ycm-core/YouCompleteMe' ",{'for':['c','c++']}
	Plug 'ervandew/supertab'

"tag:
	"Plug 'ludovicchabant/vim-gutentags'
	"Plug 'vim-scripts/taglist.vim', {'for':['c','c++']}

"other:
	"Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/vim-easy-align'
	Plug 'scrooloose/nerdcommenter'
	"Plug 'mattn/emmet-vim', {'for':'html'}
	"Plug 'octol/vim-cpp-enhanced-highlight'
	"Plug 'luochen1990/rainbow'
"code$

"snippet:
	Plug 'SirVer/ultisnips'
	"Plug 'honza/vim-snippets'

"search:
	Plug 'Yggdroot/LeaderF'

"mark:
	Plug 'kshenoy/vim-signature'

"explore:
	Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
	Plug 'jlanzarotta/bufexplorer'

"appearance:
	"Plug 'schmich/vim-guifont'
	"Plug 'vim-airline/vim-airline-themes'
	"Plug 'vim-airline/vim-airline'
	"Plug 'crusoexia/vim-monokai'

"markdown:
	"Plug 'iamcco/mathjax-support-for-mkdp' ",{'for':'md'}
	"Plug 'iamcco/markdown-preview.vim' ",{'for':'md'}

"other:
	"Plug 'vim-scripts/DrawIt'
	Plug 'vim/killersheep'

"the plug itself: vim-plug, located in autoload
"just put it's net address here to update
"Plug 'junegunn/vim-plug'

"silent!
call plug#end()

"--plugin config:(temp)--
"noremap 

"open NERDTree when open vim
"autocmd vimenter * NERDTree

"quit NERDTree when quit vim
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"--plugin config$--

so $VIM/my/plugin/config/load.vim
