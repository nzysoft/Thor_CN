The Thor Framework: 制作工具的工具
===
_本文档由 xinjie 于 2018-04-07 翻译_

Thor提供了一个工具框架来协助创建工具。

框架中的每个工具都可以从一行代码中获得，如下所示：

    Result = Execscript (_Screen.cThorDispatcher, cParameter)

选择这种非常寻常的方法是因为它要达到两个目标：

1.框架中的工具只有单一依赖项（_Screen中属性的名称），因此可以通过工具访问，无论安装Thor的文件夹如何。
2.即使在“Clear All”后，框架中的工具仍可用。

请注意，框架中的工具始终可从VFP系统菜单中的Thor菜单中获得，您可以复制代码行直接访问该工具。 此外，如果可用，可访问该工具的主页。

![](Images/Thor_Tools_Making_Tools_image_2.png)

### External APPs:

The structure of Thor provides for the inclusion of other objects embedded in APP files.  In particular are these two, developed as part of PEM Editor.  

**cParameter** |**Result**
---|---
Class= editorwin from pemeditor|Methods to access and modify the text in the currently open editing window (Select, Cut, Copy, Paste, etc ...)  - see [Thor EditorWindow Object](Thor_editorwindow_object.md)/
Class= tools from pemeditor|A collection of various methods, not related to each other, but of value beyond their use in PEM Editor – see [Thor Tools Object](Thor_tools_object.md)


### Internal Tools:

**cParameter** |**Result**
---|---
Class= ContextMenu|Returns an object used to create context menus - see [Thor ContextMenu](Thor_framework_contextmenu.md)
Class= ThorFormSettings|Returns an object so that forms can save their settings (size, position, etc) and align the form to the mouse or cursor position – see [Thor FormSettings](Thor_framework_formsettings.md)
Class= FindEXE|(documentation not yet available)
Tool Folder=|Returns the name of Thor’s tool folder
Thor Register=|Returns an object so that an APP can self-register its own tools, such as is done by [GoFish 5](https://github.com/mattslay/GoFish) and [PEM Editor 7](https://github.com/VFPX/PEMEditor).
Run|Runs Thor.  Same as  Do Thor with ‘Run’  or  Do RunThor
Edit|Opens Thor form.  Same as Do Thor with ‘Edit’
Clear HotKeys|Removes all Thor-assigned keyboard macros so that a macros (FKY) file can be saved

### See also

*   [Browsing the list of tools](Thor_browsing_tools.md)
*   [Assigning hot keys to tools](Thor_assign_tool_hot_keys.md)
*   [Editing existing tools](Thor_editing_existing_tools.md)
*   [Creating new tools](Thor_creating_new_tools.md)

