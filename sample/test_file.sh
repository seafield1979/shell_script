#!/bin/bash

echo "test file exsits!!\n"

# -e ファイル名    ファイル、ディレクトリが存在するなら真
if [ -e test1.txt ]; then
    echo "test1.txt is exist!"
fi

# -d ファイル名    ディレクトリなら真
if [ -d dir1 ]; then
    echo "dir1 is a directory!"
fi

# -f ファイル名    通常ファイルなら真
if [ -f test1.txt ]; then
    echo "test1.txt is file!"
fi

# -L ファイル名    シンボリックリンクなら真
# -r ファイル名    読み取り可能ファイルなら真
if [ -r test1.txt ]; then
    echo "test1.txt is readable!"
fi

# -w ファイル名    書き込み可能ファイルなら真
if [ -w test1.txt ]; then
    echo "test1.txt is writable!"
else
    echo "test1.txt is not writable!"
fi

# -x ファイル名    実行可能ファイルなら真
if [ -x test1.txt ]; then
    echo "test1.txt is executable!"
else
    echo "test1.txt is not executable!"
fi

# -s ファイル名    サイズが0より大きければ真

