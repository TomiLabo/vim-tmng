# VIM TmngDocument Syntax

[![Build Status](https://travis-ci.org/MaxMEllon/vim-tmng.svg?branch=master)](https://travis-ci.org/MaxMEllon/vim-tmng)
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
Bundle 'MaxMEllon/tmng-vim'
```

execute `:BendleInstall`

- NeoBundle

```vim
NeoBundle 'MaxMEllon/tmng-vim'
```

execute `:NeoBendleInstall`

- vim-plug

```vim
Plug 'MaxMEllon/tmng-vim'
```

execute `:PlagInstall`

## Configuration

- g:tmng_student_id

```vim
let g:tmng_student_id  " default student id

" example :
let g:tmng_student_id = 's10t200'

"=> ■ s10t200 [] 2015.12.13(日)
```

- g:tmng_title_template
- g:tmng_subtitle_template

```vim
let g:tmng_title_template      " default title
let g:tmng_subtitle_template   " default subtitle

" execute
let g:tmng_title_template    = '課題ページ'
let g:tmng_subtitle_template = '技術演習６'

"=> ● 課題ページ
"=> ◎ 技術演習６
```

## Sample vimrc

```vim
let g:tmng_student_id = 's10t200'
let g:tmng_title_template    = '課題ページ'
let g:tmng_subtitle_template = '技術演習６'
```

## Contribute

KagawaUniv School Programing Project Member only.

## LISENCE

This software is released under the MIT License, see LICENSE.txt.
