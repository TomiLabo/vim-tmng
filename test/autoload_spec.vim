source plugin/tmng.vim
source autoload/tmng.vim

function! TestTmngCreateHead()
  call Describe('tmng#create_header : case1')
  let g:tmng_student_id = 's12t234'
  call AssertEquals(tmng#create_header(), '■ s12t234 [] ' .  strftime('%Y.%m.%d(%a)'))

  call Describe('tmng#create_header : case2')
  let g:tmng_student_id = ''
  call AssertEquals(tmng#create_header(), '■ s00t000 [] ' .  strftime('%Y.%m.%d(%a)'))
endfunction

function! TestTmngCreateTitle()
  call Describe('tmng#create_title : case1')
  let g:tmng_title_template = '技術演習６'
  call AssertEquals(tmng#create_title(), '● 技術演習６')

  call Describe('tmng#create_title : case2')
  let g:tmng_title_template = ''
  call AssertEquals(tmng#create_title(), '● ')
endfunction

function! TestTmngCreateSubTitle()
  call Describe('tmng#create_subtitle : case1')
  let g:tmng_subtitle_template = '課題ページ'
  call AssertEquals(tmng#create_subtitle(), '◎ 課題ページ')

  call Describe('tmng#create_subtitle : case2')
  let g:tmng_subtitle_template = ''
  call AssertEquals(tmng#create_subtitle(), '◎ ')
endfunction

function! TestTmngCreateSchedule()
  call Describe('tmng#create_schedule : case1')
  let schedule = '○ ' . strftime('%Y.%m.%d(%a)') . ' Event [Auter] 00:00-00:00 (Type) <Place>'
  call AssertEquals(tmng#create_schedule(), schedule)
  unlet schedule
endfunction
