Thor TWEeT #18: 嵌套对象的 <a href="https://github.com/VFPX/IntelliSenseX" target="_blank">IntellisenseX</a> 
===
本文档由 xinjie 于 2018-04-09 翻译

[IntellisenseX](https://github.com/VFPX/IntelliSenseX) 为嵌套对象提供下拉列表。 这些下拉列表可在整个表单或类中使用，如下例所示：

![](Images/Tweet18a.png)

使这成为可能的关键是定义一个属性，IntellisenseX 可以使用该属性来确定下拉列表。

该属性的名称是嵌套属性的名称（上例中为“oParts”），并将“_Def”添加为后缀。

该属性的值基本上与用于局部别名（仅适用于当前过程;请参阅[在IntellisenseX中使用局部别名](Tweet_17.md)）或全局别名（适用于任何地方;请参见[别名字典](Tweet_15.md)）的一样。 它可以表或对象中的任何一种。

*   A table, cursor, or view name
*   The full or relative path name to a table
*   The name of an SQL table
*   A reference to class from a class library; thus,  “`{class, classlibrary}`“  _See note below for Forms and VCX classes._
*   A reference to class using the same syntax as the LOCAL command; thus,  “`Local loPAL as PAL of BO_PAL.VCX`“
*   A reference to an object; thus,  “`Thisform.oParts` “
*   An executable expression that returns an object or the name of an table, cursor, or view. This executable must start with an “=”; thus, something like “`= MyGetObject(‘Parts’)` “.  _See note below for Forms and VCX classes._

> _An unexpected problem arises when when using the Property Sheet or PEM Editor to set the values for the two items noted above – values inside curly braces are converted to dates, and values beginning with an = sign are saved as expressions. To avoid these issues, prefix the values with && – thus:_
> 
> *   “`&& {class, classlibrary}`“
> *   “`&& = MyGetObject(‘Parts’)` “

This table shows a number of different values that can be used for the value of the “_Def” property:

Value|Description
---|---
“PartsList”|The name of a table in the path, in the Data Environment of a form, in an open DBC, in the MRU list for tables, or the name of a table in a SQL Server database. It can also be opened by the plug-in “Open Table”.
“..\Tables\PartsList”|The absolute or relative path to a table.
“{NISDetailsForm, NIS.VCX}”|A class in a VCX or PRG
“Local loPAL as PAL of BO_PAL.PRG”|An alternative way to reference a class. This syntax was chosen so that you can copy the LOCAL command directly from a line of code.
“ = GetBusinessObject(‘TableName’)”|A call to your own UDF that returns an object; used, for instance, if you use a factory to return objects instead of direct references.

Nested objects may take any of a number of forms, including:

*   `ThisForm.oBusObj`
*   `This.oData`
*   `This.oPartsList.oData`
*   `This.oBusObj.oPartsList.oData`

Nested objects may appear in forms, VCX-based classes, and PRG-based classes and there can be multiple levels of nesting.

This TWEeT has addressed Aliases that apply to an entire form or class (both VCX and PRG-based).  Earlier TWEeTs have addressed [Local Aliases](Tweet_17.md) and [the Alias Dictionary](Tweet_15.md) addressed global aliases.

An upcoming TWEeT will describe plug-ins that be used to handle cases that these features do not.

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
