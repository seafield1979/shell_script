#!/bin/bash

echo "test function!!\n"

#関数1
function test10() {
    echo "test10"
}
#関数2
function test11 {
    echo "test11"
}
#関数3
test12() {
    echo "test12"
}

#引数を２つ受け取る
function test2() {
    echo $@  #引数の配列
    echo $#  #引数の数
    echo $1  #引数1
    echo $2  #引数2
}

#戻り値を返す
function test3 {
    echo "$1 and $2 is good!"
}

#関数の呼び出し
test10
test11
test12
test2 "hoge" "mage"

val1=100

#戻り値を受け取りたい場合はコマンド値して実行する
ret=`test3 "hoge" $val1`
echo "戻り値=${ret}"
