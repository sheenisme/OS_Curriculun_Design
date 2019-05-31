#!/bin/bash
#定义三个变量
a="a"
b="b"
c="c"

for proc in $a $b $c
do
    C="${proc}.c"
    echo "形成 $C 源文件"
#通过cat > 命令，生成C语言源文件
cat <<EOF >$C
#include <stdio.h>
#include <stdlib.h>
int main(){
    while(1) {
	};
    return 0;
}
EOF
#编译三个C语言文件
    gcc -o $proc $C
    echo "编译 $C 源文件"
done

echo "即将运行进程 a,b,c"
./$a |./$b |./$c
echo "进程已执行！"

