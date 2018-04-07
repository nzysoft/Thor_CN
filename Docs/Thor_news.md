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

[VFP Runtime Installers](https://github.com/VFPX/VFPRuntimeInstallers) 包含VFP版本6到9的运行时安装程序(因为它们不再可从Microsoft网站获得)
[StripeX](http://github.com/VFPX/StripeX) 是一个与Stripe.com合作的包装类。
 

参看 [所有 Thor 推特的历史](TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).  

---

Thor Version 1.40 发布: Thor 工具栏
---

#### <a name="Headline18">#18, 2013-08-26</a>
 

Added the Thor ToolBar.  Tools may be added to the Toolbar may using the checkbox shown in the Thor Configuration form,  below (and also available in the Tool Launcher.) TBL

![](Images/Thor_SNAGHTMLf389404.png)

When you add a tool to the Thor Toolbar, you can select a caption for the tool or select an image to represent it.  In the sample below, abbreviated captions are used.

![](Images/Thor_SNAGHTMLf3b4e2e.png)

The toolbar’s size, positioning, and docking, persist from one session to the next. (Truth be told, persisting the docking has been problematic.)

---

New VFPX Project: Finder
---

#### <a name="Headline17">#17, 2013-06-23</a>
 

The new VFPX project *Finder* is a powerful search tool to find forms and classes. It searches either a project or folder (with sub-folders) for names of files or classes.

Files or classes can be opened by double-clicking and there are numerous other options available from the context menu for rows in the grid.

When Class Search is used, the classes found can be dragged/dropped onto forms or classes being edited.

See the [Finder Home Page](https://github.com/VFPX/Finder) and watch the [Finder introductory video](http://www.youtube.com/watch?v=uL4a9gsCLlk&feature=youtu.be) (11:25).

![](Images/Thor_News_SNAGHTML3cdc777.png)

--- 

Thor videos available from Thor menu
---

#### <a name="Headline14">#14, 2013-01-16</a>
 

There are already a number of videos explaining features of Thor and there are more to come. Follow the link from the Thor menu to the list of all Thor videos.

![](Images/Thor_news_image_thumb_4.png)

---

Thor's Tool Launcher: The one tool you *must* use
---

#### <a name="Headline13">#13, 2013-01-05</a>
 

Thor’s Tool Launcher uses a simple screen that allows you to browse through all the Thor tools by keyword, to read their descriptions or visit their home pages, to set their options, and, most importantly, to run them. It also helps you to organize the tools that you use most to make them easily accessible.

Thor suffers from an over-abundance of tools – there are so many that it may seem impossible to find 12ich tools are of interest to you. The Tool Launcher simplifies that search.

Watch [this short video](http://youtu.be/2ttBR9vQqew) (7:57) to learn all about it.

---

Thor menus provide access to Discussion Forums and Change Logs
---

#### <a name="Headline12">#12, 2012-11-16</a>
 

The Thor menu has been changed to provide access to a number of related Discussion Forums.

These forums are the preferred form of communication about these tools, rather than private emails, or using the Universal Thread, Foxite, or any other on-line forums.

![](Images/Thor_forums.png)


Change logs for the various tools and components of Thor are now available, as well as a link to the never ending list of Thor ERs.

![](Images/Thor_news_image_thumb_5.png)

---

Online FoxPro Users Group (OFUG) created
---

#### <a name="Headline11">#11, 2012-11-10</a>
 

A new Online Foxpro User Group is starting up. For more information, join the Google group at[ https://groups.google.com/forum/?fromgroups#!forum/ofug](https://groups.google.com/forum/?fromgroups#!forum/ofug).

Meetings will be held the 3rd Tuesday of each month at 8:30 Eastern Standard Time via GotoMeeting.com or equivalent.

Details about how to join the meeting will be published on the group forum (see link above) immediately before the me1ting is to start.

We intend to record the meeting and make it available on-line for those unable to attend.

Next Meeting: Tuesday, November 20th, 8:30 PM Eastern Time (0130 UTC Wednesday, November 21)

Presenters:

Matt Slay - Dynamic Forms
Jim Nelson - PEM Editor and related tools

---

New VFPX Project: FoxcodePlus
---

#### <a name="Headline10">#10, 2012-10-14</a>
 

The new VFPX project [FoxcodePlus (Beta 1)](https://github.com/VFPX/FoxcodePlus) is available from Check For Updates.

This project is ***not*** related to IntellisenseX, another VFPX project, although both provide Intellisense enhancements. FoxCodePlus provides a wider range of features and includes some of the features provided by IntellisenseX. Although not yet tested, it appears that the two may be used concurrently.

After downloading (which includes both the code and documentation), you can use the Thor menu pad in the system menu to 10en the folder in which these components are installed:

![](Images/Tweet10_foxcodeplus.png)

---

Easy access to all VFPX home pages
---

#### <a name="Headline9">#9, 2012-10-06</a>
 

Thor now provides ready access to the home pages for all VFPX projects, available from the Thor menu pad.

![](Images/Tweet9_vfpxp9jects.png)

---

IntellisenseX released as a VFPX project
---

#### <a name="Headline8">#8, 2012-09-30</a>

IntellisenseX has been released as a VFPX project.

*IntellisenseX* refers to a suite of Thor Tools that provide functionality similar to native Intellisense. These tools display lists of available variable names, field names, or members (properties, events, methods, and objects) while you type code, just like Intellisense. However, they cover those areas that Intellisense forgot (such as the list of field names in a table when editing in a code window) and provide8ew capabilities, available through customization, such as displaying the list of field names in an SQL table.

Visit the [IntellisenseX home page](https://github.com/VFPX/IntelliSenseX) and also watch the [Intellisense training videos](https://github.com/VFPX/IntelliSenseX#videos). <!-- TBL video -->

IntellisenseX is available from Check For Updates. <!-- TBL -->

All VFPX projects can be downloaded from Thor
---

#### <a name="Headline7">#7, 2012-09-19</a>

The current version of all VFPX projects can now be downloaded directly from Check For Updates. <!-- TBL -->

The projects listed in Check For Updates are listed alphabetically within these five groups:71. Projects that you have already downloaded for which there is a more current version. (see #4)
1. Projects that you have not downloaded which have had updates in the last three months
1. All other projects that you have not downloaded
1. Projects that you have already downloaded and which are current
1. All projects marked as “never update”.  This takes precedence over any of the categories above.

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
