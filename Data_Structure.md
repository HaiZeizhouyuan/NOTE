# malloc, calloc, realloc

malloc, calloc 和realloc

malloc 开辟空间,不清空数组；

calloc开辟空间并清空数组；

realloc重新开辟空间。会在原空间后在开个空间，　然后将原数据输入到新空间，　会自动释放数据，而malloc不会。

## malloc

### 函数定义

[编辑](javascript:;)

其函数原型为void *malloc(unsigned int size)；其作用是在内存的动态存储区中分配一个长度为size的连续空间。此函数的返回值是分配区域的起始地址，或者说，此函数是一个指针型函数，返回的指针指向该分配域的开头位置。

如果分配成功则返回指向被分配内存的[指针](https://baike.baidu.com/item/指针)(此存储区中的初始值不确定)，否则返回空指针[NULL](https://baike.baidu.com/item/NULL)。当内存不再使用时，应使用free()函数将内存块释放。函数返回的指针一定要适当对齐，使其可以用于任何[数据对象](https://baike.baidu.com/item/数据对象)。

关于该函数的原型，在以前malloc返回的是[char](https://baike.baidu.com/item/char)型[指针](https://baike.baidu.com/item/指针)，新的ANSIC标准规定，该函数返回为[void](https://baike.baidu.com/item/void)型指针，因此必要时要进行类型转换。它能向系统申请分配一个长度为num_bytes（或size）个字节的内存块。

一般它需和free函数配对使用。free函数能释放某个动态分配的地址，表明不再使用这块动态分配的内存了，实现把之前动态申请的内存返还给系统。 [1] 

## calloc

### 描述

C 库函数 **void \*calloc(size_t nitems, size_t size)** 分配所需的内存空间，并返回一个指向它的指针。**malloc** 和 **calloc** 之间的不同点是，malloc 不会设置内存为零，而 calloc 会设置分配的内存为零。

### 声明

下面是 calloc() 函数的声明。

```c++
void *calloc(size_t nitems, size_t size)
```

### 参数

- **nitems** -- 要被分配的元素个数。
- **size** -- 元素的大小。

### 返回值

该函数返回一个指针，指向已分配的内存。如果请求失败，则返回 NULL。

## realloc:

### 函数说明

[编辑](javascript:;)

### 语法

[指针](https://baike.baidu.com/item/指针)名=（数据类型*）realloc（要改变内存大小的指针名，新的大小）。

新的大小可大可小（如果新的大小大于原内存大小，则新分配部分不会被初始化；如果新的大小小于原内存大小，可能会导致数据丢失 [1-2] ）

### 头文件

\#include <[stdlib.h](https://baike.baidu.com/item/stdlib.h)> 有些编译器需要#include <malloc.h>，在TC2.0中可以使用alloc.h头文件

### 功能

先判断当前的指针是否有足够的连续空间，如果有，扩大mem_address指向的地址，并且将mem_address返回，如果空间不够，先按照newsize指定的大小分配空间，将原有数据从头到尾拷贝到新分配的内存区域，而后释放原来mem_address所指内存区域（注意：原来指针是自动释放，不需要使用free），同时返回新分配的内存区域的首地址。即重新分配存储器块的地址。

### 返回值

如果重新分配成功则返回指向被分配内存的$\color{red}{指针}$，否则返回空指针NULL。

### 注意

当内存不再使用时，应使用free()函数将内存块释放。

## 顺序表与链表的优缺点：



###  1.顺序表存储（典型的数组）

   **原理：**顺序表存储是将数据元素放到一块连续的内存存储空间，相邻数据元素的存放地址也相邻（逻辑与物理统一）。
   **优点：**（1）空间利用率高。（局部性原理，连续存放，命中率高） 
      （2）存取速度高效，通过下标来直接存储。
   **缺点：**（1）插入和删除比较慢，比如：插入或者删除一个元素时，整个表需要遍历移动元素来重新排一次顺序。
      （2）不可以增长长度，有空间限制,当需要存取的元素个数可能多于顺序表的元素个数时,会出现"溢出"问题.当元素个数远少于预先分配的空间时,空间浪费巨大。  
   **时间性能 :**查找 O(1) ,插入和删除O（n）。

### 2.链表存储

  **原理：**链表存储是在程序运行过程中动态的分配空间，只要存储器还有空间，就不会发生存储溢出问题，相邻数据元素可随意存放，但所占存储空间分两部分，一部分存放结点值，另一部分存放表示结点关系间的指针。
  **优点：**（1）存取某个元素速度慢。 
     （2）插入和删除速度快，保留原有的物理顺序，比如：插入或者删除一个元素时，只需要改变指针指向即可。
     （3）没有空间限制,存储元素的个数无上限,基本只与内存空间大小有关. 
  **缺点：**（1）占用额外的空间以存储指针(浪费空间，不连续存放，malloc开辟，空间碎片多) 
     （2）查找速度慢，因为查找时，需要循环链表访问，需要从开始节点一个一个节点去查找元素访问。
  **时间性能 :**查找 O(n) ,插入和删除O（1）。 

## 链表和顺序表的用处

频繁的查找却很少的插入和删除操作可以用顺序表存储，堆排序,二分查找适宜用顺序表.

频繁的查找却很少的插入和删除操作可以用顺序表存储，堆排序,二分查找适宜用顺序表.

顺序表适宜于做查找这样的静态操作；链表适宜于做插入、删除这样的动态操作。

若线性表长度变化不大，如果事先知道线性表的大致长度，比如一年12月，一周就是星期一至星期日共七天，且其主要操作是查找，则采用顺序表；若线性表长度变化较大或根本不知道多大时，且其主要操作是插入、删除，则采用链表，这样可以不需要考虑存储空间的大小问题
顺序表:顺序存储，随机读取,链式:随机存储,顺序读取(必须遍历).

# 顺序表

```c++
/*************************************************************************
	> File Name: 1.Vector.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jun  7 01:40:19 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<time.h>
//结构定义
typedef struct Vector {
    int size, length;
    int *data;
} Vector;
//初始化
Vector *init(int n) {
    Vector *vec = (Vector*)malloc(sizeof(Vector));
    vec->data = (int *)malloc(sizeof(int) * n);
    vec->length = 0;
    vec->size = n;
    return vec;
}
//扩容
int expend (Vector *vec) {
    int extr_size = vec->size;
    int *p;
    while (extr_size) {
        p = (int *)realloc(vec->data, sizeof(int) * (vec->size + extr_size));
        if (p) break;
        extr_size /= 2;
    }
    if (extr_size == 0) return 0;
    vec->data = p;
    vec->size += extr_size;
    return 1;
}
//插入
int insert(Vector *vec, int loc, int val) {
    if (vec == NULL) return 0;
    if (loc < 0 || loc > vec->length) return 0;
    if (vec->length == vec->size) {
        if (!expend(vec)) return 0;
        printf("success to expend ! the Vector size is %d\n", vec->size);
    }
    for (int i = vec->length; i > loc; i--) {
        vec->data[i] = vec->data[i - 1];
    }
    vec->data[loc] = val;
    vec->length += 1;
    return 1;
}
//删除
int delete_node(Vector *vec, int loc) {
    if (vec == NULL) return 0;
    if (loc < 0 || loc >= vec->length) return 0;
    for (int i = loc + 1; i < vec->length; i++) {
        vec->data[i - 1] = vec->data[i];
    }
    vec->length -= 1;
    return 1;
}
//输出
void output(Vector *vec) {
    printf("Vector : [");
    for (int i = 0; i < vec->length; i++) {
        i && printf(", ");
        printf("%d", vec->data[i]);
    }
    printf("]\n");
    return ;
}
//释放
void clear(Vector *vec) {
    free(vec->data);
    free(vec);
    return ;
}
int main () {
    srand(time(0));
    #define max_op 20
    Vector *vec = init(max_op);
    for (int i = 0; i < max_op * 4; i++) {
        int op = rand() % 4;
        int loc = rand() % (vec->length + 3) - 1;
        int val = rand() % 100;
        switch (op) {
            case 0:
            case 1:
            case 2: {
                printf("insert %d at %d to Vector = %d\n", val, loc, insert(vec, loc, val));
            }break;
            case 3: {
                printf("delete a item at %d from Vector = %d\n", loc, delete_node(vec, loc));
            }break;
        }
        output(vec);
        printf("\n");
    }
    clear(vec);
    #undef max_op
    return 0;
}

```



1、要想通过函数对结构体成员变量进行操作（即修改结构体成员变量时）必须用结构体指针，形参为结构体变量的地址，否则访问不到结构体成员变量，



# 链表

​	

```c++
/*************************************************************************
	> File Name: 2.list.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jun  7 18:57:04 2020
 ************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
typedef struct ListNode{
    int data;
    struct ListNode *next;
} ListNode;

typedef struct List {
    ListNode head;
    int length;
} List;

ListNode *getNewNode(int);
List *getLinkList();
int insert(List *, int, int);
int erase(List *,int);
void reverser(List *);
void output(List *);
void clear_ListNode(ListNode *);
void clear_List(List *);
void outout1(List *, int );
int main(){
    srand(time(0));
    #define max_op 20
    List *l = getLinkList();
    int ind, op, val, flag;

    for (int i = 0; i < max_op; i++) {
        op = rand() % 4;
        ind = rand() % (l->length + 3) - 1;//要有正负值
        val = rand() % 10000;
        switch(op) {
            case 0:
            case 1: {
                printf("insert %d at  %d to List = %d\n", val, ind, insert(l, ind, val));
                flag = insert(l, ind, val);
            }break;
            case 2: {
                printf("erase item at %d is from List = %d\n", ind, erase(l, ind));
                flag = erase(l, ind);
            }break;
            case 3: {
                printf("reverse the List !\n");
                reverser(l);
                flag = -1;
            }break;
        }
        output(l);
        outout1(l, flag);
        printf("\n");
    }
    clear_List(l);
    #undef max_op
    return 0;
}

ListNode *getNewNode(int val) {
    ListNode *p = (ListNode *) malloc (sizeof(ListNode));
    p->data = val;
    p->next = NULL;
    return p;
}

List *getLinkList(){
    List *l =  (List *)malloc(sizeof(List));
    l->head.next = NULL;
    l->length = 0;
    return l;
}

int insert(List *l, int ind, int val) {
    int ret = ind;
    if (l == NULL) return -1;
    if (ind < 0 || ind > l->length) return -1;
    ListNode *p =&(l->head), *node = getNewNode(val);
    while (ind--) p = p->next;
    node->next = p->next;
    p->next = node;
    l->length += 1;
    return ret;
}

int erase(List *l, int ind) {
    int ret = ind;
    if (l == NULL) return -1;
    if (ind < 0 || ind >= l->length) return -1;
    ListNode *p = &(l->head), *q;
    while (ind--) p = p->next;
    q = p->next;
    p->next = q->next;
    free(q);
    l->length -= 1;
    return ret;
}

void output(List *l){
    printf("head->");
    for (ListNode *p = l->head.next; p; p = p->next) {
        printf("%d->", p->data);
    }
    printf("NULL\n");
    return ;
}
void outout1(List *l, int ind) {
    char str[100];
    int offset = 3;
    ListNode *p = l->head.next;
    while (ind != -1 && p) {
        offset += sprintf(str, "%d->", p->data);
        ind -= 1;
        p = p->next;
    }
    for (int i = 0; i < offset; i++) printf(" ");
    printf("^\n");
    for (int i = 0; i < offset; i++) printf(" ");
    printf("|\n\n");
    return ;

}
void reverser(List *l) {
    ListNode *p = l->head.next, *q;
    l->head.next = NULL;
    while (p) {
        q = p->next;
        p->next = l->head.next;
        l->head.next = p;
        p = q;
    }
    return ;
}
void clear_ListNode(ListNode *node) {
    if(node == NULL) return ;
    free(node);
    return ;
}

void clear_List(List *l) {
    if (l == NULL) return ;
    ListNode *p = l->head.next, *q;
    while (p) {
        q = p->next;
        clear_ListNode(p);
        p = q;
    }
    free(l);
    return ;
}
```

# 队列

```c++
/*************************************************************************
	> File Name: 3.queue.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jun 20 14:49:19 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
typedef struct Queue {
    int *data;
    int size, head, tail, cnt;
} Queue;

Queue *init(int);
int front(Queue *);
int empty(Queue *);
int push(Queue *, int);
int pop(Queue *);
void output(Queue *);
void clear(Queue *);

int main () {
    srand(time(0));
    #define max_op 20
    Queue *q = init(10);
    for (int i = 0; i < max_op; i++) {
        int val = rand() % 100;
        int op = rand() % 4;
        switch (op) {
            case 0 :
            case 1 :
            case 2 : {
                printf("push %d to the Queue = %d\n", val, push(q, val));
            } break;
            case 3 : {
                int f = front (q);
                printf("pop %d from the Queue = %d\n", f, pop(q));
            } break;
        }
        output(q);
    }
    #undef max_op
    clear(q);
    return 0;
}

Queue *init(int n) {
    Queue *q = (Queue *)malloc(sizeof(Queue));
    q->data = (int *)malloc(sizeof(int) * n);
    q->size = n;
    q->head= q->tail = q->cnt = 0;//q->tail 下一个指针空白处
    return q;
}

int front(Queue *q) {
    return q->data[q->head];
}

int empty(Queue *q) {
    return q->cnt == 0; 
}

int expend (Queue *q) {
    int extr_size = q->size;
    int *p;
    while (extr_size) {
        p = (int *)malloc (sizeof(int) * (q->size + extr_size));
        if (p) break;
        extr_size >>= 1;
    }
    
    if (p == NULL) return 0;
    for (int i = q->head, j = 0; j < q->cnt; j++) {
        p[j] = q->data[(i + j) % q->size];
    }
    free(q->data);
    q->data = p;
    q->size += extr_size;
    q->head = 0;
    q->tail = q->cnt;
    return 1;
}


int push (Queue *q, int val) {
    if (q == NULL) return 0;
    if (q->cnt == q->size) {
        if (!expend(q)) return 0;
        printf("\033[32mexpend successful !\033[0m"" size = %d\n", q->size);
        
    }
    q->data[q->tail++] = val;
    if (q->tail == q->size) q->tail -= q->size;
    q->cnt += 1;
    return 1;
}

int pop(Queue *q) {
    if (q == NULL) return 0;
    if (empty(q)) return 0;
    q->head ++;
    if (q->head == q->size) q->head -= q->size;
    q->cnt -= 1;
    return 1;
}

void output (Queue *q) {
    printf("Queue : [");
    for (int i = q->head, j = 0; j < q->cnt; j++) {
        j && printf(", ");
        printf("%d", q->data[(i + j) % q->size]);
    }
    printf("]\n\n");
    return ;
}

void clear(Queue *q) {
    if (q == NULL) return;
    free(q->data);
    free(q);
    return ;
}
```

## 插队



## 优先队列

### c++

```c++
top 访问队头元素
empty 队列是否为空
size 返回队列内元素个数
push 插入元素到队尾 (并排序)
emplace 原地构造一个元素并插入队列
pop 弹出队头元素
swap 交换内容
```

*Type* 就是数据类型，*Container* 就是容器类型（Container必须是用数组实现的容器，比如vector,deque等等，但不能用 list。STL里面默认用的是vector），

```c++
#include <iostream>
#include <stdio.h>
#include <queue>
using namespace std;
#define max_n 400000

int n;
long long A[max_n + 5], B[max_n + 5], ans[max_n + 5];
int main () {
    priority_queue<int> que;//默认从大到小
    priority_queue<int , vector<int>, less<int> > que;//从大到小
    priority_queue<int, vector<int>, greater<int> > q;//从小到大
    scanf("%d", &n);
    for (int i = 0; i < n; i++) scanf("%lld", &A[i]);
    for (int i = 0; i < n; i++) {
        scanf("%lld", &B[i]);
        que.push(A[0] + B[i]);
    }

    for (int i = 1; i < n; i++) {
        for (int j = 0; j < n; j++) {
            long long sum = A[i] + B[j];
            if (sum < que.top()) {
                que.pop();
                que.push(sum);
            } else {
                break;
            }
        }
    }

    for (int i = 0; i < n; i++) {
        ans[i] = que.top();
        que.pop();
    }

    for (int i = n - 1; i >= 0; i--) printf("%lld\n", ans[i]);
    return 0;
}

```

### C

```c
/*************************************************************************
	> File Name: 10.priority_queue.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jul  4 15:24:21 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include<time.h>
#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}

typedef struct priority_queue {
    int *data;
    int cnt, size;
} priority_queue;

priority_queue *init(int n) {
    priority_queue *q = (priority_queue *)malloc(sizeof(priority_queue));
    q->data = (int *)malloc(sizeof(int) * (n  + 1));
    q->cnt = 0;
    q->size = n;
    return q;
}

int empty(priority_queue *q) {
    return q->cnt == 0;
}

int top(priority_queue *q) {
    return q->data[1];
}

int push(priority_queue *q, int val) {
    if (q == NULL) return 0;
    if (q->cnt >= q->size) return 0;
    q->data[++(q->cnt)] = val;
    int ind = q->cnt;
    while (ind >> 1 && q->data[ind] > q->data[ind >> 1]) {
        swap(q->data[ind], q->data[ind >> 1]);
        ind >>= 1;
    }
    return 1;
}

void update(priority_queue *q, int ind) {
    while ((ind << 1) <= q->cnt) {
        int max = ind, l = ind << 1, r = ind << 1 | 1;
        if (l < q->cnt && q->data[l] > q->data[max]) max = l;
        if (l < q->cnt && q->data[r] > q->data[max]) max = r;
        if (max == ind) break;
        swap(q->data[ind], q->data[max]);
        ind = max;
    }
    return ;
}

int pop(priority_queue *q) {
    if (q == NULL) return 0;
    if (empty(q)) return 0;
    q->data[1] = q->data[q->cnt--];
    update(q, 1);
    return 1;
}

void output(priority_queue *q) {
    for (int i = 1; i < q->cnt; i++) {
        i - 1 && printf(" ");
        printf("%d", q->data[i]);
    }
    printf("\n");
}

void clear(priority_queue *q) {
    if (q == NULL) return ;
    free(q->data);
    free(q);
    return ;
}

int main () {
    srand (time(0));
    #define max_op 20
    priority_queue *q = init(max_op);
    for (int i = 0; i < max_op; i++) {
        int val = rand() % 100;
        push(q, val);
        printf("insert %d to priority_queue\n", val);
    }
    output(q);
    clear(q);
    return 0;
}

```





## 单调队列（维护区间极值问题）

先将Ｎ个窗口的元数进行单调排队，移动窗口，然后从队尾插入元数，将此元数与单调队列进行比对，并在队首将原队列的头部排出。

开辟全局数组默认为零

### OJ.271:题目描述

#### 题目描述

 给出一个长度为 NN 的数组，一个长为 KK 的滑动窗口从最左移动到最右，每次窗口移动，如下图：

![img](http://haizei.oss-cn-beijing.aliyuncs.com/%E7%AE%97%E6%B3%95%E7%AB%9E%E8%B5%9B/2823-1.png)

找出窗口在各个位置时的极大值和极小值。

------

#### 输入

 第一行两个数 N,KN,K。

 第二行有 NN 个数，表示数组中的元素。

#### 输出

 输出两行，第一行为窗口在各个位置时的极小值，第二行为窗口在各个位置时的极大值。

------

#### 样例输入

```
8 3
1 3 -1 -3 5 3 6 7
```

#### 样例输出

```
-1 -3 -3 -3 3 3
3 3 5 5 6 7
```

```c++
/*************************************************************************
	> File Name: 217.protice.cpp
	> Author: 
	> Mail: 
	> Created Time: Wed Jun 24 10:45:09 2020
 ************************************************************************/

#include<iostream>
using namespace std;
#define max_n 300000

int arr[max_n + 5];
int q[max_n + 5], head, tail;

int main() {
    int n, k;
    cin >> n >> k;
    head = tail = 0;
    for (int i = 0; i < n; i++) cin >> arr[i];
    for (int i = 0; i < n; i++) {
        while (tail - head && arr[i] < arr[q[tail - 1]]) tail--;
        q[tail++] = i;
        if (i + 1 < k) continue;
        if (i - q[head] == k) head++;
        i + 1 == k || cout << " ";
        cout << arr[q[head]];
    }
    cout << endl;
    head = tail = 0;
    for (int i = 0; i < n; i++) {
        while (tail - head && arr[i] > arr[q[tail - 1]]) tail--;
        q[tail++] = i;
        if (i + 1 < k) continue;
        if (i - q[head] == k) head++;
        i + 1 == k || cout << " ";
        cout << arr[q[head]];
    }
    cout << endl;
    return 0;
}
```





# 栈

当事件与事件之间具有$\color{red}{完全包含关系}$时可用栈来解决问题。

系统栈也是栈，递归运用的是系统栈；

```c++
/*************************************************************************
	> File Name: 4.stack.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jun 21 15:31:36 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<time.h>

typedef struct stack {
    int *data;
    int size, top;
} Stack;

Stack *init(int);
void clear(Stack *);
int top(Stack *);
int empty(Stack *);
int push(Stack *, int);
int pop(Stack *);
void output(Stack *);

int main() {
    #define max_op 20
    srand(time(0));
    Stack *s = init(10);
    for (int i = 0; i < max_op; i++) {
        int val = rand() % 100;
        int op = rand() % 4;
        switch(op){
            case 0 :
            case 1 :
            case 2 : {
                printf("push %d to the stack is = %d\n", val, push(s, val));
            } break;
            case 3 : {
                int t = top(s);
                printf("pop %d from the Stack is = %d\n", t, pop(s));
            } break;
            
        }
        output(s);
    }
    #undef max_op
    clear(s);
    return 0;
}

Stack *init(int n) {
    Stack *s = (Stack *)malloc (sizeof(Stack));
    s->data = (int *)malloc(sizeof(int) * n);
    s->size = n;
    s->top = -1;
    return s;
}

int top(Stack *s) {
    return s->data[s->top];
}

int empty(Stack *s) {
    return s->top == -1;
}

int expend (Stack *s) {
    int extr_size = s->size;
    int *p;
    while(extr_size) {
        p = (int *)realloc(s->data,sizeof(int) * (s->size + extr_size));
        if (p) break;
        extr_size >>= 1; 
    }
    if (p == NULL) return 0;
    s->size += extr_size;
    s->data = p;
    return 1;
}

int push(Stack *s, int val) {
    if (s == NULL) return 0;
    if (s->top + 1 == s->size) {
        expend(s);
        printf("\033[31mexpend Stack is success!, Stack's size is = %d\n\n\033[0m", s->size);
    }
    s->data[++(s->top)] = val;
    return 1;
}

int pop(Stack *s) {
    if (s == NULL) return 0;
    if (empty(s)) return 0;
    s->top -= 1;
    return 1;
}

void output (Stack *s) {
    printf("Stack(%d) = [", s->top + 1);
    for (int i = 0; i <= s->top; i++) {
        i && printf(", ");
        printf("%d", s->data[i]);
    }
    printf("];\n\n");
}

void clear (Stack *s) {
    if (s == NULL) return ;
    free(s->data);
    free(s);
    return ;
}
```



## 增删左移右移查找

​	

```
#include<stdio.h>
#include<stdlib.h>
#define max_n 1000
typedef struct Stack {
    long long  *data;
    int size, top;
} Stack;

Stack *getNewStack(int size) {
    Stack *s = (Stack *)malloc(sizeof(Stack));
    s->data = (long long *)malloc(sizeof(long long) * size);
    s->size = size;
    s->top = 0;
    return s;
}

int push(Stack *s, long long val) {
    if (s == NULL) return 0;
    if (s->top == s->size - 1) return 0;
    s->data[++s->top] = val;
    return 1;
}

long long top(Stack *s) {
    return s->data[s->top];
}

int empty(Stack *s) {
    return s->top == 0;
}

int pop(Stack *s) {
    if (s == NULL) return 0;
    if (empty(s)) return 0;
    s->top -= 1;
    return 1;
}

void clear(Stack *s) {
    if (s == NULL) return ;
    free(s->data);
    free(s);
    return ;
}

long long sum[max_n + 5];
long long  m[max_n + 5];
int main() {
    int n;
    scanf("%d", &n);
    m[0] = 0x8000000000000000LL;
    getchar();
    Stack *f = getNewStack(max_n);
    Stack *b = getNewStack(max_n);
    for (int i = 0; i < n; i++) {
        char opt;
        scanf("%c", &opt);
        getchar();
        switch(opt) {
            case 'I': {
                long long x;
                scanf("%lld", &x);
                getchar();
                push(f, x);
                int ind = f->top;
                sum[ind] = sum[ind - 1] + x;
                m[ind] = (m[ind - 1] > sum[ind] ? m[ind - 1] : sum[ind]);
            } break;
            case 'D':{
                if (empty(f)) break;
                int p = pop(f);
            } break;
            case 'L': {
                if (empty(f)) break;
                long long ft = top(f);
                push(b, ft);
                pop(f);
            } break;
            case 'R': {
                if (empty(b)) break;
                long long bt = top(b);
                push(f, bt);
                pop(b);
                int ind = f->top;
                sum[ind] = sum[ind - 1] + bt;
                m[ind] = (sum[ind] > m[ind - 1] ? sum[ind] : m[ind - 1]);

            } break;
            case 'Q': {
                long long k;
                scanf("%lld", &k);
                getchar();
                printf("%lld\n", m[k]);
            } break;
            default: {
                getchar();
            } break;
        }
    }
    clear(f);
    clear(b);
    return 0;
}

```





#　树

1.树的深度和高度相等。

2.节点的高度和深度：高度是向上看，　深度是向下看。

3.树的度是子节点数。

4.度为零的节点叫叶子节点。

5.树的节点数等于边加一。

## 二叉树

１.每个节点度最多为２；

２.度为０的节点比度为二的节点数多一

n = n~2~ + n~1~ + n~0~;

n - 1 =2 * n~2~ + 1 * n~1~ + 0  * n~0~;

1 = - n~2~ + n~0~ => n~0~ = n~2~ + 1;

3.十字链表法：把Ｎ叉树变为二叉树，左孩子右兄弟。把不确定性问题转为确定性问题。

### 二叉树－遍历

| 前序遍历：                                                　 根　　　　　　　　　　　　左　　　　　　　　　　　　右 |
| :----------------------------------------------------------- |
|                                                              |

| 中序遍历: | 左   |      | 根   |      | 右   |
| :-------- | ---- | ---- | ---- | ---- | ---- |
|           |      |      |      |      |      |

| 后序遍历： | 左   |      | 右   |      | 根   |
| :--------- | ---- | ---- | ---- | ---- | ---- |
|            |      |      |      |      |      |



1 2 4 5 3 6

4 2  5 1 3 6

4 5  2 6 3 1



### 二叉树－完全二叉树

１．编号为i的子节点：

左孩子编号:2 * i;

右孩子编号: 2 * i + 1;

### 二叉树－ 广义表

（）空树;

A / A();

A(B, ) / A(B)

A(B, C);

A(B(,D), C(E)) / A(B(, D), C(E,));



## 二叉树转广义表

```c++
/*************************************************************************
	> File Name: 5.binary_tree.cpp
	> Author: 
	> Mail: 
	> Created Time: Thu Jun 25 19:36:19 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<time.h>
typedef struct Node {
    int data;
    struct Node *lchild, *rchild;
} Node;

typedef struct Tree{
    Node *root;
    int n;
} Tree;

Node *init_node(int val) {
    Node *p = (Node *)malloc(sizeof(Node));
    p->data = val;
    p->lchild = p->rchild =  NULL;
    return p;
}

Tree *init_tree() {
    Tree *tree = (Tree *) malloc (sizeof(Tree));
    tree->root = NULL;
    tree->n = 0;
    return tree;
}

void clear_node (Node *node) {
    if (node == NULL) return ;
    clear_node(node->lchild);
    clear_node(node->rchild);
    free(node);
    return ;
}

void clear_tree(Tree *tree){
    if(tree == NULL) return ;
    clear_node(tree->root);
    free(tree);
    return ;
}

Node *insert_node(Node *root, int val, int *flag){
    if (root == NULL) {
        *flag = 1;
        return init_node(val);
    }
    if (root->data == val) return root;
    if (val < root->data) root->lchild = insert_node(root->lchild, val, flag);
    else root->rchild = insert_node(root->rchild, val, flag);
    return root;
}

void insert(Tree *tree, int val) {
    int flag = 0;
    tree->root = insert_node(tree->root, val, &flag);
    tree->n += flag;
    return ;
}

void in_order_node(Node *root) {
    if (root == NULL) return ;
    in_order_node(root->lchild);
    printf("%d ", root->data);
    in_order_node(root->rchild);
    return ;
}

void in_order (Tree *tree) {
    if (tree == NULL) return ;
    printf("in_order : ");
    in_order_node (tree->root);
    printf("\n");
    return ;
    
}

void pre_order_node(Node *root) {
    if (root == NULL) return ;
    printf("%d ", root->data);
    pre_order_node(root->lchild);
    pre_order_node(root->rchild);
    return ;
}

void pre_order (Tree *tree) {
    if (tree == NULL) return ;
    printf("pre_order : ");
    pre_order_node (tree->root);
    printf("\n");
    return ;
    
}

void post_order_node(Node *root) {
    if (root == NULL) return ;
    post_order_node(root->lchild);
    post_order_node(root->rchild);
    printf("%d ", root->data);
    return ;
}

void post_order (Tree *tree) {
    if (tree == NULL) return ;
    printf("post__order : ");
    post_order_node (tree->root);
    printf("\n");
    return ;
    
}

void output_node(Node *root) {
    if (root == NULL) return ;
    printf("%d", root->data);
    if(root->lchild == NULL && root->rchild == NULL) return ;
    printf("(");
    output_node(root->lchild);
    printf(",");
    output_node(root->rchild);
    printf(")");
    return ;
}

void output(Tree *tree) {
    if (tree == NULL) return ;
    printf("Tree(%d) : ", tree->n);
    output_node(tree->root);
    printf("\n");
    return ;
}

int main() {
    srand(time(0));
    Tree *tree = init_tree();
    #define max_op 10
    for (int i = 0; i < max_op; i++) {
        int val = rand() % 100;
        insert(tree, val);
        output(tree);
    }
    pre_order(tree);
    in_order(tree);
    post_order(tree);
    #undef max_op
    clear_tree(tree);
    return 0;
}
```

## 广义表转二叉树

```c++
/*************************************************************************
	> File Name: 5.binary_tree_protice2.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jun 27 14:38:59 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
typedef struct Node {
    char data;
    struct Node *lchild, *rchild; 
} Node;

typedef struct Tree {
    int n;
    Node *root;
} Tree;

typedef struct Stack {
    Node **data;
    int size, top;
} Stack;

Stack *init_stack (int n) {
    Stack *s = (Stack *)malloc(sizeof(Stack));
    s->data = (Node **)malloc(sizeof(Node *) * n);
    s->size = n;
    s->top = -1;
    return s;
}

Node *getNewNode (char val) {
    Node *node = (Node *)malloc(sizeof(Node));
    node->data = val;
    node->lchild = node->rchild = NULL;
    return node;
}

Tree *getNewTree () {
    Tree *tree = (Tree *)malloc(sizeof(Tree));
    tree->root = NULL;
    tree->n = 0;
    return tree;
}

Node *top (Stack *s) {
    return s->data[s->top];
}

int empty(Stack *s) {
    return s->top == -1;
}

int push(Stack *s, Node *val) {
    if (s == NULL) return 0;
    if (s->top + 1 == s->size) return 0;
    s->data[++(s->top)] = val;
    return 1;
}

int pop(Stack *s) {
    if (s == NULL) return 0;
    if (empty(s)) return 0;
    s->top -= 1;
    return 1;
}

void clear_stack(Stack *s) {
    if (s == NULL) return ;
    free(s->data);
    free(s);
    return ;
}

void clear_node (Node *node) {
    if (node == NULL) return ;
    clear_node(node->lchild);
    clear_node(node->rchild);
    free(node);
    return ;
}

void clear_tree(Tree *tree) {
    if (tree == NULL) return ;
    clear_node(tree->root);
    free(tree);
    return ;  
}

Node *build (const char *str, int *node_num) {
    Stack *s = init_stack(strlen(str));
    Node *temp = NULL, *p = NULL;
    int flag = 0;
    while (str[0]) {
        switch (str[0]) {
            case '(': 
                push(s, temp);
                flag = 0;
                break;
            case ')':
                p = top(s);
                pop(s);
                break;
            case ',':
                flag = 1;
                break;
            case ' ':
                break;
            default :
                temp = getNewNode(str[0]);
                if (!empty(s) && flag == 0) {
                   top(s)->lchild = temp;
                } else if (!empty(s) && flag == 1) {
                    top(s)->rchild = temp;
                }
                ++ (*node_num);
                break;
        }
        ++str;
    }
    clear_stack(s);
    if (temp && !p) p = temp;
    return p;
}

void pre_order_node (Node *node) {
    if(node == NULL) return ;
    printf("%c ",node->data);
    pre_order_node(node->lchild);
    pre_order_node(node->rchild);
    return ;
}

void pre_order (Tree *tree) {
    if (tree == NULL) return ;
    printf("pre_order : ");
    pre_order_node(tree->root);
    printf("\n");
    return ;
}

void in_order_node (Node *node) {
    if(node == NULL) return ;
    in_order_node(node->lchild);
    printf("%c ",node->data);
    in_order_node(node->rchild);
    return ;

}

void in_order (Tree *tree) {
    if (tree == NULL) return ;
    printf("in_order : ");
    in_order_node(tree->root);
    printf("\n");
    return ;
}

void post_order_node (Node *node) {
    if(node == NULL) return ;
    post_order_node(node->lchild);
    post_order_node(node->rchild);
    printf("%c ",node->data);
    return ;
}

void post_order (Tree *tree) {
    if (tree == NULL) return ;
    printf("post_order : ");
    post_order_node(tree->root);
    printf("\n");
    return ;
}

int main () {
    char str[1000] = {0};
    int node_num;
    scanf("%[^\n]s", str);
    Tree *tree = getNewTree();
    tree->root = build(str, &node_num);
    tree->n = node_num;
    pre_order(tree);
    in_order(tree);
    post_order(tree);
    clear_tree(tree);
    return 0;
}

```



## 哈弗曼编码

传输速度：100bit/s

传100个字符, 即800bit，用８秒。

定长编码：

5个比特位就可表示26个字符（A～Z）。

５* 100=500bit, 用时５秒。

变长编码：

100个字符中有99个e, 用0来表示e, 1个比特位, 1_____来表示剩下的一个字符，则总比特数为99 + 6 = 105bit，用时1.05秒。

平均编码长度：

根据数学期望来判断，数学期望越小传输越快，E（平均编码长度）是衡量变长编码的指标，　寻找一种编码方式来使Ｅ最小。

## 熵与交叉熵

红色节点下面一定不会出现其他字符的编码,其中一个编码不能是另一个编码的前缀

一号编码：１０

二号编码：０

三号编码：１００

因为100可能是三号编码也可能是一号编码加二号编码

覆盖的叶子节点为２^h-l^, l为路径长度。h是从第一层开始数。

２^h-l1^  + 2 ^h-l2^ +2 ^h-l3^　…… + 2 ^h-ln^ <= 2^h^ 

优化目标：　p~1~l~1~ p~2~l~2~ + p~3~l~3~ + … + p~n~l~n~

约束条件：２^h-l1^ + 2^h-l2^+2^h-l3^ + …+ 2^h-ln^ <= 2^h^

公式变形：　1/2^l1^ + 1/ 2^l2^ + 1/ 2^l3^ + … +1/2^ln^ <= 1

I~i~’ = -li

目标：-（p~1~l~1~’ + p~2~l~2~’ +p~3~l~3~’ + … + p~n~l~n~）；

约束条件：2^l1’^+ 2^l2^’ +2^l3’^ + …+ 2^ln’^ <= 1;

I~i~ = 2^li’^ => l~i~’ = log~2~I~i~

目标：-(p~1~log~2~I~1~ +p~2~ log~2~I~2~  + …+p~n~log~2~I~n~) ；

约束条件：I1 + I2 +  ……+ ln <= 1;



阶加-p~i~log~2~p~i~

交叉熵：—阶加p~i~log~2~q~i~

交叉熵越小相似度越高。



## 哈夫曼树

```c++
/*************************************************************************
	> File Name: 7.Hafuman_tree.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jun 28 18:42:40 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#define max_n 1000

#define swap(a,b) {\
    __typeof(a) __temp = a;\
    a = b, b = __temp;\
}

typedef struct Node {
    char ch;
    double p;
    struct Node *next[2];
} Node;

typedef struct Code {
    char ch;
    char *str;
} Code;

typedef struct Haffman_Tree {
    Node *root;
    int n;
    Code *codes;
} Haffman_Tree;

typedef struct Data {
    char ch;
    double p;
} Data;

Data arr[max_n + 5];

Node *getNewNode (Data *obj) {
    Node *p = (Node *)malloc(sizeof(Node));
    p->ch = (obj ? obj->ch : 0);
    p->p = (obj ? obj->p : 0);
    p->next[0] = p->next[1] = NULL;
    return p;
}

Haffman_Tree *getNewTree(int n) {
    Haffman_Tree *tree = (Haffman_Tree *) malloc (sizeof(Haffman_Tree));
    tree->codes = (Code *)malloc(sizeof(Code) * n);
    tree->n = n;
    tree->root = NULL;
    return tree;
}

void insertOnce (Node **arr, int n) {
    for (int j = n; j >= 1; j--) {
        if  (arr[j]->p > arr[j - 1]->p) {
            swap(arr[j], arr[j - 1]);
            continue;
        }
        break;
    }
    return ;
}

int extract_Codes(Node *root, Code *arr, int k, int l, char *buff) {
    buff[l] = 0;
    if (root->next[0] == NULL && root->next[1] == NULL) {
        arr[k].ch = root->ch;
        arr[k].str = strdup(buff);
        return 1;
    }
    int delta = 0;
    buff[l] = '0';
    delta += extract_Codes(root->next[0], arr, k + delta, l + 1, buff);
    buff[l] = '1';
    delta += extract_Codes(root->next[1], arr, k + delta, l + 1, buff);
    return delta;
}

Haffman_Tree *build (Data *arr, int n) {
    Node **nodes = (Node **)malloc(sizeof(Node *) * n);
    for (int i = 0; i < n; i++) {
        nodes[i] = getNewNode(arr + i);
    }

    for (int i = 1; i < n; i++) {
        insertOnce(nodes, i);
    }
    for (int i = n - 1; i >= 1; i--) {
        Node *p = getNewNode(NULL);
        p->next[0] = nodes[i - 1];
        p->next[1] = nodes[i];
        p->p = nodes[i - 1]->p + nodes[i]->p;
        nodes[i - 1] = p;
        insertOnce(nodes ,i - 1);
    }
    char *buff = (char *)malloc(sizeof(char *) * n);
    Haffman_Tree *tree = getNewTree(n);
    tree->root = nodes[0];
    extract_Codes(tree->root, tree->codes, 0, 0, buff);
    free(nodes);
    free(buff);
    return tree;
}

int main () {
    int n;
    char str[10];
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%s%lf", str, &arr[i].p);
        arr[i].ch = str[0];
    }
    Haffman_Tree *tree = build(arr, n);
    for (int i = 0; i < tree->n; i++) {
        printf("%c : %s\n", tree->codes[i].ch, tree->codes[i].str);
    }
    return 0;
}

```



##  线索法

大型的二叉树用递归会爆栈。



前去后继： 

```c++
/*************************************************************************
	> File Name: 8.thread_tree.cpp
	> Author: 
	> Mail: 
	> Created Time: Tue Jun 30 19:19:29 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define NORMAL 0
#define THREAD 1

typedef struct Node {
    int key;
    int ltag, rtag;
    struct Node *lchild, *rchild;
} Node;

Node *getNewNode (int val) {
    Node *p = (Node *)malloc(sizeof (Node));
    p->key  = val;
    p->lchild = p->rchild = NULL;
    p->rtag = p->rtag = NORMAL;
    return p;
}

Node *insert(Node *root,int val) {
    if (root == NULL) return getNewNode(val);
    if (root->key == val) return root;
    if (root->key > val) root->lchild = insert(root->lchild, val);
    else root->rchild = insert(root->rchild, val);
    return root;
}

void build_thread(Node *root) {
    if (root == NULL) return ;
    static Node *pre = NULL; //函数调用完会释放，下一次调用会形成新的变量， static会使变量始终不变。
    build_thread(root->lchild);
    if (root->lchild == NULL) {
        root->lchild = pre;
        root->ltag = THREAD;
    }
    if (pre != NULL && pre->rchild == NULL) {
        pre->rchild = root;
        pre->rtag = THREAD;
    }
    pre = root;
    build_thread(root->rchild);
    return ;
}

Node *most_left(Node *p) {
    while (p && p->ltag == NORMAL && p->lchild) p = p->lchild;
    return p;
}


void output(Node *root) {
    Node *p= most_left(root);
    while (p) {
        printf("%d ", p->key);
        if (p->rtag == THREAD) {
            p = p->rchild;
        } else {
            p = most_left(p->rchild);
        }
    }
    return ;
}

void in_order(Node *root) {
    if (root == NULL) return ;
    if (root->ltag == NORMAL) in_order(root->lchild);
    printf("%d ", root->key);
    if(root->rtag == NORMAL) in_order(root->rchild);
    return ;
}

void clear (Node *root) {
    if (root == NULL) return ;
    Node *p = most_left(root), *q;
    while (p) {
        q = p;
        if (p->rtag == THREAD) {
            p = p->rchild;
        } else {
            p = most_left(p->rchild);
        }
        free(q);
    }
    //if (root->ltag == NORMAL) clear(root->lchild);
    //if (root->rtag == NORMAL) clear(root->rchild);
    free(root);
    return ;
}

int main () {
    srand(time(0));
    Node *root = NULL;
    #define max_op 20
    for (int i = 0; i < max_op; i++) {
        int val = rand() % 100;
        root = insert(root, val);
    }
    build_thread(root);
    in_order(root), printf("\n");
    output(root); printf("\n");
    clear(root);
    return 0;
}

```

​		  A                              NULL<-B<-C->A<-E->D->NULL

​       /	  \

   B		   D

​     \        /

​       C E



## 二叉查找树

```c++
/*************************************************************************
	> File Name: 17.delete_tree.cpp
	> Author: 
	> Mail: 
	> Created Time: Tue Jul 21 19:13:35 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef struct Node {
    int key;
    struct Node *lchild, *rchild;
} Node;


Node* getNewNode (int val) {
    Node *p = (Node *)malloc(sizeof(Node));
    p->key = val;
    p->lchild = p->rchild = NULL;
    return p;
}


Node *insert(Node *root, int val) {
    if (root == NULL) return getNewNode(val);
    if (root->key == val) return root;
    if (root->key > val) root->lchild  = insert(root->lchild, val);
    else root->rchild = insert(root->rchild, val);
    return root;
}

Node *predecessor(Node *root) {
    Node *temp = root->lchild;
    while (temp->rchild) temp = temp->rchild;
    return temp;
}

Node *delete_node (Node *root, int key) {
    if (root == NULL) return root;
    if (key < root->key) root->lchild = delete_node(root->lchild, key);
    else if (key > root->key) root->rchild = delete_node(root->rchild, key);
    else {
        //度为0和度为1的节点
        if (root->lchild == NULL || root->rchild == NULL) {
            Node *temp = root->lchild ? root->lchild : root->rchild;
            free(root);
            return temp;
        } else {
            Node *temp = predecessor(root);
            root->key = temp->key;
            root->lchild = delete_node(root->lchild, temp->key);
        }
    }
    return root;
}

Node *search(Node *root, int key){
    if (root == NULL || root->key == key) return root;
    if (root->key > key) return search(root->lchild, key);
    else return search(root->rchild, key);
}

void in_order(Node *root) {
    if (root == NULL) return ;
    in_order(root->lchild);
    printf("%d ", root->key);
    in_order(root->rchild);
    return ;
}

void clear(Node *root) {
    if (root == NULL) return ;
    clear(root->lchild);
    clear(root->rchild);
    free(root);
    return ;
}

int main () {
    Node *root = NULL;
    int op, val;
    while(~scanf("%d%d", &op, &val)) {
        switch(op) {
            case 0: 
                root = insert(root, val); 
                printf("insert success the tree : ");
                in_order(root);
                break;
            case 1: 
                root = delete_node(root, val); 
                printf("delete success the tree : ");
                in_order(root);
                break;
            case 2:
            printf("search %d is %s", val, search(root, val) ? "success" : "failed");
        }
        printf("\n");
    }

    clear(root);
    return 0;
}

```



## 二叉平衡树

### AVL树

|H(left) - H(right)| <= 1;

H <= size(H) <= 2^H^ - 1;

low(H - 2) + low(H - 1) + 1 <= size(H) <= 2 ^H^ - 1;

low(1) = 1, low(2) = 2;

插入操作:

1.左子树比右子树的高度大2:

如果新增元素插入到左儿子的左子树中, 则进行右旋操作.(LL型调整).

如果新增元素插入到左儿子的右子树中,

则进行左旋加右旋操作.(LR型调整).

1.右子树比左子树的高度大2:

如果新增元素插入到右儿子的右子树中, 则进行左旋操作.(RR型调整).

如果新增元素插入到右儿子的左子树中,

则进行右旋加左旋操作.(RL型调整).







# 堆

如果一颗完全二叉树上每个结点的权值小于等于它所在子树的任意结点的权值，也被称为堆。为了区分这两种堆，我们把根结点权值大于等于树中结点权值的堆称为大根堆，根结点权值小于等于树中结点权值的堆则称为小根堆。

由于堆是一棵完全二叉树，堆的插入和删除操作的时间复杂度为 O(logN)，log NlogN 指的就是这颗完全二叉树的高度

堆通常应用在堆排序里，堆排序是一种高效的排序算法，时间复杂度为O(NlogN)。另外，堆也可以用于实现优先队列.



i的左孩子２＊i , 右孩子２＊ｉ+ 1;

**插入流程**:

1.把新元素保存在数组的最后.

2.找到新插入元素的父亲节点位置.

3.将新元素与父亲节点比较大小.

4.如新插入的元素与其父亲节点大小不符合堆序性则交换他和父亲节点的位置,并回到步骤2, 若符合则插入操作完成.

删除流程:

1. 将堆顶元素和最后一个元素交换.
2. 删除堆的最后一个元素
3. 自顶向下调整元素的位置, 使之满足堆序列.



对于==大根堆==实现的==优先队列==，总是优先级高的元素先被删除。相对的，对于小根堆实现的优先队列，总是优先级低的元素先被删除。对于后者，我们也称之为优先队列。

```c++
/*************************************************************************
	> File Name: 10.priority_queue.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jul  4 15:24:21 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include<time.h>
#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}
//递减
typedef struct priority_queue {
    int *data;
    int cnt, size;
} priority_queue;

priority_queue *init(int n) {
    priority_queue *q = (priority_queue *)malloc(sizeof(priority_queue));
    q->data = (int *)malloc(sizeof(int) * (n  + 1));
    q->cnt = 0;
    q->size = n;
    return q;
}

int empty(priority_queue *q) {
    return q->cnt == 0;
}

int top(priority_queue *q) {
    return q->data[1];
}

int push(priority_queue *q, int val) {
    if (q == NULL) return 0;
    if (q->cnt >= q->size) return 0;
    q->data[++(q->cnt)] = val;
    int ind = q->cnt;
    while (ind >> 1 && q->data[ind] > q->data[ind >> 1]) {
        swap(q->data[ind], q->data[ind >> 1]);
        ind >>= 1;
    }
    return 1;
}

void update(priority_queue *q, int ind) {
    while ((ind << 1) <= q->cnt) {
        int max = ind, l = ind << 1, r = ind << 1 | 1;
        if (l <= q->cnt && q->data[l] > q->data[max]) max = l;
        if (r <= q->cnt && q->data[r] > q->data[max]) max = r;
        if (max == ind) break;
        swap(q->data[ind], q->data[max]);
        ind = max;
    }
    return ;
}

int pop(priority_queue *q) {
    if (q == NULL) return 0;
    if (empty(q)) return 0;
    q->data[1] = q->data[q->cnt--];
    update(q, 1);
    return 1;
}

void output(priority_queue *q) {
    for (int i = 1; i < q->cnt; i++) {
        i - 1 && printf(" ");
        printf("%d", q->data[i]);
    }
    printf("\n");
}

void clear(priority_queue *q) {
    if (q == NULL) return ;
    free(q->data);
    free(q);
    return ;
}

int main () {
    srand (time(0));
    #define max_op 20
    priority_queue *q = init(max_op);
    for (int i = 0; i < max_op; i++) {
        int val = rand() % 100;
        push(q, val);
        printf("insert %d to priority_queue\n", val);
    }
  //  output(q);
    for (int i = 0; i < max_op; i++) {
        printf("%d ", top(q));
        pop(q);
    }
    printf("\n");
    clear(q);
    return 0;
}

```

### 对堆的插入,删除, 扩列, 排序.

```c++
/*************************************************************************
	> File Name: heap_sort_protice1.cpp
	> Author: 
	> Mail: 
	> Created Time: Thu Jul 16 20:20:23 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}
//递减
typedef struct priority_queue {
    int *data;
    int cnt, size;
} priority_queue;

priority_queue *init(int n) {
    priority_queue *q = (priority_queue *)malloc(sizeof(priority_queue));
    q->data = (int *)malloc(sizeof(int) * (n  + 1));
    q->cnt = 0;
    q->size = n;
    return q;
}

int empty(priority_queue *q) {
    return q->cnt == 0;
}

int top(priority_queue *q) {
    return q->data[1];
}

void downdate(priority_queue *q, int ind, int n) {
    while ((ind << 1) <= n) {
        int max = ind, l = ind << 1, r = ind << 1 | 1;
        if (l <= n && q->data[l] > q->data[max]) max = l;
        if (r <= n && q->data[r] > q->data[max]) max = r;
        if (max == ind) break;
        swap(q->data[ind], q->data[max]);
        ind = max;
    }
    return ;
}

void expendqueue(priority_queue *q) {
    q->data = (int *)realloc(q->data, sizeof(int) * q->size * 2);
    q->size *= 2;
    return ;
}

int push(priority_queue *q, int val) {
    if (q == NULL) return 0;
    if (q->cnt >= q->size) {
        printf("queue no expend size is %d\n", q->size);
        expendqueue(q);
        printf("expend queue is success, queue size is %d\n", q->size);
    }
    q->data[++(q->cnt)] = val;
    int ind = q->cnt;
    while (ind >> 1 && q->data[ind] > q->data[ind >> 1]) {
        swap(q->data[ind], q->data[ind >> 1]);
        ind >>= 1;
    }
    return 1;
}

int pop(priority_queue *q) {
    if (q == NULL) return 0;
    if (empty(q)) return 0;
    q->data[1] = q->data[q->cnt--];
    downdate(q, 1, q->cnt);
    return 1;
}

void output(priority_queue *q) {
    for (int i = 1; i <= q->cnt; i++) {
        i - 1 && printf(" ");
        printf("%d", q->data[i]);
    }
    printf("\n");
}

void clear(priority_queue *q) {
    if (q == NULL) return ;
    free(q->data);
    free(q);
    return ;
}

void heap_sort(priority_queue *q) {
    for (int i = q->cnt; i > 1; i--) {
        swap(q->data[i], q->data[1]);
        downdate(q, 1, i - 1);
    }
    return ;
}

int main () {
    int val;
    srand(time(0));
    #define max_op 20
    priority_queue *q = init(max_op);
    for (int i = 0; i < 30; i++) {
        //scanf("%d", &val);
        int val = rand() % 100;
        int op = rand() % 5;
        if (op != 0) {
            int flag = push(q, val);
            printf("insert %d to the queue is %s\n", val, flag ? "success" : "failed");
        }
        if (op == 0) {
           int flag =  pop(q);
            printf("pop %d from queue is %s\n", top(q), flag ? "success" : "failed");
        }
    }
    printf("no sort queue : ");
    output(q);
    printf("sort queue : ");
    heap_sort(q);
    output(q);
    printf("\n");
    clear(q);
    return 0;
}
```



### 显示每次排列的第k大个元素

```c++
/*************************************************************************
	> File Name: heap_sort_protice1.cpp
	> Author: 
	> Mail: 
	> Created Time: Thu Jul 16 20:20:23 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}

typedef struct priority_queue {
    int *data;
    int cnt, size;
} priority_queue;

priority_queue *init(int n) {
    priority_queue *q = (priority_queue *)malloc(sizeof(priority_queue));
    q->data = (int *)malloc(sizeof(int) * (n  + 1));
    q->cnt = 0;
    q->size = n;
    return q;
}

int empty(priority_queue *q) {
    return q->cnt == 0;
}

int top(priority_queue *q) {
    return q->data[1];
}

void downdate(priority_queue *q, int ind, int n) {
    while ((ind << 1) <= n) {
        int max = ind, l = ind << 1, r = ind << 1 | 1;
        if (l <= n && q->data[l] < q->data[max]) max = l;
        if (r <= n && q->data[r] < q->data[max]) max = r;
        if (max == ind) break;
        swap(q->data[ind], q->data[max]);
        ind = max;
    }
    return ;
}

void downdate1(int *arr, int ind, int n) {
    while ((ind << 1) <= n) {
        int max = ind, l = ind << 1, r = ind << 1 | 1;
        if (l <= n && arr[l] < arr[max]) max = l;
        if (r <= n && arr[r] < arr[max]) max = r;
        if (max == ind) break;
        swap(arr[ind], arr[max]);
        ind = max;
    }
    return ;
}
void expendqueue(priority_queue *q) {
    q->data = (int *)realloc(q->data, sizeof(int) * q->size * 2);
    q->size *= 2;
    return ;
}

int push(priority_queue *q, int val) {
    if (q == NULL) return 0;
    if (q->cnt >= q->size) {
        printf("queue no expend size is %d\n", q->size);
        expendqueue(q);
        printf("expend queue is success, queue size is %d\n", q->size);
    }
    q->data[++(q->cnt)] = val;
    int ind = q->cnt;
    while (ind >> 1 && q->data[ind] < q->data[ind >> 1]) {
        swap(q->data[ind], q->data[ind >> 1]);
        ind >>= 1;
    }
    return 1;
}

int pop(priority_queue *q) {
    if (q == NULL) return 0;
    if (empty(q)) return 0;
    q->data[1] = q->data[q->cnt--];
    downdate(q, 1, q->cnt);
    return 1;
}

void output(priority_queue *q) {
    for (int i = 1; i <= q->cnt; i++) {
        i - 1 && printf(" ");
        printf("%d", q->data[i]);
    }
    printf("\n");
}

void output1(int *arr, priority_queue *q) {
    for (int i = 1; i <= q->cnt; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void clear(priority_queue *q) {
    if (q == NULL) return ;
    free(q->data);
    free(q);
    return ;
}

void heap_sort(priority_queue *q, int *arr) {  
    for (int i = q->cnt; i > 1; i--) {
        swap(arr[i], arr[1]);
        downdate1(arr, 1, i - 1);
    }
    return ;
}

int main () {
    int val;
    srand(time(0));
    #define max_op 20
    priority_queue *q = init(max_op);
    int *arr = (int *)malloc((max_op + 1) * sizeof(int));
    for (int i = 0; i < 30; i++) {
        //scanf("%d", &val);
        int val = rand() % 100 - 50;
        int op = rand() % 10;
        if (op != 1) {
            int flag = push(q, val);
            printf("insert %d to the queue is %s\n", val, flag ? "success" : "failed");
        }
        if (op == 1) {
            int a = top(q);
            int flag =  pop(q);
            printf("pop %d from queue is %s\n", a, flag ? "success" : "failed");
        }
        printf("no sort queue : ");
        output(q);
        arr = (int *)calloc((q->cnt + 1), sizeof(int));
        for (int i = 1; i <= q->cnt; i++) {
            arr[i] = q->data[i]; 
        }
        printf("sort queue : ");
        heap_sort(q, arr);
        output1(arr, q);
        int k = rand() % q->cnt;
        printf("%dth large is %d\n", k, arr[k]);
        printf("\n");
    }
    clear(q);
    return 0;
}
```



### 堆排序

```c++
/*************************************************************************
	> File Name: 11.heap_sort.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat Jul  4 18:41:02 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}

void downUpdata(int *arr, int ind, int n) {
    while ((ind << 1) <= n) {
        int temp = ind, l = ind << 1, r = ind << 1 | 1;
        if (l<= n && arr[l] > arr[temp]) temp = l;
        if (r <= n && arr[r] > arr[temp]) temp =r;
        if (temp == ind) break;
        swap(arr[temp], arr[ind]);
        ind = temp;
    }
    return ;
}

void heap_sort(int *arr, int n) {
    arr -= 1;
    for (int i = n >> 1; i >= 1;  i--) {
        downUpdata(arr, i, n); 

    }
    for (int i = n; i > 1; i--) {
        swap(arr[i], arr[1]);
        downUpdata(arr, 1, i - 1);
    }
    return ;
}

void output(int *arr, int n) {
    printf("arr(%d) = [", n);
    for (int i = 0; i < n; i++) {
        printf(" %d", arr[i]);
    }
    printf("]\n");
    return ;
}

int main () {
    srand(time(0));
    #define max_op 20
    int *arr = (int *)malloc(sizeof(int) * max_op);
    for (int i = 0; i < max_op; i++) {
        arr[i] = rand() % 100;
    }
    output(arr, max_op);
    heap_sort(arr, max_op);
    output(arr, max_op);
    free(arr);
    return 0;
}

```







#　排序



void qsort（void * base ，size_t nmemb ，size_t size ，
                  int（* 比较）（const void *，const void *））;

cmp(const void *elem1, const void *elem2) 

​         1) 如果 * elem1 应该排在 * elem2 前面，则函数返回值是负整数（任何负整数都行）。

　　2) 如果 * elem1 和* elem2 哪个排在前面都行，那么函数返回0

　　3) 如果 * elem1 应该排在 * elem2 后面，则函数返回值是正整数（任何正整数都行

## 稳定排序

### 插入排序



### 冒泡排序

1.将数组分成

### 归并排序

```c++
/*************************************************************************
	> File Name: sort.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jul  5 10:13:42 2020
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>

#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}

#define TEST(arr, n, func, args...) {\
    int *data = (int *)malloc(sizeof(int) * n);\
    memcpy(data, arr, sizeof(int) * n);\
    output(data, n);\
    printf("%s = ", #func);\
    func(args);\
    output(data, n);\
    free(data);\
}

//归并排序
void merge_sort(int *data, int l, int r) {
    if(r - l <= 1) {
        if (r - l == 1 && data[l] > data[r]) {
            swap(data[l], data[r]);
        }
        return ;
    }
    int mid = (l + r) >> 1;
    merge_sort(data, l, mid);
    merge_sort(data, mid + 1, r);
    int *temp = (int *)malloc(sizeof(int) * (r - l + 1));
    int x = l, y = mid + 1, loc = 0;
    while (x <= mid || y <= r) {
        if (x <= mid && (y > r || data[x] <= data[y])) {
            temp[loc++] = data[x++];
        } else {
            temp[loc++] = data[y++];
        }
    }
    memcpy(data + l, temp, sizeof(int) * (r - l + 1));
    free(temp);
}

// 插入排序
void insert_sort(int *data, int n) {
    for (int i = 1; i < n; i++) {
        for (int j = i; j > 0 && (data[j] < data[j - 1]); j--) {
            swap(data[j], data[j - 1]);
        }
    }
    return ;
}
//冒泡排序
void bubble_sort (int *data, int n) {
    int times = 1;
    for (int i = 1; i < n && times; i++) {
         times = 0;
        for (int j = 0; j < n - i; j++) {
            if (data[j] <= data[j + 1]) continue;
            swap(data[j], data[j + 1]);
            times += 1;
        }
    }
    return ;
}

void randint(int *data, int n){
    for (int i = 0; i < n; i++) {
        int val = rand() % 100;
        data[i] = val;
    }
    return ;
}

void output(int *data, int n) {
    printf("[");
    for (int i = 0; i < n; i++) {
        i && printf(" ");
        printf("%d", data[i]);
    }
    printf("]\n");
}

int main() {
    srand(time(0));
    #define max_op 20
    int arr[max_op];
    randint(arr, max_op);
   //insert_sort(data, max_op);
    TEST(arr, max_op, insert_sort, data, max_op);
    TEST(arr, max_op, bubble_sort, data, max_op);
    TEST(arr, max_op, merge_sort, data, 0, max_op - 1);
    #undef max_op
    return 0;
}

```





## 非稳定的排序

```c++
/*************************************************************************
	> File Name: 13.unstable_sort.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jul  5 16:32:03 2020
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}

#define TEST(arr, n, func, args...) {\
    int *num = (int *)malloc(sizeof(int) * n);\     \\开辟num数组, 对num数组进行排序,而不对arr数组排序是为了下一次		memcpy(num, arr, sizeof(int) * n);\                 \\在对arr排序;
    output(num, n);\         
    printf("%s = ", #func);\
    func(args);\
    output(num, n);\
    free(num);\
}
//选择排序
void select_sort(int *num, int n) {
    for (int i = 0; i < n - 1; i++) {
        int ind = i;
        for (int j = i + 1; j < n; j++)  {
            if (num[ind] >num[j]) ind = j;
        }
        swap(num[i], num[ind]);
    }
    return ;
}
//快速排序
void quick_sort(int *num, int l, int r) {
    while (l < r) {
        int x = l, y = r, z = num[(l + r) >> 1];
        do {
            while (x <= y && num[x] < z) x++;
            while (x <= y && num[y] > z) y--;
            if (x <= y) {
                swap(num[x], num[y]);
                x++, y--;
            }
        } while(x <= y);
        quick_sort(num, x, r);
        r = y;
    }
    return ;
}

void randint(int *num, int n) {
    while(n--) num[n] = rand() % 100;
    return ;
}

void output(int *num, int n) {
    printf("[");
    for (int i = 0; i < n; i++) {
        printf(" %d", num[i]);
    }
    printf("]\n");
    return ;
}

int main () {
    #define max_op 20
    srand(time(0));
    int arr[max_op];
    randint(arr, max_op);
    TEST(arr, max_op, select_sort, num, max_op);
    TEST(arr, max_op, quick_sort, num, 0, max_op - 1);
    #undef max_op
    return 0;
}

```





# 查找



## 二分查找

### 正常查找

double型

mid = (min + max) >> 1;

if (min == max)  return 1;

if(arr[mid] < x) min = mid +1;

if (arr[mid] > x)  max = mid -  1;

### 找到最后一个一：求最大

11111111111111==1==000000000000000000

min是虚拟头指针,max是尾指针；mid = (min + max + 1) / 2;

if (arr[mid]  == 1)   min = mid;

if (arr[mid] != 1)  max  = mid - 1;

if (min == max)  return L;

### 找到第一个一：求最小

0000000000000000000==1==111111111111111111

min是头指针,max是虚拟尾指针；mid = (min + max) / 2;

if (arr[mid]  == 1)   max= mid;

if (arr[mid] != 1)  min  = mid + 1;

if (min == max)  return L;

```c++
/*************************************************************************
	> File Name: 15.binary_search.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun Jul  5 19:21:40 2020
 ************************************************************************/

#include<stdio.h>
#define P(func, args...){\
    printf("%s = %d\n", #func, func(args));\
} 

// 1 3 5 7 9 10
int bineary_search(int *num, int n, int x) {
    int head = 0,  tail = n - 1, mid;
    while (head <= tail) {
        mid = (head +tail) >> 1;
        if (num[mid] == x) return mid;
        if( num[mid] < x) head = mid + 1;
        else tail = mid -1;
    }
    return -1;
}

// 111111111110000000
int search_last1(int *num, int n) {
    int head = -1, tail = n - 1, mid;
    while (head < tail) {
        mid = (head + tail + 1) >> 1;
        if (num[mid] == 1) head = mid;
        else tail = mid - 1;
    }
    return head;
}

// 0000000000111111111
int search_first1(int *num, int n) {
    int head =  0, tail = n, mid;
    while (head < tail) {
        mid = (head + tail) >> 1;
        if (num[mid] == 1) tail = mid;
        else head = mid + 1;
    }
    return head == n ? -1 :head;
}

int main(){
    int arr1[10] = {1, 2, 3, 5, 7, 9, 10, 11, 12, 13};
    int arr2[10] = {1, 1, 1, 1, 1, 0, 0, 0 ,0 ,0};
    int arr3[10] = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1};
    P(bineary_search, arr1, 10, 3);
    P(search_last1, arr2, 10);
    P(search_first1, arr3, 10);
    return 0;
}
```



## 哈希表

```c++
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
 
typedef struct Node {
    char *str;
    struct Node *next;
} Node;

typedef struct HashTable {
    Node **data;
    int size;
} HashTable;

Node *init_node(char *str, Node *head) {
    Node *p = (Node *)malloc(sizeof(Node));
    p->str = strdup(str);
    p->next = head;
    return p;
}

HashTable *init_hashtable (int n) {
    HashTable *h = (HashTable *)malloc(sizeof(HashTable));
    h->size = n << 1;
    h->data = (Node **)calloc(h->size, sizeof(Node *));
    return h;
}

int BKDRHASH (char *str) {
    int seed = 31, hash = 0;
    for (int i = 0; str[i]; i++) hash = hash * seed + str[i];
    return hash & 0x7fffffff;
}


int insert(HashTable *h, char *str){
    int hash = BKDRHASH(str);
    int ind = hash % h->size;
    h->data[ind] = init_node(str, h->data[ind]);
    return 1;
}

int search(HashTable *h, char *str) {
    int hash = BKDRHASH(str);
    int ind = hash % h->size;
    Node *p = h->data[ind];
    while (p && strcmp(p->str, str)) p = p->next;
    return p != NULL;
}

void clear_node(Node *node) {
    if(node == NULL) return ;
    Node *p = node, *q;
    while(p) {
        q = p->next;
        free(p->str);
        free(p);
        p = q;
    }
    free(q);
    return ;
}

void clear_hashtable(HashTable *h) {
    if (h == NULL) return ;
    for (int i = 0; i < h->size; i++) clear_node(h->data[i]);
    free(h->data);
    free(h);
}
int main(){
    int op;
    #define max_n 100
    char str[max_n + 5] = {0};
    HashTable *h = init_hashtable(max_n + 5);
    while (~scanf("%d%s", &op, str)) {
        switch (op) {
            case 0:
                printf("insert %s to hash table\n", str);
                insert(h, str);
                break;
            case 1:
                printf("search %s to hash table = %d\n", str, search(h, str));
                break;
        }
    }
    clear_hashtable(h);
    return 0;
}

```



#　图的遍历

## 深度优先搜索（DFS）



## 广度优先搜索（BFS）



# LeetCode



## 1.链表

### 206.翻转链表

反转一个单链表。

示例:

输入: 1->2->3->4->5->NULL
输出: 5->4->3->2->1->NULL
进阶:
你可以迭代或递归地反转链表。你能否用两种方法解决这道题？



#### 1.迭代翻转

```c++
/**

 * Definition for singly-linked list.
 * struct ListNode {
 * int val;
 * struct ListNode *next;
 * };
   */


struct ListNode* reverseList(struct ListNode* head){
  struct ListNode ret, *p, *q;
  ret.next = head;
  p = head;
  ret.next = NULL;

  while (p) {
      q = p->next;
      p->next = ret.next;
     ret.next = p;
      p = q;
  }
  return ret.next;
}


```

#### 2.递归翻转

```c++
  if (head == NULL  || head->next == NULL)  return head;
  struct ListNode  *p = reverseList(head->next);
  head->next->next = head;
  head->next = NULL;
  return p
```

### 234.回文链表

请判断一个链表是否为回文链表。

示例 1:

输入: 1->2
输出: false
示例 2:

输入: 1->2->2->1
输出: true
进阶：
你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题



```c++
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
 int get_len(struct ListNode *head) {
    int num = 0;
    while (head) {
        head = head->next;
        num++;
    }
    return num;
 }

struct ListNode *get_node(struct ListNode *head, int ind) {
    while (ind--) head = head->next;
    return head;
}

struct ListNode *reverse (struct ListNode *head) {
    struct ListNode *p = head, *q;
    head = NULL;
    while(p) {
        q = p->next;
        p->next = head;
        head = p;
        p = q;
    }
    return head;
}

bool isPalindrome(struct ListNode* head){
    int len = get_len(head);
   struct ListNode *p = head, *q = reverse(get_node(head, (len + 1) / 2));
    while (q) {
        if (p->val - q->val)  return false;
        p = p->next;
        q = q->next;
    }
    return true;
}
```

​    

   

### 142.环形链表

给定一个链表，返回链表开始入环的第一个节点。 如果链表无环，则返回 null。

为了表示给定链表中的环，我们使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。 如果 pos 是 -1，则在该链表中没有环。

说明：不允许修改给定的链表。 

示例 1：

输入：head = [3,2,0,-4], pos = 1
输出：tail connects to node index 1
解释：链表中有一个环，其尾部连接到第二个节点。


示例 2：

输入：head = [1,2], pos = 0
输出：tail connects to node index 0
解释：链表中有一个环，其尾部连接到第一个节点。


示例 3：

输入：head = [1], pos = -1
输出：no cycle
解释：链表中没有环。

```c++
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode *detectCycle(struct ListNode *head) {
    struct ListNode  *p = head, *q = head;
     if (p == NULL) return NULL;
    do {
        p =p->next;
        q =q->next;
        if (q == NULL || q->next == NULL)  return false;
        q =q->next;
    } while (p != q);
    q = head;
    while(p != q) {
        p = p->next;
        q = q->next;
    }
    return p;
}
```



## 寻找两个数组的中位数



## 寻找第一个一　：

### 278.第一个错误的版本



## 349.350:两个数组的交集

```c++
int cmp(const void* _a, const void* _b ) {
    int *a = (int *)_a, *b = (int*)_b;
    return *a == *b ? 0 : *a  > *b ? 1 : -1;
}
int* intersect(int* nums1, int nums1Size, int* nums2, int nums2Size, int* returnSize){
   qsort(nums1, nums1Size, sizeof(int), cmp);
   qsort(nums2, nums2Size, sizeof(int), cmp);
    *returnSize = 0;
    int len = nums1Size < nums2Size ? nums1Size : nums2Size;
    int *ans = (int *)malloc(sizeof(int) * len);
    int i = 0, j = 0; 
    while (i < nums1Size && j < nums2Size) {
        if (nums1[i] < nums2[j]) {
            i += 1;
        } else if( nums1[i] > nums2[j]) {
            j += 1;
        } else {
            ans[(*returnSize)++] = nums1[i];
            i++;
            j++;
        }
    }
    return ans;
}
```

## qsort()

C 库函数 - qsort()
C 标准库 - <stdlib.h> C 标准库 - <stdlib.h>

### 描述
C 库函数 void qsort(void *base, size_t nitems, size_t size, int (*compar)(const void *, const void*)) 对数组进行排序。

### 声明
下面是 qsort() 函数的声明。

void qsort(void *base, size_t nitems, size_t size, int (*compar)(const void *, const void*))
### 参数
base -- 指向要排序的数组的第一个元素的指针。
nitems -- 由 base 指向的数组中元素的个数。
size -- 数组中每个元素的大小，以字节为单位。
compar -- 用来比较两个元素的函数。
返回值
该函数不返回任何值。

### 实例

下面的实例演示了 qsort() 函数的用法。

```c++


#include <stdio.h>
#include <stdlib.h>

int values[] = { 88, 56, 100, 2, 25 };

int cmpfunc (const void * a, const void * b)
{
   return ( *(int*)a - *(int*)b );
}

int main()
{
   int n;

   printf("排序之前的列表：\n");
   for( n = 0 ; n < 5; n++ ) {
      printf("%d ", values[n]);
   }

   qsort(values, 5, sizeof(int), cmpfunc);

   printf("\n排序之后的列表：\n");
   for( n = 0 ; n < 5; n++ ) {
      printf("%d ", values[n]);
   }
  
  return(0);
}
让我们编译并运行上面的程序，这将产生以下结果：

排序之前的列表：
88 56 100 2 25 
排序之后的列表：
2 25 56 88 100
```



## 树

### 100.相同的树

给定两个二叉树，编写一个函数来检验它们是否相同。

如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的

```c++
bool isSameTree(struct TreeNode* p, struct TreeNode* q){
    if (!p  && !q ) return true;
    if ((!p && q ) || (p && !q)) return false;
    if (p->val != q->val) return false;
    return isSameTree(p->right, q->right) && isSameTree(p->left, q->left);  
}
```

### 101.对称的二叉树

给定一个二叉树，检查它是否是镜像对称的。

```c++
bool is_reserve (struct TreeNode *a, struct TreeNode *b) {
    if (!a && !b ) return true;
    if ((!a && b) || (a && !b)) return false;
    return a->val == b->val && is_reserve(a->left , b->right) && is_reserve(a->right, b->left);
}
bool isSymmetric(struct TreeNode* root){
    if (!root) return true;
    return is_reserve (root->left , root->right);
}
```



### 102. 二叉树的层次遍历

给你一个二叉树，请你返回其按 **层序遍历** 得到的节点值。 （即逐层地，从左到右访问所有节点）。

 

```c++
int getDepth(struct TreeNode *root) {
    if (root == NULL) return 0;
    int l = getDepth(root->left), r = getDepth(root->right);
    return (l > r ? l : r) + 1;
}

void getCnt(struct TreeNode *root, int k, int *cnt) {
    if (root == NULL) return ;
    cnt[k] += 1;
    getCnt(root->left, k + 1, cnt);
    getCnt(root->right, k + 1, cnt);
    return ;
}

void getResult(struct TreeNode *root, int k, int *cnt, int **ret) {
    if (root == NULL) return ;
    ret[k][cnt[k]++] = root->val;
    getResult(root->left, k + 1, cnt, ret);
    getResult(root->right, k + 1, cnt, ret);
    return ;
}

int** levelOrder(struct TreeNode* root, int* returnSize, int** columnSizes) {
    int depth = getDepth(root);
    int *cnt = (int *)calloc(sizeof(int), depth);
    int **ret = (int **)malloc(sizeof(int *) * depth);
    getCnt(root, 0, cnt);
    for (int i = 0; i < depth; i++) {
        ret[i] = (int *)malloc(sizeof(int) * cnt[i]);
        cnt[i] = 0;
    }
    getResult(root, 0, cnt, ret);
    *returnSize = depth;
    *columnSizes = cnt;
    return ret;
}
```



### 107. 二叉树的层次遍历 II

给定一个二叉树，返回其节点值自底向上的层次遍历。 （即按从叶子节点所在层到根节点所在的层，逐层从左向右遍历).

```c++
int getdepth (struct TreeNode *root) {
    if (root == NULL) return 0;
    int l = getdepth (root->left);
    int r = getdepth (root->right);
    return (l > r ? l :  r) + 1;
}

void getcnt (struct TreeNode *root, int k, int *cnt) {
    if (root == NULL) return ;
    cnt[k] += 1;
    getcnt (root->left, k + 1, cnt);
    getcnt (root->right, k+ 1, cnt);
    return ;
}

void getresult(struct TreeNode *root, int *cnt, int **ans, int k) {
    if (root == NULL) return ;
    ans[k][cnt[k]++] = root->val;
    getresult(root->left, cnt, ans, k - 1);
    getresult(root->right, cnt, ans, k - 1);
    return ;
}

int** levelOrderBottom(struct TreeNode* root, int* returnSize, int** returnColumnSizes){
    int depth = getdepth(root);
    int *cnt = (int *)calloc(depth, sizeof(int));
    int **ans = (int **)malloc(sizeof(int*) * depth);
    getcnt(root, 0, cnt);
    for (int i = 0; i < depth; i++) {
        ans[i] = (int *)malloc(sizeof(int) * cnt[depth - 1 - i]);
        cnt[depth -  1 - i] = 0;
    }
    getresult(root, cnt, ans, depth - 1);
    *returnSize = depth;
    *returnColumnSizes = cnt;
    return ans;
}
```





### 104.二叉树最大的深度

```c++
int maxDepth(struct TreeNode* root){
    if (root == NULL) return 0;
    int l = 0, r = 0;
   if (root->left) l = maxDepth(root->left);
   if (root->right) r = maxDepth(root->right);
   return (l > r ? l : r) + 1;
}
```

### 110.平衡二叉树

给定一个二叉树，判断它是否是高度平衡的二叉树。

本题中，一棵高度平衡二叉树定义为：

> 一个二叉树*每个节点* 的左右两个子树的高度差的绝对值不超过1。	

```C++
int height (struct TreeNode *root) {
    if (root == NULL) return 0;
    int l =height(root->left);
    int r = height(root->right);
    return (l > r ? l :  r) + 1;
}

bool isBalanced(struct TreeNode* root){
    if (!root) return true;
    int left = height(root->left);
    int right = height(root->right);
    return fabs(left- right) <= 1 && isBalanced(root->right) && isBalanced(root->left);
}
```

### 路径总和

给定一个二叉树和一个目标和，判断该树中是否存在根节点到叶子节点的路径，这条路径上所有节点值相加等于目标和。

说明: 叶子节点是指没有子节点的节点。

示例: 
给定如下二叉树，以及目标和 sum = 22

```c++
bool hasPathSum(struct TreeNode* root, int sum){
    if (root == NULL) return false;
    if (root->val == sum && root->left == NULL && root->right == NULL )  return true;
    sum -= root->val;
    return hasPathSum(root->left, sum) || hasPathSum(root->right, sum);
}
```

### 111.二叉树的最小深度

给定一个二叉树，找出其最小深度。

最小深度是从根节点到最近叶子节点的最短路径上的节点数量。

**说明:** 叶子节点是指没有子节点的节点。

```c++
int minDepth(struct TreeNode* root){
    if (root == NULL) return 0;
     int leftlen = 1 +minDepth(root->left);
     int rightlen = 1 + minDepth(root->right);
     if (!root->left &&root->right) return rightlen;
     if(root->left && !root->right) return leftlen;
     return leftlen <=  rightlen? leftlen :rightlen;
}
```

### 226.翻转二叉树

翻转一颗二叉树

```c++
struct TreeNode* invertTree(struct TreeNode* root){
    if (root == NULL) return ;
    invertTree(root->left);
    invertTree(root->right);
    struct TreeNode *p = root->left;
   root->left = root->right;
    root->right = p;
    return root;
}
```

### 235. 二叉搜索树的最近公共祖先

给定一个二叉搜索树, 找到该树中两个指定节点的最近公共祖先。

[百度百科](https://baike.baidu.com/item/最近公共祖先/8918834?fr=aladdin)中最近公共祖先的定义为：“对于有根树 T 的两个结点 p、q，最近公共祖先表示为一个结点 x，满足 x 是 p、q 的祖先且 x 的深度尽可能大（**一个节点也可以是它自己的祖先**）。”

例如，给定如下二叉搜索树: root = [6,2,8,0,4,7,9,null,null,3,5]

![img](https://assets.leetcode-cn.com/aliyun-lc-upload/uploads/2018/12/14/binarysearchtree_improved.png)

​	

```c++
struct TreeNode* lowestCommonAncestor(struct TreeNode* root, struct TreeNode* p, struct TreeNode* q) {
    int pval= p->val, qval =q->val, rval= root->val;
    if (pval < rval && qval < rval) return lowestCommonAncestor(root->left, p, q);
    if (pval > rval && qval > rval) return lowestCommonAncestor(root->right, p, q);  
    return root;
}
```

### 257.二叉树的所有路径

给定一个二叉树，返回所有从根节点到叶子节点的路径。

**说明:** 叶子节点是指没有子节点的节点。

```c++
int getpathnum(struct TreeNode *root) {
    if(root == NULL) return 0;
    if (root ->left == NULL && root->right == NULL) return 1;
    return getpathnum(root->right) + getpathnum(root->left);
}

int getresult(struct TreeNode *root, char *buff, char **ans, int len, int k) {
    if (root == NULL) return 0;
    len += sprintf(buff + len, "%d", root->val);
    if (root->left == NULL && root->right == NULL) {
        ans[k] = strdup(buff);
        return 1;
    }
    len += sprintf(buff + len, "->");
    int  num = getresult(root->left, buff, ans, len, k);
    num += getresult(root->right, buff, ans, len, k + num);
    return num;
}

char ** binaryTreePaths(struct TreeNode* root, int* returnSize){
    int pathnum = getpathnum(root);
    char **ans = (char **)malloc(sizeof(char *) * pathnum);
    char *buff = (char *)calloc(1000 , sizeof(char));
    getresult(root, buff, ans, 0, 0);
    free(buff);
    *returnSize = pathnum;
    return ans;
}
```

### 297 ?



##　查找

### 374:猜数字大小



4, 217,219

## 堆

### 264. 313.超级丑数

编写一段程序来查找第 n 个超级丑数。

超级丑数是指其所有质因数都是长度为 k 的质数列表 primes 中的正整数。

示例:

输入: n = 12, primes = [2,7,13,19]
输出: 32 
解释: 给定长度为 4 的质数列表 primes = [2,7,13,19]，前 12 个超级丑数序列为：[1,2,4,7,8,13,14,16,19,26,28,32] 。
说明:

1 是任何给定 primes 的超级丑数。
 给定 primes 中的数字以升序排列。
0 < k ≤ 100, 0 < n ≤ 106, 0 < primes[i] < 1000 。
第 n 个超级丑数确保在 32 位有符整数范围内。



```c++
#define swap(a, b) {\
    __typeof(a) __temp = (a);\
    (a) = (b), (b) = __temp;\
}

typedef struct Heap {
    long long *data;
    int size, cnt;
} Heap;

Heap *getheap(int n) {
    Heap *h = (Heap *)malloc(sizeof(Heap));
    h->data = (long long *)malloc(sizeof(long long) * (n + 1));
    h->cnt = 0;
    h->size = n;
    return h;
}

void downupdata(Heap *h, int ind, int n) {
    while ((ind << 1) <= n) {
        int temp = ind, l = ind << 1, r = ind << 1| 1;
        if (l <= n && h->data[temp] > h->data[l]) temp = l;
        if (r <= n && h->data[temp] > h->data[r]) temp = r;
        if (temp == ind) break;
        swap(h->data[ind], h->data[temp]);
        ind = temp;
    }
    return ;
}

void expend(Heap *h) {
    h->data = (int *) realloc(h->data, 2 * h->size * sizeof(int));
    h->size *= 2;
    return ;
}

int push (Heap *h,long long val) {
    if (h == NULL) return 0;
    if (h->cnt >= h->size) expend(h);
    h->data[++(h->cnt)] = val;
    int ind = h->cnt;
    while (ind >> 1 && h->data[ind ] < h->data[ind >> 1]) {
        swap(h->data[ind], h->data[ind >> 1]);
        ind >>= 1;
    }
    return 1;
}

int top(Heap *h) {
    return h->data[1];
}

long long empty(Heap *h) {
    return h->cnt == 0;
}

int pop(Heap *h) {
    if (h == NULL) return 0;
    if (empty(h)) return 0;
    h->data[1] = h->data[h->cnt--];
    downupdata(h, 1, h->cnt);
    return 1;
}

void clear(Heap *h) {
    if (h == NULL) return ;
    free(h->data);
    free(h);
    return ;
}

int nthSuperUglyNumber(int n, int* primes, int primesSize){
    int k = primesSize;
    Heap  *h = getheap(n * primesSize);
    push(h, 1);
    long long ans = 0;
    while (n--) {
        ans = top(h);
        pop(h);
        int i = k - 1;
        for (; i > 0; i--) {
            if (ans % primes[i]) continue;
            break;
        }
        for (int j= i; j < k; j++) {
            push(h, ans * primes[j]);
        }
    }
     clear(h);
    return ans;
}
```



## 栈

### [20. 有效的括号](https://leetcode-cn.com/problems/valid-parentheses/)

难度简单1695

给定一个只包括 `'('`，`')'`，`'{'`，`'}'`，`'['`，`']'` 的字符串，判断字符串是否有效。

有效字符串需满足：

1. 左括号必须用相同类型的右括号闭合。
2. 左括号必须以正确的顺序闭合。

注意空字符串可被认为是有效字符串。

```c++
bool isValid(char *s){
    int len = strlen(s), top = -1, flag = 1;
    if (len & 1) return false;
    char *stack = (char *)malloc(sizeof(char) * len);
    while(s[0]) {
        switch (s[0]) {
            case '(' :
            case '{':
            case '[':
                stack[++top] = s[0];
                break;
            case ')': flag =((top != -1) && (stack[top--] =='(')); break;
            case '}': flag =(top != -1 && stack[top--] =='{'); break;
            case ']': flag =((top != -1) && (stack[top--] =='[')); break;    
        }
         if (!flag) return false;
        s++;
    }
   
    free(stack);
    return (flag && top == -1);
}
```

