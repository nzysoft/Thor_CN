工具启动器
===
_本文档由 xinjie 于 2018-04-07 翻译_

工具启动器是一个Thor工具，可以轻松查找和运行工具。 它也可以配置为保存您最喜爱的Thor工具列表，以便于访问。

工具启动器可以从Thor菜单启动，如下图所示，通过热键或每次运行Thor（如果您有足够的空间让它始终打开）。

![](Images/Thor_Launcher_image_2.png)

“启动器”窗体的布局与Thor表单的Configuration（“工具定义”）非常相似。

左侧的TreeView显示了所有的Thor工具，当你点击一个工具时，右侧的控件显示工具的描述，工具主页的链接（如果有的话）以及分配工具热键或编辑的按钮 工具。

还有一个按钮，用红色突出显示，可以运行该工具。 当你运行一个工具时，表单会消失，这样焦点可以返回到最后访问的窗口，因为许多工具都在当前窗口上运行。

该工具也可以通过双击TreeView中的工具名称来运行。

![](Images/Thor_Launcher_SNAGHTML216ae24.png)

The list of Thor tools is now long enough that browsing it one tool at a time is quite tedious. The filter box, in red below, can be used to find tools matching the text entered. The matching is done against the tool name, description, category, and author. One way to learn about the variety of tools offered by Thor would be to use the filter with familiar FoxPro terms, such as “class”, “form”, “object”, etc.

_Note: Filtering is done using a simple $ search. A contribution providing a more sophisticated mechanism, perhaps allowing AND or OR capabilities, would be appreciated._

![](Images/Thor_Launcher_SNAGHTML22a770e.png)

As the list of tools become more familiar, the need for the controls on the right diminishes. The right arrow, shown in the green circle above, can be used shrink the form by hiding these controls.

In this configuration, tools can be launched with a simple click.

If you have enough screen space, you many want to have the form visible all the time. To so do, use the checkbox highlighted in red below.

![](Images/Thor_Launcher_SNAGHTML22e40b2.png)

You can also create your own custom list of tools to be available from the launcher, as shown in the image below. (*Nobody* uses all of the tools.)

The author of Thor, Jim Nelson, uses hot keys for the tools he uses all the time, pop-up menus for related groups of tools (Ctrl+E for “Extract” tools, Ctrl+G for “Go To” tools, etc), and his least frequently used tools he saves in the Custom List in the tool launcher.


![](Images/Thor_Launcher_SNAGHTML2930164.png)

Use the Thor configuration form to save tools into the Custom List by following these steps:

1.  Click on “Popup Menus”
2.  Click on “Add Menu”. This creates a menu that can be used either as a popup menu (if you assign a hot key to it), in the Launcher, or both.
3.  Enter the name of your menu. This will appear as the top node in the Launcher.
4.  Click “Show in Launcher”.
5.  For each tool to be added, click “Add Tool”. (You can also click “Add SubMenu” to organize your tools into sub-menus, as shown in the image above.)

![](Images/Thor_Launcher_SNAGHTML239a5cb.png)
