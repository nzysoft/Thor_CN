Thor TWEeT #5: _对象和集合检查器_
===
_本文档由 xinjie 于 2018-04-08 翻译_

处理对象和集合时，不需要很长时间就可以认识到没有简单的方法来查看对象的结构或属性或浏览集合的内容。

调试器中的监视窗口当然是查看对象的标准方式，但查看集合时根本没有任何内容。

为了填补这个空白，Tamar创建了 **Object and Collection Inspector** （您可能已经在其他地方看到过）。

Now the **Object and Collection Inspector** is a Thor tool, with considerable enhancement. As show below, it displays a TreeView showing all the children for an object, or the items in a collection, with the values for all the properties shown on the right.  Double-clicking a property opens a zoom box for editing its values.

![](Images/Tweet5a.png)

Run this tool as follows:

*   In a code window or the command window, click on the name of an object or collection and then call the tool.
*   Or, place the mouse over an object in an executing form, or a form or class being edited in the IDE, and call the tool.
*   Or, if a form or class is being edited, call the tool to inspect the currently selected object (that is, the one shown in the Property Sheet).
*   Otherwise, call the tool to paste text into the command window so that you can supply the name of the object or collection

**NOTE**: Unfortunately, because of the way this tool is invoked, it doesn't work from the Thor Tool Bar.

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
