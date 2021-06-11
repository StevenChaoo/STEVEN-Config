# Configuration

> **Author: [StevenChaoo](https://github.com/StevenChaoo)**

![vscode](https://img.shields.io/badge/visual_studio_code-007acc?style=flat-square&logo=visual-studio-code&logoColor=ffffff)![neovim](https://img.shields.io/badge/Neovim-57a143?style=flat-square&logo=Neovim&logoColor=ffffff)![git](https://img.shields.io/badge/Git-f05032?style=flat-square&logo=git&logoColor=ffffff)

This blog is written by **Neovim** and **Visual Studio Code**. You may need to clone this repository to your local and use **Visual Studio Code** to read. ***Markdown Preview Enhanced*** plugin is necessary as well.

## Contents

- [Configuration](#configuration)
  - [Contents](#contents)
  - [1. Introduction](#1-introduction)
  - [2. Fonts](#2-fonts)
  - [3. Jupyter](#3-jupyter)
  - [4. Neovim](#4-neovim)
    - [4.1 Introduction](#41-introduction)
    - [4.2 keymaps.vim](#42-keymapsvim)
    - [4.3 languagesettings.vim](#43-languagesettingsvim)
    - [4.4 pluginstall.vim](#44-pluginstallvim)
    - [4.5 systemsettings.vim](#45-systemsettingsvim)
  - [5. Ranger](#5-ranger)
  - [6. Terminal](#6-terminal)
  - [7. Tmux](#7-tmux)
  - [8. Vim](#8-vim)
  - [9. Visual Studio Code](#9-visual-studio-code)
    - [9.1 LaTeX](#91-latex)
    - [9.2 Vim](#92-vim)
    - [9.3 Format](#93-format)
    - [9.4 Plugin](#94-plugin)
  - [10. Zsh](#10-zsh)

## 1. Introduction

**The directory tree is as followed:**

.
├── ASCII.txt
├── fonts
│   ├── Hack-Bold.ttf
│   ├── Hack-BoldItalic.ttf
│   ├── Hack-Italic.ttf
│   └── Hack-Regular.ttf
├── jupyter
│   └── jupyter_notebook_config.py
├── nvim
│   ├── autoload
│   │   └── plug.vim
│   ├── coc-settings.json
│   ├── colors
│   │   ├── darcula.vim
│   │   ├── spacegray.vim
│   │   └── xcodedark.vim
│   ├── darcula.vim
│   ├── darcula_bak.vim
│   ├── init.vim
│   ├── keymaps.vim
│   ├── languagesettings.vim
│   ├── pluginstall.vim
│   ├── plugsettings.vim
│   ├── spacegray.vim
│   ├── spacegray_bak.vim
│   ├── systemsettings.vim
│   └── xcodedark.vim
├── ranger
│   ├── commands.py
│   ├── commands_full.py
│   ├── imgcat
│   ├── plugins
│   │   ├── ...
│   ├── rc.conf
│   ├── rifle.conf
│   └── scope.sh
├── terminal
│   └── STEVEN.terminal
├── tmux
├── vim
│   ├── autoload
│   │   └── plug.vim
│   └── colors
│       └── darcula.vim
├── vscode
│   └── settings.json
└── zsh
    ├── alias.zsh
    ├── anaconda.zsh
    ├── autojump.zsh
    ├── fzf.zsh
    ├── golang.zsh
    ├── homebrew.zsh
    ├── install.sh
    ├── steven.zsh-theme
    ├── systemsettings.zsh
    ├── theme
    │   └── steven.zsh-theme
    └── zsh-autosuggestions.txt

## 2. Fonts

I choose these four fonts (Hack-Bold.ttf, Hack-BoldItalic.ttf, Hack-Italic.ttf, and Hack-Regular.ttf) to display in the terminal for showing the [nerd-font](https://github.com/ryanoasis/nerd-fonts).

## 3. Jupyter

By following the jupyter notebook official tutorial, I append another five lines code for personalization.

```python
c.NotebookApp.ip='*'
c.NotebookApp.allow_remote_access=True
c.NotebookApp.open_browser=False
c.NotebookApp.port=$port
c.NotebookApp.password='$password'
```

## 4. Neovim

### 4.1 Introduction

`init.vim` is the main configuration file. Only source commands used in this file to explicitly separate the main configuration file and others module.
`keymaps.vim` is about keys mapping relations in neovim.
`languagesettings.vim` is about automation executing file script in python, cpp, and go and appending information head in those types files automatically.
`plugintall.vim` is about the situation of installation of plugins.
`plugsettings.vim` is about the personalization settings of all plugins.
`systemsettings.vim` is about the most basic configurations of neovim.

### 4.2 keymaps.vim

**In all mode**
|keys|Representation|
|---|---|
|;|Replace ":"|
|space + h / j / k / l|Place the cursor in the window on the left / below / upper / right|

**In normal mode**
|keys|Representation|
|---|---|
|[ / ]|Move the cursor to the beginning / end of the line|
|H / J / K / L|Move the cursor 5 lines on the left / below / upper / right|
|space + - / =|Horizontally / vertically split the window|
|space + x|Input ":nohlsearch<CR>" in command representing set no highlight for search|
|S|Save the file|
|Q|Quit the file|
|\ + ,|Find the tag "<=>" and into the select mode|
|space + t|Translate the current word in the cursor|

**In insert mode**
|keys|Representation|
|---|---|
|\ + \ + *|Input annotation automatically in cpp file|
|\ + ' + ' + '|Input annotation automatically in python fule|
|\ + ,|Find the tag "<=>" and into the select mode|

**In visual mode**
|keys|Representation|
|---|---|
|space + t|Translate the current word in the cursor|

### 4.3 languagesettings.vim

Press `F5` to run the code in python, cpp, and go files.

This configuration make head information showed followed automatically append in the front of the file.

**python**
```python
# Author: StevenChaoo
# -*- coding:UTF-8 -*-
```

**cpp**
```cpp
// Author: StevenChaoo
//
#include<iostream>
using namespace std;
```

**go**
```go
// Author: StevenChaoo
```

### 4.4 pluginstall.vim

**Annotations**: `MattesGroeger/vim-bookmarks`, `scrooloose/nerdcommenter`
```vim
" BOOKMARKS
" use mm to append a bookmark
" use mi to append a annotation
" use ma to search bookmarks
" use mx to clean all bookmarks
" use mn to turn to next bookmark
" use mp to turn to previous bookmark

" use <leader>cc to comment code
" use <leader>cu to uncomment code
```

**File windows**: `scrooloose/nerdtree`, `mbbill/undotree`, `majutsushi/tagbar`
```vim
" use tt to open nerdtree

" use X to open undotree

" use tb to open tagbar
```

**Surface**: `vim-airline/vim-airline`, `vim-airline/vim-airline-themes`, `glepnir/dashboard-nvim`, `itchyny/calendar.vim`, `ryanoasis/vim-devicons`, `tiagofumo/vim-nerdtree-syntax-highlight`, `octol/vim-cpp-enhanced-highlight`
```vim
" use <tab> to swtich to next tab
" use <leader><tab> to swtich to previous tab
" use <leader>q to close current tab

"

"

" use \\ to start a clock

"

"

"
```

**Cursor moving / select**: `easymotion/vim-easymotion`, `tpope/vim-surround`, `gcmt/wildfire.vim`, `honza/vim-snippets`, `itchyny/vim-cursorword`
```vim
" use ss to search code

" use <CR> to select

" use S<Any> to append
" use cs<Former><Latter> to change

"

"
```

**Automation**: `skywind3000/asyncrun.vim`
```vim
" use <F5> to quickrun
" use cn jump to next error
" use cp jump to previous error
" use cx to close quickfix
" use cc to show details of error
" use co to open quickfix
```

**Coc / Fzf**: `neoclide/coc.nvim`, `junegunn/fzf`, `junegunn/fzf.vim`
```vim
" use <C-o> to open coc in insert mode
" use ep jump to previous error
" use en jump to next error
" use gd jump to definition
" use gr jump to references
" use <LEADER>rn to rename selected variables

" use <LEADER>H to open MRU files
" use <LEADER>F to open files in ~/File/Code/

"
```

**Markdown**: `iamcco/markdown-preview.nvim`, `godlygeek/tabular`, `dhruvasagar/vim-table-mode`
```vim
" use :MarkdownPreview to preview md file

" use :Tabularize<Any> to tabularize

" use <LEADER>tm to enter table mode
```

**Golang**: `fatih/vim-go`
```vim
"
```

**Cpp**: `rhysd/vim-clang-format`
```vim
" use :ClangFormat to format code
```

**Translator**: `voldikss/vim-translator`
```vim
" use :Translator to translator word
" use :TranslatorW to translator word in float window
```

### 4.5 systemsettings.vim

**Set leader key**
```vim
let mapleader = ' '
```

**Set theme**
```vim
colorscheme darcula
```

**Set language**
```vim
language en_US
```

**Set menu**
```vim
set wildmenu
```

**Using system clipboard**
```vim
set clipboard=unnamed
```

**Auto wrap**
```vim
set textwidth=80
set formatoptions+=mM
set cc=81
```

**Set syntax on**
```vim
syntax on
```

**Show line number**
```vim
set number
set relativenumber
set scrolloff=10
set cursorline
```

**Set tab key**
```vim
set tabstop=4
```

**Active mouse**
```vim
set mouse=a
```

**Auto indent**
```vim
set autoindent
set smartindent
filetype indent on
```

**Set highlight search**
```vim
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
```

## 5. Ranger

With the tutorial of [theniceboy](https://www.bilibili.com/video/BV1b4411R7ck)'s video.

## 6. Terminal

Using [iTerm2.app](https://iterm2.com) now.

## 7. Tmux

**Font-family**
```conf
set -gq status-utf8 on
```

**Color**
```conf
set-option -g default-terminal "screen-256color"
```

**Prefix key**
```conf
set-option -g prefix C-a
unbind-key C-b
bind-key C-a send-prefix
```

**Mouse activate**
```conf
set-option -g mouse on
```

**How to reload tmux**
```conf
bind-key R source-file ~/.tmux.conf \; display-message "Config reloaded.."
```

**Window setting**
```conf
set-option -g base-index 1                        
set-window-option -g pane-base-index 1  

bind-key c new-window

bind-key p previous-window
bind-key n next-window
```

**Pane setting**
```conf
bind-key = split-window -h
bind-key - split-window -v
unbind '"'
unbind %

bind -n C-h select-pane -L
bind -n C-l select-pane -R
bind -n C-k select-pane -U
bind -n C-j select-pane -D

set-option -g pane-active-border-style fg='red,bold'
set-option -g pane-border-style fg='#4e4e4e'
```

**Status**
```conf
set -g status-bg 'black'
set -g status-fg '#bbbbbb'
set -g status-left-style fg='#bbbbbb'
set -g status-left-style bg='black'
set -g status-right-style fg='#bbbbbb'
set -g status-right-style bg='black'

set -g status-left-length 60
set -g status-right-length 60
set-option -g status-justify right

set -g status-left '#[fg=grey]   #S  #[fg=grey]#{battery_icon_charge} #{battery_percentage}#{mem_icon}  #{cpu_icon} #{cpu_percentage}   %m-%d-%H:%M '

set-window-option -g window-status-format '#[fg=red,bold]  #W '
set-window-option -g window-status-current-format '#[fg=green,bold]  #W '

set -g status-right '  '
```

**Plugin**
```conf
# install
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-cpu'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-battery'

# battery settings
set -g @batt_icon_charge_tier8 '≣'
set -g @batt_icon_charge_tier7 '≣'
set -g @batt_icon_charge_tier6 '≣'
set -g @batt_icon_charge_tier5 '≡'
set -g @batt_icon_charge_tier4 '≡'
set -g @batt_icon_charge_tier3 '='
set -g @batt_icon_charge_tier2 '='
set -g @batt_icon_charge_tier1 '-'

# online status settings
set -g @online_icon "ok"
set -g @offline_icon "offline!"

# initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

## 8. Vim

Using neovim now.

## 9. Visual Studio Code

### 9.1 LaTeX

```json
{
    "latex-workshop.latex.recipes": [
    {
      "name": "xelatex",
      "tools": ["xelatex"]
    },
    {
      "name": "latexmk",
      "tools": ["latexmk"]
    },
    {
      "name": "pdflatex -> bibtex -> pdflatex*2",
      "tools": ["pdflatex", "bibtex", "pdflatex", "pdflatex"]
    }
  ],
  "latex-workshop.latex.tools": [
    {
      "name": "latexmk",
      "command": "latexmk",
      "args": ["-synctex=1", "-interaction=nonstopmode", "-file-line-error", "-pdf", "%DOC%"]
    },
    {
      "name": "xelatex",
      "command": "xelatex",
      "args": ["-synctex=1", "-interaction=nonstopmode", "-file-line-error", "%DOC%" ]
    },
    {
      "name": "pdflatex",
      "command": "pdflatex",
      "args": ["-synctex=1", "-interaction=nonstopmode", "-file-line-error", "%DOC%" ]
    },
    {
      "name": "bibtex",
      "command": "bibtex",
      "args": ["%DOCFILE%"]
    }
  ],
  "latex-workshop.view.pdf.viewer": "tab",
  "latex-workshop.latex.clean.fileTypes": [
    "*.aux",
    "*.bbl",
    "*.blg",
    "*.idx",
    "*.ind",
    "*.lof",
    "*.lot",
    "*.out",
    "*.toc",
    "*.acn",
    "*.acr",
    "*.alg",
    "*.glg",
    "*.glo",
    "*.gls",
    "*.ist",
    "*.fls",
    "*.log",
    "*.fdb_latexmk"
  ],
  "explorer.confirmDelete": false,
  "editor.suggestSelection": "first",
  "workbench.colorTheme": "Visual Studio Dark",
  "editor.fontSize": 13,
  "window.zoomLevel": 1
}
```

### 9.2 Vim

```json
{
    "vim.leader": "<space>",
  "editor.lineNumbers": "relative",
  "vim.useSystemClipboard": true,
  "vim.hlsearch": true,
  "vim.useCtrlKeys": true,
  "vim.commandLineModeKeyBindingsNonRecursive": [],
  "vim.insertModeKeyBindings": [],
  "vim.visualModeKeyBindings": [
    {
      "before": ["J"],
      "after": ["5", "j"]
    },
    {
      "before": ["K"],
      "after": ["5", "k"]
    },
    {
      "before": ["H"],
      "after": ["5", "h"]
    },
    {
      "before": ["L"],
      "after": ["5", "l"]
    },
  ],
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": ["S"],
      "commands": [":w"]
    },
    {
      "before": ["Q"],
      "commands": [":q"]
    },
    {
      "before": ["<leader>", "x"],
      "commands": [":nohl"]
    },
    {
      "before": ["<leader>", "-"],
      "commands": [":split"]
    },
    {
      "before": ["<leader>", "="],
      "commands": [":vsplit"]
    },
    {
      "before": ["J"],
      "after": ["5", "j"]
    },
    {
      "before": ["K"],
      "after": ["5", "k"]
    },
    {
      "before": ["H"],
      "after": ["5", "h"]
    },
    {
      "before": ["L"],
      "after": ["5", "l"]
    },
    {
      "before": ["["],
      "after": ["0"]
    },
    {
      "before": ["]"],
      "after": ["$"]
    },
  ],
  "editor.codeActionsOnSave": null
}
```

### 9.3 Format

```json
{
    "[javascript]": {
    "editor.defaultFormatter": "lonefy.vscode-JS-CSS-HTML-formatter"
  },
  "[html]": {
    "editor.defaultFormatter": "lonefy.vscode-JS-CSS-HTML-formatter"
  },
  "[css]": {
    "editor.defaultFormatter": "lonefy.vscode-JS-CSS-HTML-formatter"
  }
}
```

### 9.4 Plugin

- JS-CSS-HTML Formatter *0.2.3* : lonefy
- LaTeX Workshop *8.19.2* : James Yu
- Markdown All in One *3.4.0* : Yu Zhang
- Markdown Preview Enhanced *0.5.21* : Yiyi Wang
- Markdown Preview Mermaid Support *1.9.2* : Matt Bierner
- Markdown Table Prettifier *3.4.0* : Krisztian Daroczi
- markdownlint *0.42.1* : David Anson
- Mermaid Markdown Syntax Highlighting *1.2.2* : Brian Pruitt-Goddard
- open in browser *2.0.0* : TechER
- vim *1.21.1* : vscodevim

## 10. Zsh

Using [oh-my-zsh](https://ohmyz.s).
