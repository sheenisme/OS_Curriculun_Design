#!/bin/sh
F1="/home/sheen/d1.txt"
F2="/home/sheen/d2.txt"
F3="/home/sheen/d3.txt"
if [ -r $F1 -a -r $F2 ];then
#-r $a 表示是否拥有$a文件
    echo "d1.txt的内容是："
    cat $F1
    echo "d2.txt的内容是："
    cat $F2
    echo "合并中......"
    cat $F1 $F2 > $F3
    echo "合并成功！"
    echo "d3.txt已变成："
    cat $F3
else
    echo "没有找到文件或者目录"
fi
	
read -p "请输入是否对文件进行排序：(yes or no)" asw
case $asw in
  y | Y | Yes | yes )
    sort -r $F3 -o $F3
    echo "d3.txt已经转变成为："
    cat $F3;;
  n | N | No | no )	
    echo "未排序"
	;;
  *)
    echo "不合法的输入"
esac
