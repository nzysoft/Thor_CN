Thor TWEeT #10: <a href="https://github.com/VFPX/IntelliSenseX" target="_blank">IntellisenseX</a>: SQL Server表中的字段名
---
_本文档由 xinjie 于 2018-04-08 翻译_

[IntellisenseX](https://github.com/VFPX/IntelliSenseX) 现在支持从SQL Server表中提取字段名，如下例所示：

![](Images/Tweet10a.png)

您所看到的是名为“Terms”的SQL表中的字段名称的下拉列表。 您可能会想到，这看起来与VFP表中的列表完全相同。 你是完全正确的，因为IntellisenseX现在给你 FoxPro表和SQL表的字段列表，并且都以**相同的**方式访问。

您只需按照以下几个步骤来激活它：

1.  打开Thor配置表单
2.  转到选项页面
3.  点击左侧的“打开表”
4.  在右侧输入您的连接字符串

![](Images/Tweet10b.png)

即使您没有进一步阅读，你也知道在SQL表上如何使用IntellisenseX; 这篇文章中还有一个关于细节的讨论。

#### [IntellisenseX](https://github.com/VFPX/IntelliSenseX) 识别SQL语句中的别名

如下所示，根据需要处理SQL语句中的别名。

![](Images/Tweet10c.png)

但是会出现意想不到的情况，因为在指定别名之前，您可能会在SQL语句的开头引用字段列表中的别名。 解决这个问题的方法是以一种内在的方式创建你的声明 - 也就是说，首先创建你的FROM和JOIN短语（或者至少创建别名来创建别名），然后你就可以拥有 当指定字段列表时IntellisenseX的支持。

![](Images/Tweet10d.png)

See also the example further on showing how to access aliases in a plain VFP Select statement (that is, not within a Text/EndText structure).

#### How does this work, anyway?

When you invoke IntellisenseX, it goes through a lot of hoops to determine whether the name immediately before the dot could refer to an object or an open table/cursor/view. If none of those apply, it then tries to do you a favor and open the table/view for you. (This has been true from day one).

What has been added is that if you supply a connection string (as previously noted), it will also try to read at least the structure from your SQL table. In doing so, it creates a cursor (with “_SQL4ISX_” prefixed to the name of your SQL table) which can be used by IntellisenseX. (See also the discussion below about how this applies to other tools, such as [**SuperBrowse**](../Thor_superbrowse.md).)

#### <a name="SQLDictionary"></a>What is that “SQL Dictionary” referred to on the options page? <!-- TBL: Check anchor -->


An alternative method to using a connection string (which accesses the table each time) is to create a local VFP table with a list of all fields from all your SQL tables.  The statement below creates a table with the desired structure.  (You can expand the first two character fields as needed.)  To create the entries in this table, you can use SQLTables() to get a list of all tables and SQLColumns() on each table to get the list of fields.

```foxpro
Create Table MySQLTableName ( ;  
    XTABNAME     C(40),       ;  
    FIELD_NAME   C(30),       ;  
    FIELD_TYPE   C(1),        ;  
    FIELD_LEN    N(3),        ;  
    FIELD_DEC    N(3))
```


#### What if a single connection string is not enough?

There is no provision currently to make it easy to switch between different SQL databases, which would  require multiple connection strings. However, it is possible to change the connection string programmatically, by executing the following:

    Execscript(_Screen.cThorDispatcher, 'Set Option=', 'Connection String', 'Opening Tables', NewConnectionString)

and this could be used in a Thor tool to select which database to read from.

#### Does any of this apply to other tools?

There are a number of other tools (most notable [**Super Browse**](Thor_superbrowse.md)) which use the same sub-routine for opening tables as is used by IntellisenseX. Thus, if you use Super Browse to help you create a list of fields for an SQL statement, you can click on the name of the table (be it a VFP table or SQL table) and execute Super Browse and away you will go.

#### How do you use aliases in SELECT statements not inside a Text/EndText structure?

The strategy for using IntellisenseX to provide field names for aliases in a SELECT statement (as explained above) is the same when not inside a Text/EndText structure , but with one additional consideration.

Inside a Text/EndText structure, the end of the statement is clearly identified by the keyword “EndText”. In a plain VFP statement, however, there is no such clear ending, so IntellisenseX must rely on the use of the semi-colon to show continuation lines. Thus, the rule that is followed is that the line where you are typing is assumed to have a semi-colon (because you haven’t gotten to the end of the line yet) and the SELECT statement continues through the following lines until one is reached that does not end in a semi-colon.

![](Images/Tweet10e.png)

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
