Thor TWEeT #22: 有关的 [IntellisenseX](https://github.com/VFPX/IntelliSenseX) 工具
===
本文档由 xinjie 于 2018-04-09 翻译

除[_IntellisenseX_](https://github.com/VFPX/IntelliSenseX)之外，还有许多 Thor 工具提供了可供选择的名称的下拉列表。 这些不是 FoxPro Intellisense 提供的熟悉列表（成员名称或字段名称），而是在您的 FoxPro IDE 中有意义的其他列表。 这些列表不是通过按点（如IntellisenseX）激活的，因此您需要以另一种方式访问它们（通过分配热键或将它们添加到Thor工具栏或菜单中）

这些工具可以在工具[启动器](../Thor_launcher.md)中找到:

![](Images/Tweet22a.png)

这些工具提供的下拉列表是：

*   _AutoComplete_ – 当前过程中引用的所有名称，VFP关键字除外。 因此，变量，字段名称，表名和别名，过程，对象，属性和方法名称等等
*   _Dropdown Constants List –_ 在当前过程中定义的所有常量（#Define语句）以及在引用的#Include语句中定义的所有常量。
*   _Dropdown Procedures List –_ 当前项目中引用的所有过程和函数（如果有一个打开）或当前路径。
*   _Dropdown Table Names –_ 当前路径中的所有表。
*   _DBC Tables by ! –_ 在DBC中找到的所有表。

All of these tools work essentially the same way. When you invoke them, you get a dropdown list that you can select from, just as when you select from dropdown lists created by IntellisenseX. The following example demonstrates a use of _AutoComplete_, showing all the names referenced in this procedure.

![](Images/Tweet22b.png)

You can also begin typing part of the name before invoking the tool, such as in this example where “Temp” was entered before invoking _AutoComplete_.

![](Images/Tweet22c.png)

Finally, if you type in enough of a name to uniquely identify it (such as “New” in this example, which matches only “lcNewSourceFile”), the match is pasted in immediately without even showing the pop-up.  When this becomes familiar, it is extremely handy, reducing both keystrokes and keying errors.

There are a few things to note about each of these tools:

*   _AutoComplete_ – has its own plug-in to allow you to change the names that are displayed or their order. (My personal version of this recognizes my convention for naming tables and cursors).
*   _Dropdown Constants List –_ The dropdown list shows not only the names of matching defined constants, but also their values and any comment on the same line.  Furthermore, the matching is also done against the comments as well. For instance, in the example below, entering “nisst” matches all the entries that have “NISStatus” (a field name) in the comment.

![](Images/Tweet22d.png)

*   _Dropdown Procedures List –_ shows the names of procedures and functions, but not their parameters. Though that was the original intent,  including the parameters caused it to be so slow it was worthless.  Even as it is, without parameters, it can be very slow.
*   _Dropdown Table Names –_ has its own plug-in to search in different folders, etc.
*   _DBC Tables by ! –_ This one is not quite like the others, as it assigns an On Key Label for when you enter the ‘!’. Thus, you can only use this tool that way (not from menus or the Thor Toolbar, for instance)

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
