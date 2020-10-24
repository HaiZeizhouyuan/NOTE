# )一、C语言基本运算符

## __&__  :

>n & 1 = 1， 则n 为奇；  
>n & 1= 0， 则n 为偶;    

n & 1 == n % 2;    

>if(n & 1)    输出n为奇数的结果  
>
>> 输入n为偶数的结果   

>n & m 如果n = 0则m不执行   

i != 10 && printf(" ") 前几位空格最后一位不同空格


##  | : 

n | 1 = n + 1; n 为偶；

> n | 1 = n; n为奇;   
> b的补码 = ～b | 1 ;(b 为奇）
> n || m若n为1，则m不执行 


## ^ : 异或运算：

>不同为1；相同为0;

> 若c = a ^ b;则a = b ^ c; b = a ^ c;

##  >> ：

> 右移看符号补1或0；

## *<<  : 

左移最后一位补0；

# C语言的数学函数库



## 1.pow函数 ： 指数函数  

-  math.h
-  double pow (double a, double b) 
-  返回值为a^b^   

## 2.sqrt函数:开平方函数  

+ math.h
+ double sqrt(double x);

## 3.ceil函数： 上取整数

- math.h
- double ceil(double x);

## 4.floor函数： 下去整数
- math.h
- double floor (double x);

## 5.abs函数： 整数绝对值

- stadlib.h
- int abs(int x);

## 6.fabs函数：实数绝对值函数

- math.h
- double fabs (double x);

## 7.log函数：以e为底对数函数

## 8.log10 函数

## 9.acos函数

++、--:从右向左结合  
= ：从右向左结合  
交换功能： a ^= b; b ^= a;  a^= b;  

C语言版本c99往后是支持布尔类型的，需头文件< stdbool.h>

__！__:  
归一话化: 当x == 0时，!!(x) == 0;当x !=0时，!((x))=1；

## １０．round()函数

四舍五入：round(a * 1.0 / b);



# 分支结构

## IF

```c++
if ( 表达式 ) {
	代码段；
}

if ( 表达式 ) {
 	代码段1；
} else {
	代码段2；
}

if ( 表达式1 ) {
	代码段1；
} else if {
	代码段2；
} else {
	代码段3；
}
```

## SWITCH

```c++
switch (a) {
	case 1: 代码快3;  
             		break;
	case 2: 代码块2；
    				break;  
	case 3: 代码块3；
    				break;
    default: 代码块4; 
    				break;
}
```
 # 循环机构
 ## WHILE语句
 	while (表达式) {
    	代码块；
    }
    do{
    	代码块；
    } while (表达式);
     

 ## FOR
 	for (初始化； 循环条件； 执行后的操作) {
    		代码块；
    }    	
 Step1: 初始化；
 Step 2: 循环条件；
 Step 3: 执行代码块；
 Step 4 :执行后操作
 Step 5: 跳转到Step2
   # 回文整数
```c++
 ## #define  likely(x)      __builtin_expect(!!(x), 1)  
```
   // likely 代表x经常成立，加载条件分支内部的代码
 		  ## define unlikely (x)  	__builtin_expect(!!(x), 0) 
   // unlikely 代表x不经常成立，加载条件分支外部的代码
   例：if（__builtin_expect(!!(x < 0), 0)）return false;  

#  其他

## 1.判相等

```C++

				if(a- b){
					a != b 时
 				}else{
					a = b时
				}    
 
```
## 2随机

srand(time(0))
	　int a = rand() % 100  

//0~100随机挑选一个数字  .rand 函数在<stdlib.h>中  
## 3.判奇偶：
​	(n & 1)偶为0，奇为1；  
​    num += !(n & 1)若为偶则num+ 1;  
​    num += (n & 1);若为奇则加num+1.  

## 4.循环

for(int i = 0; frm[i]; i++){}

## 5.求位树数

```c++
#include <math.h>

inline int dight(int n){

if ( n == 0 ) return 1;

return floor(log10(n)) + 1;

} 
```

## 6.求最大公约数

```c++
int gcd (int a, int b) {
    return (b? gcd(b ,a %b) : a);
}
```

## 7.删除前导零

```c++
 if (str[i] != '0') t++; 
        if (t) cout << str[i];

```

## 8.保留两位小数（不四舍五入）

```c++
int a = (int )num;
int b = (int ) (num * 10) % 10;
int c = (int )(num * 100) % 10;
printf("%d.%d%d\n", a, b, c);
```

## 9.四舍五入

```c++
int(a + 0.5) ;
```



## 10.%d

%d：即为普通的输出。

%2d：按宽度为2输出，右对齐方式输出。若不够两位，左边补空格.

%-2d将数字按宽度为2，采用左对齐方式输出，若数据位数不到2位，则右边补空格

%02d：同样宽度为2，右对齐方式。位数不够，左边补0。

%.2d：从执行效果来看，与%02d一样。

# 函数

## 1.函数程序与普通函数对比:

函数程序更易找bug。

## 2.函数说明

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img4?e=1588911695&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:TWIrPVfmttQN19DktaC77KMJx64=)

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img6?e=1588916962&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:nIkZnB6q9JYf4xW0wN85hBnMz5A=)



## 3.函数声明和函数定义的区别：

函数声明是概括，函数定义是解释；

## 4.递归程序

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img7?e=1588916962&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:ark0tzZlrLIg2d2jQJGpk0PzXGU=)

递归函数是自己调用自己。

随堂练习

``` c++
#include<stdio.h>
int fac(int n) {
    if (n == 0) return 1;
    if (n == 1) return 1;
    return n * fac(n - 1);
}
int main() {
    int n;
    while(~scanf("%d", &n)) {
        printf("%d\n", fac(n));
    }
    return 0;
}

```

## 5.函数指针

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img10?e=1589559020&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:1NeMr7Dx9hWPva55veyhyV-G87g=)

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img11?e=1589559020&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:hDNXKnHdvOY9oQgyecIYBp_PTG4=)

```c++
#include<stdio.h>
#include<inttypes.h>
int64_t Triangle(int64_t n) {
    return n * (n + 1) / 2;
}
int64_t Pentagonal(int64_t n) {
    return n * (3 * n - 1) / 2;
}
int64_t Hexagonal(int64_t n) {
    return n * (2 * n - 1);
}
int binary_search(int64_t (*func)(int64_t), int64_t x) {
    int head = 1, tail = x, mid;
    while (head <= tail) {
        mid = (head + tail) >> 1;
        if (func(mid) == x) return mid;
        if (func(mid) > x) tail = mid - 1;
        else head = mid + 1;
    }
    return 0;
}
int main() {
    int n = 144;
    for(;; n++) {
        if (binary_search(Triangle, Hexagonal(n)) == 0) continue;
        if (binary_search(Pentagonal, Hexagonal(n)) == 0) continue;
        printf("%"PRId64"\n", Hexagonal(n));
    break;
    }
    return 0;
}

```

二分需要单调。

n = 144;

if(; ; n++){}   // 死循环

## 6.辗转相除



![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img14?e=1588925596&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:7O_arFNOcDchpI3J9_k21FnStms=)     

### 6.1阿基理得定理的推导

a > b,   gcd(a,b)   = gcd (b, a % b)

a < b, gcd (a, b)= gcd(b, a % b)= gcd(b, a)= gcd(a, b %a)

推导过程：

证gcd(a, b) = gcd(b,a%b)

假设ｃ是ａ和b 的最大公约数，故gcd (a,b) = c, 故a = xc , b = yc,gcd(x, y) = 1;

故ａ % b = r = a - kb = xc - kyc =c(x - ky) . 故gcd(b, a % b) = gcd(yc, c(x - ky)) ,故当ｙ与x-ky互为素数时, 即gcd(y, x-ky) = 1时，gcd(a,b)= gcd(b, a%b)=c.

证gcd(y, x-ky)  =  1:

设gcd(y, x-ky) = d,则y = nd, x - ky = md => x = md + ky = md + knd = (m + kn)d,而gcd(x, y) = １，故gcd((m +  kn)d, nd) = 1,故d为１,gcd(m + kn, n) = 1.故gcd(y , x - ky)  =  1. 



![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img15?e=1588925596&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:xpd8wcSz0VSdG8w8vYjoLj4vuk4=)

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img16?e=1588925596&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:x-msYoZdAHSNlTTgPGWMtZtcyrQ=)

```c++
#include<stdio.h>
int gcd(int a, int b){
    return (b ? gcd(b, a % b) : a);
}
int main(){
    int a, b;
    while (~scanf("%d%d", &a, &b)) {
        printf("gcd(%d,%d) = %d\n", a, b, gcd(a, b));
    }
    return 0;
}

```

### 6.2扩展欧几里得推导：

要解决ax+by=1一组整数解，则 a或ｂ等于０，当ｂ= 0,ax =1有一组整数解。

设gcd(a,b)=c,c !=1，ax + by = 1; 令a = nc,b = mc=>c(xn + ym) = 1;因为c是整数，且不为1，故xn + yｍ必为分数，又因为m,n 为整数，故无解，故从c = 1.即gcd(a,b) = 1，故a，b互素。因ax+by=1,故a = 1, b = 0;故x=1.

当i =  0 时,gcd(1, 0), 带入ax+by=1,x=1  

当k (i)时，若 gcd(b, a%b)成立 , 带入ax+by = bx+(a-kb)y =b(x-ky)+ay=1.

则k(i+1)成立

得k(i): ｘ—>x1,y—>y1.

k(i + 1): x—>y1, y—>x1 - ky1=x1-a/b *x





gcd(a, b) = gcd(b, a % b) = bx + (a -kb) y = 1 => ay + b(x - ky)

```c++
#include<stdio.h>
int ex_gcd(int a, int b, int *x, int *y) {
    if (!b) {
        *x = 1, *y = 0;
        return a;
    }
    int ret = ex_gcd( b, a % b, y,x);
    *y -= a / b * (*x);
    return ret;

}
int main(){
    int a, b, x, y;
    while(~scanf("%d%d", &a, &b)) {
        printf("gcd(%d, %d) = %d\n", a, b,ex_gcd(a, b, &x, &y));
        printf("%d * %d + %d * %d = %d\n", a, x, b, y,a * x + b * y);
    }
    return 0;
}

```



## 7.变参函数

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200507110834-hs0j0vkm6y0ogswg/b3e72ea5e00a6652_img18?e=1589082381&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:CuaosIcB8Y0saxUSHxUck30X_NI=) 

```c++
#include<stdio.h>
#include <inttypes.h>
#include <stdarg.h>
int max_int(int n, ...){
    int ans = INT32_MIN, temp;
    va_list arg;
    va_start(arg, n);
    while (n--) {
        temp = va_arg(arg, int);
        if (temp > ans) ans = temp;
    }
    va_end(arg);
    return ans;
}
int main(){
    printf("%d\n", max_int(3, 1, 5, 3));
    printf("%d\n", max_int(2, 1, 6));
    printf("%d\n", max_int(3, 1, 6, 5, 27));
    return 0;
}
```

Va_arg是个宏

va_list 变量名称

va_start (变量,  第一个参数);

va_arg(变量, 变量类型)；

va_end(变量);



## 8.my_printf

putchar();每次向屏幕打印一个字符

#　数组

## 1.数组声明与初始化

int　a[10] = {0};//	该初始化只能进行一次。

scanf(“%d”, &a[i]);

printf(“%d\n”, a[i]);

scanf(“%d”, a + i);

printf(“%d\n”,*(a + i));

int类型偏移４个字节，char类型偏移１个字节

## 2.素数筛

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img4?e=1589262022&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:pFFVRTkjQxMA6IhFfPPRPLc1Rao=)



![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img5?e=1589262022&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:hUpVqecb2qVFVqlc5HCN_gYs5L0=)

```c++
#include<stdio.h>
#define max_n 100
int prime[max_n + 5] = {0};

void init_prime() {
    for (int i = 2; i <= max_n; i++) {
        if(prime[i]) continue;
        prime[++prime[0]] = i;
        for (int j = i * i; j <= max_n; j += i) {
            prime[j] = 1;
        }
    }
    return ;
}
int main(){
    init_prime();
    for (int i = 1; i <= prime[0]; i++) {
        printf("%d\n", prime[i]);
    }
    return 0;
}

```

### 2.1最大素因子和最小素因子

<img src="https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200516105101-et4vqflziwgs8844/70596e7bbf9ad1e9_img8?e=1589647151&amp;token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:gZWCEKTekEJclgDVk2hyLXOF9bg=" style="zoom:200%;" />



```c++
#include<stdio.h>
#define max_n 100
int prime1[max_n + 5] = {0};
inline void min(){
    for(int i = 2; i < max_n; i++){
        if(prime1[i]) continue;
        prime1[i] = i;
        for(int j = i * i; j < max_n; j += i){
            if(prime1[j]) continue; 
            prime1[j] = i;
        }
    }
}
int prime2[max_n + 5] = {0};
inline void max(){
    for(int i = 2; i < max_n; i++){
        if(prime2[i]) continue;
        prime2[i] = i;
        for(int j = 2 * i; j < max_n; j += i){
            prime2[j] = i;
        }
    }
}
int main(){
    min();
    max();
    for (int i = 2; i < max_n; i++) {
        printf("%d  minprime is %d and maxprime is %d\n ", i, prime1[i], prime2[i]);
    }
    return 0;
}

```



## 3.折半查找

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img8?e=1589371413&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:mDbmMDp6BXVOGfLpHy1MoVQ4KIA=)

```C++
#include <stdio.h>
#define max_n 100
int num(int n){
    return n;
}
int binary_search(int (*num)(int), int n, int x){
    int head = 0, tail = n - 1, mid;
    while(head <= tail) {
        mid = (head + tail) >> 1;
        if (num(mid) == x) return mid;
        if (num(mid) < x)  head = mid + 1;
        else tail = mid -1;
    }
    return -1;
}
//递归写法
int binary_search(int *arr, int l, int r, int x){
    if(l > r) return -1;
    int mid = (l + r) >> 1;
    if (arr[mid] == x) return mid;
    if (arr[mid] < x) l = mid + 1;
    else r = mid - 1;
    return binary_search(arr, l, r, x);
}

int main(){
    int arr[max_n + 5] = {0}, x;
    for (int i = 0; i < max_n; i++) arr[i] = i;
    while (~scanf("%d", &x)) {
        print("search(%d) = %d\n", x, binary_search(arr,max_n, x));

    }
    return 0;
}

```



## 4.数组与地址

```c++
#include <stdio.h>

void func(int *a) {
    printf("&a = %p\n", a);
    printf("a[0] = %d, *a = %d\n", a[0], *a);
    int *p;
    printf("p = %p, p + 1 = %p\n", p, p + 1);
    return ;
}

void func2(int (*b)[9][6]) {
    printf("b = %p, b + 1 = %p\n", b, b + 1);
    return ;
}
int main() {
    int arr[10] = {1, 2, 3};
    char str[10] = {0};
    int arr2[4][9][6];
    printf("arr = %p, arr[0] = %p\n", arr, &arr[0]);
    printf("arr + 1 = %p\n", arr + 1);
    printf("str = %p, str + 1 = %p\n", str, str + 1);
    int n = 0;
    func(arr);
    printf("arr2 = %p, arr2 + 1 = %p\n", arr2, arr2 + 1);
    func2(arr2);
    printf("n = %d\n", n);
    return 0;
}
```





## 5.牛顿迭代法

```c++
#include <math.h>
#define EPSL 1e-6  //10的-6次幂, 在Ｃ语言中fabs(t) < 0,则t = 0;

inline double F(double x, double n) {
    return x * x - n;
}

inline double f(double x){
    return 2 * x;
}

double NewTon(double (*F)(double, double), double (*f)(double),double n) {
    double x1 = n / 2.0;
    while (fabs(F(x1,n)) > EPSL) {
        x1 -= F(x1, n) / f(x1);
    }
    return x1;
}

double my_sqrt(double n) {
    return NewTon(F,f,n);
}
int main(){
    double n;
    while (~scanf("%lf", &n)) {
        printf("%lf\n", my_sqrt(n));
    }

    return 0;
}

```



## 6.预处理定义

### 6.1宏定义

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img18?e=1589456423&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:7q83lMWauvrMrakcNpqh4oG96wI=)

傻瓜表达式不参与运算，只是代码的替换。

宏定义不支持换行。

### 6.2 预定义的宏

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img19?e=1589456423&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:9CT_UiZuQvcVryzEZKcJhJHPhfk=)

### 6.3条件式编译

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img20?e=1589456423&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:JKRz9aJAWnahmhNvDchI7RuujVM=)



### 6.4 预处理命令

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img21?e=1589456423&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:mLpT8mbudJfgpoh6WKQErQ6LGng=)



.o 是对象文件

###  6.5随堂练习

#### 6.5.1随堂练习2

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img22?e=1589517910&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:unOHJczE3chVH0xJBhEh0-EaM4Y=)

```c++
#include<stdio.h>
#define MAX(a, b) ({\
    __typeof(a) __a = (a);\
    __typeof(b) __b = (b);\
    __a > __b ? __a : __b;\
})
#define p(a) {\
    printf("%s = %d\n", #a, a);\   
}
int main(){
    int  f = 7;
    p(MAX(2, 3));
    p(5 + MAX(2, 3));
    p(MAX(2, MAX(3, 4)));
    p(MAX(2, 3 > 4 ? 3 : 4));
    p(MAX(f++, 6));
    return 0;
}

```

'#a'表示a以字符串的格式表示出来.

#define p(a) {\

​	printf(“%s = %d\n”, #a, a);\

}

源程序的预编译处理： -E

#### 6.5.2随堂练习3

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img24?e=1589517910&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:6_fyMJKJ3Sg48PFsH-neX7R9ZJE=)

```c++
#include <stdio.h>
//define DEBUG
#ifdef DEBUG
#define log(frm, args...) {\
    printf("[%s : %d] %s ", __func__,__LINE__, #args);\
    printf(frm, ##args);\
    printf("\n");\
}
#else
#define log(frm, args...)
#endif
#define contact(a, b) a##b
int main(){
    int a = 3, abc, def;
    int abcdef = 0;
    log("%d", abcdef);
    log ("%d",a);
    log("hello world");
    contact(abc, def) = 123;
    log("%d", abcdef);
    return 0;
}

```

# 八.字符串

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img26?e=1589612762&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:6a5DgoCWx6NDY7ylbNh4rX0B_Wc=)

## 8.1字符串的相关操作

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img27?e=1589612762&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:oTYd1LntSZ0JvLny96OBVqBLJBI=)

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img28?e=1589612762&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:jvD8CZvwZ1RqnHay_MWuLGVJ9wo=)



memset设置的是字节，设置的不是位。可以多次初始化。

### 8.1.1随堂练习4

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200510094240-s8sqnerejisoogkg/198a8c0d099fbf1b_img29?e=1589612762&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:rfB7gbuFzmr82FNmX50bcmYt9s8=)

```c++
#include<stdio.h>
#include<string.h>
int main(){
    char str[10] = {0};
    int n;
    while (~scanf("%d", &n)) {
        sprintf(str, "%x", n);
        printf("%s has %lu dight\n", str, strlen(str));
    }
    return 0;
}

```





## 8.2线性筛

![](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200516105101-et4vqflziwgs8844/70596e7bbf9ad1e9_img13?e=1589647151&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:AwZ5VH0WSyJFmWp-g7bimptm3qY=)



```c++
#include<stdio.h>
#define max_n 100
int prime[max_n + 5] = {0};
void init_prime(){
    for (int i = 2; i < max_n; i++) {
        if (!prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) break;

        }
    }
}
int main(){
    init_prime();
    for (int i = 1; i <= prime[0]; i++) {
        printf("%d\n", prime[i]);
    }
    return 0;
}

```



# 九.复杂结构

## 9.1结构体

```c++
struct person {
	char name[20];// 20个字节 
	int age;
	char gender;
	float height;  //4个字节
};
```

$\color{red}{结构体的字节计算}$：以最大数据类型占的字节数为准对齐，数据类型的排列顺序不同会导致字节数不同，因此要把相同的数据类型放在一起。

```c++
struct node1 {
	char a;
	char b;
	int  c;
};
```

字节数为4 + 4 = 8;

```c++
struct node2 {
	char a;
	int c;
	char b;
}
```



字节数为4 + 4 + 4 = 12；

```c++
typedef stryct point{
     static int c; 
    struct node2 b; 4个字节
} Point;

Point point1;
```

这里结构体中包含静态数据成员，而静态数据成员的存放位置与结构体实例的存储地址无关(注意只有在C++中结构体中才能含有静态数据成员，而C中结构体中是不允许含有静态数据成员的)。

而变量c是单独存放在静态数据区的，因此用siezof计算其大小时没有将c所占的空间计算进来。

对于结构体变量，它的自身对齐参数为它里面各个变量最终对齐参数的最大值

## 9.2共用体

```c++
umion register{
		struct {
        	unsigned char byte1;
       	 	unsigned char byte2;
        	unsigned char byte3;
        	unsigned char byte4;
   	 	} bytes;
    	unsigned int number;
};
```



```c++
union node {
		double a;
		char b;
		int c;
};
```

字节数：8

$\color{red}{共用体的字节数计算}$：共用体是比较数据类型的大小，谁大用谁。

## IP

请使用共用体， 实现ip 转整数的功能:

```c++
#include<iostream>
#include<stdio.h>
using namespace std;
union IP {
    struct {
        unsigned char a1;
        unsigned char a2;
        unsigned char a3;
        unsigned char a4;

    } ip;
    unsigned int num;
};

int is_little(){
    static int num = 1;
    return ((char *)&num)[0];
}
int main () {
    printf("%d\n", is_little());
    union IP p;
    char str[100];
    int arr[4];
    while (~scanf("%s", str)){
        sscanf(str,"%d.%d.%d.%d", arr, arr + 1, arr + 2, arr + 3);
        p.ip.a1 = arr[3];
        p.ip.a2 = arr[2];
        p.ip.a3 = arr[1];
        p.ip.a4 = arr[0];
        printf("%u\n",p.num);
    }
    
    return 0;
}
```

大端机是高位放在低地址位上，

​      0                     1                  2                3

​    192        .      168      .         0         .       1

00000011.00010101.00000000.10000000

​    

小端机是低位放在低地址位上

​        0                1                    2                  3

​         1        .       0          .      168      .      192

10000000.00000000.00010101.00000011



# 十.指针

## 变量的地址

指针变量也是变量，也有地址，在32位操作系统下指针变量占4个字节，在64位操作系统下占64位操作系统。

## 等价形式转换

*p  <=> a(原始变量)

p + 1 <=> &p[1]

p->filed <=>(*p).filed <=>a.filed

### 随堂练习2

尽可能地表示a[1].x

```c++
#include<stdio.h>
struct Data {
    int x, y;
};

int main(){
    struct Data a[2], *p = a;
    a[0].x = 1;
    a[1].x = 2;
    printf("a[1].x = %d\n", a[1].x);
    printf("(*(p + 1)).x = %d\n", (*(p + 1)).x);
    printf("(*(a + 1)).x = %d\n", (*(a + 1)).x);
    printf("p[1].x = %d\n", p[1].x);
    printf("(&p[1])->x = %d\n", (&p[1])->x);
    printf("(a + 1)->x = %d\n", (a + 1)->x);
    printf("(p + 1)->x = %d\n", (p + 1)->x);
    printf("(&p[0] + 1)->x = %d\n",(&p[0] + 1)->x);
    return 0;
}

```



## 函数指针

```c++
int (*add)(int , int);
typedef int (*add) (int , int);
```



## TYPEDEF的用法

结构体类型的重命名：

```
typedef struct  __node{

int x, y;

}  Node, *PNode;
```

函数指针命名：

typedef int (*func) (int );

```c++
#include<stdio.h>
#define pchar char *
typedef char * ppchar;

#define offset(T, a) ((long)(&(((T  *)(NULL))-> a)))
struct Data {
    int a;
    double b;
    char c;
};

int main() {
    int num1 = 0x616263;  //在栈区开辟空间
    int num2 = 0x61626364;//dcba无‘/0’继续输出cba'/0';
    int num = 0x616263;  //x表示16进制
    printf("%s\n", (char *)(&num2));
    printf("%ld\n", offset(struct Data, a));
    printf("%ld\n", offset(struct Data, b));
    printf("%ld\n", offset(struct Data, c));
    pchar p, q;
    ppchar a, b;
    printf("p = %lu, q = %lu\n", sizeof(p), sizeof(q));
    printf("p = %lu, q = %lu\n", sizeof(a), sizeof(b));
    return 0;
}

```



## MAINB函数参数

int mian();

int main(int argc, char     *argv[]);

int main(int argc, char 8argc[], char   **env);

```c++
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
void output(int argc , char *argv[], char *env[]) {
    for (int i = 0; i < argc; i++) {
        printf("%s\n", argv[i]);
    }
    for (int i = 0; env[i]; i++) {
        if (strncmp(env[i], "USER=",5) == 0){
            if (strncmp(env[i] + 5, "zy", sizeof(env[i])) == 0) {
                printf("welcome\n");
            } else {
                printf("byebye\n");
                exit(0);
            }
        }
    }
    return ;
}
int main(int argc, char *argv[], char *env[]) {
    output(argc, argv, env);
    return 0;
}

```

#　模块程序

#include “set.h”

<>系统

“” 当前目录下

宏的名字：工程名　_　路径名　_　文件名　_　H　_

-o之后写的是生成可执行文件的名称。-c的参数的使用会帮我们得到一个对象文件。

## Makefile

```c++
在Makefile中我们还可以使用它的变量和注释。 
# 井号开头的行是一个注释 
# 设置 C 语言的编译器 3 
CC = gcc 
# -g 增加调试信息
# -Wall 打开大部分警告信息 7 
CFLAGS = -g -Wall 
    
# 整理一下 main 依赖哪些目标文件
 MAINOBJS = main.o array.o 
   
.PHONY: clean

 main: $(MAINOBJS) 
 $(CC) $(CFLAGS) -o main $(MAINOBJS) 

 array.o: array.c array.h 
 $(CC) $(CFLAGS) -c -o array.o array.c 
     
main.o:  main.c main.h
 $(CC) $(CFLAGS) -c -o main.o main.c 
 
 clean: 
 rm -f $(MAINOBJS) main
```



 上面这个例子已经是一个较为完整的Makefile了。以#开头的是我们的注释，我们在这里用注释说明了我们定义的Makefile变量的用途。CC变量定义了编译器，CFLAGS变量标记了编译参数，MAINOBJS变量记录了main依赖的目标文件。定义的变量可以直接通过$(变量名)进行使用。

## 静态链接库

ar  -r  lib名字.a   _.o _.o _.o

## 动态链接

g++ -L  静态链接库的路径   　define.o  　-l名字

# 十一.OL



## 矩阵对角线

###　$\color{yellow}{OL.28 : 螺旋矩阵对角线}$

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200502095748-jzrteyix0z4oogg8/c1409c128342d03a_img4?e=1595077155&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:Tm6zG-OxDSPbcEcZf3CcPly1fPI=)

从1开始，按顺时针顺序向右铺开的5 × 5螺旋数阵如下所示：

==**21**== 22 23 24 ==**25**==
		20   ==**7 **==  8    ==**9**==  10
		19   6   ==**1**==    2  11
		18   ==**5**==   4    ==3==  **12
		**==17== **16 15 14 **==13==

可以验证，该数阵对角线上的数之和是101。

以同样方式构成的1001 × 1001螺旋数阵对角线上的数之和是多少？

```c++
/*************************************************************************
	> File Name: 2.c
	> Author: 
	> Mail: 
	> Created Time: Sat May  2 18:27:07 2020
 ************************************************************************/

#include<stdio.h>
int main(){
    int sum = 1;
    for(int l = 3; l <= 1001; l += 2){
        sum += 4 * l * l - 6 * l + 6;

    }
    printf("%d\n", sum);
    return 0;

}
```



## 求余





![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200531110711-t7zcnt0bczk0ok4w/87163ee6b4c0b49a_img4?e=1594731173&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:LS2qQrW1HoyMtAYOEbwtDX_lF70=)

### $\color{yellow }{OL.26 : 倒数的循环节}$



```c++
/*************************************************************************
	> File Name: 26.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun May 31 20:15:46 2020
 ************************************************************************/

#include<iostream>
#include<cstring>
using namespace std;
#define max_n 1000

int keep[max_n + 5];

int get_len(int d) {
    memset(keep, 0, sizeof(keep));
    int r = 1, t = 0;
    while (r) {
        t += 1;
        keep[r] = t;
        r *= 10;
        r %= d;
        if (keep[r]) return t;
    }
    return 0;
}
int main () {
    int ans = 0, len = 0;
    for (int i = 2; i < max_n; i++) {
        int temp = get_len(i);
        if (temp > len) {
            ans = i;
            len = temp;
        }
    }
    cout << ans << " " << len << endl;

    return 0;

}
```





## 阶乘



C~m~^n^ = m ! / (m - n)! * n!

```c++
int  factail(int m, int n) {
	long long ans = 1, k = m - n;
	while (m != k || n) {
		if (m != k) ans *= (m--);
		if (n && ans % n == 0) ans /= (n--); 
	}
}
```

### $\color{yellow}{OL.15 : 网格路径}$

从一个2×2方阵的左上角出发，只允许向右或向下移动，则恰好有6条通往右下角的路径。

![img](https://projecteuler.net/project/images/p015.png)

对于20×20方阵来说，这样的路径有多少条？

```c++
/*************************************************************************
	> File Name: 15.c
	> Author: 
	> Mail: 
	> Created Time: Tue May  5 20:53:28 2020
 ************************************************************************/

#include<stdio.h>
int main(){
    long long m = 40, n = 20, ans = 1;
    while (m != 20 || n) {
        if (m != 20) ans *= (m--);
        if (n  && ans % n == 0) ans /= (n--);
    }
    printf("%lld\n", ans);
    return 0;
}

```



## 回文数



$\color{blue}{回文数的判定}$

```c++
int is_pal (int val, int base) {
	int x = 0, temp = val;
	while (temp) {
		x = x / base + temp % base;
		temp /= base;
	}
	retuen x == val;
}
```





### $\color{yellow}{OL.36:双进制回文数}$

十进制数585 = 10010010012（二进制表示），因此它在这两种进制下都是回文数。

找出所有小于一百万，且在十进制和二进制下均回文的数，并求它们的和。

（请注意，无论在哪种进制下，回文数均不考虑前导零。）

```c++
/*************************************************************************
	> File Name: 36.cpp
	> Author: 
	> Mail: 
	> Created Time: Thu May 28 20:56:17 2020
 ************************************************************************/

#include<iostream>
using namespace std;
#define max_n 1000000

int is_rev(int n, int base) {
    int sum = 0, tmp = n;
    while (tmp) {
        sum = sum * base + tmp % base;
        tmp /= base;
    }
    return sum == n;
}

int is_val(int n) {
    return is_rev(n, 10) && is_rev(n, 2);
}

int main () {
    int sum = 0;
    for (int i = 1; i <= max_n; i++) {
        sum += (is_val(i) ? i : 0);
    }
    cout << sum << endl;
    return 0;
}

```

### $\color{yellow}{OL.4 : 最大回文乘积}$

回文数就是从前往后和从后往前读都一样的数。由两个2位数相乘得到的最大回文乘积是 9009 = 91 × 99。

找出由两个3位数相乘得到的最大回文乘积。



```c++
#include<stdio.h>
//判断回文
int is_val(int n, int base){
    int x = 0, temp = n;
    while(temp){
        x = x * base + temp % base;
        temp /= base;
    }
    return x == n;
}
int main(){
    int ans = 0;
    for(int a = 100; a < 1000; a++){
        for(int b = a; b < 1000; b++){
            if(is_val(a * b, 10) && a * b > ans) ans = a * b;
        }
    }
    printf("%d\n", ans);
    return 0;
}
```





##  折半查找

### $\color{yellow}{OL.42:编码三角形数}$

三角形数序列的第n项由公式tn = 1/2n(n+1)给出；因此前十个三角形数是：

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, …

将一个单词的每个字母分别转化为其在字母表中的顺序并相加，我们可以计算出一个单词的值。例如，单词SKY的值就是 19 + 11 + 25 = 55 = t10。如果一个单词的值是一个三角形数，我们就称这个单词为三角形单词。

在这个16K的文本文件[words.txt](https://projecteuler.net/project/resources/p042_words.txt) （右击并选择“目标另存为……”）中包含有将近两千个常用英文单词，这其中有多少个三角形单词？

```c++
#include<stdio.h>
#include "words.txt"
inline int triangje (int n) {
    return n * (n + 1) / 2;
}

int binary_search(int (*func)(int), int l, int r, int x) {
    int head = l, tail = r,  mid;
    while (head <= tail) {
        mid = (head + tail) >> 1;
        if (func(mid) == x) return 1;
        if (func(mid) < x) head = mid + 1;
        else tail = mid - 1;
    }
    return 0;
}

int is_val (const char *str) {
    int sum = 0;
    for (int i = 0; str[i]; i++) {
        sum += (str[i] - 'A' + 1);
    }
    return binary_search(triangje,1, sum ,sum);
}

int main(){
    int n = sizeof(str) / 100, cnt = 0;
    for (int i = 0; i < n; i++) {
        cnt += (is_val (str[i]));
    }
    printf("%d\n", cnt);
    return 0;
}
```

### $\color{yellow}{OL.45:三角形数、五边形数和六角形数}$

三角形数、五边形数和六角形数分别由以下公式给出：

|          |              |                     |
| :------- | :----------- | :------------------ |
| 三角形数 | Tn=n(n+1)/2  | 1, 3, 6, 10, 15, …  |
| 五边形数 | Pn=n(3n−1)/2 | 1, 5, 12, 22, 35, … |
| 六边形数 | Hn=n(2n−1)   | 1, 6, 15, 28, 45, … |

可以验证，T285 = P165 = H143 = 40755。

找出下一个同时是三角形数、五边形数和六角形数的数。

```c++
#include<iostream>
using namespace std;

typedef long long ll;

ll w(ll n){
    return n * (3 * n - 1) / 2;
}

ll s(ll n) {
    return n * (2 * n - 1);
}

int binary_search(ll (*fac)(ll), int x) {
    int f = 1, l = x, mid;
    while (f <= l) {
        mid = (f + l) >> 1;
        if (fac(mid) == x) return 1;
        if (fac(mid) < x) f = mid + 1;
        else l = mid -1;
    }
    return 0;
}
int main() {
    ll n = 144;
    while (1) {
        if (binary_search(w, s(n))) break;
        n++;
    }
    cout << s(n) << endl;
    return 0;
}

```



### $\color{yellow}{OL.44:五边形数}$

五边形数由公式Pn=n(3n−1)/2生成。前十个五边形数是：

1, 5, 12, 22, 35, 51, 70, 92, 117, 145, …

可以看出P4 + P7 = 22 + 70 = 92 = P8。然而，它们的差70 − 22 = 48并不是五边形数。

在所有和差均为五边形数的五边形数对Pj和Pk中，找出使D = |Pk − Pj|最小的一对；此时D的值是多少？

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200517114234-ow9zzpavmr4sosk0/0c2106805a4c07c3_img15?e=1589882738&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:woaff4D7KY7vobmE-qK66sODBhg=)

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200517114234-ow9zzpavmr4sosk0/0c2106805a4c07c3_img16?e=1589882738&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:uxkQfPeDEW9U1SLUsJG3qiQ_MVI=)

```c++
#include<stdio.h>
#include <inttypes.h>

typedef long long int1;
inline int1  p(int1 n) {
    return n * (3 * n - 1) / 2;
}
int1 binary_search (int1 (*func)(int1), int1 l, int1 r, int1 x) {
    int1 head = l, tail = r, mid;
    while (head <=tail) {
        mid = (head + tail) >> 1;
        if (func(mid) == x) return 1;
        if (func(mid) < x) head = mid + 1;
        else tail = mid -1;
    }
    return 0;
}
int main(){
    int1 n  = 2, D = INT32_MAX;
    while (p(n) - p(n - 1) < D) {
       int1 pk = p(n); 
        for (int j = n - 1; j >= 1; j--) {
            int1 pj = p(j);
            if (pk - pj > D) break;
            int flag = 1;
            flag = flag && (binary_search(p, 1, pk + pj, pk + pj));
            flag = flag && (binary_search(p, 1, pk - pj, pk - pj));
            if (!flag) continue;
            D = pk - pj;
            printf("%lld - %lld = %lld\n", pk, pj, D);
        }
        n += 1;
    }
    printf("%lld\n", D);
    return 0;
}

```



## 方向数组

### $\color{yellow}{OL.11:方阵中的最大乘积}$

在如下的20×20方阵中，有四个呈对角线排列的数被标红了。


08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
32 98 81 28 64 23 67 10 $\color{red}{26}$ 38 40 67 59 54 70 66 18 38 64 70
67 26 20 68 02 62 12 20 95 $\color{red}{63}$ 94 39 63 08 40 91 66 49 94 21
24 55 58 05 66 73 99 26 97 17 $\color{red}{78}$ 78 96 83 14 88 34 89 63 72
21 36 23 09 75 00 76 44 20 45 35 $\color{red}{14}$ 00 61 33 97 34 31 33 95
78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

这四个数的乘积是26 × 63 × 78 × 14 = 1788696。

在这个20×20方阵中，四个在同一方向（从下至上、从上至下、从右至左、从左至右或者对角线）上相邻的数的乘积最大是多少？



```c++
#include<stdio.h>
#define max_n 20

int grid[max_n + 5][max_n + 5];

int dir[4][2] = {
    {0, 1}, {1, 1},
    {1, 0}, {1, -1}
};

int calc(int i, int j) {
    int ans = 0;
    for (int k = 0; k < 4; k++) {
        int p = 1;
        for (int step = 0; step < 4; step++) {
            int dx = i + dir[k][0] * step;
            int dy = j + dir[k][1] * step;
            if (dx < 0 || dx >= max_n) break;
            if (dy < 0 || dy >= max_n) break;
            p *= grid[dx][dy];
        }
        if (p > ans) ans = p;
    }
    return ans;
}

int main () {
    int ans = 0;
    for (int i = 0; i < max_n; i++) {
        for (int j = 0; j < max_n; j++) {
            scanf("%d", &grid[i][j]);
        }
    }
    for (int i = 0; i < max_n; i++) {
        for (int j = 0; j < max_n; j++) {
            int p = calc(i, j);
            if (p > ans) ans = p;
        }
    }
    printf("%d\n", ans);
    return 0;
}

```





## 线性筛和素数筛

### $\color{yellow}{OL.7:第10001个素数}$

列出前6个素数，它们分别是2、3、5、7、11和13。我们可以看出，第6个素数是13。

第10,001个素数是多少？



#### 1.暴力法

```c++
#include<stdio.h>
#define max_n 100001
int check(int x){
    for (int i = 2; i * i < x; i++) {
        if (!(x % i)) return 0;
    }
    return 1;
}
int main(){
    int cnt = 0, i = 2;
    for ( ; cnt < max_n ; i++) {
        check(i) &&  cnt++;
    }
    printf("%d\n", i - 1);
    return 0;
}

```



#### 2.素数筛(Prime screen)

```c++
#include<stdio.h>
#define max_n 105000 
long long prime[max_n + 5] = {0};

void init_prime(){
    for (long long i = 2; i <= max_n; i++) {
        if(prime[i]) continue;
        prime[++prime[0]] = i;
        for (long long j = i * i; j <= max_n; j += i) {
            prime[j] = 1;
        }
    }
    return ;
}
int main() {
    long long n;
    scanf("%lld",&n);
    init_prime();
    printf("%lld\n", prime[n]);
    return 0;
}
```



#### 3. 线性筛(Linear sieve)

```c++
#include<stdio.h>
#define max_n 200000

int prime[max_n + 5] = {0};

int main() {
    for (int i = 2; i  <= max_n; i++) {
        if (!prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) break;
        }
    }
    printf("%d\n", prime[10001]);
    return 0;
}

```

### $\color{yellow}{OL.10 :素数的和}$

所有小于10的素数的和是2 + 3 + 5 + 7 = 17。

求所有小于两百万的素数的和。



```c++
#include<stdio.h>
#define max_n 2000000

long long prime[max_n + 5] = {0};
long long num = 0;
long long init_prime(long long n) {
    for (long long i = 2; i < n; i++) {
        if (prime[i]) continue;
        num += i;
        for (long long j = i * i; j < n; j += i) {
            prime[j] = 1;
        }
    }
    return num;
}
int main(){
    long long n;
    scanf("%lld", &n);
    printf("%lld\n", init_prime(n));
    return 0;
}

```







###  $\color{yellow}{OL.27 : 二次素数生成多项式?}$

```c++
/*************************************************************************
	> File Name: 27.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jun  7 15:13:26 2020
 ************************************************************************/

#include<iostream>
using namespace std;
#define max_n 1000


int prime[max_n + 5] = {0};
int is_prime[max_n + 5] = {0, 1};

void primescreen() {
    for (int i = 2; i <= max_n; i++) {
        if (!is_prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            is_prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) break;
        }
    }
    return ;
}
//因为n会大于１０００
int is_val(long long n) {
    for (long long i = 2; i * i <= n; i++) {
        if (n % i == 0) return 0;
    }
    return 1;
}

int get_len(int a, int b) {
    int cnt = 0;
    for  (int n = 0; ; n++) {
        long long temp = n * n + a * n + b;
        if (temp < 0) break;
        if (!is_val(temp)) break;
        cnt++;
    }
    return cnt;
}

int main() {
    primescreen();
    long long x, y, len = 0;
    for (int b = 2; b <= 1000; b++){  // n * n + a * n + b >= 2 => 当n = 0时，b >= 2;
        if (is_prime[b]) continue;
        for (int a = -999; a < 1000; a += 2) {
            if (a + b + 1 < 2 || is_prime[a + b + 1]) continue;
            int temp = get_len(a, b);
            if (temp > len) {
                len = temp;
                x = a, y = b;
            }
        }
    }
    cout << x * y << endl;
    return 0;
}

```





## 公约数

计算公约数

```c++
int gcd(int a, int b) {
	return b ? gcd(b, a %b) : a;
}
```

int t = gcd(c, d);

c / d =  (c / t)  / (d / t);



### $\color{yellow}{OL.5最小倍数}$

2520是可以除以1到10的每个数字而没有任何余数的最小数字。

能被1到20的所有数均分的最小正数是多少？

```c++
#include <stdio.h>
int gcd(int a, int b){
    return (b ? gcd(b, a % b) : a);
}
int main(){
    int ans = 1;
    for (int i = 1; i <=20; i++) {
        ans *= i / gcd(ans, i);
    }
    printf("%d\n", ans);
    return 0;
}
```



## 滚动数组

### $\color{yellow}{OL.25:一千位斐波那契数}$

斐波那契数列由递归关系定义：

> F *n* = F *n* -1 + F *n* -2，其中F 1 = 1和F 2 = 1。

因此，前12个术语将是：

> F 1 = 1
> F 2 = 1
> F 3 = 2
> F 4 = 3
> F 5 = 5
> F 6 = 8
> F 7 = 13
> F 8 = 21
> F 9 = 34
> F 10 = 55
> F 11 = 89
> F 12 = 144

第12个项F 12是包含三个数字的第一个项。

斐波纳契数列中包含1000个数字的第一项的索引是什么？



```c++
/*************************************************************************
	> File Name: 25.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat May 23 19:26:03 2020
 ************************************************************************/
#include <stdio.h>
#include <math.h>
#define max_n 1000

int fib[3][max_n + 5] = {{1, 0},{1, 1},{1, 1}};　　//第一位是字节, 第二位是斐波那契数．
int main(){
    int n = 2;
    while (fib[n % 3][0] < max_n) {
        n++;
        int *a = fib[n % 3], *b = fib[(n - 1) % 3], *c = fib [(n - 2) % 3];
        for (int i = 1; i <= b[0]; i++) {
            a[i] = b[i] + c[i];
        }
        a[0] = b[0];
        for (int i = 1; i <= a[0]; i++) {
            if (a[i] < 10) continue;
            a[i + 1] += a[i] / 10;
            a[i]  %=  10;
            a[0] += (i == a[0]);
        }
    }
    printf("%d\n", n);
    return 0;
}

```



## 斐波那契数列

###  $\color{yellow}{OL.2:求斐波那契数列前四百万的偶数和}$

斐波那契数列中的每一项都是前两项的和。由1和2开始生成的斐波那契数列前10项为：

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

考虑该斐波那契数列中不超过四百万的项，求其中为偶数的项之和。



###  法一：

```c++
#include<stdio.h>
#define max_n 44
#define max_m 4000000
int fib[max_n + 5] = {0};
int main(){
    int n = 2;
    long long sum = 0;
    fib[0] = 1;
    fib[1] = 2;
    while(fib[n-1] + fib[n-2] < max_m){ 
        fib[n] = fib[n-1] + fib[n - 2];
        n++;
    }
    for(int i = 0; i < n; i++){
        if(fib[i] & 1) continue;
        sum += fib[i];
    }
    printf("%lld\n",sum );
    return 0;
}

```

### 法二

```c++
#include<stdio.h>
#define max_m 4000000
int main(){
    int a = 1, b = 2;
    int sum = 2;
    while (a + b < max_m) {
        b = a + b;
        a = b - a;
        if (b & 1) continue;
        sum += b;
    }
    printf("%d\n", sum);
    return  0;
}
```

### 法三：滚动数组法：

```c++
#include<stdio.h>
#define max_m 4000000
int fib[3] = {0, 1, 2};
int main(){
    int n = 2, sum = 2;
    while (fib[(n - 1) % 3] + fib[(n - 2) % 3] < max_m) {
        n++;
        fib[n % 3] = fib[(n - 1) % 3] + fib[(n - 2) % 3];
        if(fib[n % 3] & 1) continue;
        sum += fib[n % 3];
    }
    printf("%d\n", sum);
    return 0;
}
```



## 求素因子(质数)

### $\color{yellow}{OL.3:最大质因数}$

13195的所有质因数为5、7、13和29。

600851475143最大的质因数是多少

```c++
#include <stdio.h>
#define max_m 600851475143LL
int main(){
    long long num = max_m, ans = 0;
    int i = 2;
    while (i * i <= num) {
        if(num % i == 0) ans = i;
        while (num % i == 0) num /= i;
        i++;
    }
    if (num != 1) ans = num;
    printf("lld\n", ans);
}
```



## 滑动窗口法

### $\color{yellow}{OL.8:连续数字最大乘积}$

在下面这个1000位正整数中，连续4个数字的最大乘积是 9 × 9 × 8 × 9 = 5832。


73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450

找出这个1000位正整数中乘积最大的连续13个数字。它们的乘积是多少？



```c++
#include<stdio.h>
#include<string.h>
#define max_n 1000

char num[max_n + 5];
int main() {
    int len = 0;
    while (~scanf("%s", num + len)) len += strlen(num + len);
    long long ans = 0, p = 1, zero = 0;
    for (int i = 0; num[i]; i++) {
        num[i] -= '0';
        if (num[i]) p*= num[i];
        else zero +=1;
        if (i < 13) continue;
        if (num[i - 13]) p /= num[i-13];
        else zero -= 1;
        if (zero == 0 && p > ans) ans = p;
    }
    printf("%lld\n", ans);
    return 0;
}
```



##　大整数的算法

### 大整数加法

#### $\color{yellow}{OL.13 :大整数和}$

计算出以下一百个50位数的和的前十位数字



```c++
#include<stdio.h>
#include<string.h>
#define max_n 53   // 1 * 10 ^50^ * 100 = 1 * 10^52^

char str[max_n + 5];
int ans[max_n + 5] = {1, 0}; // ans[0] 来存储位数.

int main() {
    for (int i = 0; i < 100; i++) {
        scanf("%s", str);
        int len = strlen(str);
        if (ans[0] < len) ans[0] = len;
        for (int i = 0; i < len; i++) ans[len - i] += (str[i] - '0');
        for (int i = 1; i <= ans[0]; i++) {
            if (ans[i] < 10) continue;
            ans[i + 1] += ans[i] / 10;
            ans[i] %= 10;
            ans[0] += (i == ans[0]);

        }
    }
    for (int i = ans[0]; i > ans[0] - 10; i--) {
        printf("%d",ans[i]);
    }
    printf("\n");
    return 0;
}

```

### 大整数乘法

### $\color{yellow}{OL.16:幂的数字和}$

215 = 32768，而32768的各位数字之和是 3 + 2 + 7 + 6 + 8 = 26。

2^1000^的各位数字之和是多少？

```c++
#include<stdio.h>
#define max_n 300
 
int ans[max_n + 5] = {1, 1, 0};
int main(){
    //a^b^ 的大数乘
    for (int i = 0; i < 100; i++) {
        for (int j = 1; j <= ans[0]; j++) ans[j] *= 1024;
        for (int k = 1; k <= ans[0]; k++) {
            if (ans[k] < 10) continue;
            ans[k + 1] += ans[k] / 10;
            ans[k] %= 10;
            ans[0] += (ans[0] == k);
        }
    }
    int sum = 0;
    for (int i = 1; i <= ans[0]; i++) {
        sum += ans[i];

    }
    printf("%d\n", sum);
    return 0;
}

```

### $\color{yellow}{OL.20 : 阶乘数字和}$

n! 的意思是 n × (n − 1) × … × 3 × 2 × 1

例如，10! = 10 × 9 × … × 3 × 2 × 1 = 3628800，所以10!的各位数字和是 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27。

求出100!的各位数字和

```c++
#include<iostream>
#include<cmath>
using namespace std;
#define max_n 300
int ans[max_n + 5] = {1, 1, 0};

void init() {
    //n!大数乘
    for (int i = 1; i <= 100; i++) {
        for (int j = 1; j <= ans[0]; j++) ans[j] *= i;
        for (int k = 1; k <= ans[0]; k++) {
            if (ans[k] < 10) continue;
            ans[k + 1] += ans[k] / 10;
            ans[k] %= 10;
            ans[0] += (k == ans[0]);
        }
    } 
    return ;
} 

int main(){
    init();
    int sum = 0;
    for (int i = 1; i <= ans[0]; i++) {
        sum += ans[i];
        //cout << ans[i] << endl;
    }
    cout << sum << endl;
    return 0;
}
```



### $\color{yellow}{OJ :54.炒鸡大整数}$

#### 题目描述

定义运算 f(x) 为x! 中各位非零值的相乘结果，例如 5!=120 则f(5)=1×2=2

#### 数据输入输出

输入包含多组测试数据，对于每组数据，输入一个 x，输出 f(x)的值。其中 1≤x≤500

#### 循环读入数据

```c++
while (scanf("%d", &x) != EOF) { // do what you want }
```

```c++
#include<stdio.h>
#include<string.h>
#define max_n 1500

int ans[max_n + 5];
int sum[max_n + 5];

void carry(int *arr) {
    for (int i = 1; i <= arr[0]; i++) {
        if(arr[i] < 10) continue;
        arr[i + 1] += arr[i] / 10;
        arr[i] %= 10;
        arr[0] += (i == arr[0]);    
    }
    return ;
}

void solve(int x) {
    memset(ans, 0, sizeof(ans));
    memset(sum, 0, sizeof(sum));
    ans[0] = ans[1] = sum[0] = sum[1] = 1;
    for (int i = 1; i <= x; i++) {
        for (int j = 1; j <= ans[0]; j++) ans[j] *= i;
        carry(ans);
    }

    for (int i = 1; i <= ans[0]; i++) {
        if (!ans[i]) continue;
        for (int j = 1; j <= sum[0]; j++) sum[j] *= ans[i];
        carry(sum);
    }

    for (int i = sum[0]; i > 0; i--) {
        printf("%d", sum[i]);
    }
    printf("\n");
}

int main(){
    int x;
    while (~scanf("%d", &x)) {
        solve(x);
    }  
    return 0;
}

```



## 数字Ｎ的约数个数

> F(A) = (ａ1 + 1) * (b1 + 1);

> 如果Ａ和Ｂ互素， C = Ａ *  B ; 则Ｆ(C) = F(A) * F(B);

> 如果Ａ是素数,则Ｆ(A) = 2;
>
> 第Ｎ个三角形数是f(n) = n * (n + 1) / 2;
>
> 其中易得gcd(n, n + 1) = 1;n 和n  + 1 互质，且为一奇一偶．
>
> 当n为偶数时，F(f(n)) = F(n / 2)  ＊　F(n  + 1);
>
> 当n+ 1为偶数时, F(f(n)) = F(n) ＊F((n + 1) / 2);





$\color{blue}{求约数个数 : }$

```c++
#include <stdio.h>
#define max_n 1000000

int prime[max_n + 5] = {0};
int f[max_n + 5] = {0}; // 因子个数
int cnt[max_n + 5] = {0}; // 最小素因子的次幂

void approximate () {
    for (int i = 2; i <= max_n; i++){
        if (!prime[i]) {
            prime[++(prime[0])] = i;
            f[i] = 2;
            cnt[i] = 1;
        }
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) {
                f[i * prime[j]] = f[i] / (cnt[i] + 1) * (cnt[i] + 2);
                cnt[i * prime[j]] = cnt[i] + 1;
                break;
            } else {
                f[i * prime[j]] = f[i] * f[prime[j]];
                cnt[i * prime[j]] = 1; 
            }
        }
    }
    return ;
}
```



### $\color{yellow}{OL.12:高度可分割的三角数}$

三角形数字的序列是通过将自然数相加而生成的。因此，第7 个三角数将是1 + 2 + 3 + 4 + 5 + 6 + 7 =28。前十个项将是：

1，3，6，10，15，21，28，36，45，55，...

让我们列出前七个三角形数字的因数：

 **1**：1
      	**3**：1,3
		  **6**：1,2,3,6
		**10**：1,2,5,10
		**15**：1,3,5,15
		**21**：1,3,7,21
		**28**：1,2, 4,7,14,28

我们可以看到28是第一个具有超过5个除数的三角形。

拥有超过500个除数的第一个三角形数的值是多少？



```c++
/*************************************************************************
	> File Name: 12.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun May 24 18:55:20 2020
 ************************************************************************/

#include<stdio.h>
#define max_n 1000000

int prime[max_n + 5] = {0};
int f[max_n + 5] = {0}; // 因子个数
int cnt[max_n + 5] = {0}; //记录最小素因子的幂次

void appr() {
    for (int i = 2; i <= max_n; i++) {
        if (!prime[i]) {
            prime[++prime[0]] = i;
            f[i] = 2;
            cnt[i] = 1;
        }
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) {
                f[i * prime[j]] = f[i] / (cnt[i] + 1) * (cnt[i] + 2);
                cnt [i * prime[j]] = cnt[i] + 1;
                break;
            } else {
                f[i * prime[j]] = f[i] * f[prime[j]];
                cnt[i * prime[j]] = 1;
            }
        }
    }
    return ;
}

int main() {
    appr();
    int n = 0, fac = 0;
    while (fac <= 500) {
        n++;
        if (n & 1) {
            fac = f[n] * f[(n + 1) >> 1];
        } else {
            fac = f[n >> 1] * f[n + 1];
        }
    }
    printf("%d\n", n * (n + 1) / 2);
    return 0;
}
```

## 数字Ｎ的约数和（因数和）

![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/coursematerial-197/20200526104947-11h8susazsjkwsw8/e72991b5d8ae2f77_img9?e=1590566759&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:ujiMQO2r5xeNdTLwhqBBQZHRJ1M=)

### $\color{yellow}{OL.21:亲和数}$

记d(n)为n的所有真因数（小于n且整除n的正整数）之和。
如果d(a) = b且d(b) = a，且a ≠ b，那么a和b构成一个亲和数对，a和b被称为亲和数。

例如，220的真因数包括1、2、4、5、10、11、20、22、44、55和110，因此d(220) = 284；而284的真因数包括1、2、4、71和142，因此d(284) = 220。

求所有小于10000的亲和数的和。



```c++
/*************************************************************************
	> File Name: 21.cpp
	> Author: 
	> Mail: 
	> Created Time: Wed May 27 15:21:30 2020
 ************************************************************************/

#include<iostream>
#include<math.h>
using namespace std;
#define max_n 10000

int prime[max_n + 5] = {0};
int f[max_n + 5] = {0};　//因子和
int cnt[max_n + 5] = {0};  //cnt[i] = q^(a1 + 1)^, a1是i的最小素因子的次幂．

void init () {
    for (int i = 2; i <= max_n; i++) {
        if (!prime[i]) {
            prime[++prime[0]] = i;
            f[i] = i + 1;
            cnt[i] = i * i; 
        } 
        for (int j = 1; j <= prime[0]; j++) {
            if (prime[j] * i > max_n) break;
            prime[i * prime[j]] = 1;
            if (i %  prime[j] == 0) {
                cnt[prime[j] * i] = cnt[i] * prime[j];
                f[prime[j] * i] = f[i] * (cnt[i] * prime[j] - 1) / (cnt[i] - 1);
                break;
            } else {
                cnt[prime[j] * i] = prime[j] * prime[j];
                f[prime[j] * i] = f[prime[j]] * f[i];
            }
        }
    }
        return;
}

int main(){
    init();
    for (int i = 2; i < max_n; i++) {
        f[i] -= i;
    }
    long long sum = 0;
    for (int i = 2; i  < max_n; i++) {
        if (f[i] < max_n && i == f[f[i]] && i != f[i]) sum += i;
    }
    cout << sum << endl;
    return 0;
}
```



### $\color{yellow}{OL.23:并非盈数之和}$

完全数是指真因数之和等于自身的那些数。例如，28的真因数之和为1 + 2 + 4 + 7 + 14 = 28，因此28是一个完全数。

一个数n被称为亏数，如果它的真因数之和小于n；反之则被称为盈数。

由于12是最小的盈数，它的真因数之和为1 + 2 + 3 + 4 + 6 = 16，所以最小的能够表示成两个盈数之和的数是24。通过数学分析可以得出，所有大于28123的数都可以被写成两个盈数的和；尽管我们知道最大的不能被写成两个盈数的和的数要小于这个值，但这是通过分析所能得到的最好上界。

找出所有不能被写成两个盈数之和的正整数，并求它们的和。

------

 ```c++
/*************************************************************************
	> File Name: 23.cpp
	> Author: 
	> Mail: 
	> Created Time: Tue Jun  2 19:55:12 2020
 ************************************************************************/

#include<iostream>
#include<cstring>
using namespace std;
#define max_n 28123
int prime[max_n + 5] = {0};
int f[max_n + 5] = {0};
int cnt[max_n + 5] = {0};
void init () {
    for (int i = 2; i <= max_n; i++) {
        if (!prime[i]){
            prime[++prime[0]] = i;
            f[i] = i + 1;
            cnt[i] = i * i;
        }
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) {
                cnt[i * prime[j]] = cnt[i] * prime[j];
                f[i * prime[j]] = f[i] * (cnt[i] * prime[j] - 1) / (cnt[i] - 1);
                break;
            } else {
                cnt[i * prime[j]] = prime[j] * prime[j];
                f[i * prime[j]] = f[prime[j]] *f[i];
            }
        }
    }
    return ;
}


int main () {
    init();
    memset(prime, 0, sizeof(prime));
    for (int i = 2; i <= max_n; i++) {
        f[i] -= i; 
        if (f[i] <= i) continue;　　//　>i是盈数
        f[++f[0]] = i;
        prime[i] = 1;
    }
    int sum = 1;　// 1不是盈数
    for (int i = 2; i <= max_n; i++) {
        int flag = 1;
        for (int j = 1; flag && f[j] < i; j++) {
            flag = !prime[i - f[j]];
        }
        if (!flag) continue;
        sum += i;
    }
    cout << sum << endl;
    return 0;
}

 ```



## 记忆化解法

### $\color{yellow}{OL.14:最长考拉兹序列}$

在正整数集上定义如下的迭代序列：

n → n/2 （若n为偶数）
		n → 3n + 1 （若n为奇数）

从13开始应用上述规则，我们可以生成如下的序列：

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

可以看出这个序列（从13开始到1结束）共有10项。尽管还没有被证明，但我们普遍认为，从任何数开始最终都能迭代至1（“考拉兹猜想”）。

从小于一百万的哪个数开始，能够生成最长的序列呢？

**注：** 序列开始生成后允许其中的项超过一百万



![img](https://ese3a9b6c5d0ic.prissl.qiqiuyun.net/course-activity-446/20200517113717-meqlf1wza1c8k80w/50caeeb9abe20e91_img4?e=1589877998&token=ExRD5wolmUnwwITVeSEXDQXizfxTRp7vnaMKJbO-:h41GPtFtaxvAiyIXwIqNOzdrz_k=)

#### 暴力法

```c++
#include<stdio.h>
#define max_n 1000000

typedef long long ll;

ll get_len(ll n) {
    if (n == 1) return 1;
    if (n & 1) return get_len(3 * n + 1) + 1;
    return get_len(n >> 1) + 1;
}

int main () {
    int ans = 0, len = 0;
    for (int i = 1; i < max_n; i++) {
        int tmp = get_len(i);
        if (tmp <= len) continue;
        ans = i;
        len = tmp;
    }
    printf("%d\n", ans);
    return 0;
}

```



#### $\color{red}{记忆化解法}$

```c++
#include<stdio.h>
#define max_n 1000000
#define max_m 1000000

int keep[max_m + 5] = {0};

typedef long long ll;
ll get_len(ll n) {
    if (n == 1) return 1;
    if (n < max_m && n < keep[n]) return keep[n];
    ll ret;
    if (n & 1) ret = get_len(3 * n + 1) + 1;
    else ret =  get_len(n >> 1) + 1;
    if (n < max_m) keep[n] = ret;
    return ret;
}
int main () {
    int ans = 0, len = 0;
    for (int i = 1; i < max_n; i++) {
        int tmp = get_len(i);
        if (tmp <= len) continue;
        ans = i;
        len = tmp;
    }
    printf("%d\n", ans);
    return 0;
}

```

$\color{red}{记忆空间不是越大越好，页面置换会耗时}$



##　递推

### $\color{yellow}{OL.18:  最大路径 }$

从下面展示的三角形的顶端出发，不断移动到在下一行与其相邻的元素，能够得到的最大路径和是23。

​																					 	3
​																								7 4
​																							2 **4** 6
​																						8 5 **9** 3

如上图，最大路径和为 3 + 7 + 4 + 9 = 23。

求从下面展示的三角形顶端出发到达底部，所能够得到的最大路径和：

​														75
​															95 64
​														17 47 82
​													18 35 87 10
​												20 04 82 47 65
​											19 01 23 75 03 34
​										88 02 77 73 07 63 67
​									99 65 04 28 06 16 70 92
​								41 41 26 56 83 40 80 70 33
​							41 48 72 33 47 32 37 16 94 29
​						53 71 44 65 25 43 91 52 97 51 14
​					70 11 33 28 77 73 17 78 39 68 17 57
​				91 71 52 38 17 14 91 43 58 50 27 29 48
​			63 66 04 68 89 53 67 30 73 16 69 87 40 31
​		04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
​	

#### 1.记忆法

```c++
#include<iostream>
#include <algorithm>
using namespace std;
#define max_n 15

int arr[max_n + 5][max_n + 5];
int keep[max_n + 5][max_n + 5] = {0};

int dfs (int i, int j, int n) {
    if (i + 1 == n) return arr[i][j];
    if (keep[i][j]) return keep[i][j];
    int val1 = dfs(i + 1, j , n);
    int val2 = dfs(i + 1, j + 1, n);
    return keep[i][j] = max(val1, val2) + arr[i][j];
}
int main(){
    for (int i = 0; i < max_n; i++) {
        for (int j = 0; j <= i; j++) {
            cin >> arr[i][j];
        }
    }
    cout << dfs(0, 0, max_n) << endl;
    return 0;
}

```



#### 3.递推法

```c++
#include<iostream>
using namespace std;
#define max_n 15

int arr[max_n + 5][max_n + 5];
int main(){
    for (int i = 0; i <= max_n; i++) {
        for (int j = 0; j <= i; j++) {
            cin >> arr[i][j];
        }
    }
    for (int i = max_n - 2; i >=0; i--) {
        for (int j = 0; j <= i; j++) {
            arr[i][j] += max(arr[i + 1][j], arr[i + 1][j + 1]);
        }
    }
    cout << arr[0][0] << endl;
    return 0;
}

```



### $\color{yellow}{OL.31:硬币求和}$

英国的货币单位包括英镑£和便士p，在流通中的硬币一共有八种：

> 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), £2 (200p)

以下是组成£2的其中一种可行方式：

> 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

不限定使用的硬币数目，组成£2有多少种不同的方式？

```c++

```









```c++
/*************************************************************************
	> File Name: 452.cpp
	> Author: 
	> Mail: 
	> Created Time: Fri May 29 23:58:15 2020
 ************************************************************************/

#include<iostream>
#include<algorithm>
using namespace std;
#define max_n 10000

int num[max_n + 5];

int main () {
    int n, s = 0;
    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> num[i];
    }
    for  (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            if (num[i] > num[j])
            s++;
        }
    }
    cout << s << endl;
    return 0;
}

```



## 素勾股数(a^2^  + b^2^ = c^2^)

如果（a, b, c）三者互质（他们的最大公因数是一）， 他们就被称为素勾股数。

​										a^2^ + b^2^  =  c^2^

素勾股数具有以下性质：

==性质1：他们的整数倍也是勾股数， 即（na, nb, nc）也是勾股数==

==性质2：（a, b, c）之间两两互质==

==性质3：a, b必有一奇一偶==

证明：

>  如果a, b都是偶数，则c必为偶，故不成立。

> 如果a, b同为奇数， 则c必为偶。

>  令c = 2 * k ,则c ^2^ = 4 *k ^2^, c%4 = 0

> a= 2n +1,b= 2m+1则a^2^ + b^2^ = 4(n^2^ + m^2^) + 4(m + n) + 2, a^2^+b^2^ %4= 2;

> 故a^2^ + b^2^ != c^2^, 故不成立。

> 故a, b必为一奇一偶。

==性质4：任何素勾股数均可表示如下形式，其中n < m，且gcd(n, m) = 1==

​					==a = 2 *   n   *   m==

​					==b = m^2^ - n^2^==

​					==c = m^2^  + n ^2^==

证：

> 令a= 2mn

> 则a^2^ = (c -b)(c + b) = 4n^2^m^2^,

> 则(c - b) / 2 *(c + b) / 2 = n^2^m^2^

> 故证gcd((c-b)/ 2, (c+ b)/ 2)互素，

> 令gcd((c - b)/2, (c+b)/ 2) = d,

> 令(c- b)/ 2 = xd,(c+ b)/2=yd    =>    (c-d)= 2xd, c=b=2yd   =>  c= (x+y)d, b= (y-x)d, 因c和b互素，故d= 1,	
>
> 故（c-b)/2 与（c+b/2互素。

> 因为（c-b）/ 2*(c+b)/ 2互素，n和m 互素故

> (c-b)/2 = n^2^,(c+b)/2 = m^2^ =>c = m^2^ + n^2^, b = m^2^ - n^2^,z=2mn

### $\color{yellow}{OL.9:特殊毕达哥拉斯三元组}$

毕达哥拉斯三元组是三个自然数a < b < c组成的集合，并满足

a2 + b2 = c2

例如，32 + 42 = 9 + 16 = 25 = 52。

有且只有一个毕达哥拉斯三元组满足 a + b + c = 1000。求这个三元组的乘积abc。 

```c++
/*************************************************************************
	> File Name: 9.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun May 31 14:09:54 2020
 ************************************************************************/

#include<iostream>
#include<cmath>
using namespace std;

int gcd (int a, int b) {
    return (b ? gcd(b, a % b) : a);        
}

int main () {
    int ans = 0;
    for (int n =  1; n <= 16; n++) {  // a + b + c = 2 * m * n + 2 * m^2^ < 4 *n^2^  <= 1000 => n <= 16
        for (int m = n + 1; m * n + m * m < 500; m++) {
            if (gcd(n, m) - 1) continue;
            int a = 2 * n * m;
            int b = m * m - n * n;
            int c = m * m + n * n;
            if (1000 % (a + b + c) == 0) {
                int k = 1000 / (a + b + c);
                ans = a * b * c * pow(k,  3);
            }
            if(ans) break;
        }
        if (ans) break;
    }
    cout << ans << endl;
    return 0;
```



### $\color{yellow}{OL.39:整数边长直角三角形}$

若三边长{a,b,c}均为整数的直角三角形周长为p，当p = 120时，恰好存在三个不同的解：

{20,48,52}, {24,45,51}, {30,40,50}

在所有的p ≤ 1000中，p取何值时有解的数目最多？

```c++
/*************************************************************************
	> File Name: 39.cpp
	> Author: 
	> Mail: 
	> Created Time: Tue Jun  2 20:41:57 2020
 ************************************************************************/

#include<iostream>
using namespace std;
#define max_n 1000

int cnt[max_n + 5] = {0};

int gcd(int a, int b) {
    return (b ? gcd(b, a % b) : a);
}

void init() {
    for (int n = 1; n <= 16; n++) {
        for (int m = n + 1; m * m + m * n <= max_n / 2; m++) {
            if (gcd(m, n) - 1) continue;
            int a = 2 * m * n;
            int b = m * m - n * n;
            int c = m * m + n * n; 
            for (int p = a + b + c; p <= max_n; p += (a + b + c)) {
                cnt[p] += 1;

            }
        }
    }
    return ;
}

int main(){
    init();
    int p = 1;
    for (int i = 1; i <= max_n; i++) {
        if (cnt[i] > cnt[p]) p = i;
    }
    cout << p << endl;
    return 0;
}

```



## 折半查找

#### $\color{yellow}{OJ.179: 二分法求方程近似解}$

 二分法是一种求解方程近似根的方法。对于一个函数 f(x)f(x)，使用二分法求 f(x)f(x) 近似解的时候，我们先设定一个迭代区间（在这个题目上，我们之后给出了的两个初值决定的区间[−20,20][−20,20]），区间两端自变量 xx 的值对应的 f(x)f(x) 值是异号的，之后我们会计算出两端 xx 的中点位置 x′x′ 所对应的 f(x′)f(x′)，然后更新我们的迭代区间，确保对应的迭代区间的两端 xx 的值对应的f(x)f(x) 值还会是异号的。

 重复这个过程直到我们某一次中点值 x′x′ 对应的 f(x′)<ϵf(x′)<ϵ（题目中可以直接用 `EPSILON` ）就可以将这个 x′x′ 作为近似解返回给 `main` 函数了。

例如：

![img](http://47.93.11.51:88/img/2019-04-19/C68EBB6B22304796A889A92AA919FD7D.png)

 上面所示的一个迭代过程的第一次的迭代区间是 [a1,b1][a1,b1] ，取中点 b2b2 ，然后第二次的迭代区间是 [a1,b2][a1,b2] ，再取中点 a2a2 ，然后第三次的迭代区间是 [a2,b2][a2,b2]，然后取 a3a3，然后第四次的迭代区间是 [a3,b2][a3,b2] ，再取红色中点 cc ，我们得到发现 f(c)f(c) 的值已经小于 ϵϵ，输出 cc 作为近似解。

 在这里，我们将用它实现对形如 px+q=0px+q=0 的一元一次方程的求解。

 在这里，你完成的程序将被输入两个正整数 pp和 qq（你可以认为测评机给出的 0<|p|≤10000<|p|≤1000 且0<|q|≤10000<|q|≤1000 ），程序需要用二分法求出 px+q=0px+q=0 的近似解。

------

#### 输入

 测评机会反复运行你的程序。每次程序运行时，输入为一行，包括一组被空格分隔开的符合描述的正整数pp 和qq 。你可以认为输入数据构成的方程px+q=0px+q=0 都是有解且解在[−20,20][−20,20] 的区间内。

#### 输出

输出为一行，包括一个数字。为方程px+q=0px+q=0 的近似解。请使用四舍五入的方式保留小数点后44 位小数。

```c++
/*************************************************************************
	> File Name: 179.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat May 30 01:04:39 2020
 ************************************************************************/

#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
#define EPSL 1e-6
int p, q;
inline double fac(double x){
    return p * x + q;
}

inline double find(double f, double l, int p, int q){
    double first = f, tail = l, mid;
    while (fabs(first - tail) > EPSL){
        mid = (first + tail)  / 2;
        if (fac(first) * fac(mid) > 0) first = mid;
        else tail = mid;
    }
    return mid;
}
int main(){
    cin >> p >> q;
    printf("%.4lf\n", find(-20, 20, p, q));
    return 0;
}

```



## 计算星期

### 蔡勒公式(不跨世纪)

#### $\color{yellow}{OL.19:数星期日}$

下列信息是已知的，当然你也不妨自己再验证一下。

- 1900年1月1日是星期一。
- 三十天在九月中，
  四六十一也相同。
  剩下都是三十一，
  除去二月不统一。
  二十八天平常年，
  多加一天在闰年。
- 闰年指的是能够被4整除却不能被100整除的年份，或者能够被400整除的年份。

在二十世纪（1901年1月1日到2000年12月31日）中，有多少个月的1号是星期天？

星期一是1, 星期二是2,星期天是0;

```c++
/*************************************************************************
	> File Name: 19.cpp
	> Author: 
	> Mail: 
	> Created Time: Thu Jun  4 18:08:29 2020
 ************************************************************************/

#include<iostream>
using namespace std;

int f(int y, int m, int d) {
    if (m <= 2) {
        m += 12;
        y--;
    }
    return (d + 2 * m + 3 * (m + 1) / 5 + y + y /4 - y / 100 + y / 400) % 7;//蔡勒公式
}

void init() {
    int sum = 0;
    for (int y = 1901; y <= 2000; y++){
        for (int m = 1; m <= 12; m++){
            if (f(y, m, 1) == 6) sum++;
        }
    }
    cout <<  sum << endl;
}


int main() {
    init();
    return 0;
}

```



###  泽勒公式(跨世纪)

#### $\color{yellow}{153. 某天是星期几}$

题目描述

 泽勒一致性是由克里斯汀·泽勒开发的用于计算某天是星期几的算法。这个公式是：

 h=(q+26(m+1)/10+k+k/4+j/4+5j) mod 7h=(q+26(m+1)/10+k+k/4+j/4+5j) mod 7

 其中：

 一、h是一个星期中的某一天（0 为星期六，1 为星期天，2 为星期一……6 为星期五)

 二、q 是某月的第几天

 三、m 是月份（33 为三月，44 为 四月……）。一月和二月分别记为上一年的 13 和 14 月

 四、j 是世纪数 -1，（即为 year÷100）

 五. k 是该世纪的第几年（即 year%100）

 注意，公式中的除法是整除。编写程序，输入年月日，输出它是一周中的星期几。

 一月和二月在公式里是用 13 和 14 表示的，所以需要将用户输入的月份 1 转换为 13，2转换为 14，同时将年份改为前一年。

------

输入

 输入三个整数，分别表示年月日。保证数据合法。

输出

 输出一个整数，表示是一周中的周几（从 11 到 77）。

```c++
#include<iostream>
using namespace std;

int day[12] = {7, 1, 2, 3, 4, 5, 6};

int f(int y, int m, int d){
    int j = y / 100;
    y %= 100;
    return (d + 26 * (m + 1) / 10 + y + y / 4 + j / 4 + 5 * j) % 7;
}

int main () {
    int y, m, d, j;
    cin >> y >> m >> d;
    if (m == 1 || m == 2) {
        m += 12;
        y -= 1;
    }
    int h = f(y, m, d);
    cout << day[(h + 6) % 7] << endl;
    return 0;
}

```

## 前缀和

### $\color{yellow}{OL.50:连续素数的和}$

素数41可以写成六个连续素数的和：

41 = 2 + 3 + 5 + 7 + 11 + 13

在小于一百的素数中，41能够被写成最多的连续素数的和。

在小于一千的素数中，953能够被写成最多的连续素数的和，共包含连续21个素数。

在小于一百万的素数中，哪个素数能够被写成最多的连续素数的和？

```c++
/*************************************************************************
	> File Name: 50.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jun  6 14:07:55 2020
 ************************************************************************/

#include<iostream>
#include<cstdio>
using namespace std;
#define max_n 1000000

int prime[max_n + 5] = {0};
int is_prime[max_n + 5] = {0};
long long sum[max_n + 5] = {0};

void primescreen();
void prefix();
void init();

int main ()  {
    primescreen();
    prefix();
    init();
    return 0;
}

void primescreen() {
    for (int i = 2; i < max_n; i++) {
        if (!is_prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            is_prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) break;
        }
    }
    return ;
}

void prefix() {
    for (int i = 1; i <= prime[0]; i++) {
        sum[i] = sum[i - 1] + prime[i];
    }
    return ;
}

void init(){
    int ans, len = 0;
    for (int i = 0; i < prime[0]; i++) {
        for (int j = i + 1; j <= prime[0]; j++) {
            long long  tmp = sum[j] - sum[i];
            if (tmp < max_n && !is_prime[tmp] && j - i > len) {
                len = j - i;
                ans = tmp;
            }
        }
    }
    cout << ans << endl;
    return ;
    
}

```

区间最大值是Ｓn - Smin

Smin 是Ｓ１到Ｓn-1的最小值





## binary_search

### $\color{yellow}{OL.24:字典序排列}$

排列指的是将一组物体进行有顺序的放置。例如，3124是数字1、2、3、4的一个排列。如果把所有排列按照数字大小或字母先后进行排序，我们称之为字典序排列。0、1、2的字典序排列是：

012  021  102  120  201  210

数字0、1、2、3、4、5、6、7、8、9的字典序排列中第一百万位的排列是什么？

```c++
/*************************************************************************
	> File Name: 24.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun May 31 19:08:26 2020
 ************************************************************************/

#include<iostream>
using namespace std;
#define max_n 10
#define max_m 1000000

int f[max_n + 5];　//剩下个数的阶乘
int num[max_n + 5];　//该数能否再使用

void init() {
    f[0] = 1;
    num[0] = 1;
    for (int i = 1; i < max_n; i++) {
        f[i] = i * f[i - 1];
        num[i] = 1;
    }
    return ;
}

int get_num(int k, int val, int &x) {
    int step = k / val;
    x = 0;
    for (int t = 0; t <= step; x += (t <= step)  ){
        t += num[x];
    }
    num[x] = 0;
    k %= val;
    return k;
}

int main () {
    init();
    int k = max_m - 1, x;
    for (int i = max_n - 1; i >= 0; i--) {
        k = get_num(k, f[i], x);
        cout << x;
    }
    cout << endl;
    return 0;
}

```



### $\color{yellow}{OL.43:子串的可整除性}$

1406357289是一个0至9全数字数，因为它由0到9这十个数字排列而成；但除此之外，它还有一个有趣的性质：子串的可整除性。

记d1是它的第一个数字，d2是第二个数字，依此类推，我们注意到：

- d2d3d4=406能被2整除
- d3d4d5=063能被3整除
- d4d5d6=635能被5整除
- d5d6d7=357能被7整除
- d6d7d8=572能被11整除
- d7d8d9=728能被13整除
- d8d9d10=289能被17整除

找出所有满足同样性质的0至9全数字数，并求它们的和。

```c++
/*************************************************************************
	> File Name: 43.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jun  6 16:11:08 2020
 ************************************************************************/

#include<iostream>
#include<algorithm>
using namespace std;

int prime[8] = {7, 2, 3, 5, 7, 11, 13, 17};
int num[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};


long long add_to_num(int *num) {
    long long ret = 0;
    for (int i = 0; i < 10; i++) {
        ret = ret * 10 + num[i];
    }
    return ret;
}

int is_val(int *num, int *prime) {
    int flag = 1;
    for (int i = 1; flag && i < 8; i++) {
        int temp = num[i] * 100 + num[i + 1] * 10 + num[i + 2];
        flag = !(temp % prime[i]);
    }
    return flag;   
}

int main() {
    int cnt = 1;
    long long sum = 0;
    do {
        if (is_val(num, prime)) sum += add_to_num(num); 
    } while (next_permutation(num, num + 10));
    cout << sum << endl;
    cout << "cnt : "  << cnt << endl;
    return 0;
}

```



### $\color{yellow}{OL.41:全数字的素数}$

如果一个n位数恰好使用了1至n每个数字各一次，我们就称其为全数字的。例如，2143就是一个4位全数字数，同时它恰好也是一个素数。

最大的全数字的素数是多少

```c++
/*************************************************************************
	> File Name: 41.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jun  6 18:10:59 2020
 ************************************************************************/

#include<iostream>
#include<algorithm>
using namespace std;
#define max_n 10000000

int prime[max_n + 5] = {0};
int is_prime[max_n + 5] = {0};

void primescreen() {
    for (int i = 2; i < max_n; i++) {
        if (!is_prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > max_n) break;
            is_prime[i * prime[j]] = 1;
            if (i % prime[j] == 0) break;
        }
    }
    return ;
}

int add_to_num(int *num, int n) {
    int ret = 0;
    for (int i = 0; i < n; i++) {
        ret = ret * 10 + num[i];
    }
    return ret;
}

int main () {
    primescreen();
    int num[10];
    int n = 7, ans = 0;
    while (n && !ans) {
        for (int i = 0; i < n; i++) num[i] = n - i;
        do {
            int temp = add_to_num(num, n);
            if (!is_prime[temp]) ans = temp;
        }while (prev_permutation(num, num + n) && !ans);
        n--;
    }
    cout << ans << endl;
    return 0;
}

```

## 其他

### 文本的输入、名字的排序、字符转数字

$\color{yellow}{OL.22:姓名得分}$

在这个46K的文本文件[names.txt](https://projecteuler.net/project/resources/p022_names.txt)（右击并选择“目标另存为……”）中包含了五千多个姓名。首先将它们按照字母序排列，然后计算出每个姓名的字母值，乘以它在按字母顺序排列后的位置，以计算出姓名得分。

例如，按照字母序排列后，位于第938位的姓名COLIN的字母值是3 + 15 + 12 + 9 + 14 = 53。因此，COLIN的姓名得分是938 × 53 = 49714。

文件中所有姓名的姓名得分之和是多少？

```c++
/*************************************************************************
	> File Name: 22.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jun  7 14:11:23 2020
 ************************************************************************/

#include<iostream>
#include<algorithm>
#include<string.h>
#include<cstdlib>
#include "name.text"
using namespace std;

bool cmp(string a, string b) {
    return a < b;
}

int add_to_num(string str, int n){
    int ret = 0;
    for (int i = 0; str[i]; i++) {
        ret += str[i] - 'A' + 1;
    }
    return ret * n;
}


int main() {
    int n = 0;
    long long sum = 0;
    for (int i = 0; name[i] != "\0"; i++) n++;
    sort(name, name + n, cmp);
    for (int i = 0; i < n; i++) {
        sum += add_to_num(name[i], i + 1);
    }
    cout << sum << endl;
    return 0;
}

```



$\color{yellow}{OL.26:倒数的循环节}$

单位分数指分子为1的分数。分母为2至10的单位分数的十进制表示如下所示：

1/2= 0.5
1/3= 0.(3)
1/4= 0.25
1/5= 0.2
1/6= 0.1(6)
1/7= 0.(142857)
1/8= 0.125
1/9= 0.(1)
1/10= 0.1

这里0.1(6)表示0.166666…，括号内表示有一位循环节。可以看出，1/7有六位循环节。

找出正整数d < 1000，其倒数的十进制表示小数部分有最长的循环节。

```c++
/*************************************************************************
	> File Name: 26.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun May 31 20:15:46 2020
 ************************************************************************/

#include<iostream>
#include<cstring>
using namespace std;
#define max_n 1000

int keep[max_n + 5];

int get_len(int d) {
    memset(keep, 0, sizeof(keep));
    int r = 1, t = 0;
    while (r) {
        t += 1;
        keep[r] = t;
        r *= 10;
        r %= d;
        if (keep[r]) return t;
    }
    return 0;
}
int main () {
    int ans, len;
    for (int i = 2; i < max_n; i++) {
        int temp = get_len(i);
        if (temp > ans) {
            ans = i;
            len = temp;
        }
    }
    cout << ans << " " << len << endl;

    return 0;

}

```



### $\color{yellow}{OL.17:表达数字的英文字母计数}$

如果把1到5写成英文单词，分别是：one, two, three, four, five，这些单词一共用了3 + 3 + 5 + 4 + 4 = 19个字母。

如果把1到1000都写成英文单词，一共要用多少个字母？

**注意：** 不要算上空格和连字符。例如，342（three hundred and forty-two）包含23个字母，而115（one hundred and fifteen）包含20个字母。单词“and”的使用方式遵循英式英语的规则。

```c++
#include <stdio.h>
int get_letter(int n) {
    static int toptwenty[20] = {
        0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 
    };
    static int wholeten[10] = {
        0, 0, 6, 6, 5, 5, 5, 7, 6, 6
    };
    if(n < 20) return toptwenty[n];
    if(n < 100) return wholeten[n / 10] + toptwenty[n % 10];
    if(n < 1000){
        int temp = get_letter(n % 100);
        if (temp) temp += 3;    // and是３个字母
        return temp + toptwenty[n / 100] + 7;  
    }
    if (n == 1000) return 11;
    return 0;
}
int main(){
    int sum = 0;
    for (int i = 1; i <= 1000; i++) {
        sum += get_letter(i);
    }
    printf("%d\n", sum);
    return 0;
}

```

全局数组的初始话是先输出已经赋值的数，未赋值的数系统会输出为０

而局部（函数里）数组的初始化会先输出已经赋值的数，而未赋值的数会不确定。因此要对局部在数组前加$\color{red}{static}$,这样局部数组就会和全局数组的初始化一样了。

### $\color{yellow}{OL.32:全数字的乘积}$

如果一个n位数包含了1至n的所有数字恰好一次，我们称它为全数字的；例如，五位数15234就是1至5全数字的。

7254是一个特殊的乘积，因为在等式39×186 = 7254中，被乘数，乘数和乘积恰好是1至9全数字的。

找出所有被乘数，乘数和乘积恰好是1至9全数字的乘法等式，并求出这些等式中乘积的和。

注意：有些乘积可能从多个乘法等式中得到，但在求和的时候只计算一次。



```c++
/*************************************************************************
	> File Name: 32.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun May 10 16:07:53 2020
 ************************************************************************/
#include <stdio.h>
#include <math.h>
int add_to_num(int x, int *num){

    while (x) {
        if(num[x % 10]) return 0;
        num[x % 10] += 1; 
        x /= 10;
    }
    return 1;

}
inline int dight(int n) {
    if (n == 0) return 1;
    return floor(log10(n)) + 1;

}
int is_val(int a, int b, int c) {
    if (dight(a) + dight(b) + dight(c) - 9) return 0;
    int num[10]= {0};
    num[0] = 1;
    if(add_to_num(a, num) && add_to_num(b, num) && add_to_num(c, num)) return 1;
    return 0;

}
int keep[10000] = {0};
int main(){
    int sum = 0;
    for (int a = 1; a < 100; a++) {
        for (int b = a + 1; b < 10000; b++) {
            if (!is_val(a, b, a * b)) continue;
            if(keep[a * b]) continue;
            printf("%d * %d = %d\n", a, b, a * b); 
            sum += a * b;
            keep[a * b] = 1;

        }
    }
    printf("%d\n", sum);
    return 0;
 }

```



###  $\color{yellow}{OL.46:哥德巴赫的另一个猜想}$

克里斯蒂安·哥德巴赫曾经猜想，每个奇合数可以写成一个素数和一个平方的两倍之和。

9 = 7 + 2×12

15 = 7 + 2×22

21 = 3 + 2×32

25 = 7 + 2×32

27 = 19 + 2×22

33 = 31 + 2×12

最终这个猜想被推翻了。

最小的不能写成一个素数和一个平方的两倍之和的奇合数是多少？



```c++
#include<stdio.h>
#define max_n 1000000
int prime[max_n + 5] = {0};
int is_prime[max_n + 5] = {0};
void init() {
    for (int i = 2; i <= max_n; i++){
        if (!is_prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++){
            if (prime[j] * i > max_n) break;
            is_prime[prime[j] * i] = 1;
            if (i % prime[j] == 0) break;
        }
    }
    return ;
}

int func(int n){
    return 2 * n * n;
}
int binary_search(int (*func)(int), int l, int r, int x){
    if (l > r) return 0;
    int mid = (l + r) >> 1;
    if (func(mid) == x) return mid;
    if (func(mid) < x) l = mid + 1;
    else r = mid - 1;
    return binary_search(func, l , r, x);
    
}
int is_val (int n) {
    for (int i = 1; prime[i] < n && i <= prime[0]; i++){
        int x = n - prime[i];
        if (binary_search(func, 1, x, x)) return 1;
    }
    return 0;
}
int main(){
    init();
    for (int i = 9;  ; i += 2) {
        if (!is_prime[i]) continue;
        if (is_val(i)) continue;
        printf("%d\n", i);
        break;
    }
    return 0;
}

```

### $ \color{yellow}{OL.47:.不同的质因数}$

首次出现连续两个数均有两个不同的质因数是在：

14 = 2 × 7
		15 = 3 × 5

首次出现连续三个数均有三个不同的质因数是在：

644 = 22 × 7 × 23
		645 = 3 × 5 × 43
		646 = 2 × 17 × 19

首次出现连续四个数均有四个不同的质因数时，其中的第一个数是多少？



```c++
#include<stdio.h>
#define max_n 1000000
int prime[max_n + 5] = {0};
void init() {
    for (int i = 2; i <= max_n; i++) {
        if (prime[i]) continue;

        for (int j = i; j <= max_n; j += i){
            prime[j] += 1;
        }
    }
    return ;
}
int main(){
    init();
    for (int i = 2; ; i++) {
        int flag = 1;
        for (int j = 0; flag && j < 4; j++) {
            flag = flag && (prime[i + j] == 4);
        }
        if (!flag) continue;
        printf("%d\n", i);
        break;
    }
    return 0;

}
```



### $\color{yellow}{OL.38:全数字的倍数}$

将192分别与1、2、3相乘：

> 192 × 1 = 192
> 192 × 2 = 384
> 192 × 3 = 576

连接这些乘积，我们得到一个1至9全数字的数192384576。我们称192384576为192和(1,2,3)的连接乘积。

同样地，将9分别与1、2、3、4、5相乘，得到1至9全数字的数918273645，即是9和(1,2,3,4,5)的连接乘积。

对于n > 1，所有某个整数和(1,2, … ,n)的连接乘积所构成的数中，最大的1至9全数字的数是多少？

```c++
#include<iostream>
#include<cmath>
using namespace std;
#define max_n 100000

inline int dight(long long x) {
    if (x == 0) return 1;
    return floor(log10(x)) + 1;
}

long long calc(int x) {
    long long n = 0, ans = 0;
    while (dight(ans) < 9) {
        n += 1;
        ans = ans * pow(10, dight(n * x));
        ans += n * x;
    }
    if (dight(ans) - 9) return 0;
    int num[10] = {1, 0};
    long long tmp = ans;
    while (tmp) {
        if (num[tmp % 10]) return 0;
        num[tmp % 10] += 1;
        tmp /= 10;
    }
    return ans;
}

int main() {
    long long ans = 0;
    for (int i = 1; i < max_n; i++) {
        long long tmp = calc(i);
        ans = (tmp > ans ? tmp : ans);
    }
    cout << ans << endl;
    return 0;
}
```

### $\color{yellow}{OL.31:硬币求和}$

英国的货币单位包括英镑£和便士p，在流通中的硬币一共有八种：

> 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), £2 (200p)

以下是组成£2的其中一种可行方式：

> 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

不限定使用的硬币数目，组成£2有多少种不同的方式？

1.

```c++
#include<iostream>
using namespace std;
#define max_n 8
#define max_m 200

int f[max_n + 5][max_m + 5];
int w[max_n + 5] = {1, 2, 5, 10, 20, 50, 100, 200};

int main() {
    for (int i = 0; i < max_n; i++) {
        f[i][0] = 1;
        for (int j = 1; j <= max_m; j++) {
            f[i][j] = 0;
            if (i >= 1) f[i][j] += f[i - 1][j];
            if (j >= w[i]) f[i][j] += f[i][j - w[i]];
        }
    }
    cout << f[max_n - 1][max_m] << endl;

    return 0;
}

```

2.

```c++
#include<iostream>
using namespace std;
#define max_n 8
#define max_m 200
int f[2][max_m + 5];
int w[max_n  + 5] = {1, 2, 5, 10, 20, 50, 100, 200};

int main() {
    for (int k = 0; k < max_n; k++) {
        int i = k % 2;
        f[i][0] = 1;
        for (int j = 1; j <= max_m; j++) {
            f[i][j] = f[i ^ 1][j];
            if (j >= w[k]) f[i][j] += f[i][j - w[k]];
        }
    }
    cout << f[(max_n - 1) % 2][max_m] << endl;
    return 0;
}

```

3.

```c++
#include<iostream>
using namespace std;
#define max_n 8
#define max_m 200

int f[max_n + 5];
int w[max_n  + 5] = {1, 2, 5, 10, 20, 50, 100, 200};

int main() {
    f[0] = 1;
    for (int k = 0; k < max_n; k++) {
        for (int j = w[k]; j <= max_m; j++) {
             f[j] += f[j - w[k]];
        }
    }
    cout << f[max_m] << endl;
    return 0;
}

```



### $\color{yellow}{OL.29:不同的幂}$

考虑所有满足2 ≤ a ≤ 5和2 ≤ b ≤ 5的整数组合生成的幂a^b^：

> 2^2^=4, 2^3^=8, 2^4^=16, 2^5^=32
> 		3^2^=9, 3^3^=27, 3^4^=81, 3^5^=243
> 		4^2^=16, 4^3^=64, 4^4^=256, 4^5^=1024
> 		5^2^=25, 5^3^=125, 5^4^=625, 5^5^=3125

如果把这些幂按照大小排列并去重，我们得到以下由15个不同的项组成的序列：

4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125

在所有满足2 ≤ a ≤ 100和2 ≤ b ≤ 100的整数组合生成的幂ab排列并去重所得到的序列中，有多少个不同的项？

```c++
/*************************************************************************
	> File Name: 29.cpp
	> Author: 
	> Mail: 
	> Created Time: Tue Jun  2 16:57:05 2020
 ************************************************************************/

#include<iostream>
#include<cstring>
#include<algorithm>
using namespace std;
#define max_n 10000
#define max_m 100
struct Tuple {
    int p, a;// p是最小素因子，a是次幂
} arr[max_n + 5][4];

int prime[max_m + 5] = {0};

void primescreen () {
    for (int i = 2; i <= max_m; i++) {
        if (prime[i]) continue;
        for (int j = i; j <= max_m; j += i) {
            if (prime[j]) continue;
            prime[j] = i;
        }
    }
    return ;
}

void get_num(int a, int b, Tuple *temp) {
    int len = 0;
    while (a != 1) {
        int p_num = 0, pre = prime[a];
        while (a % pre == 0) p_num++, a /= pre; 
        temp[len].p = pre, temp[len].a = p_num * b;
        len++;
    }
    return ; 
}

int init() {
    int cnt = 0;//当前产生多少个不同结果的原组，多少个不同的a^b的值
    for (int a = 2; a <= max_m; a++) {
        for (int b = 2; b <= max_m; b++) {
            Tuple temp[4] = {0};
            get_num(a, b, temp);
            int flag = 1;
            for (int i = 0; i < cnt && flag; i++) {
                flag = memcmp(arr[i], temp, sizeof(temp));
            }
            if (!flag) continue;
            memcpy(arr[cnt++], temp, sizeof(temp));
        }
    }
    return cnt;
}
int main() {
    primescreen();
    cout << init() << endl;
    return 0;
}
```

# 十二



## $\color{red}{sizeof}$  :

返回数组中元素的数量或返回数据类型的字节数。



## $\color{red}{const}$:

**常量指针：const在*前面，***指向常量的指针,内容不变。

int const *n；或者是 const int *n；

**指针常量**：**const在*后面***，指针本身是常量，不可修改,地址不变.

int *const  n;

```c++
1.常量指量

int a，b；
const int *p = &a；//常量指针    
*p = 8；    //错误，*p不可修改 （ERROR）

p = &b         //正确，p 可以修改 p = &b



2.指针常量

int a；
int * const p = &a    //指针常量

*p = 8；   //正确，*p可以修改

p++        //错误,p不可以修改
```



## $\color{red}{getchar}$ :

getchar 是用于字符输入的C库函数，其函数的声明包含在头文件 stdio.h，函数声明为： int getchar(void).其功能是**读取标准输入stdin中的一个字符**。

　　getchar 从标准输入中读取数据，而 stdin 是采用行缓冲的方式记录用户输入，也就是只有当用户键入回车键或输入至缓冲区末尾时，才会开始 I\O 操作，亦即读取一个字符。这样用户可以一次输入不止一个字符，读取过后缓冲区可能不为空。当再次调用 getchar 时，若缓冲区不为空，getchar 就会直接读取在缓冲区中字符，而不是等待用户输入。可以认为是getchar 等待的是行缓冲的完成，而不是用户输入的完成，在行缓冲完成后，**只要缓冲区不为空，getchar 就可以读取字符，而不需要等待用户输入**。

可以明显看到，后续执行中并不要求用户输入，getchar()会直接读取缓冲区中的数据。而且**对于字符的读取操作而言，换行符'\n'也被视为一个字符**，而不是单纯的结束标志

第一：要注意不同的函数是否接受空格符、是否舍弃最后的回车符的问题!
读取字符时：
scanf()以Space、Enter、Tab结束一次输入，不会舍弃最后的回车符（即回车符会残留在缓冲区中）；
getchar()以Enter结束输入，也不会舍弃最后的回车符；
读取字符串时：
scanf()以Space、Enter、Tab结束一次输入
gets()以Enter结束输入（空格不结束），接受空格，会舍弃最后的回车符！

## <font color = red >scanf("%\[^\n]", str)的正则用法:</font>

1 [^\n]表示一读入换行字符就结束读入。这个是scanf的正则用法。
我们都知道scanf不能接收空格符，一接受到空格就结束读入，所以不能像gets()等函数一样接受一行字符串，但是使用%[^\n]就可以一直读书，直到碰到’\n’才结束读入
2 那么如果scanf("%*[\n]")表示该输入项读入后不赋予任何变量，即scanf("%*[^\n]")表示跳过一行字符串。



## $\color{red}{inline}$:

在 c/c++ 中，为了解决一些频繁调用的小函数大量消耗栈空间（栈内存）的问题，特别的引入了 **inline** 修饰符，表示为内联函数。

栈空间就是指放置程序的局部数据（也就是函数内数据）的内存空间。

在系统下，栈空间是有限的，假如频繁大量的使用就会造成因栈空间不足而导致程序出错的问题，如，函数的死循环递归调用的最终结果就是导致栈内存空间枯竭。

### inline使用限制

**inline** 的使用是有所限制的，inline 只适合涵数体内代码简单的涵数使用，不能包含复杂的结构控制语句例如 while、switch，并且不能内联函数本身不能是直接递归函数（即，自己内部还调用自己的函数）。

关键字 **inline** 必须与函数定义体放在一起才能使函数成为内联，仅将 **inline** 放在函数声明前面不起任何作用

### 慎用 inline

**以下情况不宜使用内联：** 
（1）如果函数体内的代码**比较长**，使用内联将导致**内存消耗代价较高**。 
（2）如果函数体内出现**循环**，那么执行函数体内代码的时间要比函数调用的开销大。类的构造函数和析构函数容易让人误解成使用内联更有效。要当心**构造函数和析构函数可能会隐藏一些行为**，如"偷偷地"执行了**基类或成员对象**的构造函数和析构函数。所以**不要随便地将构造函数和析构函数的定义体放在类声明中**。一个好的编译器将会根据函数的定义体，自动地取消不值得的内联（这进一步说明了 inline 不应该出现在函数的声明中）。

内联函数并不是一个增强性能的灵丹妙药。只有当**函数非常短小**的时候它才能得到我们想要的效果；但是，如果函数并不是很短而且在很多地方都被调用的话，那么将会使得可执行体的体积增大。

$\color{red}{rand()}$

```
int rand（void）;
```

产生随机数

返回介于`0`和之间的伪随机整数

[RAND_MAX](http://www.cplusplus.com/RAND_MAX)。

该数字是由一种算法生成的，该算法每次调用时都会返回一个看上去无关的数字序列。该算法使用种子生成序列，应使用函数将其初始化为一些独特的值rand.

[RAND_MAX](http://www.cplusplus.com/RAND_MAX)

 是在中定义的常量 <cstdlib>。

使用以下方法在确定的范围内生成平凡的伪随机数的典型方法

rand 是通过范围跨度使用返回值的模并添加范围的初始值：

##　宏

宏只是替换

int a = 5;

#a 是把数字转换成字符串

a##b　是链接a 和　b;

```
v1 = rand() % 100;         // v1 in the range 0 to 99
v2 = rand() % 100 + 1;     // v2 in the range 1 to 100
v3 = rand() % 30 + 1985;   // v3 in the range 1985-2014 

```

请注意，尽管此模运算不会在跨度中生成均匀分布的随机数（因为在大多数情况下，此运算使较小的数字更有可能出现）。

C ++支持各种强大的工具来生成随机和伪随机数

## 局部变量和全局变量

全局变量存bai储在静态存储区du
局部变量存储在栈里
new,malloc分配的内存存储在堆zhi里
你可dao以这么理解：
全局变量是程序是整个程序都需要用到的，单独分出一块存储区保存，该存储区存储的数据不清空
局部变量是函数退出时自动清空的，所以放在栈里做临时存储
new,malloc分配的内存需要自己手动申请自己手动释放

# 十三.测试框架gtest项目

## gtest的介绍

gtest是一个**跨平台的**(Liunx、Mac OS X、Windows、Cygwin、Windows CE and Symbian)C++单元测试框架，由google公司发布。gtest是为在不同平台上为编写C++测试而生成的。它提供了丰富的断言、致命和非致命判断、参数化、”死亡测试”等等。

单元测试（unit testing），是指对软件中的最小可测试单元进行检查和验证。对于单元测试中单元的含义，一般来说，要根据实际情况去判定其具体含义，如C语言中单元指一个函数，Java里单元指一个类，图形化的软件中可以指一个窗口或一个菜单等。总的来说，单元就是人为规定的最小的被测功能模块。



![image-20200625114903639](/home/zhouyuan/.config/Typora/typora-user-images/image-20200625114903639.png)



## main.c

```c++
/*************************************************************************
    > File Name: main.c
	> Author: 
	> Mail: 
	> Created Time: Sun Jun 14 13:38:12 2020
 ************************************************************************/

#include<stdio.h>
#include<haizei/test.h>
#include<haizei/linklist.h>
int add(int a, int b) {
    return a + b;
}

TEST (testFunc, add1) {
    EXPECT_EQ(add(2, 3), 5);
    EXPECT_NE(add(3, 6), 8);
    EXPECT_GE(add(2, 7), 9);
}

TEST (testFunc, add2) {
    EXPECT_LT(add(1, 2), 3);
    EXPECT_LE(add(2, 3), 6);
    EXPECT_GT(add(3, 3), 8);
    
}

int main(int argc, char *argv[]) {
    return RUN_ALL_TESTS();
}
```

## 外骨骼

linklist.h

```c++
/*************************************************************************
	> File Name: linklist.h
	> Author: 
	> Mail: 
	> Created Time: Thu Jun 18 19:49:20 2020
 ************************************************************************/

#ifndef _LINKLIST_H
#define _LINKLIST_H

#define offset(T, name) ((long long)(&(((T *)(0))->name))) // T：结构体类型；name:当前字段的名字。
#define Head(p, T, name) ((T *)(((char *)p ) - offset(T, name)))// p当前节点的地址

typedef struct LinkNode {
    struct LinkNode *next;//这样数据域可以不跟链表走
}Node;

#endif

```

注：地址偏移量offset(定义一个T结构体类型的地址为空的name字段的地址, 并将该地址转为long long 类型)

当前节点的首地址Head将p转成char *类型的地址 －　地址偏移量　＝　当前节点的首地址,并将char *类型的首地址转为Ｔ*类型的首地址）。



## test.h

```c++
/*************************************************************************
	> File Name: test.h
	> Author: 
	> Mail: 
	> Created Time: Sun Jun 14 13:46:29 2020
 ************************************************************************/
#ifndef _TEST_H
#define _TEST_H
//__attribute__是优先展开后面内容，
//__attribute__((constructor))优先展这个宏构造后面的函数
#include <haizei/linklist.h>

#define TEST(a, b)\
void a##_haizei_##b();\
__attribute__((constructor))\
void add##_haizei_##a##b() {\
    add_function(a##_haizei_##b, #a "." #b);\
}\
void a##_haizei_##b()

#define COLOR(a, b)  "\033[" #b "m" a "\033[0m"
#define COLOR_HL(a, b) "\033[1;" #b "m" a "\033[0m"

#define GREEN(a) COLOR(a, 32)
#define RED(a) COLOR(a, 31)
#define BLUE(a) COLOR(a, 34)
#define YELLOW(a) COLOR(a, 33)

#define GREEN_HL(a) COLOR_HL(a, 32)
#define RED_HL(a) COLOR_HL(a, 31)
#define BLUE_HL(a) COLOR_HL(a, 34)
#define YELLOW_HL(a) COLOR_HL(a, 33)

#define TYPE_STR(a) _Generic((a),\      \\转换数据类型
    int : "%d",\
    double : "%lf",\
    float : "%f",\
    const char * : "%s",\
    long long : "%lld";\
)

#define P(a, color) {\
    char frm[1000];\
    sprintf(frm, color("%s"), "%d");\
    printf(frm, a);\
}

#define EXPECT(a, b, comp) {\
    __typeof(a) _a = (a);\
    __typeof(b) _b = (b);\
    haizei_test_info.total += 1;\
    if (_a comp _b) haizei_test_info.success += 1;\
    else {\
        printf("\n");\
        printf(YELLOW_HL("\t%s:%d: Failure\n"), __FILE__, __LINE__);\
        printf(YELLOW_HL("\t\texpect : " #a " "#comp" "#b "\n\t\t" "actual :"));\
        P(_a, YELLOW_HL);\
        P(" vs ", YELLOW_HL);\
        P(_b,YELLOW_HL);\
        printf("\n\n");\
    }\
    printf(GREEN("[-----------]") " " #a " " #comp " " #b);\
    printf(" %s\n", (a) comp (b) ? GREEN("True") : RED("False"));\
}

#define EXPECT_EQ(a, b) EXPECT(a, b, ==)
#define EXPECT_NE(a, b) EXPECT(a, b, !=)
#define EXPECT_GT(a, b) EXPECT(a, b, >)
#define EXPECT_GE(a, b) EXPECT(a, b, >=)
#define EXPECT_LT(a, b) EXPECT(a, b, <)
#define EXPECT_LE(a, b) EXPECT(a, b, <=)
typedef void(*TestFuncT)();

typedef struct Function {
    TestFuncT func;
    const char *str;
    Node p;
}Func;
//记录报错
typedef struct FunctionInfo{
    int total, success;
}Info;

extern struct FunctionInfo haizei_test_info;　　　//前面使用到Functioninfo.
int RUN_ALL_TESTS();
void add_function(TestFuncT, const char *);
#endif
```



### $\color{red}{extern:}$

在头文件中: extern int g_Int; 它的作用就是声明全局变量或函数的作用范围的关键字，其声明的函数和变量可以在本模块或其他模块中使用，记住它是一个声明不是定义。也就是说B模块如果引用A模块中定义的全局变量或函数时，它只要包含A模块的头文件即可,在编译阶段，模块B虽然找不到该函数或变量，但它不会报错，它会在连接时从模块A生成的目标代码中找到此函数





### 输出颜色

先看下面的一段代码

```c++
#include <stdio.h>

int main(int argc,char **argv) {
    printf("\033[44;37;5m hello world\033[0m\n");
return 0;
}

```
由上可知，在输出时候加上 “\033[ ; m …… \033[0m ” 即可使得输出的字体和背景是有颜色的。下面是颜色的定义：

字背景颜色范围:40 - 47

```c++
40:黑
41:深红
42:绿
43:黄色
44:蓝色
45:紫色
46:深绿
47:白色
```

字颜色:30 - 39

```c++
30:黑
31:红
32:绿
33:黄
34:蓝色
35:紫色
36:深绿
37:白色
```




下面看一下：ANSI控制码的说明

```c++
\33[0m 关闭所有属性 
\33[1m 设置高亮度 
\33[4m 下划线 
\33[5m 闪烁 
\33[7m 反显 
\33[8m 消隐 
\33[30m -- \33[37m 设置前景色 
\33[40m -- \33[47m 设置背景色 
\33[nA 光标上移n行 
\33[nB 光标下移n行 
\33[nC 光标右移n行 
\33[nD 光标左移n行 
\33[y;xH设置光标位置 
\33[2J 清屏 
\33[K 清除从光标到行尾的内容 
\33[s 保存光标位置 
\33[u 恢复光标位置 
\33[?25l 隐藏光标 
\33[?25h 显示光标
```

## test.c

```c++
#include <haizei/test.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <haizei/linklist.h>
Func func_head, *func_tail = &func_head;
Info haizei_test_info;

int RUN_ALL_TESTS() {
    for (struct LinkNode *p = func_head.p.next; p; p = p->next) {
        Func *func = Head(p, Func, p);
        printf(GREEN_HL("[====RUN====]") RED(" %s\n"), func->str);
        haizei_test_info.total = haizei_test_info.success = 0;
        func->func();

        double rate = haizei_test_info.success * 100.0 / haizei_test_info.total;
        printf(GREEN("[  "));
        if (fabs(rate - 100.0) < 1e-6) {
            printf(BLUE_HL("%6.2lf%%"), rate); 
        } else {
            printf(RED_HL("%6.2lf%%"), rate);
        }
        printf(GREEN("  ]"));
        printf(
            " total : %d  success : %d\n",
               haizei_test_info.total,
               haizei_test_info.success
              );

    }
    return 0;
}

void add_function(TestFuncT func, const char *str) {
    Func *temp = (Func *)calloc(1, sizeof(Func));
    temp->func = func;
    temp->str = strdup(str);
    func_tail->p.next = &(temp->p);
    func_tail = temp;
    return ;
    
}
```



## Makefile:

```c++
.PHONY: clean
all: main.o haizei/test.o
	gcc main.o haizei/test.o -o ./bin/haizei
main.o: main.c
	gcc -c -I ./ main.c
haizei/test.o: haizei/test.c haizei/test.h
	gcc -c -I ./ -o haizei/test.o haizei/test.c
clean:
	rm -rf ./bin/haizei main.o haizei/test.o

```





# 题

##  判断题

| 题目                                                         | 答案                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1.  一次性输入、输出字符数组时,只写字符数组名.这句话是否正确？ | true                                                         |
| 2.  C 语言的当型循环是先执行循环后判断条件。请问这句话的说法是正确的吗？ | false;(在WHILE（当型）语bai句中，是当条件满足时执行循环体du；而在UNTIL（直到型）语句中，是当zhi条件不满足时执行循环体.) |
| 3.                                                           |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |

## 选择





|                                                              |              |
| ------------------------------------------------------------ | ------------ |
| 1.struct stu{int a; int b;} p1 = {2, 3}  true; p2 = {2}  true;  p3 = {, 3}  false;p4 = p1   true; |              |
| 2. 结构化程序设计强调（）。                                  | 程序的易读性 |
| 3. 1. 结构体变量的首地址 必须 是内部最宽数据类型的倍数（虽然和做题没什么关系）<br/>    2. 按顺序一个变量一个变量看，要求current变量的首地址 必须是自己大小的倍数。<br/>    3. 到了最后一个变量，要求整个结构体的大小的最宽数据类型的倍数。 |              |
| 4.数组作参数:int *num == int num[]                           |              |
| 5. 只有类的非静态成员函数才有this指针，友元和静态函数以及全局函数都没有this函数 |              |
| 6. 有时为了避免某些未识别的异常抛给更高的上层应用，在某些接口实现中我们通常需要捕获编译运行期所有的异常， catch 下述哪个类的实例才能达到目的：（） | Exception    |
| 7.当拼接两个字符串时，结果字符串占用的内存空间是两个原串占用空间的和减一<br/>   函数调用strlen(s);会返回字符串s实际占用内存的大小加一（以字节为单位) |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |
|                                                              |              |



1.已知int占4个字节，bool占1个字节。

```c++
unsigned int value = 1024;  
bool condition = *((bool *)(&value));  
if (condition) value += 1; condition = *((bool *)(&value));  
if (condition) value += 1; condition = *((bool *)(&value));  
```

问value, condition 的值为___1024, 0___。  

2. 有以下程序

```c++
main()
{ int m=0256,n=256;
 
printf("%o %o\n",m,n);
}
```

程序运行后的输出结果是(   )。

%o代表输出八进制数，八进制数以0开头，所以0256默认为8进制数，用%o输出时不会输出前缀0，所以输出256。n默认为十进制数，所以输出时转化为相应8进制输出，结果为400。

%o输出不带前缀八进制，%#o输出带前缀八进制。

 