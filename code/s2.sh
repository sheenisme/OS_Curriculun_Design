#!/bin/bash
# ps -ef 查找进程 grep 过滤出来特定的字符的行 grep -v 反向查找行
# awk 对筛选过的行进行处理，然后输出  xargs kill 将对应进程杀死
#参考自：https://blog.csdn.net/foxliucong/article/details/4224965 
#原文标题为：使用xargs与awk联合使用批量杀进程,很方便

ps -ef | grep "\./a" | grep -v 'grep' | awk '{print $2}' | xargs kill -9
ps -ef | grep "\./b" | grep -v 'grep' | awk '{print $2}' | xargs kill -9
ps -ef | grep "\./c" | grep -v 'grep' | awk '{print $2}' | xargs kill -9

