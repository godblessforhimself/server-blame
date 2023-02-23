#!/bin/bash

LOG_DIR=/tmp
# 保存负载信息的文件
LOAD_FILE=${LOG_DIR}/load.txt

# 获取前三高的CPU和内存进程，保存在变量中
TOP_CPU=$(ps aux --no-headers | sort -rk 3 | head -n 3)
TOP_MEM=$(ps aux --no-headers | sort -rk 4 | head -n 3)

# 将负载信息写入文件
echo "CPU负载信息：" > $LOAD_FILE
echo "$TOP_CPU" >> $LOAD_FILE
echo "" >> $LOAD_FILE
echo "内存负载信息：" >> $LOAD_FILE
echo "$TOP_MEM" >> $LOAD_FILE
echo "" >> $LOAD_FILE

# 将文件保存在以当前日期和时间为名字的文件中
DATE=$(date "+%Y-%m-%d_%H:%M:%S")
SAVE_FILE=${LOG_DIR}/load_${DATE}.txt
cp $LOAD_FILE $SAVE_FILE
