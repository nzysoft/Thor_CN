![](Docs/Images/Thor.png)  
## VFP的工具管理器

版本 1.40 释放日期 2013-08-26

[此版本新增功能](#WhatsNew)

_仅可以运行于 VFP9_


***

_**Thor** 是一个管理IDE中插件工具的的管理器，用于管理访问IDE工具的菜单和快捷键。_

[此版本新增功能](#WhatsNew)

[获取 Thor 的最新消息](Docs/Thor_news.md)

**下载 App:** [点击此处下载最新的编译版本](http://vfpxrepository.com/dl/thorupdate/thor/Thor.zip)

**如何使用:** [点击此处查看安装说明](Docs/Thor_install.md)

**帮助:** [点击此处查看完整在线文档](Docs/Thor_help.md)

**讨论组:** [点击此处在 Thor 讨论组发布你的问题、BUG报告以及参与讨论](http://groups.google.com/group/FoxProThor)

**Thor 工具: [PEM Editor w/IDE Tools](https://github.com/VFPX/PEMEditor),** [The Thor Repository](Docs/Thor_repository.md),  [GoFish4](https://github.com/mattslay/GoFish)  

Thor:

*   它具有一个用户界面，用来工具和用户自定义菜单快捷键的指定。UI提供了四种方式来访问这些工具：
    1.  使用所定义的热键
    2.  创建可使用热键的弹出菜单
    3.  在固有系统菜单下创建新的自定义菜单项(文件、编辑、查看等)
    4.  在VFP系统菜单中创建新的菜单
*   它提供了注册工具的统一的方法。
*   简化了开发者之间共享任务。

Thor 附带两个工具：Thor Repository 和 PEM Editor。(见下文)

与 ON KEY LABEL 不同，Thor 可以提供全方位的多建组合 (例如：{Ctrl + Alt + A})。

它所管理的“工具”其实是很简单的PRG，它们具有以下特征：

*   PRG的命名方式为：**Thor_Tool_*.PRG**
*   PRG文件必须保存在搜索目录下，或者在两个 Tools 目录下（它们在安装时被创建） -- 一个用于（通过Thor）下载工具，一个用于个人制作的工具。
*   PRG文件的前大概40行代码必须遵循固定的模板格式，用于 Thor 获得该工具的名称、描述等信息。

### 文档

[点击此处查看Thor的完整联机文档](Docs/Thor_help.md)

### 如何使用

[点击此处下载最新的编译版本](http://vfpxrepository.com/dl/thorupdate/thor/Thor.zip).

[点击此处查看安装说明](Docs/Thor_install.md).

### Thor社区

请访问[Thor社区]（http://groups.google.com/group/FoxProThor）提出问题、建议，报告BUG以及提交你对该工具的期望功能。 这是所有Thor相关主题的最佳去处。

### The Thor Repository

Inherent in the design of Thor is the anticipation that members of the FoxPro community will have utilities of value that can well be shared throughout the community. The structure of the tool PRGs make such sharing simple.  

The 'Thor Repository' is a catalog of such tools. The intent is that this repository grow over time, as developers submit tools to be included. The starting repository has about a dozen such tools. Click here for the help page for  [The Thor Repository](Docs/Thor_repository.md)  

Downloading and installation of the Thor Repository occurs automatically as part of the [One-Click Update for Thor](Docs/Thor_one-click_update.md)

### IDE Tools from PEM Editor

Version 7 of PEM Editor, now re-named 'PEM Editor w/ IDE Tools', contains more than three dozen tools that can be accessed through Thor. These include some tools released in version 6 of PEM Editor, along with a large number of completely new tools. These can be downloaded from the PEM Editor page. Click here for the help page for [Help page for PEM Editor w/IDE Tools](https://github.com/VFPX/PEMEditor)  

PEM Editor also "publishes" a pair of objects that simplify building further tools. More than half of the original tools in the Thor Repository use these objects.

Downloading and installation of PEM Editor 7 with IDE Tools occurs automatically as part of the [One-Click Update for Thor](Docs/Thor_one-click_update.md).

### Sample

Two new menu pads in VFP system menu (Thor and personal menu JRN) and the menu options in the Thor menu.

![](Docs/Images/Thor_image_4.png)

<a name="WhatsNew">**What's New**</a>

Thor 1.40 – Released 2013-08-26

Added the Thor ToolBar.  Tools may be added to the Toolbar may using the checkbox shown in the Thor Configuration form,  below (and also available in the [Tool Launcher](Docs/Thor_launcher.md).)

![](Docs/Images/Thor_SNAGHTMLf389404.png)

When you add a tool to the Thor Toolbar, you can select a caption for the tool or select an image to represent it.  In the sample below, abbreviated captions are used.

![](Docs/Images/Thor_SNAGHTMLf3b4e2e.png)

The toolbar’s size, positioning, and docking, persist from one session to the next. (Truth be told, persisting the docking has been problematic.)

Thor 1.30 – Released 2012-08-19

*   Added [Tool Launcher](Docs/Thor_launcher.md), available from the Thor menu in the VFP system menu

![](Docs/Images/Thor_SNAGHTML39362d.png)

*   Added [Thor IntellisenseX](https://github.com/VFPX/IntelliSenseX).

![](Docs/Images/Thor_image_2.png)

Thor 1.1 - Released 2011-10-23  

Thor Production Release - Released 2011-09-03  

Thor I Beta 6 - Released 2011-08-22 (88 downloads)

*   a few minor bug fixes

Thor I Beta 5 - Released 2011-08-09 (91 downloads)

*   Miscellaneous minor adjustments and a couple of bug fixes

Thor I Beta 4 - Released 2011-07-17 (125 downloads)

*   Re-installation now occurs automatically. Simply using the new version of Thor.App will cause re-installation.
*   Includes full online documentation.

Thor I Beta 3 - Released 2011-07-06 (94 downloads)  

Thor I Beta 2 - Released 2011-07-04 (61 downloads)  

Thor I Beta - Released 2011-06-03 (237 downloads)

## Acknowledgments

*   The concept for this project started with Jim Nelson (the Project Manager).
*   The design was created by a group which included Doug Hennig, Eric Selje, and Tore Bleken.
*   The entire UI was designed and implemented by Doug Hennig.
