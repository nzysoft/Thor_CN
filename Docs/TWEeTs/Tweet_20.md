Thor TWEeT #20: [IntellisenseX](https://github.com/VFPX/IntelliSenseX) 快速入门指南
===
本文档由 xinjie 于 2018-04-09 翻译

当我开始编写关于[IntellisenseX](https://github.com/VFPX/IntelliSenseX)的TWEeT时，我绝不会猜到这个话题到现在还没完没了。但是编写这些TWEeT会产生讨论和新的想法，所以最近TWEeT中所描述的大部分内容都不是当初设想的内容。

在重新阅读这些TWEeTS时，我意识到有一个明显的环节缺失 - 他们解释了 IntellisenseX 如何工作以及如何定制它，但他们从未触及第一步 - 如何从头开始。 所以，Let's Go!

#### 开始使用 [IntellisenseX](https://github.com/VFPX/IntelliSenseX)

启动IntellisenseX只需几个步骤即可为本地FoxPro Intellisense提供大量扩展。 设置完成后，您会发现使用点（无论是在对象引用还是表引用之后）可以在很多不同的地方生成有用的下拉列表，这些地方立即感觉很自然。 还有一些您可以制作的更多的自定义功能，其中最小的功能允许IntellisenseX以许多令人惊讶的方式提供帮助。

首先，请打开`工具启动器`，在过滤器框中输入“IntellisenseX”，然后在左侧的 TreeView 中点击工具“IntellisenseX - by Dot”。

选择“启动时运行”。 这会导致 IntellisenseX 每次在 IDE 中启动 Thor 时都会被启用。 （“IntellisenseX - by Dot”工具实际上是一个切换键，可以启用/禁用IntellisenseX;但是，希望禁用它的场合已经不存在了，因此你可以打开并一直让它随时待命。）

然后，单击选项链接打开 Thor Configuration 表单中的 IntellisenseX 选项页面。

![](Images/Tweet20a.png)

On the first page of the IntellisenseX pageframe (“**Filtering**”), select the three options indicated below.  The first two combine to form one of the sweet enhancements of IntellisenseX – the dropdown list is filtered as you type to show only matching entries and the matches can be anywhere in the each row, not just to the leading characters.

![](Images/Tweet20b.png)

The second page (“**Fields**”), controls how field names are displayed in drop down lists. I suggest setting the first two options as shown here and setting the third (“case for field names”) according to your own style. There is further customization available, to be addressed later.

![](Images/Tweet20c.png)

The third page (“**Objects**”) determines when IntellisenseX displays the drop down lists for objects in a visual class (THISFORM or THIS) or PRG-based class.  Originally, you will want to use the default FoxPro Intellisense for SCXs and VCXs.  Without some additional configuration, IntellisenseX is simply too ponderously slow for objects in SCXs and VCXs.  However, once you have created your Custom Keyword List (see TWEeTs  [#19: Deficiencies in IntellisenseX (and how to avoid them) … The Custom Keyword List](Tweet_19.md)), you will want to select the second option (IntellisenseX).

![](Images/Tweet20d.png)

The fourth and last page (“**Display**”) controls the display of the dropdown list used in IntellinsenseX. Be careful not to set the Display Count too large as you can get undesirable behavior if the dropdown list can’t fit either above or below the current screen position.  This setting should not matter too much, however, as you become familiar with IntellisenseX, since the filtering (set on the first page) will rapidly reduce your list to only a few entries.

![](Images/Tweet20e.png)

Having set these few options, you have enough to begin using IntellisenseX.  There are a number of features immediately available for you to take advantage of, described in earlier TWEeTs:

*   IntellisenseX recognizes aliases for VFP tables created a number of different ways.  See [#11 IntellisenseX: Aliases for VFP Tables](Tweet_11.md).
*   A unique IntellisenseX feature provides a drop-down list for all fields in all tables referenced in FROM and JOIN statements in SQL statements. See  [#13 New (hidden) IntellisenseX Feature](Tweet_13.md).
*   IntellisenseX recognizes objects referenced in code in a variety of formats and provides dropdown lists for them (including the familiar native LOCAL … AS … command).  See [#14 IntellisenseX for Objects](Tweet_14.md).

In addition, a number of other significant enhancements are available after some further configuration.

*   Creating the “Custom Keyword List” eliminates the problem in referencing objects in VCXs and SCXs (noted earlier in the description of the “**Objects**” page) and creates a uniform list of words used throughout your applications (overriding the select of field names described above in the “**Fields**” page). See TWEeTs  [#19: Deficiencies in IntellisenseX (and how to avoid them) … The Custom Keyword List](Tweet_19.md) and [#16 Cuord Listom Keywst for Field Names](Tweet_16.md).
*   You can obtain the list of field names from your SQL Server tables when creating SQL statements (including those within TEXT/ENDTEXT blocks).  See [#10 IntellisenseX: Field names from SQL Server Tables](Tweet_10.md).
*   You can create local aliases for table or object names that apply throughout a specific procedure (these have the same scope as local variables).  See [#17: Using Local Aliases in IntellisenseX](Tweet_17.md) .  (See also note below.)
*   You can create global aliases for table or object names that apply throughout all  your applications, using the _Alias Dictionary_ (a free table)   See [#15 The Alias Dictionary](Tweet_15.md).  (See also note below.)
*   You can create aliases that apply within a form or class, creating dropdown lists for nested objects, such as “This.oBusObj” and “This.oBusObj.oData”and “This.oBusObj.oJobs.oData”.  See [#18: IntellisenseX for Nested Objects](Tweet_18.md).  (See also note below.)

_Note:_ IntellisenseX treats tables (whether VFP tables or SQL Server tables) merely as a special type of object, one where each member has a data type and (possibly) width.  Thus, in all cases where you read “object” in any of the references above, understand that the object could be an actual VFP object or the fields referenced in a table. The references to “oData” in the last bullet point above can actually be references to the field names related to a business object.

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
