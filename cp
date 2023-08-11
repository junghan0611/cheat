---
tags: [cp, copy]
---

# home 디렉토리를 새 파티션에 옮길 때 완벽하게 구조를 복제하기 위해서 아래와 같이 복사 했다.
We need to copy everything from the old home directory to the newly mounted filesystem. Using the r (recursive) and p (preserve) options will ensure all subdirectories are copied and that file ownerships, permissions, and other attributes are retained.
cp -rp * /media/junghan/data

# To copy a file:
cp ~/Desktop/foo.txt ~/Downloads/foo.txt

# To copy a directory:
cp -r ~/Desktop/cruise_pics/ ~/Pictures/

# To create a copy but ask to overwrite if the destination file already exists:
cp -i ~/Desktop/foo.txt ~/Documents/foo.txt

# To create a backup file with date:
cp foo.txt{,."$(date +%Y%m%d-%H%M%S)"}
