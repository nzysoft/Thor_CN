Thor TWEeT #7: 创建属性和方法（第2部分）
===
_本文档由 xinjie 于 2018-04-08 翻译_

[上星期的 TWEeT](Tweet_06.md) 讨论了熟悉的创建属性和方法的方法，这是一个两步过程，其创建和引用是独立完成的。

有一种可用的模式，可以在引用它们的同时创建属性和方法。

为此，请在代码窗口中为待创建的属性或方法创建一个引用（将光标立即置于名称后面）

![](Images/Tweet7a.png)

然后调用工具**Go To Definition**。 这将打开添加新属性和方法的表单：

![](Images/Tweet7b.png)

创建方法时，您也可以选择同时创建LParameters列表：

![](Images/Tweet7c.png)

Note that there is no requirement that you call **Go To Definition** immediately.  You can come back at any time after writing the code to create the property or method.  Just click anywhere in the name (although if you want to create the LParameters list, you need to click after the right parenthesis) and then call **Go To Definition.**

A couple of comments on this:

*   I highly recommend trying this technique.  It is highly addictive. This is my tool of choice for creating properties and methods. For all the time I have spent in creating [PEM Editor](https://github.com/VFPX/PEMEditor), I *rarely* use it to create properties and methods.
*   This is only one of great features from **Go To Definition**.  There will be more on it another day, in its own TWEeT.

Form properties can also be referenced by other properties, such as ControlSource and RecordSource. If you use [PEM Editor](https://github.com/VFPX/PEMEditor) to edit the ControlSource or RecordSource properties, you will automatically be given the opportunity to create a new property when you click Save.

For all of these uses, the following features (not available from standard New Property and New Method) are available:

*   MemberData is automatically updated if the name contains any uppercase characters.
*   If you are creating a new property:
    *   There is an option to set the initial value of the property based on the first character of the property name (‘c’ = Character, ‘n’ = Numeric, etc). Default = ON
    *   You can create a [Plug-In](../Thor_add_plugins.md) to use some other method for assigning the initial values (such as using the second character)
*   If you are creating a new method:
    *   You can open it immediately for editing.
    *   You can create a [Plug-In](../Thor_add_plugins.md) that will populate the header of the newly created method. 

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
