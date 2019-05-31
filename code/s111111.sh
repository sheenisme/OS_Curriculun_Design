#!/bin/bash
a="a"
b="b"
c="c"

for proc in $a $b $c
do
    C="${proc}.c"
    echo "generating $C"
cat <<EOF >$C
#include <stdio.h>
#include <stdlib.h>
int main(){
    while(1) {
	};
    return 0;
}
EOF

    echo "Make $C"
    make $proc
done

echo "launching process a,b,c"
./$a |./$b |./$c
echo "jinchengyichuangjian"

