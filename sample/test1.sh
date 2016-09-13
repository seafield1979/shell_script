#!/bin/bash

#case文のテスト
#特徴
#  文字列が使える
#  defaultケースがない


#整数値でswitch
mode=1
case $mode in
1 ) 
    echo "1\n"
    ;;
2 )
    echo "2\n"
    ;;
3 )
    echo "3\n"
    ;;
esac

#文字列でswitch(完全一致判定)
str1="hoge"
case $str1 in
"hoge" ) echo "hoge!" ;;
"hage" ) echo "hage!" ;;
"mage" ) echo "mage!" ;;
esac

#ユーザーの入力した文字列によって処理を分岐
while :
do
  read key
  case "$key" in
    "a" ) echo "aが入力されました。" ;;
    "b" ) echo "bが入力されました。" ;;
    "c" ) echo "cが入力されました。" ;;
    "q" ) echo "終了します。"
          break ;;
  esac
done