# CONFIG

Author: StevenChaoo
Github: <https://github.com/StevenChaoo/STEVEN-Config>

## INTRODUCTION

This file is an introduction of my configuration consisted of *fonts*, *neovim/vim*, *ranger*, *terminal*, *tmux*, *zsh* and *program language*.

## FONTS

Follow the installation in this page: <a
href="https://github.com/ryanoasis/nerd-fonts" target="_blank">NerdFonts</a> or download specific fonts manually like following fonts.

- Hack-Bold.ttf
- Hack-BoldItalic.ttf
- Hack-Italic.ttf
- Hack-Regular.ttf

Double click these fonts to installation and select them in terminal settings.

## NEOVIM/VIM

### Plugin

#### MattesGroeger/vim-bookmarks  

`mm`    Append a bookmark  
`mi`    Append an annotation  
`ma`    Search bookmarks  
`mx`    Clean all bookmarks  
`mn`    Jump to next bookmark  
`mp`    Jump to previous bookmark  

#### mbbill/undotree

`X`     Open undotree

#### Yggdroot/indentLine

#### scrooloose/nerdtree

`tt`    Open nerdtree

#### vim-airline/vim-airline

`<tab>` Swtich tabs

#### scrooloose/nerdcommenter

`cc`    Comment code
`cu`    Uncomment code

#### easymotion/vim-easymotion

`ss`    Search code

#### skywind3000/asyncrun.vim

`<F5>`  Qucikrun  
`cn`    Jump to next error  
`cp`    Jump to previous error  
`cx`    Close qucikfix  
`cc`    Show details of error  
`co`    Open quickfix

#### majutsushi/tagbar

`tb`    Open tagbar

#### tpope/vim-surround

`<CR>`  Select

#### gcmt/wildfire.vim

`S<Any>` Append anything  
`cs<former><latter>` Change surround

#### neoclide/coc.nvim

`<C-o>` Open coc in insert mode
`ep` Jump to previous error  
`en` Jump to next error  
`gd` Jump to definition  
`gr` Jump to references  
`<leader>rn` Rename selected variables

#### octol/vim-cpp-enhanced-highlight

#### glepnir/dashboard-nvim

#### junegunn/fzf.vim

`<leader>H` Open MRU files  
`<leader>F` Open files in ~/File/Code/Go

#### honza/vim-snippets

#### iamcco/markdown-preview.nvim

`:MarkdownPreview` Preview md file

#### godlygeek/tabular

`:Tabularize<Any>` Tabularize

#### dhruvasagar/vim-table-mode

`<leader>tm` Enable table mode

#### fatih/vim-go

#### itchyny/calendar.vim

`\\` Start a clock

#### ryanoasis/vim-devicons

#### tiagofumo/vim-nerdtree-syntax-highlight

---

### Key Maps

|       Now       |         Previous        |
|:---------------:|:-----------------------:|
|        Q        |          :q<CR>         |
|        ;        |            :            |
| <leader>h,j,k,l |       <C-w>h,j,k,l      |
|  <left>,<right> | :vertical resize-+5<CR> |
|   <up>,<down>   |       :res+-5<CR>       |
|        H        |            0            |
|        L        |            $            |
|        J        |            5j           |
|        K        |            5k           |
|   <leader>-,=   |  :split<CR>,:vsplit<CR> |
|    <leader>x    |     :nohlsearch<CR>     |
|        S        |          :w<CR>         |
|        Q        |          :q<CR>         |

## TERMINAL

**Fonts:** Hack Regular Nerd Font Complete 15'  
**BGcolors:** `#282c34`  
**FGcolors:** `#282c34` `#ff6c75(#e06c75)` `#98ff79(#98c379)` `#e5c07b` `#4cafff(#61afef)` `#c678dd` `#56b6c2` `#dcdfe4`

## TMUX

Install tmux by using `brew install tmux`  
Here are some key maps as following.  
`<C-a>` is new prefix key  
`<prefix>R` to reload .tmux.conf  
`<perfix>c` to create a new window  
`<prefix>p` to jump to previous window  
`<prefix>n` to jump to next window  
`<prefix>=` to split window horizontal  
`<prefix>-` to split window vertical  
`<C-h,j,k,l>` to jump to left, down, up, right pane  

## ZSH

Here are some key maps in different types.  

`lg`: lazygit

`vi`: nvim

`ta`: tmux a  
`tk`: tmux kill-session -t  
`tn`: tmux new -s

`gclone`: git clone  
`ginit`: git init  
`gall`: git add .  
`gadd`: git add  
`gdiff`: git diff  
`gstatus`: git status  
`gcommit`: git commit -m  
`gbranch`: git branch  
`gcheck`: git checkout  
`gmerge`: git merge  
`gremote`: git remote add origin  
`gpush`: git push  

`proxy`: export all_proxy=socks5://127.0.0.1:9091  
`unproxy`: unset all_proxy  

`ra`: ranger  

`n`: neofetch  

`L`: clear  

`cc`: conda create -n  
`cac`: conda activate  
`cde`: conda deactivate

## PROGRAM LANGUAGE

### Python

> Using nvim to code python in anaconda environment. Create file in any places and encode it.

#### Installation & Environment Settings

Using <a href="https://docs.anaconda.com/anaconda/install"
target="_blank">Anaconda</a> to create vitural python environments.
System will append this snippet in ~/.zshrc.

```vim
alias cc="conda create -n"
alias cac="conda activate"
alias cde="conda deactivate"
__conda_setup="$('/Users/USERNAME/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/USERNAME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/USERNAME/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/USERNAME/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
```

Using `conda create -n NAME python=VERSION` to create an environment with
activating it by `conda activate NAME`. Using `conda deactivate` to deactivate
an environment. You can scan all environments by using `conda env list` and scan
all packages of current environment by using `conda list`.

#### Usage

The program will append the header automaticly with

```python
# Author: STEVEN
# -*- coding:UTF-8 -*-
```

Using `cac NAME` to start an virtual environment firstly. Using `tt` to open **NerdTree**, `tb` to open **TagBar**, `co/cx` to open/close **QucikFix**, `F5` to run code, `:CocCommand python.setInterpreter` to select complete environment.

---

### GoLang

> Using nvim to code golang. Need to create files in ~/File/Code/Go/src/FILEFOLDER.

#### Installation & Environment Settings

Using `brew install go` to install GoLang. You can check if it is installed
successfully with `go version`. Seeing this sentence means your environment is
installed successfully.

```shell
go version go1.15.5 darwin/amd64
```

You may need install **vim-go** to enhance your vim by `Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }`. 
And you need to install all binaries by using `:GoInstallBinaries`.
In China you may need to set some following settings to use proxy to install
binaries.

```shell
export GOPATH=/PATH/Go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GOPROXY=https://goproxy.cn
```

#### Usage

You need to create Go directory manually. And /src, /bin, /pkg should in Go
directory. /src is for putting your golang files; /bin is for putting execution
files; /pkg is for putting packages. If you want to `go build FILE.go`, you may
need enter `go mod init` first to init a mod. The execution file will move to
/bin folder where you can use it in any files.

---

### C/C++

> Using nvim to code c/cpp. You can create file in any places.

#### Usage

The header will append in file automaticly with

```cpp
// Author: STEVEN
//
#include<iostream>
using namespace std;
```

Using `g++ -o EXECNAME FILENAME.cpp` to encode file into exec file in terminal
and `./EXECNAME` will run this execution file. Or you can using `F5` to exec and
run file in nvim directly.

---

### Markdown

> Using nvim or VSCode to code markdown file.

#### Usage

You may found detailed description in <a href="https://www.jianshu.com/p/191d1e21f7ed" target="_blank">Usgae of Markdown</a>. Here are some examples:

```markdown
# title
## subtitle
### subsubtitle
#### subsubsubtitle
```

```markdown
> quote
```

```markdown
<a href="URL" target="_blank">discription</a>
<URL>
```

```markdown
- item1
- itme2
- item3
```

You can using `F5` to preview file in a browser.
