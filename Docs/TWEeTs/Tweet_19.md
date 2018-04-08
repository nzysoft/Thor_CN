Thor TWEeT #19: [IntellisenseX](https://github.com/VFPX/IntelliSenseX) 的缺陷
===
本文档由 xinjie 于 2018-04-09 翻译

### (以及如何避免它们)

### … 自定义关键字列表 …

IntellisenseX 最严重的问题是，在 VCX 或 SCX 中获取属性和方法列表时，速度太慢。 在 VCX / SCX 中获取名称的正确大小写，需要在父类中解析 MemberData 的过程需要比每次进入 THISFORM 后都有人愿意等待的时间更长。

在基于 PRG 的类中工作时，父类是 FoxPro 基类以外的任何类型都有类似的问题。 没有好的方法来获取继承名称的正确大小写（基于 PRG 的类甚至不使用 MemberData），因此所有继承的自定义名称都以小写字母结尾。

这两个问题的解决方法是相同的 - 自定义关键字列表。 这只是一个简单的表，其中包含您的编程世界中所有单词的列表，其中每个单词都以您喜欢的大写/小写混合形式保存。 该表格可以很容易地创建，自动更新并应用于任何代码块。 这不仅可以消除上述问题，还可以确保您的文字始终保持一致（大写/小写相同）。

#### 入门

首先，通过运行 Thor Tool 创建自定义关键字列表_添加来自文件夹或项目的所有单词_ 。（您可以通过在Thor Launcher中的“自定义关键字”上进行过滤来找到此处引用的所有工具。）

![](Images/Tweet19a.png)

This tool will run for a few minutes as it scours an entire folder or project for all programming words.  Eventually, a form will come up showing you the list of all words in found. You can do some editing of the list, but for starters the suggestion is to simply save everything.

Next, go to the options page for IntellisenseX in the Thor Configuration form to select the settings such that IntellisenseX will use the Custom Keyword List.

![](Images/Tweet19b.png)

Finally, mark these checkboxes for option “Add all words in code window” as well, so that new words you create going forward, including properties and methods created by [PEM Editor](https://github.com/VFPX/PEMEditor) or any of its related tools, are automatically added to the Custom Keyword List. Do so even if you don’t used BeautifyX (but more on that in a bit).

![](Images/Tweet19c.png)

After performing these three steps, you’re on your way.

#### Updating the Custom Keyword List Programmatically

You can programmatically add words to this list at any time by using any of the following Thor tools:

*   _Add all words from folder or project_
*   _Add all words in code window_
*   _Add PEMS from current class or form_
*   _Add fields names from current table_

If there are any new words encountered, a form opens for you to approve the new words; if there are any words found that conflict with words already in the table, a separate form opens for you to select which you want to use.

![](Images/Tweet19d.png)

#### What does “Locked” mean?

Some words may have inconsistent usages – “Openexcelfile” or “OpenExcelfile” or “OpenExcelFile” or ?  Marking a word as “Locked” indicates that that is your preferred usage and you will never be asked about possible conflicts again.

#### Updating the Custom Keyword List Manually

You can  use the tool _Add highlighted word_ to add or update a word directly to the Custom Keyword List (this also marks it as Locked – your preferred usage).

You can also open the table with tool _Browse Custom Keyword List_ and make any modifications as needed. This table is found in your “My Tools” folder.

```foxpro
_Screen.cThorFolder + 'Tools\My Tools\KeywordList.DBF'
```


#### Using BeautifyX

If you’re not already using Thor tool BeautifyX all the time, it’s time to change.  It provides a wide range of features and you can choose which ones work for you – but some of them them definitely will.

The options include

*   Apply native Beautify
*   Provide consistent spacing around operators and commas, align semi-colons, indentation for continuation lines
*   Highly customizable formatting for SQL-SELECT, SQL-UPDATE, SQL-DELETE, and REPLACE statements, (conditionally within TEXT / ENDTEXT structures)
*   Run Thor tool “Create Locals’
*   Add MDots
*   Check for RETURNs between WITH/ENDWITH (these create latent C5 errors)
*   Apply Custom Keyword List
*   Add words to Custom Keyword List.

Make it your practice to use BeautifyX on all the code you write.

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).
