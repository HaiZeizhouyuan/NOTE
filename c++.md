# \<string>类

##  查找函数

int` `find(``char` `c, ``int` `pos = 0) ``const``;``//从pos开始查找字符c在当前字符串的位置
int` `find(``const` `char` `*s,``int` `pos = 0) ``const``;``//从pos开始查找字符串s在当前串中的位置
int` `find(``const` `char` `*s, ``int` `pos, ``int` `n) ``const``;``//从pos开始查找字符串s中前n个字符在当前串中的位置
int` `find(``const` `string &s,``int` `pos = 0) ``const``;``//从pos开始查找字符串s在当前串中的位置　//查找成功时返回所在位置，失败返回string::npos的值
int` `rfind(``char` `c, ``int` `pos = npos) ``const``;``//从pos开始从后向前查找字符c在当前串中的位置
int` `rfind(``const` `char` `*s, ``int` `pos = npos) ``const``;
int` `rfind(``const` `char` `*s, ``int` `pos, ``int` `n = npos) ``const``;
int` `rfind(``const` `string &s,``int` `pos = npos) ``const``;　``//从pos开始从后向前查找字符串s中前n个字符组成的字符串在当前串中的位置，成功返回所在位置，失败时返回string::npos的值
int` `find_first_of(``char` `c, ``int` `pos = 0) ``const``;``//从pos开始查找字符c第一次出现的位置
int` `find_first_of(``const` `char` `*s, ``int` `pos = 0) ``const``;
int` `find_first_of(``const` `char` `*s, ``int` `pos, ``int` `n) ``const``;
int` `find_first_of(``const` `string &s,``int` `pos = 0) ``const``;　``//从pos开始查找当前串中第一个在s的前n个字符组成的数组里的字符的位置。查找失败返回string::npos
int` `find_first_not_of(``char` `c, ``int` `pos = 0) ``const``;
int` `find_first_not_of(``const` `char` `*s, ``int` `pos = 0) ``const``;
int` `find_first_not_of(``const` `char` `*s, ``int` `pos,``int` `n) ``const``;
int` `find_first_not_of(``const` `string &s,``int` `pos = 0) ``const``;　``//从当前串中查找第一个不在串s中的字符出现的位置，失败返回string::npos
int` `find_last_of(``char` `c, ``int` `pos = npos) ``const``;
int` `find_last_of(``const` `char` `*s, ``int` `pos = npos) ``const``;
int` `find_last_of(``const` `char` `*s, ``int` `pos, ``int` `n = npos) ``const``;
int` `find_last_of(``const` `string &s,``int` `pos = npos) ``const``;
int` `find_last_not_of(``char` `c, ``int` `pos = npos) ``const``;
int` `find_last_not_of(``const` `char` `*s, ``int` `pos = npos) ``const``;
int` `find_last_not_of(``const` `char` `*s, ``int` `pos, ``int` `n) ``const``;
int` `find_last_not_of(``const` `string &s,``int` `pos = npos) ``const``;　``//find_last_of和find_last_not_of与find_first_of和find_first_not_of相似，只不过是从后向前查找。

# 2、字符串截取

```
s.substr(pos, n)    //截取s中从pos开始（包括0）的n个字符的子串，并返回

s.substr(pos)        //截取s中从从pos开始（包括0）到末尾的所有字符的子串，并返回
```

# 链接符‘ + ’：

string a, string b;

a + b为a链接b,列10+56 = 1056;

# 字符串转数字

````c++
#include<sstream>
int strnum(string s) {
    int num;
    stringstream ss(s);
    ss >> num;
    return num;
}

````

unordered_map<string ,int> s;

s[string] = int





# 优先队列

priority_queue<int> que;

- top 访问队头元素
- empty 队列是否为空
- size 返回队列内元素个数
- push 插入元素到队尾 (并排序)从大到小排序
- emplace 原地构造一个元素并插入队列
- pop 弹出队头元素
- swap 交换内容

在前面，**priority queue默认的顺序总是数字大的优先级高**，而如果我们需要自定义优先级呢

解决这一问题很简单，我们只需要改变一下定义priority queue的方式即可：

```c++
priority_queue<int , vector<int>, less<int> > q;
```

这样，数字大的优先级大



在这里，三个ElementType的类型必须保持一致。这里vector是队列内部用于承载底层数据结构堆的容器，less是对第一个参数的比较类。



less表示数字越大优先级越大（如果是char类型则根据ASCII码来判断），如果希望数字越小优先级越大，只需要将less换成greater即可。例如

```c++
priority_queue<int, vector<int>, greater<int> > q;
```



要注意最后一个‘>’与下一个‘>’之间必须有空格。否则编译器会误认为是在做移位运算。



这里很容易记混，再次重复一遍：

**less -> 数字大的优先级大，数字大被放在队首。所以先输出数字大的**

**greater -> 数字小的优先级大，数字小被放在队首。所以先输出数字小的**





# 十进制转１６进制

```c++
#include <iostream>
#include <iomanip>
using std::cin;
using std::cout;
using std::endl;
using std::hex;
int main(){
    int a = 22;
    cout << hex << a << endl;
    return 0;
}
```

## 保留n小数

#include <iomanip>

cout<<fixed<<setprecision(n);



# 数据类型

