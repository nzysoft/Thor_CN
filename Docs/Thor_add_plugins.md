插件PRG
===
_本文档由 xinjie 于 2018-04-08 翻译_

Thor提供了大量插件PRGS，允许您自定义各种Thor工具的行为。 这些插件可以替换现有的行为或添加新的行为。

您可以从Thor菜单访问所有插件的列表：

![](Images/Thor_add_plugins1.png)

这将打开一个表单，您可以从中创建或修改现有的插件：

![](Images/Thor_add_plugins2.png)

当您为其中一个插件单击“创建”时，将为您打开一个样本PRG，并带有描述参数，结果等的注释。

如果您保存它（Ctrl + S或Ctrl + W），它将被保存到您的“我的工具”文件夹中，之后将由Thor工具访问它。 PRG名称也将保存在您的[MRU PRG列表](https://groups.google.com/forum/?fromgroups#!topic/FoxProThor/_hyu9XVSQ3A)中，因此您可以从此处编辑插件 命令行。 （请注意，PRG的名称不一定与表中显示的名称相同）。

您可能会发现仅显示适用于特定Thor工具的插件会更方便。 从Tool Launcher或Thor Configuration表单开始，选择该工具，然后单击表单右下方的Plug-Ins链接，如下所示。 上面显示的窗体打开，但只显示适用于此工具的插件。 请注意，此链接仅在该工具有任何插件时才会显示。

![](Images/Thor_add_plugins3.png)

可用的插件PRG是：

**插件** |**描述**
---|---
AfterComponentInstall|在安装组件后（在Thor\Tools\Components的子文件夹中），在“检查更新”期间调用。 允许您将组件重新安装到您的应用程序中通常使用它的文件夹中
AutoRenameControl|设置自动重命名时控件的新名称。 “正常的”新名称作为参数提供，因此可以在可接受的情况下使用。
BeforeComponentInstall|伴随着AfterComponentInstall
BuildProject|提供Finder中使用的Build Project对话框。
CloseControlStructure|设置粘贴的文本作为控制结构中的代码的结束行（IF/ENDIF，TRY/CATCH等），其中可能包括来自代码的开始行的文本，并且可能取决于多少行代码 有。
[CreateLocalsStatements](#CreateLocalsStatements)|创建LOCAL语句作为“Create Locals”的一部分; 允许您确定LOCAL语句的顺序和格式以及要在LOCAL语句中显示哪些变量。
EditSourceX|打开带有非FoxPro扩展名的文件
FormatFieldPicker|为已在[SuperBrowse](Thor_superbrowse.md)中选择的字段创建“字段选择器”字符串.
GetDefaultValue|根据属性的名称设置用于PEM编辑器创建的新属性的默认值。 提供的示例使用名称的第二个字符。
GetNewMethodHeader|设置用于由PEM Editor或IDE Tools创建的任何新方法的标题注释文本
GoToDefinition|如果转到定义无法找到匹配，则调用。 Go To Definition的某些记录功能实际上由该插件处理。
[IntellisenseX](#IntellisenseX)|为IntellisenseX提供对SQL表格，数据对象等字段名称下拉列表的扩展。当IntellisenseX另外找不到任何内容时显示。
IsOperator|限制“环绕操作符添加空格”因文件名中包含特殊字符（例如+或 - ）而导致问题
[OpenTable](#OpenTable)|通过任何尝试打开表格的工具调用。
OpenVCXFile|当PEM编辑器或IDE工具打开VCX时调用。 默认行为是使用类浏览器。
SetGridHighLighting|为PEM编辑器表格中的行设置突出显示（着色）
SetGridSortOrder|设置用于对PEM编辑器表格中的行进行排序的索引表达式
SortAutoComplete|允许从AutoComplete修改下拉列表
Spell Field Names|确定表格中字段名称的拼写。 请注意，已经提供的选项是[lower\|UPPER\|混合\|匈牙利法（cName）]

### <a name="CreateLocalsStatements">**CreateLocalsStatements**</a>

This plug-in is called after either of the Thor tools that create LOCALs, “Create Locals” and “BeautifyX”, have compiled a list of all the variables assigned in a procedure.
 
The parameter is a ten column array, as described in the comments.
 
The result is to be a character string, with embedded CRs as desired, that is to be the text of the new LOCAL statements.
 
The sample provided is the exact code that is used within Thor. You can thus tailor the content and display of the LOCAL statements to fit your needs.

### <a name="IntellisenseX">**IntellisenseX**</a>

When you press the dot to initiate IntellisenseX, it goes through a number of paces to determine the meaning of the text preceding the dot (is it an alias? is it an object? and so on).
 
If all possibilities fail, the last recourse is to call this plug-in that allows you to interpret the text before the dot. The parameter passed to the plug-in is an object containing a number of different properties, as described in the comments. There a number of different results that can be returned to generate the IntellisenseX drop-down list.
 
There is much that can be done with this PRG, including (but not limited to) these two capabilities demonstrated in the sample PRG:
 
1.  **SQL server table** - If you use SQL server tables, you could use SQLColumns() to get the list of fields from a table. The sample PRG uses a different approach, reading the table definition from  a dictionary in a free table.
2.  **Data Object** – If you have forms or classes that have data objects and you can readily extract the alias for the underlying table from these forms or classes, you can have the fields from the table appear in the IntellisenseX dropdown. There are probably an infinite number of ways that this could be implemented, and the sample demonstrates three of them:
    *   If the parameter passed in is “This.oData” (such as from wwBusiness) and the class has a property “cAlias”, then it is used as the alias for the underlying table.
    *   If the parameter passed in is “Thisform.oBusObj.oData” (such as from wwBusiness) and the class/form has a property “cAlias”, then it is used as the alias for the underlying table.
    *   If the class name is “bo_” + {SomeName}, then {SomeName} is used as the alias for the underlying table.

### <a name="OpenTable">**OpenTable**</a>

A number of Thor tools, including IntellisenseX and Super Browse, work on open tables, identified by a table alias. If there is an open table (or view) matching that alias, all is well and processing commences. If not, however, they call the OpenTable plug-in in an attempt to open the table matching the alias.

The default processing for OpenTable is to try each of the following, in turn, in attempt to open the table:

1.  Try to USE the file (opening a table from the current folder or path)
2.  Check the MRU list for DBFs
3.  If there is an open form, look for the file in the DataEnvironment

If this is not sufficient to open a table (for instance, if your file names do not match their aliases, or are not found in a folder in your path), modify OpenTable to suit your environment:
 
*   The parameter is the alias that is being searched for.
*   The result is the alias that was opened (and need not be the same as the parameter!), or empty if not found.

You can also use this Plug-In to access SQL Server tables, for which there are a couple of uses:
*   To provide the list of field names for IntellisenseX
*   To provide the data structure visible in Super Browse, allowing creation of SELECT and other SQL statements on the “Picker” page

The default PRG opened for you when you create OpenTable has examples of how to achieve this.
