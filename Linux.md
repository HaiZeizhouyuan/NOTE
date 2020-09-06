# vim 的简单使用

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-272/20190411093248-lntidnybu9wksckc/53eb89158008bece_img3?e=1595998330&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:YxZ_EnBKHAgAxmevbog-aF7Myl0=)

I:行首

i:光标前

A:行末；

a:光标后

O:行上

o:行下







![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-272/20190411093248-lntidnybu9wksckc/53eb89158008bece_img4?e=1595997433&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:Sf54CjOEmdhEpdBcIVo8Q3ITPnQ=)

dd　删除一行；

ndd 删除n行；

dw 删除一个单词；

d$　删除到行末；

d^　删除到行首；

dG : 删除到下面的所有行

dnG:从第n行删除到光标行

替换：

```c++
 4.  替换所有行的内容：      :%s/from/to/g
        :%s/from/to/g   ：  对所有行的内容进行替换。把frome替换成to
```

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-272/20190411093248-lntidnybu9wksckc/53eb89158008bece_img6?e=1596010456&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:ZktlM2qNRPba5Y6iz_Y2ek8KoMk=)

## Clone一个仓库

git clone



## 分支与合并

### １．分支

git branch 分支名

查看分支列表和当前分支git branch

切换分支git cheackout 分支名

编写文件

切换回master分支





# 数据提取

cut

sort

uniq





# 本地与云服务器的文件传输

scp 

命令都在本地输入

# 自定义命令的设置

vi ~/.bashrc

alias

#　统计行

 cat ls1.c  | grep -v "^$"| wc -l

# 命令

## wc

Linux wc命令用于计算字数。

利用wc指令我们可以计算文件的字节数，字数，或者列数，如果不指定文件名，或者所赋予的文件称为“-”，则wc指令会从标准输入设备读取数据。

**参数**：

- -c或--bytes或--chars只显示Bytes数。
- -l或-行只显示行数。
- -w或--words只显示字数。
- --help在线帮助。
- --version显示版本信息。