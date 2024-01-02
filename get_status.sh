#!/bin/bash

# 运行一个命令（这里使用 ls，你可以替换为其他命令）
ls /nonexistent_directory

# 获取上一条命令的退出状态
exit_status=$?

# 判断退出状态
if [ $exit_status -eq 0 ]; then
    echo "命令成功执行"
else
    echo "命令执行失败，退出状态：$exit_status"
fi
