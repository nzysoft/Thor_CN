![](Images/Thor.png)![](Images/Thor_news.png)  

FoxPro 的工具管理器
===
_本文档由 xinjie 于 2018-04-07 翻译_

[Thor 社区](http://groups.google.com/group/FoxProThor)

[Thor 视频](Thor_videos.md)

[Thor 推特](TWEeTs.md)

![](Images/Thor_greenline.png)

**新的 Thor 工具和 [SuperBrowse](Thor_superbrowse.md) 的增强功能** 
---

### #42, 2015-11-30

Thor Repository中提供了许多新的Thor工具。

*   'Toggle tabs in pageframe' – 当选项卡不可见时，在页框的页面之间导航可能非常困难（是的，很麻烦）。 使用此工具切换当前页面中的选项卡。
*   'Compare text in two windows' – 使用您最喜爱的比较工具来比较来自两个不同代码窗口的代码，而不退出FoxPro，如下所示：
    *   选择一个文本窗口
    *   执行此工具（建议使用快捷键）
    *   选择第二个文本窗口
    *   再次执行此工具  
            -- 这将比较两个窗口的内容

> **需要：**  Thor 并不能猜出你最喜欢的比较工具，所以你必须修改插件以便 Thor 可以调用它。插件的默认代码调用Beyond Compare（_私人建议：强烈建议！）_，并且你必须予以修改以适应您的环境。

*   第三个新工具 [VFP2Text](http://pfsolutions-mi.com/Product/VFP2Text), 一个来自Frank Perez，Jr.的Beyond Compare的插件，可以直接比较VCX和SCX
    *   'Download VFP2Text for Beyond Compare V3'
    *   'Download VFP2Text for Beyond Compare V4'
    *   'VFP2Text Home Page'

还有一些对 **[SuperBrowse](Thor_superbrowse.md)** 的改进：

*   由于在过滤器框中切换表达式和值可能非常麻烦，现在可以按如下方式覆盖当前设置：
    *   要选择值，请使用尾随'$'
    *   要选择表达式，请使用前导'='
*   "值"过滤所有选定的字段，如果没有，则为全部字符型字段。
*   如果表是只读的，双击一行（使用动态表单编辑）会显示一个只读表单。
*   新设置允许显示备注字段中的前导字符而不是“Memo”。
*   双击备注字段可单独编辑该字段。
*   有许多新的插件：
    *   格式字段选择器 - 为第一页上提供的选项创建替代格式（“选取器”）以符合您的偏好
    *   绑定列事件 - 将Grid列中的事件绑定到此类
    *   Grid 上下文菜单 - 为网格中的单元格创建上下文菜单  

同时可参看 [所有 Thor 推特的历史](TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).

---

以前的头条新闻
---

**[#41, 2015-01-12 添加到VFPX的两个新项目](#Headline41)**

**[#40, 2014-01-04 TWEeT #27: Go To Definition](Tweet_27.md)**

**[#39, 2014-12-22 TWEeT #26: 三个新的 Thor 工具](Tweet_26.md)**

**[#38, 2014-12-17 添加到VFPX的两个新项目](#Headline38)**

**[#37, 2014-11-30 TWEeT #25: FoxBin2PRG的五个新Thor工具](Tweet_25.md)**

**[#36, 2014-11-25 TWEeT #24: 九个新的 Thor 工具](Tweet_24.md)**

**[#35, 2014-11-17 TWEeT #23: 检测到缓冲区溢出！](Tweet_23.md)**

**[#34, 2014-06-11 TWEeT #22: 发布 IntellisenseX](Tweet_22.md)**

**[#33, 2014-06-04 TWEeT #21: 高级功能：用于IntellisenseX的插件](Tweet_21.md)**

**[#32, 2014-05-29 TWEeT #20: IntellisenseX快速入门指南](Tweet_20.md)**

**[#31, 2014-05-21 TWEeT #19: IntellisenseX中的缺陷（以及如何避免它们）...自定义关键字列表](Tweet_19.md)**

**[#30, 2014-05-10 TWEeT #18: IntellisenseX嵌套对象](Tweet_18.md)**

**[#29, 2014-04-29 TWEeT #17: 在IntellisenseX中使用本地别名](Tweet_17.md)**

**[#28, 2014-03-03 TWEeT #16: 字段名称的自定义关键字列表](Tweet_16.md)**

**[#27, 2014-02-24 TWEeT #15: IntellisenseX和别名字典](Tweet_15.md)**

**[#26, 2014-02-17 TWEeT #14: IntellisenseX for Objects](Tweet_14.md)**

**[#25, 2014-02-10 TWEeT #13: 新的（隐藏的）IntellisenseX功能](Tweet_13.md)**

**[#24, 2014-02-03 TWEeT #12: IntellisenseX 使用"."操作符还是使用快捷键？](Tweet_12.md)**

**[#23, 2014-01-27 TWEeT #11: IntellisenseX: VFP表的别名](Tweet_11.md)**

**[#22, 2014-01-20 TWEeT #10: IntellisenseX: SQL Server表中的字段名称](Tweet_10.md)**

**[#21, 2014-01-13 TWEeT #9: 提取到变量和提取为常量](Tweet_09.md)**

**[#20, 2014-01-05 TWEeT #8: 创建属性和方法 (#3)](Tweet_08.md)**

**[#19, 2013-12-18 TWEeT #7: 创建属性和方法 (#2)](Tweet_07.md)**

**[#18, 2013-08-26 Thor Version 1.40 发布: Thor 工具栏](#Headline18)**

**[#17, 2013-06-23 新的 VFPX 项目: Finder](#Headline17)**

**[#16, 2013-03-31 新视频：运行Thor工具的50种方法](#Headline16)**

**[#15, 2012-03-05 新的 Thor 工具: AutoComplete](#Headline15)**

**[#14, 2012-01-16 Thor视频可从Thor菜单中获得](#Headline14)**

**[#13, 2012-01-05 Thor 的工具启动器：你必须使用的工具之一](#Headline13)**

**[#12, 2012-11-16 Thor 菜单提供对论坛和更改日志的访问](#Headline12)**

**[#11, 2012-11-10 在线FoxPro用户组（OFUG）已创建](#Headline11)**

**[#10, 2012-10-14 新的 VFPX 项目: FoxcodePlus](#Headline10)**

**[#9, 2012-10-06 轻松访问所有VFPX主页](#Headline9)**

**[#8, 2012-09-30 IntellisenseX 作为一个 VFPX 项目已发布](#Headline8)**

**[#7, 2012-09-19 所有VFPX项目都可以从Thor下载](#Headline7)**

**[#6, 2012-09-16 使用Thor讨论组](#Headline6)**

**[#5, 2012-09-10 IntellisenseX 发布](#Headline5)**

**[#4, 2012-09-09 Data Explorer 现在成为 Thor 工具](#Headline4)**

**[#3, 2012-09-04 新的 VFPX 项目: Dynamic Forms & Data Explorer](#Headline3)**

**[#2, 2012-08-30 加入Thor Beta讨论组](#Headline2)**

**[#1, 2012-08-25: 介绍Thor新闻](#Headline1)**

---

添加到VFPX的两个新项目
---

#### <a name="Headline41"> #41, 2015-01-12</a>
 

VFPX添加了两个新项目，并可从“检查更新”中找到。

* [ThemedTitleBar](https://github.com/VFPX/ThemedTitleBar) -- 显示为'In Screen'或'In Top-Level Form'的VFP表单的标题栏现在看起来有些过时，至少在Win8上运行，与Office 2013或Visual Studio 2013相比较。此项目的目标是提供一个时髦的TitleBar以直接替换默认TitleBar，不需要更改现有表单的代码。
* [VFP 9 SP2 Hotfix 3 Download](https://github.com/VFPX/VFP9SP2Hotfix3) 是VFP 9 SP2的最新修补程序。 此修补程序包括为VFP 9 SP2发布的所有三个修补程序
 

参看 [所有 Thor 推特的历史](TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).  

添加到VFPX的两个新项目
---

#### <a name="Headline38">#38, 2014-12-17</a>
 

VFPX添加了两个新项目，并可从“检查更新”中找到。

* [VFP Runtime Installers](https://github.com/VFPX/VFPRuntimeInstallers) 包含VFP版本6到9的运行时安装程序(因为它们不再可从Microsoft网站获得)
* [StripeX](http://github.com/VFPX/StripeX) 是一个与Stripe.com合作的包装类。
 

参看 [所有 Thor 推特的历史](TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).  

---

Thor Version 1.40 发布: Thor 工具栏
---

#### <a name="Headline18">#18, 2013-08-26</a>
 

添加了Thor 工具栏。 可以使用下面Thor Configuration表单中显示的复选框（也可在Tool Launcher中找到）将工具添加到工具栏。

![](Images/Thor_SNAGHTMLf389404.png)

将工具添加到Thor工具栏时，可以为该工具选择一个标题或选择一个图像来表示它。 在下面的示例中，使用缩写字符。

![](Images/Thor_SNAGHTMLf3b4e2e.png)

工具栏尺寸、位置、停靠以及从一个 session 到另一个的过程中保持显示（persist from one session to the next）。(说实话，这个保持显示一直有问题。)

---

新的 VFPX 项目: Finder
---

#### <a name="Headline17">#17, 2013-06-23</a>
 

新的VFPX项目* Finder *是一个强大的搜索工具，用于查找表单和类。 它搜索项目或文件夹（包含子文件夹）以查找文件或类的名称。

可以通过双击打开文件或类，并且可以从上下文菜单中为Grid中的行提供许多其他选项。

使用类搜索时，可以将找到的类拖放到正在编辑的表单或类上。

参看 [Finder 主页](https://github.com/VFPX/Finder) 并观看 [Finder 介绍视频](http://www.youtube.com/watch?v=uL4a9gsCLlk&feature=youtu.be) (11:25).

![](Images/Thor_News_SNAGHTML3cdc777.png)

--- 

Thor视频可从Thor菜单中获得
---

#### <a name="Headline14">#14, 2013-01-16</a>
 

已经有许多视频解释了Thor的特征，并且还有更多。 按照Thor菜单中的链接查看所有Thor视频列表。

![](Images/Thor_news_image_thumb_4.png)

---

Thor 工具启动器：您必须使用的工具之一
---

#### <a name="Headline13">#13, 2013-01-05</a>
 

Thor的工具启动器使用一个简单的屏幕，允许您通过关键字浏览所有Thor工具，阅读他们的描述或访问他们的主页，设置他们的选项，最重要的是运行它们。 它还可以帮助您组织最常用的工具，以便于访问。

Thor拥有过多的工具 - 在众多的工具中你可能无法找到你感兴趣的东西。 工具启动器简化了搜索。

观看[这个短片](http://youtu.be/2ttBR9vQqew)（7:57）了解它的一切。

---

Thor菜单提供对论坛和更改日志的访问
---

#### <a name="Headline12">#12, 2012-11-16</a>
 

Thor菜单已更改为可访问多个相关的论坛。

这些论坛是关于这些工具的首选沟通形式，而不是私人电子邮件，或使用Universal Thread，Foxite或任何其他在线论坛。

![](Images/Thor_forums.png)


现在可以使用Thor各种工具和组件的更改日志，也可以链接到Thor ERs的永无止境的列表。

![](Images/Thor_news_image_thumb_5.png)

---

在线FoxPro用户组（OFUG）创建
---

#### <a name="Headline11">#11, 2012-11-10</a>
 

新的Online Foxpro用户组正在启动。 欲了解更多信息，请加入Google小组[ https://groups.google.com/forum/?fromgroups#!forum/ofug](https://groups.google.com/forum/?fromgroups#!forum/ofug).

会议将于每个月的第三个星期二在东部标准时间的8:30通过GotoMeeting.com或其他举行。

有关如何加入会议的详情将在会议开始前立即在小组论坛上发布（请参阅上面的链接）。

我们打算记录会议并在网上提供给那些无法参加的人。

下次会议：美国东部时间11月20日星期二晚上8:30（11月21日星期三0130）

主持人：

Matt Slay - Dynamic Forms
Jim Nelson - PEM Editor 及相关工具

---

新的 VFPX 项目: FoxcodePlus
---

#### <a name="Headline10">#10, 2012-10-14</a>
 

检查更新中提供了新的VFPX项目[FoxcodePlus（Beta 1）](https://github.com/VFPX/FoxcodePlus)。

这个项目与另一个VFPX项目IntellisenseX没有关系，尽管它们都提供了Intellisense增强功能。 FoxCodePlus提供更广泛的功能，并包含IntellisenseX提供的一些功能。 虽然尚未测试，但似乎可以同时使用两者。

下载完成后（包括代码和文档），您可以使用系统菜单中的Thor菜单访问安装这些组件的文件夹：

![](Images/Tweet10_foxcodeplus.png)

---

轻松访问所有VFPX主页
---

#### <a name="Headline9">#9, 2012-10-06</a>
 

Thor现在可以访问Thor菜单上的所有VFPX项目的主页。

![](Images/Tweet9_vfpxp9jects.png)

---

IntellisenseX 作为 VFPX 项目发布
---

#### <a name="Headline8">#8, 2012-09-30</a>

IntellisenseX已经作为VFPX项目发布。

*IntellisenseX*是指一套Thor工具，提供与原生Intellisense相似的功能。 这些工具在键入代码时显示可用变量名称，字段名称或成员（属性，事件，方法和对象）的列表，就像Intellisense一样。 但是，它们涵盖了Intellisense忘记的那些区域（例如，在代码窗口中编辑时在表格中的字段名称列表），并提供可通过定制提供的功能，例如在SQL表中显示字段名称列表。

访问[IntellisenseX主页](https://github.com/VFPX/IntelliSenseX)并观看[Intellisense培训视频](https://github.com/VFPX/IntelliSenseX#videos)。<!-- TBL video -->

IntellisenseX可从检查更新中获得。 <!-- TBL -->

所有VFPX项目都可以从Thor下载
---

#### <a name="Headline7">#7, 2012-09-19</a>

所有VFPX项目的当前版本现在可以直接从检查更新中下载。 <!-- TBL -->

检查更新中列出的项目在五个分组中按字母顺序列出： 
1. 您已下载的项目有更新的版本。(参看 #4)
1. 您尚未下载的项目在过去三个月内有更新
1. 您尚未下载的所有其他项目
1. 您已经下载并且是最新的项目
1. 所有标记为“从不更新”的项目。 这优先于任何其他类别。

---

Use the Thor discussion group for comments, suggestions, bug reports, etc.
---

#### <a name="Headline6">#6, 2012-09-16</a>

Use the “Community / Discussions” menu item in the Thor menu pad to send comments, suggestions, bug reports, and so on to the [Thor Discussion Group](http://groups.google.com/group/FoxProThor). You are invited to become a member of the group so that you can see what is going on in the land of Thor.

![](Images/Thor_community.png)

Two things of note:

* You can email discussion questions (with screenshots) directly to:

    [foxproThor@googlegroups.com](mailto:foxproThor@googlegroups.com)

*When reporting bugs, please provide as much information as possible, including screenshots. Any information you can provide (such as an image of the debugger, etc.) will be greatly appreciated.

---

IntellisenseX released
---

#### <a name="Headline5">#5, 2012-09-10</a>
*IntellisenseX* refers to a suite of Thor Tools that provide functionality similar to native Intellisense. These tools display lists of available variable names, field names, or members (properties, events, methods, and objects) while you type code, just like Intellisense. However, they cover those areas that Intellisense forgot (such as the list of field names in a table when editing in a code window) and provide new capabilities, available through customization, such as displaying the list of field names in an SQL table, as shown below. For a full description, see the [IntellisenseX Home Page.](https://github.com/VFPX/IntelliSenseX)

![](Images/Thor_News_SNAGHTMLf871ea8_thumb1_thumb_2.png)

---

Data Explorer is now a Thor tool
---

#### <a name="Headline4">#4, 2012-09-09</a>
Data Explorer 3 is now available as a Thor Tool. This means that you can choose to access it by hot key by assigning the hot key in the Thor configuration form.

![](Images/Thor_News_SNAGHTML1f93281e.png)

---

New VFPX Projects: Dynamic Forms & Data Explorer
---

#### <a name="Headline3">#3, 2012-09-04</a>
Two new VFPX projects have been created in the last few days and are available from Check For Updates:

* [Dynamic Forms](https://github.com/mattslay/DynamicForms)
* [Data Explorer 3](https://github.com/rschummer/DataExplorer)

After downloading, you can use the Thor menu pad in the system menu to open the folder in which these components are installed:

![](Images/Tweet10_foxcodeplus.png)

---

Join the Thor Beta discussion group.
---

#### <a name="Headline2">#2, 2012-08-30</a>

**The [Thor Beta discussion group](https://groups.google.com/forum/#!forum/foxprothorBeta)** is intended for discussions of features currently under development for Beta versions of Thor, the Thor Repository, and PEM Editor.

All other Thor issues should be directed to the [Thor discussion group](https://groups.google.com/forum/#!forum/foxprothor).

To use the Beta version for Thor, download [Thor Repository Beta Updater.Zip](http://vfpxrepository.com/dl/thorupdate/Tools/Thor_Repository/Beta/Thor_Update_Thor_RepositoryBeta.zip) and unzip it into this sub-folder of the folder where you have installed Thor: **Thor\Tools\Updates\My Updates**

Thereafter, you will see a record for "Thor Repository Beta" when you run "Check For Updates".

---

Introducing Thor News.
---

#### <a name="Headline1">#1, 2012-08-25</a>

This is the first installment of the Thor News, which will notify you of changes and updates to Thor. It will also, from time to time, explore some of the more interesting tools found in Thor.

The latest news will be brought to you:

*   each time that you run Check For Updates
*   once a week when you execute RunThor.

You can change these settings in the Thor Configuration form:

![](Images/Thor_configuration.png)
