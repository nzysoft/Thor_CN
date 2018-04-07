Thor TWEeT #3: 记忆 MRUs?
===
_本文档由 xinjie 于 2018-04-08 翻译_

还记得你以前住在命令窗口，你会用MRU列表打开窗体，文件，类等吗？ 

当你开始依赖于其他工具，如项目管理器和类浏览器时，你不能再使用MRU列表，因为这些其他工具没有更新MRU列表，也没有任何方式可以使用除命令之外的其他任何方式 窗口。

但是现在是时候恢复使用MRU了，因为Thor工具可以恢复它们，维护它们并提供访问它们的新方法。

首先，所有Thor工具，最值得注意的是 **[GoFish](https://github.com/mattslay/GoFish),[Finder](https://github.com/VFPX/Finder)** 和 **[PEM编辑器](https://github.com/VFPX/PEMEditor)** ，以及所有其他打开文件的Thor工具，在打开文件时总是更新相应的MRU列表（无论是表单，类，表，报表 等）。 另外，他们还提供了两个其他功能：

*   他们为打开的所有*类库*保留一个新的MRU列表。
*   他们使用与磁盘上的文件名相同的大小写打开每个文件，这样文件名的大小写不会改变。

> _注意：如果您从项目管理器或类浏览器打开文件，看起来这并不会对您有所帮助，但您可以进行简单的修改，以达到与所有其他Thor工具相同的效果。请参阅此消息的结尾。_

用于访问MRU列表的主要Thor工具简称**MRUs**，它显示所有不同MRU列表的弹出式菜单（包括顶部的Thor特有的MRU类库的列表）。

![](Images/Tweet3a.png)

还有许多其他Thor工具可以访问这些相同的MRU列表：

*   **MRU class libraries** -- 仅提供MRU类库的列表（上面菜单中的第一项）
*   **HackCX4 from MRU forms or classes** -- 创建一个弹出菜单，显示表单和类库的MRU，以便它们可以被HackCX4打开，（需要单独安装HackCX4 [WhiteLightComputing](http://www.whitelightcomputing.com/prodhackcxpro.htm))
*   [Finder](https://github.com/VFPX/Finder) -- lists are available by right-clicking on either the "File Search" or "Class Search" buttons atop the screen.
*   [PEM Editor](https://github.com/VFPX/PEMEditor) -- lists are available from the "Open File" button atop the screen.

There are also two Thor tools that are slightly mis-named, as they really refer to most-recently-*changed* classes and files, based on timestamps rather than MRU lists. Note that **Finder** can also be used to find most-recently-changed classes and files

*   **MRU classes in this project** - note that this uses the internal timestamp within a VCX for when a class was last updated, rather than the timestamp of the VCX file itself.
*   **MRU files in this project**

***Updating MRU lists from the Project Manager or Class Browser***

Thor provides files you can install so that files opened from the Project Manager or Class Browser will update your MRU lists appropriately. These files are found in folder Thor\Tools\Samples.

> _Note: The MRU lists are updated only if you have run Thor. If you haven't, Project Manager and Class Browser will still work normally._

*   To change Project Manager, use the code from class BaseProjectHook of BaseProjectHooks.VCX
    *   If you are not using ProjectHooks, modify the project to use this class (I recommend copying the class library to some other folder)
    *   If you are already using ProjectHooks, simply copy the code from the only method in the class into your project hook file.
*   To change Class Browser, copy the file Browser.APP into the home folder for FoxPro -- Home(1)

See also [History of all Thor TWEeTs](../TWEeTs.md) and [the Thor Forum](https://groups.google.com/forum/?fromgroups#!forum/FoxProThor).

