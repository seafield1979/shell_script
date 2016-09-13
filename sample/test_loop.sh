#!/bin/bash

echo "loop test!!\n"

#for文
#指定回数ループ
echo "  loop1"
for i in `seq 0 10`
do
  echo i=$i
done

#指定回数ループ2
echo "  loop2"
for i in {0..10}
do
  echo i=$i
done

#ループ
echo "  loop3"
for i in 1 2 3 4 5
do
  echo $i
done

#配列をループ
echo "  loop4"
array=(1 2 3 4 5)
for i in ${array[@]}
do
  echo $i
done
~~~