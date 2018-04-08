PRG插件
===
_本文档由 xinjie 于 2018-04-08 翻译_

Thor 提供了大量 PRG 插件，它们允许您自定义各种 Thor 工具的操作。 它们可以替换 VFP 现有的操作或为其添加新的操作方法。

您可以从 Thor 菜单访问所有插件的列表：

![](Images/Thor_add_plugins1.png)

这将打开一个表单，您可以从中创建或修改已有的插件：

![](Images/Thor_add_plugins2.png)

当您选择其中一个插件单击“创建”时，将为您打开一个样本 PRG，其中包含描述参数，结果等的注释。

如果您保存它（Ctrl + S 或 Ctrl + W），它将被保存到您的“My Tools”文件夹中，之后将由 Thor 工具访问它。 PRG名称也将保存在您的[MRU PRG列表](https://groups.google.com/forum/?fromgroups#!topic/FoxProThor/_hyu9XVSQ3A)中，因此您可以从此处编辑插件的命令行。（请注意，PRG的名称不一定与表中显示的名称相同）。

您可能会发现仅显示适用于特定 Thor 工具的插件会更方便。 从`工具启动器`或 Thor 配置表单中，选择该工具，然后单击表单右下方的Plug-Ins链接，如下所示。 上面显示的窗体打开，但只显示适用于此工具的插件。 请注意，此链接仅在该工具有任何插件时才会显示。

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

这个插件是创建LOCAL 语句的一个Thor工具，“Create Locals”和“BeautifyX”都可以。它们编译了一个过程中分配的所有变量的列表。
 
该参数是一个十列数组，如注释中所述。
 
结果是一个字符串，根据需要嵌入CR，这就是新LOCAL语句的文本。
 
提供的样本是在Thor中使用的确切代码。 因此，您可以定制内容并显示LOCAL声明以适应您的需求。

### <a name="IntellisenseX">**IntellisenseX**</a>

当你按“.”来启动IntellisenseX时，它会经过许多步骤来确定点之前的文本的含义（它是一个别名吗？它是一个对象吗？等等）。
 
如果所有的可能性都失败了，最后的方法是调用这个插件，它允许您在点之前解释文本。 传递给插件的参数是一个包含许多不同属性的对象，如注释中所述。 可以返回许多不同的结果来生成IntellisenseX下拉列表。
 
这个PRG有很多工作可以完成，包括（但不限于）样本PRG中显示的这两种功能：
 
1.  **SQL server table** - 如果您使用SQLServer表，则可以使用SQLColumns（）从表中获取字段列表。 示例PRG使用不同的方法，从空闲表中的字典中读取表定义。
2.  **Data Object** – 如果您有拥有包含数据对象的表单或类，并且可以从这些表单或类中轻松提取基础表的别名，则可以让表中的字段显示在IntellisenseX下拉列表中。 可能有无数种方法可以实施，样本可以演示其中的三种：
    *   如果传入的参数是“This.oData”（例如来自wwBusiness）并且该类有一个属性“cAlias”，那么它将用作基础表的别名。
    *   如果传入的参数是“Thisform.oBusObj.oData”（例如来自wwBusiness）并且类/表单具有属性“cAlias”，那么它将用作基础表的别名。
    *   如果类名是“bo_”+ {SomeName}，那么{SomeName}将用作基础表的别名。

### <a name="OpenTable">**OpenTable**</a>

许多Thor工具（包括IntellisenseX和Super Browse）都在打开的表上工作，由表别名标识。 如果有一个与该别名匹配的打开的表（或视图），则一切正常，并且处理开始。 但是，如果不是，他们会调用OpenTable插件以尝试打开与别名匹配的表。

OpenTable的默认处理是依次尝试以下每个尝试打开表的操作：

1.  尝试打开（use）该文件（从当前文件夹或路径打开表格）
2.  检查DBF的MRU列表
3.  如果存在打开的表单，则在数据环境中查找该文件

如果还是无法打开表（例如，如果您的文件名称与他们的别名不匹配，或在路径中的文件夹中找不到），请修改OpenTable以适应您的环境：
 
*   参数是正在搜索的别名。
*   结果是已打开的别名（不必与参数相同！），如果未找到，则为空。

您还可以使用此插件访问SQL Server表，但有几种用途：
*   提供IntellisenseX的字段名称列表
*   提供Super Browse中可见的数据结构，允许在“Picker”页面上创建SELECT和其他SQL语句

创建OpenTable时为您打开的默认PRG具有如何实现此目的的示例。
