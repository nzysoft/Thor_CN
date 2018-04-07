Thor TWEeT #4: 在鼠标下插入对象的全名
===
_本文档由 xinjie 于 2018-04-08 翻译_

本周的TWEeT是**在鼠标下插入对象的全名**（工具名称越长，焦点越狭窄）

此工具简化了在你编辑同一表单或类时向另一个对象插入对另一个对象引用的操作（仅限VCX / SCX）。

方向很简单：

1.  将光标放在希望将引用插入代码窗口的位置。 重点必须放在这种方法上。
2.  将鼠标移动到要引用的对象上。
3.  使用您分配的热键执行**在鼠标下插入对象的全名。**

请记住这两个重要部分：

1.  焦点必须放在代码窗口上，而不是你正在编辑的表单或类。
2.  这个工具**只能使用热键**，因为它执行时会读取鼠标下的内容。

You may have problems with remembering so many hot keys (at least I do), particularly for tools like this that you might not be using with great regularity.  The way that I handle this is to add the tool to the [Thor Tool Bar](https://groups.google.com/forum/?fromgroups#!searchin/FoxProThor/toolbar/foxprothor/DvZMXuxIEwM/3NK3XnAFyqsJ). When I need it, the tooltip shows me the hot key.

This tool also works at run time. Place the cursor into the Command Window (instead of a code window) and the tool will paste into it a reference to the object under the mouse in an executing form.  

There is a closely related tool named **Inspect properties of object under mouse** (written by Andy Kramek) that also works at run time. Run this tool the same way and it pops up a MessageBox that displays the major properties of the object under the mouse.

Thor provides a neat tool for browsing the contents of objects and collections, **Object and Collection Inspector** -- more on that in next week's TWEeT.

_Tool written by Bernard Bout_

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
