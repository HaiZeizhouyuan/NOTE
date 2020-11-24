# \<string>类

##  查找函数



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



# vector

#include <vector>

using std::vector;

vector<类型>数组对象名(长度);

vector<int>arr(10);

vector<int>arr;

vector<int>v(10, 1);//建立一个有10个元素的vector类型对象初始值设置为1

## size()

返回当前数组的大小(), 也就是当前有多少个元素

## push_back

将一个元素插入到当前 vector 的末尾,这个方法支持自动扩容.

# 自定义函数

int add(int a, int b = 1, int c = 2); 有默认值的形参在后面

自定义的函数成为参数,

func( (*函数名)(double));

int func1((返回值类型) (*函数名)(参数类型)) {}





类

```c++
#include <iostream>
using std::cin;
using std::cout;
using std::endl;
class Clock{
public :
    void setTime(int newH=0, int newM=0, int newS=0) {
        second = newS;
        minute = newM;
        hour = newH;
    }
    void showTime();
private:
    int second, minute, hour;
    
};

void Clock:: showTime() {
    cout << hour << ":" << minute << ":" << second << endl;
}

int main () {
    Clock MyClock;
    int second, minute, hour;
    cin >> second >> minute >> hour;
    MyClock.setTime(second, minute, hour);
    MyClock.showTime();
    return 0;
}
```





## 构造函数



Clock(){}  类似  Clock(int hour = 0, int  minute = 0, int second = 0) {}





## 初始化列表与析构函数

所谓的初始化列表,就是在类的构造函数后面, 写上要用哪个参数,来初始化哪个变量:

构造函数(参数列表):成员变量(常亮或者参数) {

​	//构造函数的函数体

}

```
clock(int newS, int newM, newH):minute(newM), second(newS), hour(newH) {
    
}
```





 析构函数无返回值也没有任何参数

```
class clock {
    ~clock(){}//析构函数
}
```

如果希望程序在对象被删除之前, 自动地来完成某些事情吗就可以把代码写到析构函数里





## stack

push()入栈

top()  获取栈顶元素

pop()　弹出栈顶元素

empty()可检测stack是否为空

size()　返回stack内元素的个数

# 函数

## count  ()

| 头文件 | #include  <algorithm>                                        |
| ------ | ------------------------------------------------------------ |
|        | algorithm头文件定义了一个count的函数，其功能类似于find。这个函数使用一对迭代器和一个值做参数，返回这个值出现次数的统计结果 |
|        | **count(first,last,value); first是容器的首迭代器，last是容器的末迭代器，value是询问的元素。**<br/>arr.map(); |
|        |                                                              |





## donst auto&, auto &&,auto

    在块作用域、命名作用域、循环初始化语句等等  中声明变量时，关键词auto用作类型指定符。
    const:修饰符

auto : 

    auto即 for(auto x:range)  这样会拷贝一份range元素，而不会改变range中元素；
     但是！（重点)  使用for(auto x:vector<bool>)时得到一个proxy class,操作时会改变vector<bool>本身元素。应用：for(bool x:vector<bool>)

auto&:

   当需要修改range中元素，用for(auto& x:range)

 当vector<bool>返回临时对象，使用auto&会编译错误，临时对象不能绑在non-const l-value reference （左值引用）需使用auto&&,初始化右值时也可捕获

   

const auto&:

当需要修改range中元素，用for(auto& x:range)

 当只想读取range中元素时，使用const auto&,如：for(const auto&x:range),它不会进行拷贝，也不会修range  .

 

const auto:                                                                                                                                                                                                                                                       当需要拷贝元素，但不可修改拷贝出来的值时，使用 for(const auto x:range)，避免拷贝开销                 



   想要拷贝元素：for(auto x:range)

   想要修改元素 :  for(auto &&x:range)

   想要只读元素：for(const auto& x:range)       





#　图

如题，给出一个有向图，请输出从某一点出发到所有点的最短路径长度。

## flyd

```c++
#include <iostream>
#include <cstring>
#include <cmath>
using namespace std;

int n, m, s, arr[1005][1005];

int main() {
    memset(arr, 0x3F, sizeof(arr));
    cin >> n >> m >> s;
    for (int i = 1; i <= n; i++) {
        arr[i][i] = 0;
    }
    for (int i = 0; i < m; i++) {
        int a, b, c;
        cin >> a >> b >> c;
        arr[a][b] = min(arr[a][b], c);
    }

    for (int i = 1;  i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            for (int k = 1; k <= n; k++) {
                arr[j][k] = min(arr[j][k], arr[j][i] + arr[i][k]);
            }
        }
    }

    for (int i = 1; i <= n; i++) {
        if (i != 1) {
            cout << " ";
        }
        if (arr[s][i] == 0x3F3F3F3F) {
            cout << pow(2, 31) - 1;
        } else {
            cout << arr[s][i];
        }
    }
    cout << endl;
 
    return 0;
}

```

​                                                                                       



## Dijkstra

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
using namespace std;

struct node {
    int now, dist;
    bool operator< (const node &b)  const {
        return this->dist > b.dist;
    }
};

int n, m, s, arr[1005][1005], ans[1005];

int main() {
    memset(arr, 0x3F, sizeof(arr));
    memset(ans, 0x3F, sizeof(ans));
    cin >> n >> m >> s;
    for (int i = 0; i < m; i++) {
        int a, b, c;
        cin >> a >> b >> c;
        arr[a][b] = min(arr[a][b], c);
    }
    priority_queue<node> que;
    que.push((node){s, 0});
    while(!que.empty()) {
        node temp = que.top();
        que.pop();
        if (ans[temp.now] != 0x3F3F3F3F) {
            continue;
        }
        ans[temp.now] = temp.dist;
        for (int i = 1; i <= n; i++) {
            if (arr[temp.now][i] != 0x3F3F3F3F) {
                que.push((node){i, temp.dist + arr[temp.now][i]});
            }
        }
    }
    for (int i = 1; i <= n; i++) {
        if (i != 1) {
            cout << " ";
        }
        if (ans[i] == 0x3F3F3F3F) {
            cout << - 1;
        }
        else {
            cout << ans[i];
        }
    }
    cout << endl;
    return 0;
}

```





## 链式前向星

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
using namespace std;

struct edge {
    int e, dist, next;
};

edge edg[1005];
int n, m, head[105];

int main() {
    memset(head,  -1, sizeof(head));
    cin >> n >> m;
    for (int i = 0; i < m; i++) {
        int a, b, c;
        cin >> a >> b >> c;
        edg[i].e = b;
        edg[i].dist = c;
        edg[i].next = head[a];
        head[a] = i;
    }

    for (int i = 1; i <= n; i++) {
        cout << i << " : ";
        for (int j = head[i]; j != -1; j = edg[j].next) {
            cout << "(" << edg[j].e << ", " << edg[j].dist << ") ";
        }
        cout << endl;
    }
    return 0;
}

```

