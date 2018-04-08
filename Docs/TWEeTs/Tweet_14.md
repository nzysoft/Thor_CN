Thor TWEeT #14: IntellisenseX for Objects
===
_本文档由 xinjie 于 2018-04-08 翻译_

IntellisenseX提供属性，事件和方法（PEM）的下拉列表，与默认Intellisense提供的类似，默认Intellisense提供的所有情况以及其他一些情况。

此TWEeT解决 IntellisenseX for Objects 的以下主题 ：

*   在 SCXs 和 VCXs 中
*   在 PRG 格式的类中
*   按Ctrl-Enter粘贴参数列表
*   在 WITH/ENDWITH 结构中
*   在 LOCAL 语句中
*   在 NEWOBJECT 或  CREATEOBJECT 之后
*   在创建对象的 UDF 之后
*   使用 loObject
*   使用自定义关键字列表

#### 在 SCXs 和 VCXs 中

在 SCXs 和 VCXs 中, IntellisenseX为THISFORM或THIS引用的对象提供了一个下拉列表，这与给定我的默认Intellisense非常相似：

![](Images/Tweet14a.png)


#### 在 PRG 格式的类中

IntellisenseX为基于PRG的类提供了THIS和WITH THIS的下拉列表。

![](Images/Tweet14b.png)

在Thor Configuration窗体上的选项页面上，您可以指定想要查看的详细程度（仅限该类中的自定义属性和方法，或所有继承的属性和方法）

![](Images/Tweet14c.png)

#### 按Ctrl-Enter粘贴参数列表

可以看出，显示有第二列，显示方法和事件的参数列表。

如果您从列表中选择一个项目并按下Ctrl + Enter，参数列表将被插入您的代码中，如下所示。 当默认的Intellisense为参数提供快速信息窗口时，这不是必需的，但对于IntellisenseX在默认的Intellisense不提供帮助的情况下（如下所述）具有相当大的价值。

![](Images/Tweet14d.png)

#### 在 WITH/ENDWITH 结构中

Intellisense在WITH / ENDWITH结构内部提供了默认Intellisense不支持的各种情况下的下拉列表，包括WITH FORM，WITH THIS.PARENT和嵌入的WITH结构。

![](Images/Tweet14e.png)

#### 在 LOCAL 语句中

IntellisenseX现在识别LOCAL语句中标识的对象（默认为Intellisense）。

![](Images/Tweet14f.png)

#### 在 NEWOBJECT 或  CREATEOBJECT 之后

即使没有相应的LOCAL语句，IntellisenseX也可识别由NEWOBJECT或CREATEOBJECT创建的对象。 这在第一次编写程序时可能非常方便。

![](Images/Tweet14g.png)

#### 在创建对象的 UDF 之后

IntellisenseX also provides a [Plug-In](../Thor_add_plugins.md) (named “NewObject”) that allows it to recognize when you have called a UDF that creates an object. In the example below, my personal use of the plug-in allows Intellisense to recognize my use of a UDF named NewSessionObject (which happens to use the same parameters as NEWOBJECT, but this is not necessary).

For specifics of the use of this Plug-in, see [IntellisenseX Customization](Tweet_18.md).

![](Images/Tweet14h.png)

#### 使用 loObject

Finally, when you have objects defined by any of the examples noted above, IntellisenseX will work on that object when referenced after WITH, as shown below.

![](Images/Tweet14i.png)

#### 使用自定义关键字列表

The default behavior from IntellisenseX when presenting names of properties, methods and events in SCXs and VCXs is to use _MemberData to use the correct case for presenting the names. This can be quite slow.

For PRG-based classes, the default behavior is to use the correct case from custom properties and methods in the class, and upper case for all inherited properties and methods.

As an alternative, you can create a [Custom Keyword List](Tweet_16.md), a global table used by IntellisenseX and other Thor tools. This table contains a list of all the “keywords” (field names, property names, object names, and any other kind of name) for which you want to indicate how the case of the name should be presented. (For example, see  “CalcMainSummary” in the example directly above.)  This provides a consistent way for handing the case of the names throughout your applications.

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
