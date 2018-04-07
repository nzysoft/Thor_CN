Thor TWEeT #6: 创建属性和方法（第1部分）
===
_本文档由 xinjie 于 2018-04-08 翻译_

Thor提供了相当多的工具来创建新的属性和方法。 

有一些常用工具使用熟悉的技术来创建新的属性和方法： 

*   **[PEM Editor](https://github.com/VFPX/PEMEditor)** (关于这个工具不需要更多的说明了)
*   **添加属性/方法**，**[PEM编辑器](https://github.com/VFPX/PEMEditor)** 的小小后代，它使用这种简单的形式：

![](Images/Tweet6a.png)

这两种工具都提供了标准“新建属性”和“新建方法”中不具备的功能：

*   该表单无模式，您可以轻松切换添加属性和方法。
*   如果名称包含任何大写字符，MemberData将自动更新。
*   如果你正在创建一个新的属性：
    *   有一个选项可以根据属性名称的第一个字符（'c'= Character，'n'= Numeric等）设置属性的初始值。 Default = ON
    *   您可以创建一个[Plug-In](../ Thor_add_plugins.md) 来使用其他方法来分配初始值（例如使用第二个字符）
*   如果你正在创建一个新的方法：
    *   您可以立即打开它进行编辑。
    *   您可以创建一个[Plug-In](../Thor_add_plugins.md)，它将填充新创建的方法的开始部分。
    
When you use either of these tools, you are following the long-established two-step pattern where the process of creating the new property/method is distinct from using a reference to it.

In next week's TWEeT on this topic, I will demonstrate tools that establish a new pattern: you can create a property or method as you refer to it. Using these tools tends to provide less interruption to your programming flow, as you can create new properties and methods "on the fly".

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
