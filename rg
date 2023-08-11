---
tags: [ search ]
---

# ripgrep (rg)
- An extremely fast alternative to `grep` that respects your gitignore
- man rg
- rg --help
- 너무 뭐가 많다. 쓸만한 것만 치트키로 기록한다.

> xclip을 이용하여 결과를 클립보드로 복사한다. 이제 이맥스 등에서 붙여넣기 하면 된다.
> 불편하게 파일 만들어 놓고 붙여넣기 한다던가, 마우스로 스크롤해서 할 필요가 없다.
rg "def " | clipcopy
> 폴더로 정렬안하면 중구난방이다. 그리고 뒤에 5개 라인 정도는 알려주면 보기 쉽다.
> -n -w는 라인 정보까지 결과에 주면 땡큐다
rg -n -w "def" --sort path -A 5 | clipcopy

# Usage
rg -i junghan

# 특정 파일 포멧
## md 파일만
rg -tmd junghan

## md 파일 제외
rg -Tmd junghan

# Sample Usages

## XXX_SUSPEND를 다 찾고 라인 카운트까지
rg -n -w '[A-Z]+_SUSPEND'

# Ignore files 기본으로 이렇게 해준다. 고민하지 마라.
- .gitignore
- .ignore
- .rgignore

# <FYI>
#   URL: https://github.com/BurntSushi/ripgrep
#   REGEX syntax: https://docs.rs/regex/1.6.0/regex/#syntax
#   Configuration : ~/.config/ripgrep/rc
