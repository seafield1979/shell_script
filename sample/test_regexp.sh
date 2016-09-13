#!/bin/bash

str1="abc"
if [[ $str1 =~ ^ab[cd]$ ]]; then
  echo "matched"
else
  echo "un matched"
fi

str2="hoge123"
if [[ $str2 =~ ^hoge.*$ ]]; then
  echo "matched"
else
  echo "un matched"
fi

str3="hogew"
if [[ $str3 =~ ^hoge ]]; then
  echo "matched"
else
  echo "un matched"
fi
