Thor TWEeT #11: <a href="https://github.com/VFPX/IntelliSenseX" target="_blank">IntellisenseX</a>: VFP表的别名
===

上星期的 [TWEeT #10](Tweet_10.md) 证明IntellisenseX可以识别SELECT语句中使用的表的别名。

IntellisenseX现在还识别用于VFP表的别名，有三种不同的方式：

*   在使用USE或UDF打开表的**过程代码**中。
*   别名是在整个应用程序中使用的常量别名，并且可以由[Plug-In](../Thor_add_plugins.md)打开。
*   通过在代码中指定一个特殊指令来标识别名引用的文件

**在使用USE或UDF打开表的**过程代码**中**

IntellisenseX现在可识别USE打开的表的别名（在同一过程中引用时）。 这是自动发生的，不依赖于USE命令中短语的顺序。

![](Images/Tweet11a.png)

同样，只要表的名称及其别名作为参数传递给UDF，IntellisenseX就会识别由UDF打开的表的别名。 在下面的例子中，UDF`UseTable`被调用，第一个参数是表的名字，第三个参数是别名。

![](Images/Tweet11b.png)

为了达到此目的，您必须在Thor 配置表单中记录UDF等的名称：

1.  打开Thor配置表单
2.  转到选项页面
3.  点击左侧的“表别名”
4.  填写UDF的名称和参数列表中的位置以获取表名和别名。

![](Images/Tweet11c.png)

#### Where the alias is a constant alias used throughout an application

IntellisenseX also supports the case where an alias refers to the same table throughout an application.

_In my own environment, tables are never referred to by name. They are always opened by a UDF (called with the alias), which uses a meta-table to determine the name and folder for the table. Thus the alias name can always be used to open the table._

This is handled by creating the [Plug-In](Thor_add_plugins.md) “OpenTable”. This plug-in works very simply – it is called with a single parameter, the (potential) alias.

If that alias can be used to open the desired table, do so, and return the alias as a result; if not, return a logical or empty result

All of this work is done in the (originally empty) procedure OpenMyTable.  Just modify to fit your own environment.

#### Directives to specify the table than an alias refers to.

This last alternative is the least satisfying – you can add directives in you code to indicate the table than an alias refers to.  You might use this, for instance, where a table is opened in one procedure or method and referenced in another.

There are two (very similar) directives:

    *#Alias SomeAlias = MyTable  … at the beginning of a line
    &&#Alias SomeAlias = MyTable  … at the end of a line

For instance,

![](Images/Tweet11d.png)

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
