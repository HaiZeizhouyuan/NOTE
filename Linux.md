

# "vim 的简单使用

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



# Man中文手册设置m

1. 安装环境和文档

```
sudo apt install manpages
sudo apt install manpages-de
sudo apt install manpages-de-dev
sudo apt install manpages-dev
sudo apt install glibc-doc
sudo apt install manpages-posix-dev
sudo apt install manpages-posix
sudo apt install linux-doc
sudo apt install libcorelinux-doc
sudo apt install libstdc++-6-doc
```

1. 安装中文支持

```
sudo apt install manpages-zh
```

1. Man目录

```
ls /usr/share/man
```





# 本地与云服务器的文件传输

scp 

命令都在本地输入

# 自定义命令的设置

vi ~/.bashrc

alias

# 单引号''，双引号""和反引号``的区别。

```

单引号''和双引号""

两者都是解决变量中间有空格的问题。

在bash中“空格”是一种很特殊的字符，比如在bash中这样定义str=this is String，这样就会报错，为了避免出错就得使用单引号''和双引号""。

单引号''，双引号""的区别是单引号''剥夺了所有字符的特殊含义，单引号''内就变成了单纯的字符。双引号""则对于双引号""内的参数替换($)和命令替换(``)是个例外。

比如说 　　n=3

　　　　　　echo '$n'

结果就是n3

改成双引号　　echo "$n"，结果就是3

 

反引号``

反引号``是命令替换，命令替换是指Shell可以先执行``中的命令，将输出结果暂时保存，在适当的地方输出。语法:`command`

下面的例子中，将命令执行结果保存在变量中：

#!/bin/bash

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"
```

#　统计行

 cat ls1.c  | grep -v "^$"| wc -l

# 命令

##　w获取当前登录用户和执行的过程

 w 显示当前该机器上有关用户的信息，以及他们的进程。第一行按顺序显示当前时间、机器开机运行至今的时长、当前有多少用户已登录、以及机器在过去一分钟、五分钟和
       十五分钟的平均负载。

-h, --no-header
              不要打印头行。

       -u, --no-current
              在处理得到当前进程与 CPU 时间时忽视用户名。要展示其效果，请尝试进行一次“su”然后尝试“w”和“w -u”。
    
       -s, --short
              使用短格式。不要打印登录时间、JCPU 和 PCPU 时间。
    
       -f, --from
              切换对 from（远程主机名）一栏的打印与否。发布时的默认值是不打印 from 栏，尽管您的系统管理员或者发行版维护者可能提供一个  from  栏默认显示的编译版
              本。
    
       --help 显示帮助信息并退出。
    
       -i, --ip-addr
              为 from 一栏显示显示 IP 地址而非主机名。
    
       -V, --version
              显示版本信息。
    
       -o, --old-style
              旧的输出风格。为少于一分钟的闲置时间打印空白字符。
    
       user   只为指定的用户显示相关信息。


## who 显示已登录用户的信息

 -a, --all



who命令用于显示系统中有哪些使用者正在上面，显示的资料包含了使用者 ID、使用的终端机、从哪边连上来的、上线时间、呆滞时间、CPU 使用量、动作等等。              等价于 -b -d --login -p -r -t -T -u

       -b, --boot
              最近一次系统引导的时间
    
       -d, --dead
              显示死进程
    
       -H, --heading
              显示表格的表头
    
       --ips  显示 IP地址而不是主机名。加上 --lookup，则会尽可能基于已存储的 IP 规范化，而不是已存储的主机名
    
       -l, --login
              显示系统登录进程
    
       --lookup
              试图通过 DNS 规范主机名
    
       -m     仅显示和标准输入关联的主机名和用户
    
       -p, --process
              显示由 init 生成的活跃进程
    
       -q, --count
              所有登录名称与已登录用户数量
    
       -r, --runlevel
              显示当前运行级别
    
       -s, --short
              仅显示名称、线路与时间（默认）
    
       -t, --time
              显示最近一次系统时钟更改
    
       -T, -w, --mesg
              添加用户状态信息，如 +, - 或 ?
    
       -u, --users
              w列出已登陆用户


## whoami -- 显示与当前的有效用户 ID 相关联的用户名

## last  显示最近登录的用户列表

num指定 last 要显示多少行。



               "-n num"等同 -num.
    
              -R不显示主机名列。
    
              -a在最后一列显示主机名. 和下一个选项合用时很有用
    
              -d对于非本地的登录，Linux 不仅保存远程主机名而且保存IP地址（IP number）。这个选项可以将IP地址（IP number）转换为主机名。
    
              -i这个选项类似于显示远程主机 IP 地址（IP number）的 -d 选项，只不过它用数字和点符号显示IP数
    			-f "file"指定记录文件
              -o读取一个旧格式的 wtmp 文件 (用linux-libc5应用程序写入的).
    
              -x显示系统关机记录和运行级别改变的日志。



## scp

Linux scp 命令用于 Linux 之间复制文件和目录。

scp 是 secure copy 的缩写, scp 是 linux 系统下基于 ssh 登陆进行安全的远程文件拷贝命令。

scp 是加密的，[rcp](https://www.runoob.com/linux/linux-comm-rcp.html) 是不加密的，scp 是 rcp 的加强版。

### 语法

```
scp [-1246BCpqrv] [-c cipher] [-F ssh_config] [-i identity_file]
[-l limit] [-o ssh_option] [-P port] [-S program]
[[user@]host1:]file1 [...] [[user@]host2:]file2
```

简易写法:

```
scp [可选参数] file_source file_target 
```

**参数说明：**

- -1： 强制scp命令使用协议ssh1
- -2： 强制scp命令使用协议ssh2
- -4： 强制scp命令只使用IPv4寻址
- -6： 强制scp命令只使用IPv6寻址
- -B： 使用批处理模式（传输过程中不询问传输口令或短语）
- -C： 允许压缩。（将-C标志传递给ssh，从而打开压缩功能）
- -p：保留原文件的修改时间，访问时间和访问权限。
- -q： 不显示传输进度条。
- -r： 递归复制整个目录。
- -v：详细方式显示输出。scp和ssh(1)会显示出整个过程的调试信息。这些信息用于调试连接，验证和配置问题。
- -c cipher： 以cipher将数据传输进行加密，这个选项将直接传递给ssh。
- -F ssh_config： 指定一个替代的ssh配置文件，此参数直接传递给ssh。
- -i identity_file： 从指定文件中读取传输时使用的密钥文件，此参数直接传递给ssh。
- -l limit： 限定用户所能使用的带宽，以Kbit/s为单位。
- -o ssh_option： 如果习惯于使用ssh_config(5)中的参数传递方式，
- -P port：注意是大写的P, port是指定数据传输用到的端口号
- -S program： 指定加密传输时所使用的程序。此程序必须能够理解ssh(1)的选项。

### 实例

#### 1、从本地复制到远程

命令格式：

```
scp local_file remote_username@remote_ip:remote_folder 
或者 
scp local_file remote_username@remote_ip:remote_file 
或者 
scp local_file remote_ip:remote_folder 
或者 
scp local_file remote_ip:remote_file 
```

- 第1,2个指定了用户名，命令执行后需要再输入密码，第1个仅指定了远程的目录，文件名字不变，第2个指定了文件名；
- 第3,4个没有指定用户名，命令执行后需要输入用户名和密码，第3个仅指定了远程的目录，文件名字不变，第4个指定了文件名；

应用实例：

```
scp /home/space/music/1.mp3 root@www.runoob.com:/home/root/others/music 
scp /home/space/music/1.mp3 root@www.runoob.com:/home/root/others/music/001.mp3 
scp /home/space/music/1.mp3 www.runoob.com:/home/root/others/music 
scp /home/space/music/1.mp3 www.runoob.com:/home/root/others/music/001.mp3 
```

复制目录命令格式：

```
scp -r local_folder remote_username@remote_ip:remote_folder 
或者 
scp -r local_folder remote_ip:remote_folder 
```

- 第1个指定了用户名，命令执行后需要再输入密码；
- 第2个没有指定用户名，命令执行后需要输入用户名和密码；

应用实例：

```
scp -r /home/space/music/ root@www.runoob.com:/home/root/others/ 
scp -r /home/space/music/ www.runoob.com:/home/root/others/ 
```

上面命令将本地 music 目录复制到远程 others 目录下。

#### 2、从远程复制到本地

从远程复制到本地，只要将从本地复制到远程的命令的后2个参数调换顺序即可，如下实例

应用实例：

```
scp root@www.runoob.com:/home/root/others/music /home/space/music/1.mp3 
scp -r www.runoob.com:/home/root/others/ /home/space/music/
```

### 说明

1.如果远程服务器防火墙有为scp命令设置了指定的端口，我们需要使用 -P 参数来设置命令的端口号，命令格式如下：

```
#scp 命令使用端口号 4588
scp -P 4588 remote@www.runoob.com:/usr/local/sin.sh /home/administrator
```

2.使用scp命令要确保使用的用户具有可读取远程服务器相应文件的权限，否则scp命令是无法起作用的。

## echo 字符串的输出

命令格式：

```
echo string
```

### 1.显示普通字符串:

```
echo "It is a test"
```

这里的双引号完全可以省略，以下命令与上面实例效果一致：

```
echo It is a test
```



### 2.显示转义字符

```
echo "\"It is a test\""
```

结果将是:

```
"It is a test"
```



### 3.显示变量

read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量

```
#!/bin/sh
read name 
echo "$name It is a test"
```



### 4.显示换行

```
echo -e "OK! \n" # -e 开启转义
echo "It is a test"
```



Linux 教程

Linux 教程

Linux 简介

Linux 安装

Linux 云服务器

Linux 系统启动过程

Linux 系统目录结构

Linux 忘记密码解决方法

Linux 远程登录

Linux 文件基本属性

Linux 文件与目录管理

Linux 用户和用户组管理

Linux 磁盘管理

Linux vi/vim

linux yum 命令

Linux apt 命令

 

## Shell 教程

Shell 教程

Shell 变量

Shell 传递参数

Shell 数组

Shell 运算符

Shell echo命令

Shell printf命令

Shell test 命令

Shell 流程控制

Shell 函数

Shell 输入/输出重定向

Shell 文件包含

 

## Linux 参考手册

Linux 命令大全

Nginx 安装配置

MySQL 安装配置

 [Shell 运算符](https://www.runoob.com/linux/linux-shell-basic-operators.html)

[Shell printf命令](https://www.runoob.com/linux/linux-shell-printf.html) 

## echo命令

Shell 的 echo 指令与 PHP 的 echo 指令类似，都是用于字符串的输出。命令格式：

```
echo string
```

您可以使用echo实现更复杂的输出格式控制。

### 1.显示普通字符串:

```
echo "It is a test"
```

这里的双引号完全可以省略，以下命令与上面实例效果一致：

```
echo It is a test
```

### 2.显示转义字符

```
echo "\"It is a test\""
```

结果将是:

```
"It is a test"
```

同样，双引号也可以省略

### 3.显示变量

read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量

```
#!/bin/sh
read name 
echo "$name It is a test"
```

以上代码保存为 test.sh，name 接收标准输入的变量，结果将是:

```
[root@www ~]# sh test.sh
OK                     #标准输入
OK It is a test        #输出
```

### 4.显示换行

```
echo -e "OK! \n" # -e 开启转义
echo "It is a test"
```

输出结果：

```
OK!

It is a test
```

### 5.显示不换行

```
#!/bin/sh
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"
```

输出结果：

```
OK! It is a test
```

### 6.原样输出字符串，不进行转义或取变量(用单引号)

```
echo '$name\"'
```

输出结果：

```
$name\"
```



### 7.显示命令执行结

```
echo `date`
```

**注意：** 这里使用的是反引号 `, 而不是单引号 '。

结果将显示当前日期

```
Thu Jul 24 10:08:46 CST 2014
```





## uname -- 打印档前系统信息

系统信息　主机名　内核版本号　　　　操作系统类型　cpu类型　硬件类型　

name[optines]

-a :　全部信息

-m：电脑类型

-n: 网络上主机的名称

-r：显示操作系统的发行编号。

-v: 操作系统的版本

-p:处理器类型

-i: 硬件平台

-o:操作系统名称





## hostname- 显示或设置系统的主机名

 如果不调用任何参数,程序即显示当前的名字

如果带一个参数或者带 --file 选项调用的话,命令即设置主机名,NIS/YP域名或者节点名

OPTIONS(选项)
       -a,--alias
              显示主机的别名(如果使用了的话).

       -d,--domain
              显示DNS域名.不要使用命令 domainname 来获得DNS域名,因为这会显示NIS域名而非DNS域名.可使用 dnsdomainname 替换之.
    
       -F,--file filename
              从指定文件中读取主机名.注释(以一个`#'开头的行)可忽略.
    
       -f,--fqdn,--long
              显示FQDN(完全资格域名).一个FQDN包括一个短格式主机名和DNS域名.除非你正在使用bind或        者NIS来作主机查询,否则你可以在/etc/hosts文件中修改FQDN和DNS域名(这
              是FQDN的一 部分).
    
       -h,--help
              打印用法信息并退出.
    
       -i,--ip-address
              显示主机的IP地址(组).
    
       -n,--node
              显示DECnet节点名.如果指定了参数(或者指定了 --file name ),那么root也可以设置一个新的节点名.
    
       -s,--short
              显示短格式主机名.这是一个去掉第一个圆点后面部分的主机名.
    
       -V,--version
              在标准输出上打印版本信息并以成功的状态退出.
    
       -v,--verbose
              详尽说明并告知所正在执行的.
    
       -y,--yp,--nis
              显示NIS域名.如果指定了参数(或者指定了 --file name ),那么root也可以设置一个新的NIS域.
## wc --  wc命令用于计算字数。

利用wc指令我们可以计算文件的字节数，字数，或者列数，如果不指定文件名，或者所赋予的文件称为“-”，则wc指令会从标准输入设备读取数据。

**参数**：

- -c或--bytes或--chars只显示Bytes数。
- -l或-行只显示行数。
- -w或--words只显示字数。
- --help在线帮助。
- --version显示版本信息。



## bc

 bc 命令是任意精度计算器语言，通常在linux下当计算器用。

它类似基本的计算器, 使用这个计算器可以做基本的数学运算

|                  |                                                              |
| ---------------- | ------------------------------------------------------------ |
| **常用的运算：** | +, -, *, /, ^, %.                                            |
| 语法             | bc(选项)(参数)                                               |
| **选项值**       | -i：强制进入交互式模式；<br/>  -l：定义使用的标准数学库  ；<br/> -w：对POSIX bc的扩展给出警告信息；<br/>  -q：不打印正常的GNU bc环境信息；<br/>  -v：显示指令版本信息；<br/>  -h：显示指令的帮助信息。 |
| **参数**         | 文件：指定包含计算任务的文件。                               |
| 实例             | **通过管道符**<br/> echo "15 + 5" \| bc<br/>     20<br/> scale=2 设小数位，2 代表保留两位:<br/>echo 'scale=2; (2.777 - 1.4744)/1' \| bc<br/ >   1.30<br/> bc 除了 scale 来设定小数位之外，还有 ibase 和 obase 来其它进制的运算:<br/>echo "ibase=2;111" \|bc<br/>     7 |
|                  |                                                              |





## df   :  用于显示目前在 Linux 系统上的文件系统磁盘使用情况统计;



```
df [选项]... [FILE]...
```

- 文件-a, --all 包含所有的具有 0 Blocks 的文件系统
- 文件--block-size={SIZE} 使用 {SIZE} 大小的 Blocks
- 文件-h, --human-readable 使用人类可读的格式(预设值是不加这个选项的...)
- 文件-H, --si 很像 -h, 但是用 1000 为单位而不是用 1024
- 文件-i, --inodes 列出 inode 资讯，不列出已使用 block
- 文件-k, --kilobytes 就像是 --block-size=1024
- 文件-l, --local 限制列出的文件结构
- 文件-m, --megabytes 就像 --block-size=1048576
- 文件--no-sync 取得资讯前不 sync (预设值)
- 文件-P, --portability 使用 POSIX 输出格式
- 文件--sync 在取得资讯前 sync
- 文件-t, --type=TYPE 限制列出文件系统的 TYPE
- 文件-T, --print-type 显示文件系统的形式
- 文件-x, --exclude-type=TYPE 限制列出文件系统不要显示 TYPE
- 文件-v (忽略)
- 文件--help 显示这个帮手并且离开
- 文件--version 输出版本资讯并且离开

## grep  -------------------------grep 命令用于查找文件里符合条件的字符串。

grep 指令用于查找内容包含指定的范本样式的文件，如果发现某文件的内容符合所指定的范本样式，预设 grep 指令会把含有范本样式的那一列显示出来。若不指定任何文件名称，或是所给予的文件名为 -，则 grep 指令会从标准输入设备读取数据。

| 语法 | grep [-abcEFGhHilLnqrsvVwxy][-A<显示列数>][-B<显示列数>][-C<显示列数>][-d<进行动作>][-e<范本样式>][-f<范本文件>][--help][范本样式][文件或目录...] |
| ---- | ------------------------------------------------------------ |
| 参数 | **-a 或 --text** : 不要忽略二进制的数据。<br/>  **-A<显示行数> 或 --after-context=<显示行数>** : 除了显示符合范本样式的那一列之外，并显示该行之后的内容。  <br/>**-b 或 --byte-offset** : 在显示符合样式的那一行之前，标示出该行第一个字符的编号。<br/>  **-B<显示行数> 或 --before-context=<显示行数>** : 除了显示符合样式的那一行之外，并显示该行之前的内容。  <br/>**-c 或 --count** : 计算符合样式的列数。<br/>  **-C<显示行数> 或 --context=<显示行数>或-<显示行数>** : 除了显示符合样式的那一行之外，并显示该行之前后的内容。<br/>  **-d <动作> 或 --directories=<动作>** : 当指定要查找的是目录而非文件时，必须使用这项参数，否则grep指令将回报信息并停止动作。  <br/>**-e<范本样式> 或 --regexp=<范本样式>** : 指定字符串做为查找文件内容的样式。<br/>  **-E 或 --extended-regexp** : 将样式为延伸的正则表达式来使用。<br/>  **-f<规则文件> 或 --file=<规则文件>** : 指定规则文件，其内容含有一个或多个规则样式，让grep查找符合规则条件的文件内容，格式为每行一个规则样式。  <br/>**-F 或 --fixed-regexp** : 将样式视为固定字符串的列表。<br/>  **-G 或 --basic-regexp** : 将样式视为普通的表示法来使用。<br/>  **-h 或 --no-filename** : 在显示符合样式的那一行之前，不标示该行所属的文件名称。<br/>  **-H 或 --with-filename** : 在显示符合样式的那一行之前，表示该行所属的文件名称。  <br/>**-i 或 --ignore-case** : 忽略字符大小写的差别。<br/>  **-l 或 --file-with-matches** : 列出文件内容符合指定的样式的文件名称。  <br/>**-L 或 --files-without-match** : 列出文件内容不符合指定的样式的文件名称。<br/>  **-n 或 --line-number** : 在显示符合样式的那一行之前，标示出该行的列数编号。  <br/>**-o 或 --only-matching** : 只显示匹配PATTERN 部分。<br/>  **-q 或 --quiet或--silent** : 不显示任何信息。<br/>  **-r 或 --recursive** : 此参数的效果和指定"-d recurse"参数相同。 <br/> **-s 或 --no-messages** : 不显示错误信息。<br/>  **-v 或 --invert-match** : 显示不包含匹配文本的所有行。  <br/>**-V 或 --version** : 显示版本信息。 <br/> **-w 或 --word-regexp** : 只显示全字符合的列。<br/>  **-x --line-regexp** : 只显示全列符合的列。<br/>  **-y** : 此参数的效果和指定"-i"参数相同。 |
| 例子 | 1.在当前目录中，查找后缀有 file 字样的文件中包含 test 字符串的文件，并打印出该字符串的行。此时，可以使用如下命令：grep test *file <br/> 2、以递归的方式查找符合条件的文件。例如，查找指定目录/etc/acpi 及其子目录（如果存在子目录的话）下所有文件中包含字符串"update"的文件，并打印出该字符串所在行的内容，使用的命令为： grep -r update /etc/acpi <br/>3.反向查找。前面各个例子是查找并打印出符合条件的行，通过"-v"参数可以打印出不符合条件行的内容。查找文件名中包含 test 的文件中不包含test 的行，此时，使用的命令为：grep -v test * test * |



## awk -- AWK 是一种处理文本文件的语言，是一个强大的文本分析工具。

| 语法     | awk [选项参数] 'script' var=value file(s) 或 awk [选项参数] -f scriptfile var=value file(s) |
| -------- | ------------------------------------------------------------ |
| 参数     | -F  fs:指定输入文件折分隔符，fs是一个字符串或者是一个正则表达式，如-F:。<br/>-v var=value or --asign var=value赋值一个用户定义变量。<br/>   -f scripfile or --file scriptfile从脚本文件中读取awk命令。 |
| 变量例子 | 描述awk '{[pattern] action}' {filenames}   # 行匹配语句 awk '' 只能用单引号<br/># 每行按空格或TAB分割，输出文本中的1、4项:    $  awk '{print $1,$4}' log.txt  <br/>                             awk -F  #-F相当于内置变量FS, 指定分割字符 : # : 使用","分割   awk -F, '{print $1,$2}'   log.txt |
|          |                                                              |

## 内建变量

| 变量        | 描述                                                       |
| ----------- | ---------------------------------------------------------- |
| $n          | 当前记录的第n个字段，字段间由FS分隔                        |
| $0          | 完整的输入记录                                             |
| ARGC        | 命令行参数的数目                                           |
| ARGIND      | 命令行中当前文件的位置(从0开始算)                          |
| ARGV        | 包含命令行参数的数组                                       |
| CONVFMT     | 数字转换格式(默认值为%.6g)ENVIRON环境变量关联数组          |
| ERRNO       | 最后一个系统错误的描述                                     |
| FIELDWIDTHS | 字段宽度列表(用空格键分隔)                                 |
| FILENAME    | 当前文件名                                                 |
| FNR         | 各文件分别计数的行号                                       |
| FS          | 字段分隔符(默认是任何空格)                                 |
| IGNORECASE  | 如果为真，则进行忽略大小写的匹配                           |
| NF          | 一条记录的字段的数目                                       |
| NR          | 已经读出的记录数，就是行号，从1开始                        |
| OFMT        | 数字的输出格式(默认值是%.6g)                               |
| OFS         | 输出记录分隔符（输出换行符），输出时用指定的符号代替换行符 |
| ORS         | 输出记录分隔符(默认值是一个换行符)                         |
| RLENGTH     | 由match函数所匹配的字符串的长度                            |
| RS          | 记录分隔符(默认是一个换行符)                               |
| RSTART      | 由match函数所匹配的字符串的第一个位置                      |
| SUBSEP      | 数组下标分隔符(默认值是/034)                               |



**BEGIN和END:**

在Unix awk中两个特别的表达式，BEGIN和END，这两者都可用于pattern中（参考前面的awk语法），提供BEGIN和END的作用是给程序赋予初始状态和在程序结束之后执行一些扫尾的工作。

任何在BEGIN之后列出的操作（在{}内）将在Unix awk开始扫描输入之前执行，而END之后列出的操作将在扫描完全部的输入之后执行。因此，通常使用BEGIN来显示变量和预置（初始化）变量，使用END来输出最终结果。

## date

Linux date命令可以用来显示或设定系统的日期与时间，在显示方面，使用者可以设定欲显示的格式，格式设定为一个加号后接数个标记，其中可用的标记列表如下：

时间方面：

- % : 印出 %
- %n : 下一行
- %t : 跳格
- %H : 小时(00..23)
- %I : 小时(01..12) (i)
- %k : 小时(0.1...23)
- %l : 小时(1..12)(L)
- %M : 分钟(00..59)
- %p : 显示本地 AM 或 PM
- %r : 直接显示时间 (12 小时制，格式为 hh:mm:ss [AP]M)
- %s : 从 1970 年 1 月 1 日 00:00:00 UTC 到目前为止的秒数
- %S : 秒(00..61)
- %T : 直接显示时间 (24 小时制)
- %X : 相当于 %H:%M:%S

 日期方面：

- %a : 星期几 (Sun..Sat)
- %A : 星期几 (Sunday..Saturday)
- %b : 月份 (Jan..Dec)
- %B : 月份 (January..December)
- %c : 直接显示日期与时间
- %d : 日 (01..31)
- %D : 直接显示日期 (mm/dd/yy)
- %h : 同 %b
- %j : 一年中的第几天 (001..366)
- %m : 月份 (01..12)
- %U : 一年中的第几周 (00..53) (以 Sunday 为一周的第一天的情形)
- %w : 一周中的第几天 (0..6)
- %W : 一年中的第几周 (00..53) (以 Monday 为一周的第一天的情形)
- %x : 直接显示日期 (mm/dd/yy)
- %y : 年份的最后两位数字 (00.99)
- %Y : 完整年份 (0000..9999)

若是不以加号作为开头，则表示要设定时间，而时间格式为 MMDDhhmm[[CC]YY][.ss]，其中 MM 为月份，DD 为日，hh 为小时，mm 为分钟，CC 为年份前两位数字，YY 为年份后两位数字，ss 为秒数。

使用权限：所有使用者。

当您不希望出现无意义的 0 时(比如说 1999/03/07)，则可以在标记中插入 - 符号，比如说 date '+%-H:%-M:%-S' 会把时分秒中无意义的 0 给去掉，像是原本的 08:09:04 会变为 8:9:4。另外，只有取得权限者(比如说 root)才能设定系统时间。

当您以 root 身分更改了系统时间之后，请记得以 clock -w 来将系统时间写入 CMOS 中，这样下次重新开机时系统时间才会持续抱持最新的正确值。



## cal显示日历

cal [选项]［参数］

选项：-１，-3：显示最近一个月和三个月的日历

​	-j: 显示一年的第几天

​	-y: 显示当前年

参数：

​	月： 指定月份

​	　年:指定年份

## free  :  用于显示内存状态。

​	free指令会显示内存的使用情况，包括实体内存，虚拟的交换文件内存，共享内存区段，以及系统核心使用的缓冲区等。



### 语法

```
free [-bkmotV][-s <间隔秒数
```

**参数说明**：

- -b 　以Byte为单位显示内存使用情况。

- -k 　以KB为单位显示内存使用情况。

- -m 　以MB为单位显示内存使用情况。

- -h 　以合适的单位显示内存使用情况，最大为三位数，自动计算对应的单位值。单位有：

   

- -o 　不显示缓冲区调节列。
- -s<间隔秒数> 　持续观察内存使用状况。
- -t 　显示内存总和列。
- -V 　显示版本信息



## uptime   :   告知系统运行了多久时间

uptime  给出下列信息的一行显示.  当前时间, 系统运行了多久时间, 当前登陆的用户有多少, 以及前1,5和15分钟系
       统的平均负载.

若你只想知道系统运行了多长时间，而且希望以更人性化的格式来显示，那么可以使用 -p 项

```
uptime -p
```

你也可以指定 uptme 显示系统开始运行的时间和日期。方法是使用 -s 命令项。

```
uptime -s
```



## 获取平均负载

cat /proc/loadavg



## ps -----------------------用于显示当前进程的状态，类似于 windows 的任务管理器

### 语法

```
ps [options] [--help]
```

**参数**：

- ps 的参数非常多, 在此仅列出几个常用的参数并大略介绍含义
- -A 列出所有的行程
- -w 显示加宽可以显示较多的资讯
- -au 显示较详细的资讯
- -aux 显示所有包含其他使用者的行程
- au(x) 输出格式 :
- USER PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND
- USER: 行程拥有者
- PID: pid
- %CPU: 占用的 CPU 使用率
- %MEM: 占用的记忆体使用率
- VSZ: 占用的虚拟记忆体大小
- RSS: 占用的记忆体大小
- TTY: 终端的次要装置号码 (minor device number of tty)
- STAT: 该行程的状态:
- D: 无法中断的休眠状态 (通常 IO 的进程)
- R: 正在执行中
- S: 静止状态
- T: 暂停执行
- Z: 不存在但暂时无法消除
- W: 没有足够的记忆体分页可分配
- <: 高优先序的行程
- N: 低优先序的行程
- L: 有记忆体分页分配并锁在记忆体内 (实时系统或捱A I/O)
- START: 行程开始时间
- TIME: 执行的时间
- COMMAND:所执行的指令

 

##  **tail** -------------查看文件的内容，有一个常用的参数 -f 常用于查阅正在改变的日志文件。



tail -f filename 会把 filename 文件里的最尾部的内容显示在屏幕上，并且不断刷新，只要 filename 更新就可以看到最新的文件内容。

**命令格式：**

```
tail [参数] [文件]  
```

**参数：**

- -f 循环读取
- -q 不显示处理信息
- -v 显示详细的处理信息
- -c<数目> 显示的字节数
- -n<行数> 显示文件的尾部 n 行内容
- --pid=PID 与-f合用,表示在进程ID,PID死掉之后结束
- -q, --quiet, --silent 从不输出给出文件名的首部
- -s, --sleep-interval=S 与-f合用,表示在每次反复的间隔休眠S秒

**实例**

要显示 notes.log 文件的最后 10 行，请输入以下命令：

```
tail notes.log
```

要跟踪名为 notes.log 的文件的增长情况，请输入以下命令：

```
tail -f notes.log
```

## tr---------------------命令用于转换或删除文件中的字符。

tr 指令从标准输入设备读取数据，经过字符串转译后，将结果输出到标准输出设备.

### 语法

```
tr [-cdst][--help][--version][第一字符集][第二字符集]  
tr [OPTION]…SET1[SET2] 
```

**参数说明：**

- -c, --complement：反选设定字符。也就是符合 SET1 的部份不做处理，不符合的剩余部份才进行转换
- -d, --delete：删除指令字符
- -s, --squeeze-repeats：缩减连续重复的字符成指定的单个字符
- -t, --truncate-set1：削减 SET1 指定范围，使之与 SET2 设定长度相等
- --help：显示程序用法信息
- --version：显示程序本身的版本信息

字符集合的范围：

- \NNN 八进制值的字符 NNN (1 to 3 为八进制值的字符)
- \\ 反斜杠
- \a Ctrl-G 铃声
- \b Ctrl-H 退格符
- \f Ctrl-L 走行换页
- \n Ctrl-J 新行
- \r Ctrl-M 回车
- \t Ctrl-I tab键
- \v Ctrl-X 水平制表符
- CHAR1-CHAR2 ：字符范围从 CHAR1 到 CHAR2 的指定，范围的指定以 ASCII 码的次序为基础，只能由小到大，不能由大到小。
- [CHAR*] ：这是 SET2 专用的设定，功能是重复指定的字符到与 SET1 相同长度为止
- [CHAR*REPEAT] ：这也是 SET2 专用的设定，功能是重复指定的字符到设定的 REPEAT 次数为止(REPEAT 的数字采 8 进位制计算，以 0 为开始)
- [:alnum:] ：所有字母字符与数字
- [:alpha:] ：所有字母字符
- [:blank:] ：所有水平空格
- [:cntrl:] ：所有控制字符
- [:digit:] ：所有数字
- [:graph:] ：所有可打印的字符(不包含空格符)
- [:lower:] ：所有小写字母
- [:print:] ：所有可打印的字符(包含空格符)
- [:punct:] ：所有标点字符
- [:space:] ：所有水平与垂直空格符
- [:upper:] ：所有大写字母
- [:xdigit:] ：所有 16 进位制的数字
- [=CHAR=] ：所有符合指定的字符(等号里的 CHAR，代表你可自订的字符)



```
cat testfile |tr a-z A-Z 
```



大小写转换，也可以通过[:lower][:upper]参数来实现。例如使用如下命令：

```
cat testfile |tr [:lower:] [:upper:] 
```



## cut---------------------------用于显示每行从开头算起 num1 到 num2 的文字。

cut 命令从文件的每一行剪切字节、字符和字段并将这些字节、字符和字段写至标准输出

### 语法

```
cut  [-bn] [file]
cut [-c] [file]
cut [-df] [file]
```

- -b ：以字节为单位进行分割。这些字节位置将忽略多字节字符边界，除非也指定了 -n 标志。
- -c ：以字符为单位进行分割。
- -d ：自定义分隔符，默认为制表符。
- -f ：与-d一起使用，指定显示哪个区域。
- -n ：取消分割多字节字符。仅和 -b 标志一起使用。如果字符的最后一个字节落在由 -b 标志的 List 参数指示的
  范围之内，该字符将被写出；否则，该字符将被排除



## sort-------------------------用于将文本文件内容加以排序。



### 语法

```
sort [-bcdfimMnr][-o<输出文件>][-t<分隔字符>][+<起始栏位>-<结束栏位>][--help][--verison][文件]
```

**参数说明**：

- -b 忽略每行前面开始出的空格字符。
- -c 检查文件是否已经按照顺序排序。
- -d 排序时，处理英文字母、数字及空格字符外，忽略其他的字符。
- -f 排序时，将小写字母视为大写字母。
- -i 排序时，除了040至176之间的ASCII字符外，忽略其他的字符。
- -m 将几个排序好的文件进行合并。
- -M 将前面3个字母依照月份的缩写进行排序。
- -n 依照数值的大小排序。
- -u 意味着是唯一的(unique)，输出的结果是去完重了的。
- -o<输出文件> 将排序后的结果存入指定的文件。
- -r 以相反的顺序来排序。
- -t<分隔字符> 指定排序时所用的栏位分隔字符。
- +<起始栏位>-<结束栏位> 以指定的栏位来排序，范围由起始栏位到结束栏位的前一栏位。
- --help 显示帮助。
- --version 显示版本信息。

### 实例

在使用sort命令以默认的式对文件的行进行排序，使用的命令如下：

```
sort testfile 
```

 

## head----------------------可用于查看文件的开头部分的内容，有一个常用的参数 -n 用于显示行数，默认为 10，即显示 10 行的内容。



**命令格式：**

```
head [参数] [文件]  
```

**参数：**

- -q 隐藏文件名
- -v 显示文件名
- -c<数目> 显示的字节数。
- -n<行数> 显示的行数。

**实例**

要显示 runoob_notes.log 文件的开头 10 行，请输入以下命令：

```
head runoob_notes.log
```

显示 notes.log 文件的开头 5 行，请输入以下命令：

```
head -n 5 runoob_notes.log
```





## uniq---------------------用于检查及删除文本文件中重复出现的行列，一般与 sort 命令结合使用。

uniq 可检查文本文件中重复出现的行列。

### 语法

```
uniq [-cdu][-f<栏位>][-s<字符位置>][-w<字符位置>][--help][--version][输入文件][输出文件]
```

**参数**：

- -c或--count 在每列旁边显示该行重复出现的次数。
- -d或--repeated 仅显示重复出现的行列。
- -f<栏位>或--skip-fields=<栏位> 忽略比较指定的栏位。
- -s<字符位置>或--skip-chars=<字符位置> 忽略比较指定的字符。
- -u或--unique 仅显示出一次的行列。
- -w<字符位置>或--check-chars=<字符位置> 指定要比较的字符。
- --help 显示帮助。
- --version 显示版本信息。
- [输入文件] 指定已排序好的文本文件。如果不指定此项，则从标准读取数据；
- [输出文件] 指定输出的文件。如果不指定此选项，则将内容显示到标准输出设备（显示终端）。

### 实例

文件testfile中第 2、3、5、6、7、9行为相同的行，使用 uniq 命令删除重复的行，可使用以下命令：

```
uniq testfile 
```

testfile中的原有内容为：

```
$ cat testfile      #原有内容  
test 30  
test 30  
test 30  
Hello 95  
Hello 95  
Hello 95  
Hello 95  
Linux 85  
Linux 85 
```

使用uniq 命令删除重复的行后，有如下输出结果：

```
$ uniq testfile     #删除重复行后的内容  
test 30  
Hello 95  
Linux 85 
```









## tail

tail 命令可用于查看文件的内容，有一个常用的参数 -f 常用于查阅正在改变的日志文件。

tail -f filename 会把 filename 文件里的最尾部的内容显示在屏幕上，并且不断刷新，只要 filename 更新就可以看到最新的文件内容



**命令格式：**

```
tail [参数] [文件]  
```

**参数：**

- -f 循环读取
- -q 不显示处理信息
- -v 显示详细的处理信息
- -c<数目> 显示的字节数
- -n<行数> 显示文件的尾部 n 行内容
- --pid=PID 与-f合用,表示在进程ID,PID死掉之后结束
- -q, --quiet, --silent 从不输出给出文件名的首部
- -s, --sleep-interval=S 与-f合用,表示在每次反复的间隔休眠S秒

**实例**

要显示 notes.log 文件的最后 10 行，请输入以下命令：

```
tail notes.log
```

要跟踪名为 notes.log 的文件的增长情况，请输入以下命令：

```
tail -f notes.log
```

此命令显示 notes.log 文件的最后 10 行。当将某些行添加至 notes.log 文件时，tail 命令会继续显示这些行。 显示一直继续，直到您按下（Ctrl-C）组合键停止显示。

显示文件 notes.log 的内容，从第 20 行至文件末尾:

```
tail +20 notes.log
```

显示文件 notes.log 的最后 10 个字符:

```
tail -c 10 notes.log
```

 

## top --用于实时显示 process 的动态。

### 语法

```
top [-] [d delay] [q] [c] [S] [s] [i] [n] [b]
```

**参数说明**：

- -d num : 改变显示的更新速度，或是在交谈式指令列( interactive command)按 s
- -q num : 没有任何延迟的显示速度，如果使用者是有 superuser 的权限，则 top 将会以最高的优先序执行
- c : 切换显示模式，共有两种模式，一是只显示执行档的名称，另一种是显示完整的路径与名称S : 累积模式，会将己完成或消失的子行程 ( dead child process ) 的 CPU time 累积起来
- s : 安全模式，将交谈式指令取消, 避免潜在的危机
- i : 不显示任何闲置 (idle) 或无用 (zombie) 的行程
- -n num : 更新的次数，完成后将会退出 top
- b : 批次档模式，搭配 "n" 参数一起使用，可以用来将 top 的结果输出到档案内

 





## 

免密登录

sudo vim /etc/hosts : 网址 aliyun

vim ~/.bashrc或vim ~/.zshrc :

ssh-keygen

ssh-copy-id zy@aliyun





# shell

## 命令的批量处理

vim __.sh

chmod +x __.sh

./__.sh

## echo



### 　显示不换行

```
#!/bin/sh
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"
```

输出结果：

```
OK! It is a test
```

 ### 显示命令执行结果

```
echo `date`
```

**注意：** 这里使用的是反引号 `, 而不是单引号 '。

结果将显示当前日期

```
Thu Jul 24 10:08:46 CST 2014
```



###　显示换行

```
echo -e "OK! \n" # -e 开启转义
echo "It is a test"
```

## 运算

原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。

expr 是一款表达式计算工具，使用它能完成表达式的求值操作。

例如，两个数相加(**注意使用的是反引号 ` 而不是单引号 '**)：

## 实例

\#!/bin/bash
val=`expr 2 + 2`
echo "两数之和为 : $val"

 

val=`expr $a \* $b` echo "a * b : $val"

| 运算符 | 说明                                                  | 举例                       |
| ------ | ----------------------------------------------------- | -------------------------- |
| -eq    | 检测两个数是否相等，相等返回 true。                   | [ $a -eq $b ] 返回 false。 |
| -ne    | 检测两个数是否不相等，不相等返回 true。               | [ $a -ne $b ] 返回 true。  |
| -gt    | 检测左边的数是否大于右边的，如果是，则返回 true。     | [ $a -gt $b ] 返回 false。 |
| -lt    | 检测左边的数是否小于右边的，如果是，则返回 true。     | [ $a -lt $b ] 返回 true。  |
| -ge    | 检测左边的数是否大于等于右边的，如果是，则返回 true。 | [ $a -ge $b ] 返回 false。 |
| -le    | 检测左边的数是否小于等于右边的，如果是，则返回 true。 | [ $a -le $b ] 返回 true。  |

 

| !    | 非运算，表达式为 true 则返回 false，否则返回 true。 | [ ! false ] 返回 true。                  |
| ---- | --------------------------------------------------- | ---------------------------------------- |
| -o   | 或运算，有一个表达式为 true 则返回 true。           | [ $a -lt 20 -o $b -gt 100 ] 返回 true。  |
| -a   | 与运算，两个表达式都为 true 才返回 true。           | [ $a -lt 20 -a $b -gt 100 ] 返回 false。 |



Shell 中常用的运算符如下表所示：

 

 

| 优先级 | 运算符                              | 说 明                              |
| ------ | ----------------------------------- | ---------------------------------- |
| 13     | -,+                                 | 单目负、单目正                     |
| 12     | !,~                                 | 逻辑非、按位取反或补码             |
| 11     | *, /, %                             | 乘、除、取模                       |
| 10     | +, -                                | 加、减                             |
| 9      | <<, >>                              | 按位左移、按位右移                 |
| 8      | <=, >=, <, >                        | 小于或等于、大于或等于、小于、大于 |
| 7      | == ,!=                              | 等于、不等于                       |
| 6      | &                                   | 按位与                             |
| S      | ^                                   | 按位异或                           |
| 4      | \|                                  | 按位或                             |
| 3      | &&                                  | 逻辑与                             |
| 2      | II                                  | 逻辑或                             |
| 1      | =,+=,•=，*=,/=,%=,&=, \|=, <<=, >>= | 赋值、运算且赋值                   |

 

### 实例





















## Shell 字符串

字符串是shell编程中最常用最有用的数据类型（除了数字和字符串，也没啥其它类型好用了），字符串可以用单引号，也可以用双引号，也可以不用引号。

### 单引号

```
str='this is a string'

```

单引号字符串的限制：

- 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
- 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。****

双引号的优点：

- 双引号里可以有变量
- 双引号里可以出现转义字符

### 获取字符串长度

```
string="abcd"
echo ${#string} #输出 4

```

### 提取子字符串

以下实例从字符串第 **2** 个字符开始截取 **4** 个字符：

```
string="runoob is a great site"
echo ${string:1:4} # 输出 unoo
```

**注意**：第一个字符的索引值为 **0**。 



### 查找子字符串

查找字符 **i** 或 **o** 的位置(哪个字母先出现就计算哪个)：

```
string="runoob is a great site"
echo `expr index "$string" io`  # 输出 4
```

**注意：** 以上脚本中 ` 是反引号，而不是单引号 '，不要看错了哦。



## Shell 数组

bash支持一维数组（不支持多维数组），并且没有限定数组的大小。

类似于 C 语言，数组元素的下标由 0 开始编号。获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于 0。

 定义数组

在 Shell 中，用括号来表示数组，数组元素用"空格"符号分割开。定义数组的一般形式为：

```
数组名=(值1 值2 ... 值n)
```

 还可以单独定义数组的各个分量：

```
array_name[0]=value0
array_name[1]=value1
array_name[n]=valuen
```

### 读取数组

读取数组元素值的一般格式是：

```
${数组名[下标]}
```

例如：

```
valuen=${array_name[n]}
```

使用 @ 符号可以获取数组中的所有元素，例如：

```
echo ${array_name[@]}
```

 获取数组的长度

获取数组长度的方法与获取字符串长度的方法相同，例如：

```
# 取得数组元素的个数
length=${#array_name[@]}
# 或者
length=${#array_name[*]}
# 取得数组单个元素的长度
lengthn=${#array_name[n]}
```

 ## Shell 注释

以 # 开头的行就是注释，会被解释器忽略。

通过每一行加一个 **#** 号设置多行注释，像这样：

```
#--------------------------------------------
# 这是一个注释
# author：菜鸟教程
# site：www.runoob.com
# slogan：学的不仅是技术，更是梦想！
#--------------------------------------------
##### 用户配置区 开始 #####
#
#
# 这里可以添加脚本描述信息
# 
#
##### 用户配置区 结束  #####
```

如果在开发过程中，遇到大段的代码需要临时注释起来，过一会儿又取消注释，怎么办呢？

每一行加个#符号太费力了，可以把这一段要注释的代码用一对花括号括起来，定义成一个函数，没有地方调用这个函数，这块代码就不会执行，达到了和注释一样的效果。

### 多行注释

多行注释还可以使用以下格式：

```
:<<EOF
注释内容...
注释内容...
注释内容...
EOF
```

EOF 也可以使用其他符号:

```
:<<'
注释内容...
注释内容...
注释内容...
'

:<<!
注释内容...
注释内容...
注释内容...
!
```

 







## 变量

定义变量时，变量名不加美元符号（$，PHP语言中变量需要），如：

```
your_name="runoob.com"
```

注意，变量名和等号之间不能有空格，这可能和你熟悉的所有编程语言都不一样。同时，变量名的命名须遵循如下规则：

- 命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
- 中间不能有空格，可以使用下划线（_）。
- 不能使用标点符号。
- 不能使用bash里的关键字（可用help命令查看保留关键字）。

### 只读变量

 使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。

下面的例子尝试更改只读变量，结果报错：



### 删除变量

使用 unset 命令可以删除变量。语法：

```
unset variable_name
```



shell执行"", 打印到屏幕用''

不需要定义

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img4?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:mjHnNO_a_UojFKxuZOske8GYd0U=)

$a:a 取 a的地址



![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img5?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:5pk45nXILHetPpms0PIu-c50NwQ=)

shell参数从1开始, c语言的参数从零开始

Hello HaiZei
$0 = ./1.sh
$1 = 1
$2 = 2
$3 = 3
$4 = 4
$* = 1 2 3 4 5
$# = 5
$@ = 1 2 3 4 5

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img6?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:P2QYF8Sz618nDrYssuzClBsnuMs=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img7?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:glswPHTE35QJq5T1rgk75KP19Zo=)

```
y@HaiZei:~/shell$ a=123
zy@HaiZei:~/shell$ echo ${a:-"lol"}
123
zy@HaiZei:~/shell$ echo ${b:-"lol"}
lol

```

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img8?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:iBCD5Lw8xdobwlRzYs8SjoP6SI4=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img9?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:h5sg-fwDAbTjqSsWKel87tf3fpE=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img10?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:tTVhkNPNqy2EVd7zdLd8GgRDxds=)

-s隐藏输入

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img11?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:uieheY7Bwxov_giXylzgCXCDwA8=)

```
y@HaiZei:~/shell$ echo "hwllo"
hwllo
zy@HaiZei:~/shell$ echo "\"hwllo\""
"hwllo"
zy@HaiZei:~/shell$ echo "hi\n"
hi\n
zy@HaiZei:~/shell$ echo -e "hi\n"
hi

zy@HaiZei:~/shell$ echo -n -e "hi\n"
hi
zy@HaiZei:~/shell$ echo -n "hi\n"
hi\nzy@HaiZei:~/shell$ echo -n "hi"
hizy@HaiZei:~/shell$ 


```



![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img12?e=1601718275&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:ASAnBDH9oKcn-KboLAZT8Ogx2Fc=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img13?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:yKvEaSoW6606klSUw6YjPNNkmHM=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img14?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:4otFHTYDKv6_t2T7M5rmrP24qPs=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img15?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:MAf_UwyPFOA850OPMuykhwTJOpk=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img16?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:QdiGx5M3PS1TTpstpiNlO0bFyCI=)



```
$ for i in `ls`;do
>ls -al $i; 
>done
```

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img17?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:CFKwp2BrJvktTcymYVr1Me-R9t4=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img18?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:UU78bqUaqitev34qc4q032u5vZo=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img19?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:B4KBYM2CQfd7qn1dAbnQ_UgvNLw=)

```c++
zhouyuan@zhouyuan-PC:~$ name[1]=dsa
zhouyuan@zhouyuan-PC:~$ echo ${name[1]}
dsa
zhouyuan@zhouyuan-PC:~$ name=(1 2 3 zy 454 dada "**")
zhouyuan@zhouyuan-PC:~$ echo ${name[1]}
2

```





![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img20?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:M0jagbqguuu1TajxclI_dcuURY4=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-36/20200312103127-escmz6688288coks/f76ae660b6e68b20_img21?e=1601723145&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:C2i2hZvQ5U5_mEtv6Nv4He2Wbuk=)







# CPU

常用计算等式：CPU时间= user + system + nice + idle + iowait + irq + softirq 

cpu的温度：cat /sys/class/thermal/thermal_zone0/temp:x

w

















