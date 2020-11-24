## 用法

### 欢迎使用cJSON。

cJSON旨在成为您可以完成工作的最愚蠢的解析器。它是C的单个文件，也是单个头文件。

JSON在这里得到最好的描述：[http](http://www.json.org/) : [//www.json.org/](http://www.json.org/) 就像XML，但是没有脂肪。您可以使用它来移动数据，存储东西，或仅仅代表程序的状态。

作为一个库，cJSON的存在是为了尽可能多地避免繁琐的工作，但不会妨碍您的工作。出于实用主义的考虑（即忽略事实），我要说的是您可以在以下两种模式之一中使用它：自动和手动。让我们快速浏览一下。

我从此页面上提取了一些JSON：[http](http://www.json.org/fatfree.html) : [//www.json.org/fatfree.html](http://www.json.org/fatfree.html) 该页面启发了我编写cJSON，这是一个试图与JSON本身共享相同哲学的解析器。简单，笨拙，不碍事。

### 建造

有几种方法可以将cJSON合并到您的项目中。

#### 复制源

因为整个库只有一个C文件和一个头文件，所以您只需复制`cJSON.h`并复制`cJSON.c`到项目源并开始使用它。

cJSON用ANSI C（C89）编写，以便支持尽可能多的平台和编译器。

#### CMake的

使用CMake，cJSON支持完整的构建系统。这样，您可以获得最多的功能。支持版本等于或高于2.8.5的CMake。使用CMake时，建议进行树外构建，这意味着将编译后的文件放在与源文件不同的目录中。因此，为了在Unix平台上使用CMake构建cJSON，请创建`build`目录并在其中运行CMake。

```
mkdir build
cd build
cmake ..
```

这将创建一个Makefile和许多其他文件。然后可以编译它：

```
make
```

并根据需要安装`make install`。默认情况下，它将标头`/usr/local/include/cjson`和库安装到`/usr/local/lib`。它还会为pkg-config安装文件，以使其更易于检测和使用CMake的现有安装。并安装CMake配置文件，其他基于CMake的项目可以使用该文件来发现库。

您可以使用可传递给CMake的不同选项列表来更改构建过程。使用以下命令打开`On`和关闭它们`Off`：

- `-DENABLE_CJSON_TEST=On`：启用构建测试。（默认情况下处于启用状态）
- `-DENABLE_CJSON_UTILS=On`：启用构建cJSON_Utils。（默认关闭）
- `-DENABLE_TARGET_EXPORT=On`：启用CMake目标的导出。如果出现问题，请关闭电源。（默认情况下处于启用状态）
- `-DENABLE_CUSTOM_COMPILER_FLAGS=On`：启用自定义编译器标志（当前适用于Clang，GCC和MSVC）。如果出现问题，请关闭电源。（默认情况下处于启用状态）
- `-DENABLE_VALGRIND=On`：使用[valgrind](http://valgrind.org/)运行测试。（默认关闭）
- `-DENABLE_SANITIZERS=On`：编译启用了[AddressSanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer)和[UndefinedBehaviorSanitizer的](https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html)cJSON （如果可能）。（默认关闭）
- `-DENABLE_SAFE_STACK`：启用[SafeStack](https://clang.llvm.org/docs/SafeStack.html)检测阶段。当前仅适用于Clang编译器。（默认关闭）
- `-DBUILD_SHARED_LIBS=On`：构建共享库。（默认情况下处于启用状态）
- `-DBUILD_SHARED_AND_STATIC_LIBS=On`：构建共享库和静态库。（默认关闭）
- `-DCMAKE_INSTALL_PREFIX=/usr`：设置安装前缀。
- `-DENABLE_LOCALES=On`：启用localeconv方法的用法。（默认为开启）
- `-DCJSON_OVERRIDE_BUILD_SHARED_LIBS=On`：启用覆盖的值`BUILD_SHARED_LIBS`用`-DCJSON_BUILD_SHARED_LIBS`。

如果要为Linux发行版打包cJSON，则可能需要采取以下步骤：

```
mkdir build
cd build
cmake .. -DENABLE_CJSON_UTILS=On -DENABLE_CJSON_TEST=Off -DCMAKE_INSTALL_PREFIX=/usr
make
make DESTDIR=$pkgdir install
```

在Windows上，CMake通常用于通过在Visual Studio的开发人员命令提示符中运行它来创建Visual Studio解决方案文件，有关确切步骤，请遵循CMake和Microsoft的官方文档并使用您选择的在线搜索引擎。上面选项的描述通常仍然适用，尽管并非所有选项都可在Windows上使用。

#### 生成文件

**注意：**不建议使用此方法。尽可能使用CMake。Makefile支持仅限于修复错误。

如果您没有CMake，但仍然有GNU make。您可以使用makefile构建cJSON：

在带有源代码的目录中运行此命令，它将自动编译静态和共享库以及一些测试程序（而不是完整的测试套件）。

```
make all
```

如果需要，可以使用将编译的库安装到系统中`make install`。默认情况下，它将在中安装标头，在中安装`/usr/local/include/cjson`库`/usr/local/lib`。但是您可以通过设置`PREFIX`和`DESTDIR`变量来更改此行为：`make PREFIX=/usr DESTDIR=temp install`。并使用卸载它们`make PREFIX=/usr DESTDIR=temp uninstall`。

#### 电压

您可以使用[vcpkg](https://github.com/Microsoft/vcpkg)依赖性管理器下载并安装cJSON ：

```
git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.sh
./vcpkg integrate install
vcpkg install cjson
```

Microsoft团队成员和社区贡献者将vcpkg中的cJSON端口保持最新。如果版本已过期，请在vcpkg存储库上[创建问题或请求请求](https://github.com/Microsoft/vcpkg)。

### 包括cJSON

如果是通过CMake或Makefile安装的，则可以包含cJSON，如下所示：

```
＃包括 < cjson / cJSON.h >
```

### 数据结构

cJSON使用`cJSON`struct数据类型表示JSON数据：

```
/ * cJSON结构：* /
 typedef 结构cJSON
{
    struct cJSON *下一步;
    struct cJSON *上一页;
    struct cJSON * child;
    INT类型;
    char * valuestring;
    / *不建议写入valueint，请改用cJSON_SetNumberValue * /
     int valueint;
    double valuedouble;
    字符* string;
} cJSON;
```

此类型的项目表示JSON值。类型`type`以位标记的形式存储（**这意味着您不能仅通过比较的值来找到类型type**）。

要检查项目的类型，请使用相应的`cJSON_Is...`功能。它会先执行`NULL`检查，然后进行类型检查，如果该项属于此类型，则返回布尔值。

类型可以是以下之一：

- `cJSON_Invalid`（选中`cJSON_IsInvalid`）：表示一个不包含任何值的无效项目。如果将项目设置为全零字节，则将自动具有此类型。
- `cJSON_False`（用选中`cJSON_IsFalse`）：表示一个`false`布尔值。您也可以使用来检查布尔值`cJSON_IsBool`。
- `cJSON_True`（用选中`cJSON_IsTrue`）：表示一个`true`布尔值。您也可以使用来检查布尔值`cJSON_IsBool`。
- `cJSON_NULL`（选中`cJSON_IsNull`）：表示一个`null`值。
- `cJSON_Number`（用选中`cJSON_IsNumber`）：表示一个数字值。该值存储为double in`valuedouble`和in `valueint`。如果数字超出整数范围，`INT_MAX`或`INT_MIN`用于`valueint`。
- `cJSON_String`（用选中`cJSON_IsString`）：表示一个字符串值。它以零终止字符串的形式存储在中`valuestring`。
- `cJSON_Array`（用选中`cJSON_IsArray`）：表示一个数组值。这是通过指向表示数组中值`child`的`cJSON`项目的链接列表来实现的。使用`next`和将元素链接在一起`prev`，其中第一个元素具有`prev.next == NULL`和最后一个元素`next == NULL`。
- `cJSON_Object`（用选中`cJSON_IsObject`）：表示一个对象值。对象的存储方式与数组相同，唯一的区别是对象中的项将其键存储在中`string`。
- `cJSON_Raw`（选中`cJSON_IsRaw`）：表示以JSON字符存储的零终止形式的任何JSON `valuestring`。例如，这可以用于避免重复打印相同的静态JSON以节省性能。解析时，cJSON永远不会创建此类型。另请注意，cJSON不会检查其是否为有效JSON。

此外，还有以下两个标志：

- `cJSON_IsReference`：指定`child`指向和/或`valuestring`不属于该项目的项目，它仅是参考。因此，`cJSON_Delete`and其他函数只会取消分配该项目，而不会取消分配`child`/ `valuestring`。
- `cJSON_StringIsConst`：这表示`string`指向常量字符串。这意味着`cJSON_Delete`和其他函数将不会尝试取消分配`string`。

### 处理数据结构

对于每种值类型，都有一个`cJSON_Create...`函数可用于创建该类型的项目。所有这些都将分配一个`cJSON`结构，以后可以使用删除该结构`cJSON_Delete`。请注意，您必须在某些时候将其删除，否则会发生内存泄漏。
**重要提示**：如果您已经将项目添加到数组或对象中，则**不能使用**删除它`cJSON_Delete`。将其添加到数组或对象将转移其所有权，以便在删除该数组或对象时也将其删除。您也可以使用`cJSON_SetValuestring`来更改`cJSON_String`的`valuestring`，而无需`valuestring`手动释放前一个。

#### 基本类型

- 用创建**空值**`cJSON_CreateNull`
- **布尔**与创建`cJSON_CreateTrue`，`cJSON_CreateFalse`或`cJSON_CreateBool`
- 用创建**数字**`cJSON_CreateNumber`。这将同时设置`valuedouble`和`valueint`。如果数字超出整数范围，`INT_MAX`或者`INT_MIN`用于`valueint`
- **字符串**与创建`cJSON_CreateString`（复制字符串）或`cJSON_CreateStringReference`（直接指向字符串，这意味着`valuestring`将不会被删除`cJSON_Delete`，你是负责其生命周期，常量有用）

#### 数组

您可以使用创建空数组`cJSON_CreateArray`。`cJSON_CreateArrayReference`可用于创建不“拥有”其内容的数组，因此不会被删除其内容`cJSON_Delete`。

要将项目添加到数组，请使用`cJSON_AddItemToArray`将项目追加到末尾。`cJSON_AddItemReferenceToArray`可以将使用元素添加为对另一个项目，数组或字符串的引用。这意味着`cJSON_Delete`不会删除该项目`child`或`valuestring`属性，因此，如果已经在其他地方使用过，则不会发生双重释放。要在中间插入项目，请使用`cJSON_InsertItemInArray`。它将在基于0的给定索引处插入一个项目，并将所有现有项目向右移动。

如果要从给定索引的数组中取出项目并继续使用，请使用`cJSON_DetachItemFromArray`，它将返回分离的项目，因此请确保将其分配给指针，否则会发生内存泄漏。

用删除项目`cJSON_DeleteItemFromArray`。它的工作方式类似于`cJSON_DetachItemFromArray`，但通过删除了分离的项目`cJSON_Delete`。

您也可以替换数组中的项目。要么`cJSON_ReplaceItemInArray`使用索引或与`cJSON_ReplaceItemViaPointer`给定的一个指针的元素。如果失败`cJSON_ReplaceItemViaPointer`将返回`0`。这在内部所做的是分离旧项目，将其删除，然后将新项目插入其位置。

要获取数组的大小，请使用`cJSON_GetArraySize`。使用`cJSON_GetArrayItem`给定的索引处得到的元素。

由于数组存储为链接列表，因此通过索引对其进行迭代效率不高（`O(n²)`），因此您可以使用`cJSON_ArrayForEach`宏在`O(n)`时间复杂度上对数组进行迭代。

#### 对象

您可以使用创建一个空对象`cJSON_CreateObject`。`cJSON_CreateObjectReference`可用于创建不“拥有”其内容的对象，因此不会通过删除其内容`cJSON_Delete`。

要将项目添加到对象，请使用`cJSON_AddItemToObject`。使用`cJSON_AddItemToObjectCS`将项目添加到一个物体是一个常量或引用（该项目的密钥，名称`string`中的`cJSON`结构），以便它不会被释放`cJSON_Delete`。`cJSON_AddItemReferenceToArray`可以将使用元素添加为对另一个对象，数组或字符串的引用。这意味着`cJSON_Delete`不会删除该项目`child`或`valuestring`属性，因此，如果已经在其他地方使用过，则不会发生双重释放。

如果要从对象中取出一个项目，请使用`cJSON_DetachItemFromObjectCaseSensitive`，它将返回分离的项目，因此请确保将其分配给指针，否则会发生内存泄漏。

用删除项目`cJSON_DeleteItemFromObjectCaseSensitive`。它的工作原理是`cJSON_DetachItemFromObjectCaseSensitive`其次`cJSON_Delete`。

您也可以替换对象中的项目。要么用`cJSON_ReplaceItemInObjectCaseSensitive`使用密钥或与`cJSON_ReplaceItemViaPointer`给定的一个指针的元素。如果失败`cJSON_ReplaceItemViaPointer`将返回`0`。这在内部所做的是分离旧项目，将其删除，然后将新项目插入其位置。

要获取对象的大小，可以使用`cJSON_GetArraySize`，因为内部在内部将对象存储为数组，所以可以使用。

如果要访问对象中的项目，请使用`cJSON_GetObjectItemCaseSensitive`。

要遍历对象，可以使用与`cJSON_ArrayForEach`数组相同的方式使用宏。

cJSON还提供了便捷的帮助器功能，用于快速创建新项目并将其添加到对象中，例如`cJSON_AddNullToObject`。他们返回一个指向新项目的指针，或者`NULL`如果它们失败了。

### 解析JSON

在以零结尾的字符串中提供一些JSON的情况下，您可以使用进行解析`cJSON_Parse`。

```
cJSON * json = cJSON_Parse（string）;
```

给定字符串中的JSON（无论是否以零终止），您可以使用解析`cJSON_ParseWithLength`。

```
cJSON * json = cJSON_ParseWithLength（string，buffer_length）;
```

它将解析JSON并分配`cJSON`代表它的项目树。一旦返回，您将完全负责将其与一起使用后进行分配`cJSON_Delete`。

`cJSON_Parse`is`malloc`和`free`默认情况下使用的分配器，但可以使用进行更改（全局）`cJSON_InitHooks`。

如果发生错误，则可以使用来访问输入字符串中错误位置的指针`cJSON_GetErrorPtr`。不过，请注意这可能会产生竞态条件在多线程的情况，在这种情况下，最好是使用`cJSON_ParseWithOpts`带有`return_parse_end`。默认情况下，输入字符串中已解析的JSON后面的字符将不被视为错误。

如果需要更多选项，请使用`cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated)`。 `return_parse_end`返回指向输入字符串中JSON末尾或错误发生位置的指针（从而以`cJSON_GetErrorPtr`线程安全的方式进行替换）。`require_null_terminated`，如果设置为，则`1`如果输入字符串包含JSON之后的数据，则会导致错误。

如果需要更多选项来指定缓冲区长度，请使用`cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated)`。

### 打印JSON

给定一个`cJSON`项目树，您可以使用将它们打印为字符串`cJSON_Print`。

```
char * string = cJSON_Print（json）;
```

它将分配一个字符串并在其中打印树的JSON表示形式。一旦返回，您将完全负责与分配器一起使用后对其进行分配。（通常`free`，取决于设置的内容`cJSON_InitHooks`）。

`cJSON_Print`将使用空格打印以进行格式化。如果要打印而不格式化，请使用`cJSON_PrintUnformatted`。

如果您对生成的字符串的大小有大致的了解，可以使用`cJSON_PrintBuffered(const cJSON *item, int prebuffer, cJSON_bool fmt)`。`fmt`是一个布尔值，用于打开和关闭空白格式。`prebuffer`指定用于打印的第一个缓冲区大小。`cJSON_Print`当前使用的第一个缓冲区大小为256个字节。一旦打印空间用完，将分配一个新的缓冲区，并在继续打印之前复制旧的缓冲区。

使用可以完全避免这些动态缓冲区分配`cJSON_PrintPreallocated(cJSON *item, char *buffer, const int length, const cJSON_bool format)`。它需要一个缓冲区来指向要打印的指针及其长度。如果达到该长度，则打印将失败并返回`0`。如果成功，`1`则返回。请注意，您应该提供比实际需要更多的5个字节，因为cJSON在估计提供的内存是否足够时不是100％准确的。

### 例

在此示例中，我们要构建并解析以下JSON：

```
{
     “ name ”：“ Awesome 4K ”，
     “ resolutions ”：[
        {
            “宽度”： 1280，
             “高度”： 720
        }，
        {
            “宽度”： 1920，
             “高度”： 1080
        }，
        {
            “宽度”： 3840，
             “高度”： 2160
        }
    ]
}
```

#### 列印

让我们构建上面的JSON并将其打印为字符串：

```
//创建具有支持的分辨率列表的监视器
// //注意：返回分配给堆的字符串，使用后需要释放它。
char * create_monitor（ void）
{
    const  unsigned  int resolution_numbers [ 3 ] [ 2 ] = {
        { 1280，720 }，
        { 1920，1080 }，
        { 3840，2160 }
    };
    char * string = NULL ;
    cJSON *名称= NULL ;
    cJSON * resolutions = NULL ;
    cJSON * resolution = NULL ;
    cJSON * width = NULL ;
    cJSON * height = NULL ;
    size_t 索引= 0 ;

    cJSON * monitor = cJSON_CreateObject（）;
    如果（监控== NULL）
    {
        转到结尾
    }

    name = cJSON_CreateString（“ Awesome 4K ”）;
    如果（name == NULL）
    {
        转到结尾
    }
    / *创建成功后，立即将其添加到监视器中，
     从而将指针的所有权转移给它* /
     cJSON_AddItemToObject（监视器， “ name ”，name）；

    分辨率= cJSON_CreateArray（）;
    如果（分辨率== NULL）
    {
        转到结尾
    }
    cJSON_AddItemToObject（监视器，“ resolutions ”，决议）；

    对于（index = 0 ; index <（sizeof（resolution_numbers）/（2 * sizeof（int）））; ++ index）
    {
        分辨率= cJSON_CreateObject（）;
        如果（解析度== NULL）
        {
            转到结尾
        }
        cJSON_AddItemToArray（分辨率，分辨率）；

        width = cJSON_CreateNumber（resolution_numbers [ index ] [ 0 ]）;
        如果（宽度== NULL）
        {
            转到结尾
        }
        cJSON_AddItemToObject（resolution，“ width ”，width）;

        高度= cJSON_CreateNumber（resolution_numbers [ index ] [ 1 ]）;
        如果（高度== NULL）
        {
            转到结尾
        }
        cJSON_AddItemToObject（resolution，“ height ”，height）;
    }

    字符串= cJSON_Print（监视器）;
    如果（string == NULL）
    {
        fprintf（stderr，“无法打印监视器。\ n ”）；
    }

结束：
    cJSON_Delete（监视器）；
    返回字符串；
}
```

另外，我们可以使用`cJSON_Add...ToObject`辅助函数使我们的生活更轻松一些：

```
//注意：返回堆分配的字符串，使用后需要释放它。
char * create_monitor_with_helpers（ void）
{
    const  unsigned  int resolution_numbers [ 3 ] [ 2 ] = {
        { 1280，720 }，
        { 1920，1080 }，
        { 3840，2160 }
    };
    char * string = NULL ;
    cJSON * resolutions = NULL ;
    size_t 索引= 0 ;

    cJSON * monitor = cJSON_CreateObject（）;

    if（cJSON_AddStringToObject（监视器，“ name ”，“ Awesome 4K ”）== NULL）
    {
        转到结尾
    }

    分辨率= cJSON_AddArrayToObject（监视器，“分辨率”）；
    如果（分辨率== NULL）
    {
        转到结尾
    }

    对于（index = 0 ; index <（sizeof（resolution_numbers）/（2 * sizeof（int）））; ++ index）
    {
        cJSON * resolution = cJSON_CreateObject（）;

        if（cJSON_AddNumberToObject（resolution，“ width ”，resolution_numbers [ index ] [ 0 ]）== NULL）
        {
            转到结尾
        }

        if（cJSON_AddNumberToObject（resolution，“ height ”，resolution_numbers [ index ] [ 1 ]）== NULL）
        {
            转到结尾
        }

        cJSON_AddItemToArray（分辨率，分辨率）；
    }

    字符串= cJSON_Print（监视器）;
    如果（string == NULL）
    {
        fprintf（stderr，“无法打印监视器。\ n ”）；
    }

结束：
    cJSON_Delete（监视器）；
    返回字符串；
}
```

#### 解析中

在此示例中，我们将解析上述格式的JSON，并在打印某些诊断输出时检查监视器是否支持Full HD分辨率：

```
/ *如果监视器支持全高清，则返回1，否则返回0 * /
 int  support_full_hd（ const  char * const monitor）
{
    const cJSON * resolution = NULL ;
    const cJSON * resolutions = NULL ;
    const cJSON * name = NULL ;
    int状态= 0 ;
    cJSON * monitor_json = cJSON_Parse（监视器）;
    如果（monitor_json == NULL）
    {
        const  char * error_ptr = cJSON_GetErrorPtr（）;
        如果（error_ptr！= NULL）
        {
            fprintf（stderr，“之前的错误：％s \ n ”，error_ptr）;
        }
        状态= 0 ;
        转到结尾
    }

    名称= cJSON_GetObjectItemCaseSensitive（monitor_json，“名称”）;
    如果（cJSON_IsString（name）&&（name-> valuestring！= NULL））
    {
        printf（“正在检查监视器\” ％s \“ \ n ”，name-> valuestring）;
    }

    分辨率= cJSON_GetObjectItemCaseSensitive（monitor_json，“分辨率”）;
    cJSON_ArrayForEach（分辨率，分辨率）
    {
        cJSON * width = cJSON_GetObjectItemCaseSensitive（分辨率，“ width ”）；
        cJSON * height = cJSON_GetObjectItemCaseSensitive（分辨率，“ height ”）；

        if（！cJSON_IsNumber（宽度）||！cJSON_IsNumber（高度））
        {
            状态= 0 ;
            转到结尾
        }

        如果（（width- > valuedouble == 1920）&&（height- > valuedouble == 1080））
        {
            状态= 1 ;
            转到结尾
        }
    }

结束：
    cJSON_Delete（monitor_json）;
    返回状态；
}
```

请注意，除了Result以外没有NULL检查，`cJSON_Parse`因为因为已经`cJSON_GetObjectItemCaseSensitive`检查了`NULL`输入，所以`NULL`只传播一个值`cJSON_IsNumber`，如果输入为，则`cJSON_IsString`返回。`0``NULL`

### 注意事项

#### 零字符

cJSON不支持包含零字符`'\0'`或的字符串`\u0000`。对于当前的API，这是不可能的，因为字符串以零结尾。

#### 字符编码

cJSON仅支持UTF-8编码输入。但是在大多数情况下，它不会拒绝无效的UTF-8作为输入，而只是将其原样传播。只要输入不包含无效的UTF-8，输出将始终是有效的UTF-8。

#### C标准

cJSON用ANSI C（或C89，C90）编写。如果您的编译器或C库未遵循此标准，则不能保证正确的行为。

注意：ANSI C不是C ++，因此不应使用C ++编译器进行编译。您可以使用C编译器对其进行编译，然后将其与C ++代码链接。尽管可以使用C ++编译器进行编译，但不能保证正确的行为。

#### 浮点数字

`double`除IEEE754双精度浮点数外，cJSON不正式支持任何实现。它可能仍然可以与其他实现一起使用，但是这些实现的错误将被视为无效。

cJSON支持的浮点文字的最大长度当前为63个字符。

#### 数组和对象的深层嵌套

cJSON不支持嵌套太深的数组和对象，因为这会导致堆栈溢出。为了防止这种情况，cJSON将深度深度`CJSON_NESTING_LIMIT`默认设置为1000，但是可以在编译时更改。

#### 线程安全

通常，cJSON**不是线程安全的**。

但是，在以下情况下它是线程安全的：

- `cJSON_GetErrorPtr`永不使用（可以改用`return_parse_end`参数`cJSON_ParseWithOpts`）
- `cJSON_InitHooks` 仅在任何线程中使用cJSON之前才被调用。
- `setlocale` 在返回对cJSON函数的所有调用之前，永远不会调用它。

#### 区分大小写

最初创建cJSON时，它不遵循JSON标准，并且没有区分大写和小写字母。如果您想要正确的，符合标准的行为，则需要使用`CaseSensitive`可用的功能。

#### 复制对象成员

cJSON支持解析和打印JSON，该JSON包含具有多个具有相同名称的成员的对象。`cJSON_GetObjectItemCaseSensitive`但是始终只会返回第一个。

# 享受cJSON！

- Dave Gamble（原作者）
- Max Bruckner和Alan Wang（现任维护者）
- 和其他[cJSON贡献者](https://github.com/DaveGamble/cJSON/blob/master/CONTRIBUTORS.md)