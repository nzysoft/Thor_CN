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

IntellisenseX还提供了一个[Plug-In](../Thor_add_plugins.md）（名为“NewObject”)，它允许识别何时调用了创建对象的UDF。 在下面的示例中，我个人使用插件允许Intellisense识别我使用名为NewSessionObject的UDF（恰好使用与NEWOBJECT相同的参数，但这不是必需的）。

具体使用这个插件,参看 [IntellisenseX Customization](Tweet_18.md).

![](Images/Tweet14h.png)

#### 使用 loObject

最后，当你有上述任何一个例子定义的对象时，IntellisenseX将在WITH后引用该对象，如下所示。

![](Images/Tweet14i.png)

#### 使用自定义关键字列表

在呈现SCX和VCX中的属性，方法和事件名称时，IntellisenseX的默认行为是使用_MemberData来使用正确的大小写来呈现名称。 这可能很慢。

对于基于PRG的类，默认行为是使用类中自定义属性和方法的正确大小写，大写字母表示所有继承的属性和方法。

作为替代，您可以创建一个[自定义关键字列表](Tweet_16.md)，它是IntellisenseX和其他Thor工具使用的全局表。 这个表格包含了你想要表示名称大小写的所有“关键字”（字段名称，属性名称，对象名称和其他任何类型的名称）的列表。 （例如，请参阅上面示例中的“CalcMainSummary”。）这为在整个应用程序中处理名称大小写提供了一致的方法。

参看 [所有Thor TWEeTs的历史](../TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
