#取り敢えずgithub.com/keyakkoから拝借(そのうちカスタマイズする)
syntax enable
set number
set ruler
set noswapfile
set cursorline
set showmatch
set laststatus=2
set tabstop=2
set smartindent
set autoindent
set clipboard=unnamed,unnamedplus
set backspace=indent,eol,start
set nocompatible
set wildmenu

imap <C-g> <ESC>



" neobundle settings {{{
  if has('vim_starting')
      set nocompatible
        " neobundle をインストールしていない場合は自動インストール
          if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
                echo "install neobundle..."
                    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
                        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
                          endif
                            " runtimepath の追加は必須
                              set runtimepath+=~/.vim/bundle/neobundle.vim/
                              endif
                              call neobundle#begin(expand('~/.vim/bundle'))
                              let g:neobundle_default_git_protocol='https'

                              " neobundle#begin - neobundle#end の間に導入するプラグインを記載します。
                              NeoBundleFetch 'Shougo/neobundle.vim'
                              " ↓こんな感じが基本の書き方
                              NeoBundle 'nanotech/jellybeans.vim'

                              NeoBundle 'airblade/vim-gitgutter'
                              NeoBundle 'vim-airline/vim-airline'
                              NeoBundle 'vim-airline/vim-airline-themes'
                              NeoBundle 'https://github.com/ctrlpvim/ctrlp.vim.git'

                              " vimrc に記述されたプラグインでインストールされていないものがないかチェックする
                              NeoBundleCheck
                              call neobundle#end()
                              filetype plugin indent on
                              " どうせだから jellybeans カラースキーマを使ってみましょう
                              set t_Co=256
                              syntax on
                              colorscheme jellybeans
