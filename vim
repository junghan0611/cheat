---
tags: [ vim, editor ]
---

<Personal Keymap>

# VIM-SIMPLE-KEYMAP
방향키 없이 문서 작업을 하자.

## 입력모드 i를 넘어서자.
`i` : 커서 앞
`a` : 커서 뒤
`I` : 줄 앞 -- i + Home
`A` : 줄 끝

`o` : 빈줄 넣고 입력

`r` : 한글자 수정
`R` : 수정 모드

## 명령모드에서 방향키를 넘어서자.

### 단어 단위 이동
`w` : Next word
`b` : previous word

### 문자 단위 이동
`h j k l` : arrow keys

### 문단 단위 이동
`{` : 문단 시작으로
`}` : 문단 끝으로

### 화면 내에서 이동
`H` : 화면 맨 위로
`L` : 화면 맨 아래로
`M` : 화면 가운대로

### 페이지 단위 이동
`ctrl u` : 반 페이지 위로
`ctrl d` : 반 페이지 아래로

## 복붙은 v보다 V를 쓰자

`v` : 선택 모드
`V` : 줄 단위 선택 모드

`x` : 오려두기
`d` : 삭제
`p` : 붙여넣기

<Community Keymap>
# File management

:e              reload file
:q              quit
:q!             quit without saving changes
:w              write file
:w {file}       write new file
:x              write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file
gk		move down one displayed line
gj		move up one displayed line

# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

a               append after the cursor
A               append at the end of the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
R               enter insert mode but replace instead of inserting chars
:r {file}       insert from file

# Editing

u               undo
yy              yank (copy) a line
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
dd              delete a line
d{motion}       delete text that {motion} moves over

# Search and replace with the `:substitute` (aka `:s`) command

:s/foo/bar/	replace the first match of 'foo' with 'bar' on the current line only
:s/foo/bar/g	replace all matches (`g` flag) of 'foo' with 'bar' on the current line only
:%s/foo/bar/g	replace all matches of 'foo' with 'bar' in the entire file (`:%s`)
:%s/foo/bar/gc	ask to manually confirm (`c` flag) each replacement

# Preceding a motion or edition with a number repeats it 'n' times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42

# Multiple windows
:e filename      - edit another file
:split filename  - split window and load another file
ctrl-w up arrow  - move cursor up a window
ctrl-w ctrl-w    - move cursor to another window (cycle)
ctrl-w_          - maximize current window
ctrl-w=          - make all equal size
10 ctrl-w+       - increase window size by 10 lines
:vsplit file     - vertical split
:sview file      - same as split, but readonly
:hide            - close current window
:only            - keep only this window open
:ls              - show current buffers
:.! <command>    - shell out

# Buffers
# move to N, next, previous, first last buffers
:bn              - goes to next buffer
:bp              - goes to prev buffer
:bf              - goes to first buffer
:bl              - goes to last buffer
:b 2             - open buffer #2 in this window
:new             - open a new buffer
:vnew            - open a new vertical buffer
:bd 2            - deletes buffer 2
:wall            - writes al buffers
:ball            - open a window for all buffers
:bunload         - removes buffer from window
:taball          - open a tab for all buffers

# Pointers back
ctrl-o

# Pointers forward
ctrl-o

# Super search
ctrl-p

# Text Objects

ci"              - change inside double quotes
ca"              - change around double quotes
ci'              - change inside single quotes
ca'              - change around single quotes
ca)              - change around paranthesis
ci)              - change inside paranthesis
cit              - change inside a tag(Example an html)
cat              - change around a tag

di"              - delete inside double quotes
da"              - delete around double quotes
di'              - delete inside single quotes
da'              - delete around single quotes
da)              - delete around paranthesis
di)              - delete inside paranthesis
dit              - delete inside a tag(Example an html)
dat              - delete around a tag
