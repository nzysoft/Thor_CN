Thor TWEeT #27: 转到定义
===
本文档由 xinjie 于 2018-04-09 翻译

_转到定义_ 是最有用的 Thor 工具之一，同时也是最容易使用的工具之一。 如果它作为一个单独的 VFPX 项目而不是简单地与`PEM编辑器`和 Thor 一起出现，它肯定会获得它应得的更广泛的认可和使用。

它允许您指向代码中的任何用户定义的名称，然后转到（即显示和/或编辑）其定义。 它也可以用来在表单或类中创建新的方法和属性。

它的机制很简单：

1.  点击名称（在名称前面，内部或之后）。
2.  运行 _转到定义_ .（建议：使用方便的快捷键;我用F12）

此表列出了可以搜索的所有不同类型的名称：

类型或名词|采取的操作
---|---
方法或事件|打开编辑方法; 如果没有本地非默认代码，还会打开一个包含该方法所有继承代码的txt文件。
对象|如果可能的话，选择该对象以显示在`PEM编辑器`和属性窗口中。 在某些情况下，这会失败：如果对象隐藏在其他对象之外或者不可见，或者它位于页框的不同页面上。
属性|与选择对象相同，它也尝试在`PEM编辑器`表格中选择该属性。 这仅适用于`PEM编辑器`表单打开的情况，也可能因为表格中生效的过滤器而失败。
DODEFAULT|打开包含该方法的所有继承代码的文本文件。
PRG|打开 PRG.
PRG 中的过程和函数|打开PRG并高亮显示PROC或FUNC的开始
常量 (#Define …)|打开 #Include 文件, 并高亮显示该常量
表单|打开表单
报表|打开报表
Fully highlighted file name|Opens the file for editing; should work for all file extensions.
Class Name|Opens the class, whether it is in a VCX or PRG
CREATEOBJECT or NEWOBJECT|Opens the class, whether it is in a VCX or PRG
LOCAL loObject as someclass of somelibrary|Opens the class (when you click on “LOCAL”)
{{ loObject = { someclass, someclasslibrary } }}|Opens the class (when you click on “loObject”)
Define Class xxx as xxxParent (of xxxLibrary)|Opens the parent class xxx Parent (when you click on “Define”)

If the search is to be conducted looking in file(s) other than the form or class being edited, the files in the active project, if any are searched; if there is no active project, then all files in the path are searched.

#### Creating New Properties and Methods

_Go To Definition_ can also be used to create new properties and methods. Simply call Go To Definition when the cursor is in the name of a potential new property or method and the form for creating new properties or methods is opened.

![](Images/Tweet27a.png)

_Personal note: I rely heavily on this tool. In fact, I use it to create most of my new properties and methods, rarely using PEM Editor for that purpose any more._

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
