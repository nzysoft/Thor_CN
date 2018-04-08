Thor TWEeT #13: 新的（隐藏的）IntellisenseX功能
===
_本文档由 xinjie 于 2018-04-08 翻译_

在之前的TWEeT（[IntellisenseX：SQL Server表中的字段名](Tweet_10.md)）中，我演示了如何以某种方式创建SELECT语句，从而使IntellisenseX的某些功能处于活动状态 - 即 ，如果您在引用任何字段之前首先创建您的FROM和JOIN短语。 当你这样做的时候还有另一个功能可用（如果你不知道它的存在，你不可能发现它）。

考虑这个简单的例子：

![](Images/Tweet13a.png)

一旦你已经指定了你正在选择的表，IntellisenseX提供了一个简单的方法来从表中的字段进行选择 - 只需按照点（或[热键](Tweet_12.md)）像往常一样调用IntellisenseX即可。

![](Images/Tweet13b.png)

当您指定了任何JOIN时，下拉列表将显示所有表中的所有字段，如下所示（列表已滚动，以便您可以看到每个表中的一些字段）。

![](Images/Tweet13c.png)

_注意在第一行中必需的';' - IntellisenseX向后查看代码，以确定您正在处理的整个语句，并识别行延续。 如果在SELECT之后没有那个';'，IntellisenseX根本不会将其视为SELECT语句的一部分。_

如果您使用“Match anywhere”（匹配任何地方）选项（请参阅Thor Configuration屏幕的Options页面上的“IntellisenseX”），当您开始输入字段名称时，列表将会过滤：

![](Images/Tweet13d.png)

这个新的IntellisenseX功能

*   适用于VFP表（如图所示）和SQL Server表。(参看  [IntellisenseX: SQL Server表中的字段名](Tweet_10.md))
*   适用于SELECT语句中任何位置的字段名称的引用，只要这些表已在FROM和JOIN短语中引用。
*   适用于表别名

![](Images/Tweet13e.png)

参看 [所有Thor TWEeTs的历史](../TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
