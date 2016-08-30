# Vimfiles

**Vimfiles** are configuration files for the Vim editor. It includes editor preferences, colorscheme, font definitions, plugins, custom functions and more.


## How to use?

Clone this repository into your home directory as `~/.vim` and then install the plugins. Such as:

    git clone https://github.com/dancasttro/vimfiles.git ~/.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    run vim
    :PlugInstall


Install jshint, in order to review your JavaScript code:

    sudo npm install -g jshint
    sudo npm install -g coffeelint


## Plugins

| Plugin                                                              | Description                                                         | Interesting links                  |
| :------------------------------------------------------------------ | :------------------------------------------------------------------ | :--------------------------------- |
| [Ag.vim](https://github.com/rking/ag.vim)                           | Plugin for ag (the_silver_searcher)                                 |                                    |
| [CtrlP](https://github.com/kien/ctrlp.vim)                          | Full path fuzzy file, buffer, mru and tag finder                    | [Website](http://goo.gl/nUQ1lA)    |
| [Fugitive](https://github.com/tpope/vim-fugitive)                   | A git wrapper so awesome, it should be illegal                      |                                    |
| [Matchit.zip](https://github.com/vim-scripts/matchit.zip)           | Extended % matching for HTML, LaTeX, and many other languages       |                                    |
| [Nerdtree](https://github.com/scrooloose/nerdtree)                  | A tree explorer plugin                                              |                                    |
| [Rename](https://github.com/danro/rename.vim)                       | Basically does a ":saveas <newfile>" then removes the old filename  |                                    |
| [Smartpairs](https://github.com/gorkunov/smartpairs.vim)            | Fantastic selection, replaces hard keys combination like vi{ or va" |                                    |
| [Snipmate](https://github.com/msanders/snipmate.vim)                | Implements some of TextMate's snippets                              |                                    |
| [Sparkup (Zen-coding)](https://github.com/rstacruz/sparkup)         | A parser for a condensed HTML format                                | [Zen coding](http://goo.gl/E4BVWd) |
| [Syntastic](https://github.com/scrooloose/syntastic)                | Syntax checking hacks                                               |                                    |
| [Tabular](https://github.com/godlygeek/tabular)                     | Text filtering and alignmentClone                                   |                                    |
| [Tcomment](https://github.com/tomtom/tcomment_vim)                  | An extensible & universal comment vim-plugin                        |                                    |
| [Vim Abolish](https://github.com/tpope/vim-abolish)                 | Easily search for, substitute, and abbreviate variants of a word    | [Vim Casts](http://goo.gl/CsfUJ6)  |
| [Vim Airline](https://github.com/bling/vim-airline)                 | Lean & mean status / tabline                                        |                                    |
| [Vim Easymotion](https://github.com/Lokaltog/vim-easymotion/)       | It provides a much simpler way to use some motions in Vim           |                                    |
| [Vim Endwise](https://github.com/tpope/vim-endwise)                 | Wisely add "end" in ruby                                            |                                    |
| [Vim Gitgutter](https://github.com/airblade/vim-gitgutter)          | Shows a git diff in the gutter (sign column)                        |                                    |


