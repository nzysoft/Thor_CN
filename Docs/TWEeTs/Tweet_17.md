Thor TWEeT #17: 在 <a href="https://github.com/VFPX/IntelliSenseX" target="_blank">IntellisenseX</a> 中使用本地别名
===
_本文档由 xinjie 于 2018-04-08 翻译_

在早些时候关于[VFP表的别名](Tweet_15.md)的TWEeT中，有关于本地别名的简短的论述。 但是，它提供了一些值得讨论的有价值的功能。

在两个方面它和 Local 语句(`"Local name as class of classlib”`)是类似的：

*   他们为您的代码提供注释，以便IntellisenseX可以提供一个下拉列表。
*   它们只适用于当前的方法或程序。

有三种等同的方法来定义本地别名：

*   `**{{** SomeAlias = What-It-Stand-For **}}**`  … 在任意的注释中
*   `***#Alias** SomeAlias = What-It-Stand-For`    … 在代码行的开始
*   `**&&#Alias** SomeAlias = What-It-Stand-For`   … 在代码行的结尾

> _(上面的粗体文本必须完全按照原样输入，不得插入空格。)_

> **注意：根据大众需求，上述第一条语句（带双花括号的语句）适用于*整个* PRG，而不仅仅是它所在的过程或函数。**

`“What-It-Stands-For”` can be any one of a number of things, referring to either tables or objects.

*   A table, cursor, or view name
*   The full or relative path name to a table
*   The name of an SQL table
*   A reference to class from a class library; thus,  `"{{ loObject == {class, classlibrary} }}` “
*   A reference to an object; thus,  “`{{ loObject == Thisform.oParts}}` “
*   An executable expression that returns an object or the name of an table, cursor, or view. This executable must start with an “=”; thus, something like “`{{ loObject = = MyGetObject(‘Parts’)}}` “.  (Note the double ‘=’ signs.)

One handy use of this occurs with variables created using the SCATTER NAME command. 

```foxpro
Select MyTable

Scatter Name loObject && {{ loObject = MyTable }}
```

This provides the dropdown list for the table MyTable when the properties of loObject are referenced.

Note also that `“SomeAlias”` can also refer to compound names, such as `This.oMainObj` or `This.oMainObj.oData`; the substitution rules work the same way.

This TWEeT has addressed Local Aliases; the earlier TWEeT on [the Alias Dictionary](Tweet_15.md) addressed global aliases; and an upcoming TWEet will address Aliases that apply to an entire form or class (both VCX and PRG-based).

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
