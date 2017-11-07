<p align="center">
  <img src="https://raw.githubusercontent.com/TomiLabo/demos/master/logo_vim_tmng.png">
</p>

[![Build Status](https://travis-ci.org/TomiLabo/vim-tmng.svg?branch=master)](https://travis-ci.org/TomiLabo/vim-tmng)
[![Issues](http://img.shields.io/github/issues/TomiLabo/vim-tmng.svg)](https://github.com/MaxMellon/vim-tmng/issues)
[![Release](https://img.shields.io/github/release/TomiLabo/vim-tmng.svg)](https://github.com/TomiLabo/vim-tmng/releases/latest)
[![License](https://img.shields.io/github/license/TomiLabo/vim-tmng.svg)](https://github.com/TomiLabo/vim-tmng/blob/master/LICENSE.txt)

## About

This is a vim syntax file for TmngDocument.

![demo1](https://raw.githubusercontent.com/TomiLabo/demos/master/vim_tmng.png)
![demo2](https://raw.githubusercontent.com/TomiLabo/demos/master/vim_tmng_anime.gif)

## Feature

- syntax highlight
- snippets for tmng document (depends on neosnippets)
- Replace `，` to `、` and `．` to `。`
- CretateTemplate

## Installation

```vim
Plug 'TomiLabo/vim-tmng'
NeoBundle 'TomiLabo/vim-tmng'
```

- with onion

```vim
Plug 'TomiLabo/vim-tmng', {'do': 'go get -u github.com/TomiLabo/onion/cmd/onion'}
NeoBundle 'TomiLabo/vim-tmng', {'make': 'go get -u github.com/TomiLabo/onion/cmd/onion'}
```

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

`:TmngReplaceDotAndComma`

```txt
ああああ，いいいい．  => ああああ、いいいい。
```

## Snippets

- head
- title
- subtitle
- list
- work
- schedule


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

KagawaUniv Student Laboratory Project Member only.

## LISENCE

This software is released under the MIT License, see LICENSE.txt.
