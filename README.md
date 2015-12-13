# VIM TmngDocument Syntax

[![Build Status](https://travis-ci.org/MaxMEllon/vim-tmng.svg?branch=master)](https://travis-ci.org/MaxMEllon/vim-tmng)
[![Issues](http://img.shields.io/github/issues/MaxMEllon/vim-tmng.svg)](https://github.com/MaxMellon/vim-tmng/issues)
[![Release](https://img.shields.io/github/release/MaxMEllon/vim-tmng.svg)](https://github.com/MaxMEllon/vim-tmng/releases/latest)
[![License](https://img.shields.io/github/license/MaxMEllon/vim-tmng.svg)](https://github.com/MaxMEllon/vim-tmng/blob/master/LICENSE.txt)

## About

![demo](https://raw.githubusercontent.com/MaxMEllon/demos/master/vim_tmng.png)

This is a vim syntax file for TmngDocument.

## Feature

- [x] head
- [x] title
- [x] project
- [x] SubProject
- [x] remarks
- [x] place
- [x] date
- [x] time
- [x] create template
- [ ] ToMarkdown

## Installation

- Vundle

```vim
Bundle 'MaxMEllon/vim-tmng'
```

execute `:BundleInstall`

- NeoBundle

```vim
NeoBundle 'MaxMEllon/vim-tmng'
```

execute `:NeoBundleInstall`

- vim-plug

```vim
Plug 'MaxMEllon/vim-tmng'
```

execute `:PlagInstall`

## Command

`:TmngCreateTmplate`   (filetype txt and tmng only)

```txt
■ s00t000 [] 2015.12.13(日)

● 

◎ 

● 予定

○ 2015.12.13(日) Event [Auter] 00:00-00:00 (Type) <Place>
○ 2015.12.13(日) Event [Auter] 00:00-00:00 (Type) <Place>
```

## Configuration

- g:tmng#student_id

```vim
let g:tmng_student_id  " default student id

" example :
let g:tmng#student_id = 's10t200'

"=> ■ s10t200 [] 2015.12.13(日)
```

- g:tmng#title_template
- g:tmng#subtitle_template

```vim
let g:tmng#title_template      " default title
let g:tmng#subtitle_template   " default subtitle

" execute
let g:tmng#title_template    = '課題ページ'
let g:tmng#subtitle_template = '技術演習６'

"=> ● 課題ページ
"=> ◎ 技術演習６
```

## Sample vimrc

```vim
let g:tmng#student_id = 's10t200'
let g:tmng#title_template    = '課題ページ'
let g:tmng#subtitle_template = '技術演習６'
```

## Contribute

KagawaUniv School Programing Project Member only.

## LISENCE

This software is released under the MIT License, see LICENSE.txt.
