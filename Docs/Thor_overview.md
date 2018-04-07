Thor概述
===
_本文档由 xinjie 于 2018-04-07 翻译_

Thor是用于管理IDE中的附加工具的工具。

它提供了四种访问这些工具的不同方法：

1.  通过分配热键给他们
2.  通过创建可通过热键访问的弹出菜单
3.  通过在任何VFP系统菜单项（文件，编辑，视图等）下添加工具项，
4.  通过在VFP系统菜单中创建新的菜单项并将这些工具添加到这些新菜单项下的菜单。

Thor由四部分组成：

1.  Thor管理的工具目录。 这些实际上是PRG（见下文）。
2.  基础自由表，其中包含菜单热键分配的定义等。
3.  Thor表单可以通过热键或VFP系统菜单上的菜单键访问，该菜单可管理表中存储的所有菜单和热键定义。 （请注意，此表单没有保存或取消按钮;对其进行的更改会立即发布。）
4.  一个APP，从表格中获取定义并更新VFP系统菜单（如果适用），创建弹出式菜单，并将热键分配给弹出式菜单和/或单个工具。 由于这些定义免疫 CLEAR ALL，因此只需在IDE会话开始时运行一次。

#### **什么是“工具”？**

工具是遵循特定结构的PRG，因此Thor可以识别它们。

每个工具的“标题”是一组40行左右的代码，让工具可以告诉 Thor 自己是什么。 当使用Thor表单创建新工具时，它看起来像这样：

![](Images/Thor_Overview_SampleToolHeader.png)

该工具的实际代码在该标题后面。 与往常一样，浏览其他工具（您也可以在Thor表单中执行的操作）以查看如何正常使用这些属性的示例是有益的。

创建新工具的过程（使用Thor表单时）将指导创建该工具到Thor识别的文件夹中，该文件夹可以是'Thor'文件夹的特殊子文件夹或路径中的任何文件夹。 新工具的默认文件夹是*Thor\Tools\My Tools*

一个建议是为所有个人工具的 *.Source* 属性分配相同的值，以便Thor表单将它们组合在一起。

#### **The Thor Repository**

Inherent in the design of Thor is the anticipation that members of the FoxPro community will have utilities of value that can well be shared throughout the community. The structure of the tool PRGs make such sharing simple.  

The 'Thor Repository' is a catalog of such tools. The intent is that this repository grow over time, as developers submit tools to be included. The starting repository has about a dozen such tools.  

See the section below on One-Click Updates for downloading updates of the Thor Repository.  

### [Click here for the home page for the Thor Repository](Thor_repository.md)

#### **Tools from PEM Editor**

Version 7 of PEM Editor, now re-named 'PEM Editor w/ IDE Tools', contains more than three dozen tools that can be accessed through Thor. These include some tools released in version 6 of PEM Editor, along with a large number of completely new tools. These can be downloaded from the PEM Editor page.  

PEM Editor also "publishes" a pair of objects that simplify building further tools. More than half of the original tools in the Thor Repository use these objects.  

See the section below on One-Click Updates for downloading updates of the PEM Editor 7 with IDE Tools.

### [Click here for the home page for PEM Editor 7 with IDE Tools](https://github.com/VFPX/PEMEditor) 


#### **One-Click Updates**   
Beginning with Thor Version 1.1 (Released Oct. 23, 2011), updates to Thor, the Thor Repository, PEM Editor 7 with IDE Tools, and other tools, are all available through a single menu on the Thor menu (in the FoxPro system menu).  This new item, ‘Check for Updates’, checks to see if there are updates available for any of these tools; if any are found, they are automatically downloaded and installed.

Beginning with Thor Version 1.10.019 (Released Nov. 17, 2011), One-Click Updates may be performed automatically when starting your first IDE session of the day.  See [Running Thor](Thor_running.md).

![](Images/Thor_Overview_image_2.png)

#### **Documentation**

There is complete on-line documentation for Thor, the Thor Setup form, and other features of Thor.  [Click here](Thor_help.md)

#### **Community Forum for Thor**

Please visit the community forum for Thor at [**http://groups.google.com/group/FoxProThor**](http://groups.google.com/group/FoxProThor) to make suggestions or comments, to report problems, and to see how others are using Thor and its related tools.

#### **A Note on Hot Keys**

Thor provides for a new capability not previously available -- the ability to assign hot keys which use two or three of the Shift, Ctrl, and Alt keys, such as {Ctrl + Alt + A}. (Actually, using all three requires quite some dexterity.)  

Keyboard macros (using FKY files) are the only VFP feature which recognize usage of two or three of these keys, but macros do not cause program execution, they only place characters into the keyboard buffer.
