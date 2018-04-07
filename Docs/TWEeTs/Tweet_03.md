Thor TWEeT #3: 记忆 MRUs?
===
_本文档由 xinjie 于 2018-04-08 翻译_

还记得你以前住在命令窗口，你会用MRU列表打开窗体，文件，类等吗？ 

当你开始依赖于其他工具，如项目管理器和类浏览器时，你不能再使用MRU列表，因为这些其他工具没有更新MRU列表，也没有任何方式可以使用除命令之外的其他任何方式 窗口。

但是现在是时候恢复使用MRU了，因为Thor工具可以恢复它们，维护它们并提供访问它们的新方法。

首先，所有Thor工具，最值得注意的是**[GoFish](https://github.com/mattslay/GoFish)，[Finder](https://github.com/VFPX/Finder)** 和 **[PEM编辑器](https://github.com/VFPX/PEMEditor)** ，以及所有其他打开文件的Thor工具，在打开文件时总是更新相应的MRU列表（无论是表单，类，表，报表 等）。 另外，他们还提供了两个其他功能：

*   They maintain a new MRU list for all *class libraries* that are opened.
*   They open each file using the same case for the file name as is found on disk, so that the case of file names is not changed.

> _Note: It might seem that this would not help you if you open files from the Project Manager or Class Browser, but there are simple modifications you can make to both to achieve the same effect as all other Thor tools,  See the end of this message._

The main Thor tool for access MRU lists is called simply **MRUs**, and it displays a pop-up menu of all the different MRU lists (including, at the top, the list unique to Thor, of MRU class libraries.)

![](Images/Tweet3a.png)

There are a number of other Thor tools that access these same MRU lists:

*   **MRU class libraries** -- provides a list of only the MRU class libraries (the first item from the menu shown above)
*   **HackCX4 from MRU forms or classes** -- creates a popup menu showing the MRU for forms and class libraries so that they can be they can be opened by HackCX4, (Requires separate installation of HackCX4 from [WhiteLightComputing](http://www.whitelightcomputing.com/prodhackcxpro.htm))
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

