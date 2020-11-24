c++包含c语言的特性

c++：支持过程（c语言）

​	支持对象（类与对象）

​	函数式编程（Lambda）

​	泛型编程（模板）



# STL

## vector 

pop_back() : 可以删除最后一个元素.

---- 向量容器vector的成员函数pop_back()可以删除最后一个元素.

---- 而函数erase()可以删除由一个iterator指出的元素，也可以删除一个指定范围的元素。

---- 还可以采用通用算法remove()来删除vector容器中的元素.

---- 不同的是：采用remove一般情况下不会改变容器的大小，而pop_back()与erase()等成员函数会改变容器的大小。 

## queue :

<queue>

queue<data_type> q;

q.frontf() 查看队首元素

q.empty()队列判空

q.push()

q.pop()

q.size()

## stack

<stack>

stack<data_type> a;

s.top();

s.empty();

s.push()

s.pop()

s.size()

## string

<string>

string s1, s2;

s1 == s2;

s1 < s2;

s1 > s2;

s1 += s2;连接

s1.length()长度

## hash_map类:字符串(非标准)

<hash_map> /<ext/hash_map>O(1)

hash_map<key_type, value_type, hash_func> h;

h.find(key)判断某个key 值是否在hash_map中

h(key) = value 将value储存在key位上

h(key)访问key对应的value;

h.begin()哈希表的起始位置

h.end()哈希表的终止位置



## unordered_map:哈希表

<unordered_map>

unordered_map<key_type, value_type, hash_func> h;

h.find(key)判断某个key 值是否在hash_map中

h(key) = value 将value储存在key位上

h(key)访问key对应的value;

h.begin()哈希表的起始位置

h.end()哈希表的终止位置

##  set

set会自动去重，　自动从小到大排序

set<int> s;

set.insert()

cout << *s.begin() << endl;

s.erasse();

begin()     　　 ,返回set容器第一个元素的迭代器

end() 　　　　 ,返回一个指向当前set末尾元素的下一位置的迭代器.

clear()   　　     ,删除set容器中的所有的元素

empty() 　　　,判断set容器是否为空

max_size() 　 ,返回set容器可能包含的元素最大个数

size() 　　　　 ,返回当前set容器中的元素个数

rbegin()　　　　 ,返回的值和end()相同

rend()　　　　 ,返回的值和begin()相同



## map

map<,>自动去重

按下标自动从小到大排序．

```c++
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>
#include <vector>
#include <map>
#include <cmath>
#include <queue>
#include <set>
using namespace std;

int main() {
    string name;
    int n, age;
    set<int> s;
    s.insert(3);
    s.insert(5);
    s.insert(2);
    s.insert(3);
    cout << *s.begin() << endl;
    s.erase(s.begin());
    for (auto iter = s.begin(); iter != s.end(); iter++) {
        cout << *iter << " ";
    }
    cout << endl;
    map<int, string> arr;
    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> age >> name;
        arr[age] = name;
    }
    for (auto iter = arr.begin(); iter != arr.end(); iter++) {
        cout << iter->second << endl; 
    }
    return 0;
}
```

## fill

```c++
void fill( ForwardIt first, ForwardIt last, const T& value );
```

```c++
template< class ForwardIt, class T >
void fill(ForwardIt first, ForwardIt last, const T& value)
{
    for (; first != last; ++first) {
        *first = value;
    }
}
```



## emplace_back

void emplace_back( Args&&... args );

第一个参数代表字符长度

```c++

```





# 函数

头文件: <algorithm>

使用方法：nth_element(start, start+n, end)

使第n大元素处于第n位置（从0开始,其位置是下标为n的元素），并且比这个元素小的元素都排在这个元素之前，比这个元素大的元素都排在这个元素之后，但不能保证他们是有序的。

## find

| size_type find( const basic_string& str, size_type pos = 0 ) const; | (until C++11) |
| ------------------------------------------------------------ | ------------- |
| 查找等于的第一个子字符串`str`。                              |               |

 找到的子字符串或[npos](https://en.cppreference.com/w/cpp/string/basic_string/npos)的第一个字符的位置（如果未找到这样的子字符串）。

```c++
#include <string>
#include <iostream>
 
void print(std::string::size_type n, std::string const &s)
{
    if (n == std::string::npos) {
        std::cout << "not found\n";
    } else {
        std::cout << "found: " << s.substr(n) << '\n';
    }
}
 
int main()
{
    std::string::size_type n;
    std::string const s = "This is a string";
 
    // search from beginning of string
    n = s.find("is");
    print(n, s);
 
    // search from position 5
    n = s.find("is", 5);
    print(n, s);
 
    // find a single character
    n = s.find('a');
    print(n, s);
 
    // find a single character
    n = s.find('q');
    print(n, s);
}
```

 

## rfind

size_type rfind( const basic_string& str, size_type pos = npos ) const;

1）查找等于的最后一个子字符串`str`

找到的子字符串或[npos](https://en.cppreference.com/w/cpp/string/basic_string/npos)的第一个字符的位置（如果未找到这样的子字符串）。请注意，这是从字符串开头而不是结尾的偏移量。

如果搜索一个空字符串（海峡 大小（）， 计数， 要么 特性::长度（ s ）为零）返回`pos`（立即找到空字符串），除非pos >大小（） （包括 pos == npos），则返回 大小（）。

否则，如果[size（）](https://en.cppreference.com/w/cpp/string/basic_string/size)为零，则始终返回[npos](https://en.cppreference.com/w/cpp/string/basic_string/npos)。

```c++
#include <string>
#include <iostream>
 
void print(std::string::size_type n, std::string const &s)
{
    if (n == std::string::npos) {
        std::cout << "not found\n";
    } else {
        std::cout << "found: \"" << s.substr(n) << "\" at " << n << '\n';
    }
}
 
int main()
{
    std::string::size_type n;
    std::string const s = "This is a string";
 
    // search backwards from end of string
    n = s.rfind("is");
    print(n, s);
    // search backwards from position 4
    n = s.rfind("is", 4);
    print(n, s);
    // find a single character
    n = s.rfind('s');
    print(n, s);
    // find a single character
    n = s.rfind('q');
    print(n, s);
}
```

```c++
found: "is a string" at 5
found: "is is a string" at 2
found: "string" at 10
not found
```

## rbegin, rend()

# 返回值优化

根据编辑器，拷贝次数不同

```c++
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>
#include <vector>
#include <map>
#include <cmath>
#include <queue>
using namespace std;

class A {
public :
    A() {
        cout << this << endl;
        cout << "constructor" << endl;
    }
    A(const A &obj) {
        cout << "copy constructor" << endl;
    }
};

A func() {
    A temp;
    return temp;
}

int main() {
    A a(func());
    cout << &a << endl;
    return 0;
}
```



# 类

## 1.访问权限

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
using namespace std;
 
struct A {//相当与class加public
    int x ,y ;
    int echo() {
        cout << "hello world" << endl;
        return 0;
    }
};

class B {
public:
    int set_xy(int x , int y) {
        this->x = x, this->y = y;//this 指向对象
    }
    int echo() {
        cout << "hello world" << endl;
        cout << x << " " << y << endl;
        return 0;
    }
private : 
    int x, y;
};

int main() {
    A a;
    B b;
    a.x = 3, a.y = 2;//public
 //   b.x = 3, b.y = 2;
    cout << a.x << " " << a.y << endl;
    b.set_xy(2, 3);
    b.echo();//类外是无法访问私有成员的
    return 0;
}

```



## 2.构造函数与析构函数

构造函数：

​	函数名与类名完全相同

​	不能定义返回值类型,也不能有return 语句

​	可以有形参，　也可以没有形参，　可以带有默认参数, 当有参够着函数存在时默认构造函数，即无参构造函数会消失；

​	可以重载

参数是空的和参数设为默认值都叫**默认构造函数**

同一个类中，　不能出现两个默认构造函数

　如果参数没有初始值，　则以默认方式初始化

基本类型的数据默认初始化的值是不确定的（类似与我们在主函数中声明一个类却不赋初始值的情况）；





析构函数(destructor) 与构造函数相反，当对象结束其[生命周期](https://baike.baidu.com/item/%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F)，如对象所在的[函数](https://baike.baidu.com/item/%E5%87%BD%E6%95%B0/301912)已[调用](https://baike.baidu.com/item/%E8%B0%83%E7%94%A8/3351318)完毕时，系统自动执行析构函数。析构函数往往用来做“清理善后” 的工作（例如在建立对象时用new开辟了一片内存空间，delete会自动调用析构函数后释放[内存](https://baike.baidu.com/item/%E5%86%85%E5%AD%98/103614), 其他的不用析构函数）。需要析构函数的类也需要拷贝构造函数和拷贝赋值函数.析构函数被删除后不能定义局部变量.如果一个类有删除或不可访问的析构函数, 那么其默认和拷贝构造函数会被定义为删除的.如果一个类有const或引用成员是则不能使用合成的拷贝赋值操作.

与[构造函数](https://baike.baidu.com/item/%E6%9E%84%E9%80%A0%E5%87%BD%E6%95%B0)相反，当对象结束其[生命周期](https://baike.baidu.com/item/%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F)，如对象所在的函数已调用完毕时，系统会自动执行析构函数。以C++语言为例：析构函数名也应与类名相同，只是在函数名前面加一个位取反符~，例如~stud( )，以区别于[构造函数](https://baike.baidu.com/item/%E6%9E%84%E9%80%A0%E5%87%BD%E6%95%B0)。它不能带任何参数，也没有返回值（包括void类型）。只能有一个析构函数，不能[重载](https://baike.baidu.com/item/%E9%87%8D%E8%BD%BD)。如果用户没有编写析构函数，[编译系统](https://baike.baidu.com/item/%E7%BC%96%E8%AF%91%E7%B3%BB%E7%BB%9F)会自动生成一个缺省的析构函数（即使自定义了析构函数，[编译器](https://baike.baidu.com/item/%E7%BC%96%E8%AF%91%E5%99%A8)也总是会为我们合成一个析构函数，并且如果自定义了析构函数，编译器在执行时会先调用自定义的析构函数再调用合成的析构函数），它也不进行任何操作。所以许多简单的类中没有用显式的析构函数。 [1] 

当程序中没有析构函数时，系统会自动生成以下析构函数：

<类名>::~<类名>(){}，即不执行任何操作。



```c++
class Clock()
{
     public:
     	Clock();
    	//Clock(int newH = 0, int NewM = 0);
       ~<类名>();
};
<类名>::~<类名>()
{
    //函数体
}
int main () {
    Clock MyClock(1, 2, 3);
}
```

类名:: 类名(形参表), 内嵌对象1(形参表), 内前对象2(形参表)....{

}

```c++
#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Person
{
private:
    string name;
    unsigned int IDNumber;
public:
    Person ()
    {
        cout << "构造函数" << endl;
    }

    Person (string n)
    {
        name = n;
        cout << "构造函数for name" << endl;
    }

    Person (const char * n)
    {
        name = n;
        cout << "构造函数 use char *" << endl;
    }

    // 如果不想隐式调用单参数构造函数
    // explicit对于单参数构造函数 必须显示调用
    explicit Person (unsigned int idn)
    {
        IDNumber = idn;
        cout << "构造函数 for IDNumber" << endl;
    }

    Person (string n, unsigned int idn)
    {
        name = n;
        IDNumber = idn;
        cout << "构造函数 for name&IDNumber" << endl;
    }
};

struct SomeBody
{
private:
    const string name;
    const unsigned int IDNumber;
public:
    // 如果类当中存在const的成员变量 
    // 需要使用初始化成员列表方式
    SomeBody(string n, unsigned int idn):name(n),IDNumber(idn)
    {
        // name = n;
        // IDNumber = idn;
    }
};

/*
    对象构造
    生成对象所需要调用的方法——》构造函数
    系统自动合成了默认构造函数
*/

int main()
{
    Person p; //类似于变量的栈区隐式调用构造
    // Person p1();// 这种方式会将p1当成一种函数调用
    Person p2 = Person();

    Person *p3 = new Person;
    Person *p4 = new Person();

    Person p5 = Person(1002); // 调用对应的构造函数进行对象构造
    // Person p6 = Person("张三");
    Person p6 = string("张三");
    Person p7{"李四", 1003};

    Person p8 = "赵柳";

    string str = "王五";// 这句话为什么不报错？
    /*
        C++11就地初始化的限制条件
        （1）需要初始化的数据为公有性访问
        （2）不要显式定义默认的构造函数
        TIPS：上述两点在于保证其就地初始化的“数据性”
        （3）定义与其匹配的构造函数
    */
    SomeBody sb{"张三", 1001};



    return 0;
}
```



```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include <cstdlib>
#include <vector>
#include <cmath>
#include <map>

#include<queue>
using namespace std;
 
struct A {
    A() : next(nullptr){
        cout << this << " default constructor" << endl;
    } 
    A(A *obj) {
        this->next = obj;
        this->next->arr = new int[1000];
    }
    A(int n) : next(nullptr){
        cout << this << " an int constructor" << endl;
        x = n, y = n;
    }
    void output() {
        cout << this->x  << " " << this->y << endl;
    }
    void operator=(int n){
        cout << this << "operator =" << endl;
        x = n, y = n;
    }
    A(const A &obj) : next(nullptr){
        cout << this << " copy constructor" << endl;
        this->x = obj.x , this->y = obj.y;
    }

    int x, y;
    int *arr;
    A *next;
    ~A() {
        if (this->next) {
            delete this->next->arr;
        }
        cout << this << " destructor" << endl;
    }
};


int func(int &x) {
    x += 5;
}

A aa;
A bb(&aa);
A cc(&bb);

int main() {
    int n = 7;
    func(n);
    cout << n << endl;
    cout << "pre position" << endl;
    A a;
   // A b(6);
    A c(a);
    
    A b = 8;//匹配构造函数
    cout << "a = " << &a << endl;
    cout << "b =" << &b << endl;
    cout << "c =" << &c << endl;
    cout << "aa = " << &aa << endl;
    cout << "bb = " << &bb << endl;
    cout << "cc = " << &cc << endl;
    b.output();
    b = 6;
    b.output();
    cout << "next position" << endl;
    return 0;
}

```



## ３．类的拷贝

```
class 类名｛
public :
	类名(const 类名＆对象名){
        
	}
｝；
```

```
class Point {
public:
	Point (point & p);
private:
	int x, y;
};
Point::Point(Point &p) {
    x = p.x;
    y = p.y;
}


Circle::Circle(circle & cl):center(c1.center) {
    radius = cl:radius;
}
```

调用复制构造函数

```
Point a(1, 2);
Point b(a);
Point c = b;
f(a);
return a;
```

调用拷贝值更改原值？

是浅拷贝（不须创建对象，　只做指针的引用）

不更改是深拷贝

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;
 
class A {
public :
    A() {
        this->arr = new int[100];
    }
    A(const A &obj) : x(obj.x), y(obj.y) {
        this->arr = new int[100];
        memcpy(this->arr, obj.arr, sizeof(int) * 100);
    }
    int  *arr;
    int x, y;
};

int main() {
    A a;
    a.x = 3 , a.y = 6;
    a.arr[0] = 123;
    A b = a;
    b.arr[0] = 456;

    cout << a.arr[0] << " " << b.arr[0] << endl;
    cout << b.x << " " << b.y << endl;
    b.x = 6;
    cout << a.x << " " << b.y << endl;
    cout << b.x << " " << b.y << endl;
    return 0;
}

```

```c++
#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
using namespace std;

/*
    修改拷贝值是否会更改原值
    是：浅
    否：深

    业务逻辑层，根据需要，如果是拷贝构造，会定义成深拷贝

    浅拷贝，不要创建对象，只做指针的引用
*/
class Address
{
public:
    string city;
};

class PersonInfo
{
    
public:
    Address *myAddress;
    PersonInfo() {
        myAddress = new Address;
    };
    // 这是？深拷贝
    PersonInfo(const PersonInfo &info)
    {
        myAddress->city = info.myAddress->city;
    }

    ~PersonInfo()
    {
        delete myAddress;
    }
};

int main()
{
    // 此时发生的是深拷贝还是浅拷贝  深拷贝
    int n = 10;
    int m = n;

    // 那现在呢 浅拷贝
    int &k = n;
    int *p = &n;
    *p = 100;

    cout << k << endl;
    // 对于指针来说，这是一种浅拷贝
    int *pp = p;

    *pp = 666;

    cout <<  k << endl;

    // 这里就是深拷贝的策略
    int *ppp = (int *)malloc(4);
    *ppp = *p;
    *ppp = 888;

    cout <<  k << endl;

    // 这里是深拷贝
    vector<int> coll;
    coll.push_back(k);

    PersonInfo p1;
    p1.myAddress->city = "杭州";
    PersonInfo p2 = p1;

    p2.myAddress->city = "株洲";

    cout << p1.myAddress->city << endl;

    return 0;
}
```



## 4.初始化列表与析构函数

构造函数(参数列表):成员变量(常亮或者参数) {

}

```

clock::clock(int newS, int newM, int newH) {
    second = newS;
    minute = newM;
    hour = newH;
}



click(){}
clock(int newA, int nreM, int newH):minute(newM),second(newS), hour(newH) {}
```

## 5. 类型装换构造函数

```c++
/*************************************************************************
	> File Name: 16.transfer_constructor.cpp
	> Author: zhouyuan
	> Mail: 3294207721@qq.com 
	> Created Time: 2020年11月19日 星期四 10时15分16秒
 ************************************************************************/

#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;


class BigInt {
public:
    BigInt() {}
    BigInt (int x) {
        num.push_back(x);
        process_dight();
    }
    friend ostream &operator<<(ostream &, const BigInt &);
private:
    vector<int> num;
    void process_dight() {
        for (int i = 0; i < num.size(); i++) {
            if (num[i] < 10) continue;
            if (i + 1 == num.size()) num.push_back(0);
            num[i + 1] = num[i] / 10;
            num[i] %= 10;
        }
    }
};

ostream &operator<< (ostream &out, const BigInt &a) {
    for (int i = a.num.size() - 1; i >= 0; i--) {
        out << a.num[i];
    }
    return out;
}

void func(BigInt a) {
    cout << "func :" << a << endl;  
}

int main() {
    BigInt a;
    a = 1234;
    cout << a << endl;
    func(5670);
    return 0;
}

```

## default 和delete

```c++
/*************************************************************************
	> File Name: default_delete.cpp
	> Author: zhouyuan
	> Mail: 3294207721@qq.com 
	> Created Time: 2020年11月19日 星期四 10时33分27秒
 ************************************************************************/

#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;



class A{
public:
    A() = default;//告诉编译器要使用编译器的构造行为
    A(const A &) = delete;//禁止A对象的拷贝行为
    void say() { cout << "hello world" << endl; };
};


int main() {
    A a;
    A b = a;//报错
 
    return 0;
}

```

delete释放new分配的单个对象指针指向的内存

delete[]释放 new分配的对象数组指针指向的内存

```c++
int *a = new int[10];
delete a;
delete [] a;
```

## NULL与nullptr

NULL(int 类型)

nullptr是字符类型

## new

new完一定要delete

## 类属性与类方法(static 和　const)

static:

​	类属性是这个类的固定属性,不随对象改变而改变, 是全局变量

​	static 修饰的是类成员函数和成员变量——封装性对其仍有作用
	所有的对象拿到的都是同一份类成员变量
 	 类成员函数可以使用普通对象调用，也可以使用类调用

const:

​	const 类型的对象只能调用const类型的方法，　因为非const 属性的成员方法的内部可能会改变成员方法，　造成逻辑冲突．非const对象即能调用非const也能调用.

​	const成员变量初始化必须使用初始化列表

​	const成员函数里不可修改成员变量的值

​	 如果成员变量定义前加了mutable，表示成员可以在const成员函数里修改

​	在部分场景下，需要定义const版本和非const两个版本的函数



```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;
 
class A {
public:
    A (int x) {
        cout << "class A constructor" << endl;
    }
};

class Point {
public:
    Point();
    Point(int x, int y);
    ~Point();
    int x() const;
    int y() const;
    int x_cnt() const;
    void set_x(int x);
    void set_y(int y);
    static int output_cnt();
private:
    static int point_cnt;
    int __x, __y;
    mutable int __x_cnt;
    A __a;

};


int Point::point_cnt = 0;

int Point::output_cnt() {
    return Point::point_cnt;
}

Point::Point(): __x_cnt(0), __a(2) {
    Point::point_cnt += 1;
}
Point::~Point() {
    Point::point_cnt -= 1;
}
Point::Point(int x, int y) : __x(x), __y(y), __a(4), __x_cnt(0){
    
    Point::point_cnt += 1;
}

int Point::x() const{
    this->__x_cnt += 1;
    return this->__x;
}

int Point :: y() const{
    return this->__y;
}

int Point:: x_cnt() const {
    return this->__x_cnt;
}

void Point ::set_x(int x) {
    this->__x = x;
}

void Point :: set_y(int y) {
    this->__y = y;
} 

void func() {
    Point c, d;
    cout << "func: " << Point::output_cnt() << endl;
    return ;
}

int main() {
    Point a(2, 3), b;
    const Point c(3, 4);
    cout << a.x() << " " << a.y() << endl;
    cout << c.x() << " " << c.y() << endl;

    cout << c.x() << " " << c.y() << endl;
    cout << a.x_cnt() << " " << b.x_cnt() << " " << c.x_cnt() << endl;
    cout << "before func: " << Point::output_cnt() << endl;
    func();
    cout << "after func: " << Point::output_cnt() << endl;
    return 0;
}

```

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;

class PersonInfo{
public:

    void displayInfo()
    {
        cout << address << endl;
        cout << name << endl;
        cout << "this is non const version" << endl;
    }
    void displayInfo() const {
        cout << address << endl;
        cout << name << endl;
        cout << "const" << endl;
    }
    static void displayInfo(const PersonInfo &info) {
        cout << info.address << endl;
        cout << info.name << endl;
        cout << "static " << endl;
    }
    void changeIsMale() {
        isMale = !isMale;    
    }

private:
    string address = "中国浙江";
    static string name;
    bool isMale = true;
    int number;
};

string PersonInfo::name = "lili";

void displayInfo(const PersonInfo &info) {
    info.displayInfo();
}

int main() {
    PersonInfo pi;
    cout << "first" << endl;
    pi.displayInfo();
    PersonInfo *somePs = new PersonInfo[100];
    cout << "second" << endl;
    displayInfo(somePs[10]);

   // PersonInfo::name="wu";

    cout << " thread" << endl;
    pi.displayInfo(somePs[66]);
    PersonInfo::displayInfo(somePs[77]);
    pi.changeIsMale();
    return 0;
}
```



## friend

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;

/*
    (1) 友元关系不能被继承。 
    (2) 友元关系是单向的，不具有交换性。
    若类B是类A的友元，类A不一定是类B的友元，
    要看在类中是否有相应的声明。
    (3) 友元关系不具有传递性。若类B是类A的友元，
    类C是B的友元，类C不一定是类A的友元，
    同样要看类中是否有相应的申明
*/

/*
    正常对于某个私有成员，设置set/get方法
*/

class SomeBody
{
    string name;
public:
    void setName(string name)
    {
        this->name = name;
    }

    string getName()
    {
        return this->name;
    }

    // 友元的作用，使外部也可以访问私有成员
    // 声明友元函数
    friend void showMe(SomeBody &);

    // 声明为友元类 友元类里的 \
    所有成员函数都可以访问被友元的类的私有变量
    friend class Friend;
};

void showMe(SomeBody &sb)
{
    cout << sb.name << endl;
}

class Friend {
public:
    void showMyFriend(SomeBody &sb)
    {
        cout << sb.name << endl;
    }
};

int main()
{
    SomeBody sb;
    sb.setName("傻傻的小可爱");

    // sb.name = "";

    cout << sb.getName() << endl;

    showMe(sb);

    Friend().showMyFriend(sb);

    return 0;
}

```



# 继承

## 继承的权限

```
class Animal {
public:
private:
}
class Cat: public Animal{//public是继承权限
    
};
```

不能访问父类的私有属性

继承权限public, protected, private都无法访问私有权限, 只能访问public和protected权限.

protected:不让外界访问,而让子类访问.

private:谁都不能访问.

## 继承的构造

父先构造, 子在构造

子先析构, 父在析构

```c++
class Animal{
public:
	Animal(string name):__name(name){}
	string name() {
        return this->name;
	}
	string color;
protected:
	string __name;
};


Class Cat:public Animal{
public:
	Cat():Animal("temp at"){
        
	}
	Cat(string name):Animal(name){
        
	}
	void set_name(string n){
        this->__name = n;
	}
};
```

## 虚继承

在多重继承中，如果发生了如：类B继承类A，类C继承类A，类D同时继承了类B和类C。最终在类D中就有了两份类A的成员，这在程序中是不能容忍的。当然解决这个问题的方法就是利用虚继承。

 在派生时将关键字virtual加在相应相应继承方式前，就可防止在D类中同时出现两份A类成员。

在实例化D时我们给a传入一个1，那么在虚基类中的t为何值呢？（注意我们在第14，25行给虚基类的构造函数传值时都进行了“+”操作。）

而答案是肯定的必然为1，因为在实例化D的时候，只会调用一次虚基类的构造函数，使得虚基类接收到参数也只可能是从实例化D时传过来的参数。

```c++
class A{
public:
    int t;
    A(int a)
    {
        t = a;
    }
    void fun();
};

class B:virtual public A
{
public:
    B(int a, int b) :A(a+10)
    {
        t1 = b;
    }
    ~B();
    int t1;
};

class C :virtual public A
{
public:
    C(int a,int c):A(a+20)
    {
        t2 = c;
    }
    ~C();
    int t2;
};

class D :public B,public C
{
public:
    D(int a,int b,int c,int d) :B(a,b),C(a,c),A(a){}//在此必须要给虚基类传参
    ~D();
};


int mian()
{
    D temp(1,2,3,4);
    return 0;
}
```

## final 

类被final修饰，不能被继承

1. ```c++
   class A1 final { };
   class B1 : A1 { };
   ```

   虚函数被final修饰，不能被override

   ```c++
   class A1 {
   	virtual void func() final {} 
   };
    
   class B1 : A1 {
   	virtual void func() {} //“A1::func”: 声明为“final”的函数无法被“B1::func”重写
   };
   ```

   被override修饰后如果父类无对应的虚函数则报错，无法override,这个有什么作用呢，假如你想虚继承基类的函数，但是继承的时候写错了，参数类型不对或个数不对，但是编译没问题，运行时候却和你设计的不一样不被调用，override就是编译器辅助你检查是否继承了想要虚继承的函数

    ```c++
   struct A1
   {
   	virtual void func(int) {}
   };
    
   struct B1 : A1
   {
   	virtual void func(int) override {} // OK
   	virtual void func(double) override {} // “B1::func”: 包含重写说明符“override”的方法没有重写任何基类方法
   };
    ```

   

## 基类与派生类

构造:先基后派

## succeed.cpp

```c++
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>
#include <vector>
#include <map>
#include <cmath>
#include <queue>
using namespace std;

#define P_ADD(obj, a) cout << #obj "." #a " = " << &(obj.a)

class Animal {
public:
    Animal(string name) : __name(name) {
        cout << "Animal constructor " << this << endl;
    }
    string name() { return this->__name; }

    int x, y;
    string __name;
    ~Animal() {
        cout << "Animal destructor " << this << endl;
    }
};

class Cat : public Animal {
public :
    Cat() : Animal("hello kitty") {
        arr = new int[100];
        cout << "Cat constructor " << this << endl;
    }
    void say() {
        cout << "my name is " << this->name() << endl;
    }
    int z;
    int *arr;
    ~Cat() {
        delete[] arr;
        cout << "Cat destructor " << this << endl;
    }
};

ostream &operator<<(ostream &out, const Animal &a) {
    out << "<class Animal> " << &a << endl;
    P_ADD(a, x) << endl;
    P_ADD(a, y) << endl;
    P_ADD(a, __name) << endl;
    return out;
}

ostream &operator<<(ostream &out, const Cat &a) {
    out << "<class Cat> " << &a << endl;
    P_ADD(a, x) << endl;
    P_ADD(a, y) << endl;
    P_ADD(a, __name) << endl;
    P_ADD(a, z) << endl;
    return out;
}

int main() {
    Animal a("any");
    Cat c;
    c.say();
    cout << sizeof(a) << " " << sizeof(c) << endl;
    cout << c << endl;
    Animal *p = new Cat();
    cout << "Animal * : " << p->name() << endl;
    delete p;
    
    Animal &q = c;
    cout << q << endl;
    
    return 0;
}
```

# 重载

部分运算符重载
可重载运算符
	双目算术运算符	+ (加)，-(减)，*(乘)，/(除)，% (取模)
	关系运算符	==(等于)，!= (不等于)，< (小于)，> (大于>，<=(小于等于)，>=(大于等于)
	逻辑运算符	||(逻辑或)，&&(逻辑与)，!(逻辑非)
	单目运算符	+ (正)，-(负)，*(指针)，&(取地址)
	自增自减运算符	++(自增)，--(自减)
	位运算符	| (按位或)，& (按位与)，~(按位取反)，^(按位异或),，<< (左移)，>>(右移)
	赋值运算符	=, +=, -=, *=, /= , % = , &=, |=, ^=, <<=, >>=
	空间申请与释放	new, delete, new[ ] , delete[]
	其他运算符	()(函数调用)，->(成员访问)，,(逗号)，[] ( 下标 )
	

不可重载运算符
	.：成员访问运算符

​	.*, ->*：成员指针访问运算符
	::：域运算符
	sizeof：长度运算符
	?:：条件运算符
	#： 预处理符号
	
    重载规则
    	（1）不可臆造运算符；
（2）运算符原有操作数的个数、优先级和结合性不能改变；
（3）操作数中至少一个是自定义类型；
（4）保持重载运算符的自然含义。
		（1）当重载为成员函数时，会隐含一个this指针；当重载为友元函数时，不存在隐含的this指针，需要在参数列表中显示地添加操作数。
（2）当重载为成员函数时，只允许右参数的隐式转换；当重载为友元函数时，能够接受左参数和右参数的隐式转换。
		一般规则为：单目成员，双目友元
		=、()、[]、以及 ->操作符只能被类的成员函数重载
		<< >>定义为友元
*/


/*
三（拷贝构造，拷贝赋值运算符，析构函数）五法则
	需要析构函数的类也需要拷贝构造函数和拷贝赋值函数。
	需要拷贝操作的类也需要赋值操作，反之亦然。
	析构函数不能是删除的
	如果一个类成员有删除的或不可访问的析构函数，那么其默认和拷贝构造函数会被定义为删除的。
	如果一个类有const或引用成员，则不能使用合成的拷贝赋值操作。（无法默认构造的const成员的类 则该类就无默认构造函数）
*/

```c++
#include<iostream>
using namespace std;

class Point{
public:
    Point() {}
    Point(int x, int y): x(x), y(y){}
    Point (const Point &obj) : x(obj.x), y(obj.y) {
        cout << "copy constructor" << endl;
    }
    int operator()(int num) {
        return this->x +this->y + num;
    }
    int operator[](string str) {
        if (str == "x") return this->x;
        if (str == "y") return this->y;
        return 0;
    }
    Point operator-(const Point &a) {
        Point ret;
        ret.x = this->x - a.x;
        ret.y = this->y - a.y;
        return ret;
    }
    friend Point operator+(const Point &, const Point &);
    friend ostream &operator<<(ostream &, const Point &);
private:
    int  x, y;
};

Point operator+(const Point &a, const Point &b) {
    Point ret;
    ret.x = a.x + b.y;
    ret.y = a.y + b.y;
    return ret;
}

ostream &operator<<(ostream &out , const Point &a ) {
    out << "<class Point> (" << a.x << ", " << a.y << ")";
}



int main () {
    Point a(2, 4), b(5, 3);
    Point c = a + b;
    Point d = a + b + c;
    Point e = d -b;
    cout << a << endl;
    cout << b << endl;
    cout << c << endl;
    cout << d << endl;
    cout << e << endl;
    cout << a(5) << endl;
    cout << a["x"] << " " << a["y"] << endl;
    Point g;
    
    return 0;
}

```

```c++
#include<iostream>
#include<cstring>
#include<algorithm>
#include<cstdio>
#include<queue>
#include<vector>
using namespace std;
 
class Person {
public:
    string name;
    Person operator+(const Person &p1) {
        Person a;
        cout << p1.name << " and " << this->name << " marrayed" << endl;
        return a;
    }
    Person marriedWith(const Person &p1) {
        Person b;
        cout << p1.name << " have marray  " << this->name << endl;
        return b;
    }
    //自增运算符会有两个版本
    //后置＋＋当中的int 是一个哑元保证重载实现

    Person &operator++(){
        cout << this->name << endl;
    }
    Person &operator++(int obj){
        cout << "cc" << endl;
    }
};


int main() {
    Person man;
    man.name = "man ll";
    Person woman;
    woman.name = "woman kk";
    Person newPerson = man + woman;
    newPerson.name = "child1 yy";
    newPerson + woman;
    Person newPerson2 = man.marriedWith(woman);
    newPerson2.name = "chile2 jj";
    man + woman + man;
    Person xiaoming;
    xiaoming.name = "xiaoming";
    xiaoming.operator++();
    ++xiaoming;
    xiaoming++;
    xiaoming.operator++(1);
    return 0;
}

```



## static 和const

```c++
#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
using namespace std;

/*
    static 修饰的是类成员函数和成员变量——封装性对其仍有作用
    所有的对象拿到的都是同一份类成员变量
    类成员函数可以使用普通对象调用，也可以使用类调用
*/

/*
    const 对象只能调用const函数
    非const对象即能调用非const也能调用const

    const成员变量初始化必须使用初始化列表
    const成员函数里不可修改成员变量的值
    如果成员变量定义前加了mutable，表示成员可以在const成员函数里修改

    在部分场景下，需要定义const版本和非const两个版本的函数
*/

/*
部分运算符重载
	可重载运算符
		双目算术运算符	+ (加)，-(减)，*(乘)，/(除)，% (取模)
关系运算符	==(等于)，!= (不等于)，< (小于)，> (大于>，<=(小于等于)，>=(大于等于)
逻辑运算符	||(逻辑或)，&&(逻辑与)，!(逻辑非)
单目运算符	+ (正)，-(负)，*(指针)，&(取地址)
自增自减运算符	++(自增)，--(自减)
位运算符	| (按位或)，& (按位与)，~(按位取反)，^(按位异或),，<< (左移)，>>(右移)
赋值运算符	=, +=, -=, *=, /= , % = , &=, |=, ^=, <<=, >>=
空间申请与释放	new, delete, new[ ] , delete[]
其他运算符	()(函数调用)，->(成员访问)，,(逗号)，[](下标)
	
    不可重载运算符
		.：成员访问运算符
.*, ->*：成员指针访问运算符
::：域运算符
sizeof：长度运算符
?:：条件运算符
#： 预处理符号
	
    重载规则
		（1）不可臆造运算符；
（2）运算符原有操作数的个数、优先级和结合性不能改变；
（3）操作数中至少一个是自定义类型；
（4）保持重载运算符的自然含义。
		（1）当重载为成员函数时，会隐含一个this指针；当重载为友元函数时，不存在隐含的this指针，需要在参数列表中显示地添加操作数。
（2）当重载为成员函数时，只允许右参数的隐式转换；当重载为友元函数时，能够接受左参数和右参数的隐式转换。
		一般规则为：单目成员，双目友元
		=、()、[]、以及 ->操作符只能被类的成员函数重载
		<< >>定义为友元
*/


/*
三（拷贝构造，拷贝赋值运算符，析构函数）五法则
	需要析构函数的类也需要拷贝构造函数和拷贝赋值函数。
	需要拷贝操作的类也需要赋值操作，反之亦然。
	析构函数不能是删除的
	如果一个类成员有删除的或不可访问的析构函数，那么其默认和拷贝构造函数会被定义为删除的。
	如果一个类有const或引用成员，则不能使用合成的拷贝赋值操作。（无法默认构造的const成员的类 则该类就无默认构造函数）
*/

class PersonInfo
{
    string address = "中国浙江省杭州市余杭区";
    // 这个数据类成员的一部分
    static string name;
    bool isMale = true;

    mutable int number;
public:
    void displayInfo() const
    {
        cout << address << endl;
        cout << name << endl;

        // address = "中国上海市虹桥区虹桥机场";
        // number = 10001;
    }

    void displayInfo()
    {
        cout << address << endl;
        cout << name << endl;
        cout << "this is non const version" << endl;

        // address = "中国上海市虹桥区虹桥机场";
        // number = 10001;
    }

    static void displayInfo(const PersonInfo &info)
    {
        cout << info.address << endl;
        cout << info.name << endl;
    }

    void changeIsMale()
    {
        isMale = !isMale;
    }
};

string PersonInfo::name = "李四";

void displayInfo(const PersonInfo &info)
{
    info.displayInfo();
}

int main()
{
    PersonInfo pi;
    PersonInfo *somePs = new PersonInfo[100]; 
    pi.displayInfo();

    displayInfo(somePs[10]);

    // PersonInfo::name = "王五";

    pi.displayInfo(somePs[66]);

    PersonInfo::displayInfo(somePs[77]);

    pi.changeIsMale();
    return 0;
}
```



# 多态

virtual定义虚函数，　virtual关键字的方法是跟着对象；

非virtual关键字跟着类

限制是不能用来修饰类方法static

纯虚函数是父类没有实现子类实现的函数

## 类与结构体

struct 的成员和基类默认都是public 的访问权限，　而class是private.



# const :

常量指针是指针指向的内容是常亮:

const int *n;

```c++
int a = 5;
const int *n =&a;
a = 6;
```



int const *n; 

```c++
int a = 5;
int b = 6;
const int *n = &a;
n = &b;
```



指针常量: 指针本身是个常量

```
int *const n = address;
```

```c++
int a = 5;
int *const n = &a;
*n = 8;
```

const 在*的左面, 则为常量指针.

在* 的右面, 则为指针常量





# makefile:

目标文件: 依赖文件1 依赖文件2...

编辑命令

```c++
Point.o Point.cpp Point.h
g++ -c Point.cpp
```

```c++
CC = g++
CFLAGS = -g -Wall -std=c++11
all:Point.o main
	./main
Point.o :Point.cpp Point.h
	$(CC) $(CFLAGS)-c Point.cpp
main: Point.o mian.cpp
	$(CC) $(CFLAGS)-o main point.o main.cpp
clean:
	rm -f *.o *~ main
```

clean:

​	rm -f *.o  *~  main

-g:

​	增加调试信息

-Wall :

​	打开大部分警告信息

-std=c++11



#  3.vector

## 求和

```c++
vector<int> a = {1, 2, 3, 4, 5};
int sum = 0;
for(auto x : a) {
    sum += x;
}
```



## find_first_of



使用find_first_of函数需要#include<algorithm>.而且对于数组确定的数组, find_first_of, begin, end也可以作用在数组上, 此时返回的it 是int *类型的, 指向数组a中的数字.如果不存在的话, 会指向end(a), 也就是a最后一个元素的下一个

```c++
int main() {
    vector<int> a = {1, 2, 3, 4, 5};
    vector<int> b = {3, 4, 5, 6, 7};
    auto it = find_first_of(begin(a), end(a), begin(b), end(b));
    bool found = (it != end(a));
    cout << found << endl;
 
    return 0;

```



## sort 

```c++
#include<iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main() {
    vector<int> a = {2, 4, 5, 3, 1};
    sort (
        begin(a), 
        end(a), 
        [](int x, int y){ return x >= y; }
        );
    for (auto i : a) {
        cout << i << endl;
    }
    return 0;
}

```



# string

## 字符串的输出

```c++
string s = "Hellow world";
printf("%s\n", s.c_str());
printf("%s\n", s.data());
```



```c++
int main () {
    string s = "abcdef";
    string d(begin(s) + 2, begin(s) + 5);
    cout << "s = " << s << endl;
    cout << "d = " << d << endl;//cde
    return 0;
}

```

```
char str[5] = {'t', 'a', 'a', 'd', '\0};
char str[5] = "taad";
char str[]=taad";
```



## replace 

```c++
#include<iostream>
#include <string>
#include <vector>
using namespace std;

int main () {
    string a = "abcdefg";
    a.replace (begin(a) + 2, begin(a) + 5, "XYZW");
    string b = "abcdefg";
    b.replace(begin(b) + 2, begin(b) + 5, "UV");
    cout << a <<  " " << b << endl; 

    return 0;
}

```

## sort()

```c++
#include <iostream>

#include <algorithm>

#include <vector>

#include <string>

using std::cin;

using std::cout;

using std::endl;

using std::vector;

using std::sort;

using std::string;

 

class People {

public :

    string name;

    int score;

};

 

int main() {

    vector<People> arr;

    People temp;

    while (cin >> temp.name) {

        cin >> temp.score;

        arr.push_back(temp);

    }

    sort(

         arr.begin(),

         arr.end(),

         [](const People &a, const People &b) {

             if (a.score < b.score) return true;

             if (a.score == b.score && a.name < b.name) return true;

             return false;

         }

         );

    auto iter = arr.begin();

    for (; iter != arr.end(); ++iter) {

        cout << iter->name << " " << iter->score << endl;

    }

    cout << arr.size() << endl;

    return 0;

}
```



## find

```c++
#include<iostream>
using namespace std;

int main () {
    string s = "abcdefg";
    auto x = s.find("cde");//x = 2
    auto y = s.find("CDE");//y == string::npos
    cout << x << " " << y << endl;  
    return 0;
}

```

```c++
2 18446744073709551615
```



## 函数模板

```c++
template<模板参数列表>
类型名　函数名（参数表{
    
}

template <typename T>
T abs(T x) {
    return x < 0 ? -x : x;
}
```



```
template <模板参数表>
class 类名｛

｝
```

```
vector <int>
模板名　＜类型参数表＞　对象名１，对象名２；
```



























​     

```

```



# lambda表达式

语法：[捕获]　(参数)　{一些语句}．

tmplate <typename U>

int Count (vector <int>& numbres, U filter)



1. 概述
    C++ 11 中的 Lambda 表达式用于定义并创建匿名的函数对象，以简化编程工作。
    Lambda 的语法形式如下：

[函数对象参数] (操作符重载函数参数) mutable 或 exception 声明 -> 返回值类型 {函数体}
可以看到，Lambda 主要分为五个部分：[函数对象参数]、(操作符重载函数参数)、mutable 或 exception 声明、-> 返回值类型、{函数体}.

2. Lambda 语法分析
    2.1 [函数对象参数]
    标识一个 Lambda 表达式的开始，这部分必须存在，不能省略。函数对象参数是传递给编译器自动生成的函数对象类的构造
    函数的。函数对象参数只能使用那些到定义 Lambda 为止时 Lambda 所在作用范围内可见的局部变量(包括 Lambda 所在类
    的 this)。函数对象参数有以下形式：

空。没有任何函数对象参数。
=。函数体内可以使用 Lambda 所在范围内所有可见的局部变量（包括 Lambda 所在类的 this），并且是值传递方式（相
当于编译器自动为我们按值传递了所有局部变量）。
&。函数体内可以使用 Lambda 所在范围内所有可见的局部变量（包括 Lambda 所在类的 this），并且是引用传递方式
（相当于是编译器自动为我们按引用传递了所有局部变量）。
this。函数体内可以使用 Lambda 所在类中的成员变量。
a。将 a 按值进行传递。按值进行传递时，函数体内不能修改传递进来的 a 的拷贝，因为默认情况下函数是 const 的，要
修改传递进来的拷贝，可以添加 mutable 修饰符。
&a。将 a 按引用进行传递。
a，&b。将 a 按值传递，b 按引用进行传递。
=，&a，&b。除 a 和 b 按引用进行传递外，其他参数都按值进行传递。
&，a，b。除 a 和 b 按值进行传递外，其他参数都按引用进行传递。
2.2 (操作符重载函数参数)
标识重载的 () 操作符的参数，没有参数时，这部分可以省略。参数可以通过按值（如: (a, b)）和按引用 (如: (&a, &b)) 两种
方式进行传递。

2.3 mutable 或 exception 声明
这部分可以省略。按值传递函数对象参数时，加上 mutable 修饰符后，可以修改传递进来的拷贝（注意是能修改拷贝，而不是
值本身）。exception 声明用于指定函数抛出的异常，如抛出整数类型的异常，可以使用 throw(int)。

2.4 -> 返回值类型
标识函数返回值的类型，当返回值为 void，或者函数体中只有一处 return 的地方（此时编译器可以自动推断出返回值类型）
时，这部分可以省略。

2.5 {函数体}
标识函数的实现，这部分不能省略，但函数体可以为空。

3. 示例
    [] (int x, int y) { return x + y; } // 隐式返回类型
    [] (int& x) { ++x;  } // 没有 return 语句 -> Lambda 函数的返回类型是 'void'
    [] () { ++global_x;  } // 没有参数，仅访问某个全局变量
    [] { ++global_x; } // 与上一个相同，省略了 (操作符重载函数参数)
    可以像下面这样显示指定返回类型：

[] (int x, int y) -> int { int z = x + y; return z; }
在这个例子中创建了一个临时变量 z 来存储中间值。和普通函数一样，这个中间值不会保存到下次调用。什么也不返回的
Lambda 函数可以省略返回类型，而不需要使用 -> void 形式。

Lambda 函数可以引用在它之外声明的变量. 这些变量的集合叫做一个闭包. 闭包被定义在 Lambda 表达式声明中的方括
号 [] 内。这个机制允许这些变量被按值或按引用捕获。如下图的例子：


3.1 示例 1
std::vector<int> some_list;
int total = 0;
for (int i = 0; i < 5; ++i) some_list.push_back(i);
std::for_each(begin(some_list), end(some_list), [&total](int x)
{
    total += x;
});
此例计算 list 中所有元素的总和。变量 total 被存为 Lambda 函数闭包的一部分。因为它是栈变量（局部变量）total 引
用，所以可以改变它的值。

3.2 示例 2
std::vector<int> some_list;
int total = 0;
int value = 5;
std::for_each(begin(some_list), end(some_list), [&, value, this](int x)
{
    total += x * value * this->some_func();
});
此例中 total 会存为引用, value 则会存一份值拷贝。对 this 的捕获比较特殊，它只能按值捕获。this 只有当包含它的最靠近
它的函数不是静态成员函数时才能被捕获。对 protect 和 private 成员来说，这个 Lambda 函数与创建它的成员函数有相同
的访问控制。如果 this 被捕获了，不管是显式还是隐式的，那么它的类的作用域对 Lambda 函数就是可见的。访问 this 的
成员不必使用 this-> 语法，可以直接访问。

4. 总结
    不同编译器的具体实现可以有所不同，但期望的结果是: 按引用捕获的任何变量，Lambda 函数实际存储的应该是这些变量在
    创建这个 Lambda 函数的函数的栈指针，而不是 Lambda 函数本身栈变量的引用。不管怎样，因为大多数 Lambda 函数都
    很小且在局部作用中，与候选的内联函数很类似，所以按引用捕获的那些变量不需要额外的存储空间。

如果一个闭包含有局部变量的引用，在超出创建它的作用域之外的地方被使用的话，这种行为是未定义的!

Lambda 函数是一个依赖于实现的函数对象类型,这个类型的名字只有编译器知道. 如果用户想把 lambda 函数做为一个参数来
传递, 那么形参的类型必须是模板类型或者必须能创建一个 std::function 类似的对象去捕获 lambda 函数.使用 auto 关键字
可以帮助存储 lambda 函数,

auto my_lambda_func = [&](int x) { /* ... */ };
auto my_onheap_lambda_func = new auto([=](int x) { /* ... */ });
这里有一个例子, 把匿名函数存储在变量、数组或 vector 中,并把它们当做命名参数来传递


一个没有指定任何捕获的 lambda 函数,可以显式转换成一个具有相同声明形式函数指针.所以,像下面这样做是合法的:

auto a_lambda_func = [](int x) { /* ... */ };
void (*func_ptr)(int) = a_lambda_func;
func_ptr(4); // calls the lambda

# 贪吃蛇



main.cpp主程序的启动

界面部分

游戏机制部分

具体的游戏部分

game_library  	 游戏库 

platform_manager 	游戏主框架

game_interface	游戏界面相关

## platform_manager

### player.h

```c++
#ifndef _PLAYER_H
#define _PLAYER_H
#include <string>
#include <iostream>
using namespace std;
#define NONEISIT 1000//账号不存在
#define ERRORPWD 1001//账号错误
#define SEVERERROR 1002

struct ErrorMessage{
    int code;
    string errorDiscribution;
};

class Player{
private:
    string userName;
    string nickName;
    unsigned int loginAccount;
    bool isMale;
    string loginPassword;
public:
    Player()=default;
    Player(string un, string nn, unsigned int la, bool im, string lp);
    ~Player();
    ErrorMessage login();
    bool verfileAccount(unsigned int inputAccount);
};
#endif

```



### platform.h

```c++
#ifndef _PLATFORM_H
#define _PLATFORM_H

#include <string>
#include <vector>
using namespace std;

class Player;
class Interface;
//一个游戏平台, 应该包含什么样的属性
//游戏平台名称, 游戏库, 用户(账号管理)
class Platform {
public:
    Platform();
    ~Platform();
    void startUp();
private:
    //C++11提供就地初始化
    string platformName = "小开游戏平台";
    vector<string> gameNames = vector<string>{"贪吃蛇", "推箱子", "俄罗斯方块", "中国象棋", "英雄联盟"};
    //c++11 还提供了一种方式针对像容器的可以直接初始化
    //vector<string> gameNames{"贪吃蛇", "推箱子", "俄罗斯方块", "中国象棋", "英雄联盟"};
    vector<Player *> players;
    Interface *userInterface;
};


#endif

```

### player.cpp

```c++
#include "player.h"

Player::Player(string un, string nn, unsigned int la, bool im, string lp){}

Player::~Player(){}

ErrorMessage Player::login(){
    cout << "请输入登录账号:" << endl;
    unsigned int inputAccount;
    cin >> inputAccount;

    bool result = this->verfileAccount(inputAccount);
    if (result == false) {
        ErrorMessage message;
        message.code = NONEISIT;
        message.errorDiscribution = "账号不存在";
        return message;
    }
    return {200, "OK"};
}

bool Player::verfileAccount(unsigned int inputAccount) {
    return inputAccount==loginAccount;
}

```



### platform.cpp

```c++
#include "platform.h"
#include <iostream>
#include "player.h"
#include "../game_interface/interface.h"

Platform::Platform(){
    Player *defaultPlayer = new Player{"张三", "三三", 1001, true,"123456"};
    players.push_back(defaultPlayer);
}
Platform::~Platform(){}

void Platform::startUp(){
   /* for (auto name:gameNames) {
        cout << name << endl;
    }*/
    for (auto player:players) {
        ErrorMessage emes = player->login();
        //cout << emes.code << endl;
        //cout << emes.errorDiscribution << endl;
    }
  //  while(1){}
}

```





```c++
#ifndef _INTERFACE_H
#define _INTERFACE_H
#include <iostream>
#include <ncurses.h>
#include <vector>
using namespace std;

class Interface{
private:
    WINDOW *currentWindow;
    int a;
public:
    Interface();
    ~Interface();
    void displayMainWindow();
};

#endif

```



## game_interface

```c++
#ifndef _MODEL_H
#define _MODEL_H
#pragma once
#include <string>
#include <vector>
using namespace std;

struct PlatformModel {
    string welcomeStence="欢迎使用小开游戏平台，充值888领取尊贵欢迎使用小开游戏平台，充值888领取尊贵VIP";
    string usagePrompt="使用方向键选择游戏，使用回车键确认";
    vector<string> gameNames{"贪吃蛇", "推箱子", "俄罗斯方块", "中国象棋", "英雄联盟"};
};
#endif

```

```c++
/*************************************************************************
	> File Name: view.h
	> Author: 
	> Mail: 
	> Created Time: 2020年11月16日 星期一 16时32分36秒
 ************************************************************************/

#ifndef _VIEW_H
#define _VIEW_H

#pragma once
//#pragma once 用于保证头文件只被编译一次
#include <ncurses.h>
#include "model.h"

class BaseView{
public:
    virtual void BaseConfig() = 0;
    virtual WINDOW *getCurrentWindow();
    static void globalConfig();

    void setModel(PlatformModel *model);
    PlatformModel *getModel();
protected:
    WINDOW *currentWindow;
    PlatformModel *model;
private:

};

void BaseView::globalConfig() {
    setlocale(LC_ALL, "");
    initscr();
    clear();
}



class MainView:public BaseView{
public:
    MainView();
    ~MainView();

    void BaseConfig() override;
    virtual WINDOW *getCurrentWindow();


    void setModel(PlatformModel *model);
    PlatformModel *getModel();
private:
   // PlatformModel *model;
};



class SnakeView:public BaseView{
public:
    SnakeView();
    ~SnakeView();

    void BaseConfig() override;

    WINDOW *getCurrentWindow();
private:

};


#endif

```









```c++
#include "./platform_manager/platform.h"

int main(int argc, char **argv) {
    //创建游戏管理对象
    //开启游戏平台
    Platform platform;
    platform.startUp();
    return 0;
    
}
```

```c++
COMPLIER:= g++
COMPLIER_FLAGS:=-Wall -g -std=c++11

SRC:=main.cpp
SRC+=platform_manager/*.cpp

LINK_FLAGS:=-lncurses
EXEC_FILE_NAME:=minikai
all:
#.PHONY伪造
.PHONY:snake
EXEC_FILE_NAME:=snake
#$^所有依赖目标的集合,以空格分隔,并去重
#$@表示规则中的目标文件集
snake:
$(EXEC_FILE_NAME):$(SRC)
	$(COMPLIER) $(COMPLIER_FLAGS) $^ -o $@ $(LINK_FLAGS)

```



## cureses

printw()

# 问答c++

## １．c++与c的区别

设计思想上：

c++是面向**对象**的语言,c是面向**过程**的结构化编程语言

语法上:

c++具有**重载**，**继承**和**多态**三种特性

c++相比c, 增加许多**类型安全**的功能，　比如强制类型装换．

c++支持**范式编程**，　比如模板类，　函数模板等．





