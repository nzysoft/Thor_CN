Thor TWEeT #16: 字段名称的自定义关键字列表
===
_本文档由 xinjie 于 2018-04-08 翻译_

字段名称的自定义关键字列表的新功能已在早期的TWEeT（包括下文中的[IntellisenseX：VFP表的别名](Tweet_11.md)）中的许多图中显示，这里不再进行描述。

![](Images/Tweet16a.png)

您是否注意到某些字段名称中间使用大写字母（例如“Field_Type”）？ 自定义关键字列表允许您定义要用于字段名称的大小写。

#### 这是如何完成的？

Thor维护了一个**全局**定义的字段名称表（以及其他名称，在另一个TWEeT中，[自定义关键字列表 - 所有其他名称](Tweet_19.md)）中都有解释。 该表具有单个字段，其中包含您希望表示的字段名称。 您可以通过使用Thor工具**浏览自定义关键字列表**来打开表格进行编辑，尽管这不是一个建立表格的非常方便的方法。

相反，您可以使用多种Thor工具：

*   **Add highlighted word** – 将当前突出显示的单词添加到KCL。 如果该单词已经在列表中，则突出显示的单词将替换它。
*   **Add field names from current table** – 为列表中新增的单词打开单独的表单，或者可能会替换列表中的现有单词。 您可以在“新值”列中编辑值（但不能更改拼写，只能更改字母的大小写）。

![](Images/Tweet16b.png)

*   [**SuperBrowse**](../Thor_superbrowse.md) – if you mark the checkbox under the list of field names, that list becomes editable, allowing you to change which letters are to be upper case. Simply click on any field name and edit it so that it appears as you would like it to.  Any field name that you change is posted immediately to the Custom Keyword List and will be used any time this field name is referenced for *any* table, not just the current one. (No, you *can't* modify the structure of the file this way -- all you can change is which characters are upper case.)

![](Images/Tweet16c.png)

*   **Add all words from folder or project** – This is the big papa of them all, as it adds all names (not only field names) from all your code to the KCL. Once processing is complete (which may take a few minutes), it brings up the same two forms as shown above under **Add field names from current table.** (Just with a lot more entries).  This is described in more detail in [Custom Keyword List - all other names](Tweet_19.md).

#### Where are these field names in the Custom Keyword List used?

These field names from the Custom Keyword List are used every place in IntellisenseX where tables are referenced (and for both VFP Tables and SQL Server Tables) and as show in SuperBrowse, above.

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
