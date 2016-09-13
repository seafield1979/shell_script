#!/bin/sh
source ./"global_func"

echo "getoptions"
while getopts l:t:s: opt
do
  echo "opt:"
  case ${opt} in
  l)
    echo "l"
    LIST=${OPTARG}
    ;;
  t)
    echo "t"
    TYPE=${OPTARG}
    ;;
  s)
	echo "s"
	SOURCE=${OPTARG}
	;;
  \?)
    exit 1;;
  esac
done
echo "LIST=${LIST}"
echo "TYPE=${TYPE}"
echo "SOURCE=${SOURCE}"

