#shell学习之变量的命名（命名只能用英文字母，数字和下划线，首个字符不能以数字开头）
#字符串操作
#!/bin/bash
your_name1=duanjc
your_name2='daundeidei'
your_name3="deidei"
str="hello,I konw you are \"$your_name1\"!"
stitch=$your_name1${your_name2}

echo $str
echo $your_name1
echo $your_name2
echo $your_name3
#拼接之后的字符串
echo $stitch
#获取字符串长度
echo ${#str}
#提取子字符串(数字0表示从第一个字符开始，数字4表示按顺序取出4个字符)
echo ${str:0:4}

