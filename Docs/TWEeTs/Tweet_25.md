Thor TWEeT #25: FoxBin2PRG的五个新Thor工具
===

Thor Repository中有五个与FoxBin2PRG一起工作的新工具。

其中四种工具提供了将项目中的二进制文件（“X”文件）转换为相应的文本文件或将文本文件转换为二进制文件的其他方法的不同方法：

*   _[Convert all binary files to text files](#T1)_
*   _[Convert files with changed internal timestamps](#T2)_
*   _[Convert most recently changed binary files](#T3)_
*   _[Generate binary files from all text files](#T4)_

这些工具中的每一个都与项目相关，因为它们使用活动项目（如果有的话），或者提示要使用的项目名称。

另一个工具在资源管理器中创建“SendTo”快捷方式，以便在Explorer中工作时可以转换为文本文件。

*   _[Create/Edit FoxBin2Prg "SendTo" shortcuts](#T5)_

所有这些工具都假定您已经下载并安装了FoxBin2PRG。 如果您使用Thor的Check For Updates进行下载，它会自动运行，因为他们知道在哪里查找它。 否则，您可以修改[Plug-In](../ Thor_add_plugins.md)“Get FoxBin2PRG Folder”以指向您安装FoxBin2PRG的文件夹。
![](Images/Tweet25a.png)

感谢Mike Potjer编写了其中三种工具，这激发了另外两种基于文件和内部时间戳的创作。

### <a name="T1"></a>Convert all binary files to text files

The tool _Convert all binary files to text files_ 将VFP .PJX文件和项目中的所有二进制文件转换为FoxBin2Prg文本格式。 此转换通过FoxBin2Prg.EXE完成，因此所有FoxBin2Prg配置设置都将得到遵守。

对于大型项目，这可能需要一段时间，所以有一个进度条来证明它是清醒的。

您也可以以编程方式运行此工具。

```foxpro
ExecScript(_Screen.cThorDispatcher, ‘Thor_Tool_Repository_FoxBin2PrgConvertProjectToText’)
```

### <a name="T2"></a>Convert files with changed internal timestamps

The tool _Convert files with changed internal timestamps_ 转换二进制文件行内部时间戳发生更改的所有二进制文件。 当您使用任何设计器（表单，类，报表等）或使用GoFish进行替换时，这些时间戳会发生变化，所以效果是转换仅针对自从发生更改后的少量文件 上次运行此工具。

通过在每个文本文件上设置时间戳以匹配相应二进制文件中任何行上的最新时间戳，可以达到此效果。

对于大多数文件未被更改的项目，此工具可以比将所有二进制文件转换为文本文件快得多。 （例如，对于我最大的项目，运行 _Convert all binary files to text files_ 大约需要40秒，而当我仅更改少量文件时，只需2或3秒即可运行此工具。）

但是，请注意，如果您通过HackCX或手动破解文件，则可能不会自动创建文本文件，因为二进制文件行中的内部时间戳不会发生更改。 有很多方法可以解决这个问题

*   Use tool _Convert most recently changed binary files_ (below).
*   在其Designer中打开二进制文件，稍作修改并保存。
*   手动擦除文本文件。

您也可以以编程方式运行此工具。

```foxpro
ExecScript(_Screen.cThorDispatcher, ‘Thor_Tool_Repository_OptimizedFoxBin2PrgConvertProjectToText’)
```

### <a name="T3"></a>Convert most recently changed binary files

The tool _Convert most recently changed binary files_ 转换最近更改的外部时间戳（例如您在资源管理器中看到的）。 您可以指定“最近更改”的定义，以基于更改的数字文件或更改后的天数为基础：

![](Images/Tweet25b.png)

此工具最初是作为解决上述问题的解决方案而创建的，其中可能不会为已被黑客入侵的二进制文件重新创建文本文件，但没有特别原因，这是它的唯一用途。

您也可以以编程方式运行此工具。

```foxpro
ExecScript(_Screen.cThorDispatcher, ‘Thor_Tool_Repository_ConvertMostRecentToText’)
```

### <a name="T4"></a>Generate binary files from all text files

The tool _Generate binary files from all text files_ 在另一个方向工作，从文本文件创建二进制文件。

这个工具目前假设您使用PJ2扩展名作为您的项目文本文件，但这很容易通过工具代码中的常量进行更改。 也许将来可以通过增强工具来获得选项设置的扩展或读取FoxBin2Prg配置设置。 所有其他扩展都根据FoxBin2Prg配置设置进行处理。

由于VFP将VCX文件保存在内存中的方式对此工具有限制，因此它会尝试执行“全部清除”，这只有在从菜单或通过热键调用时才可能。 该工具仍然可以从工具启动器或Thor工具栏运行，但会收到警告，并且在某些情况下，FoxBin2Prg可能会给您一条错误消息，并且不会重新生成.VCX文件。

您也可以以编程方式运行此工具。

```foxpro
ExecScript(_Screen.cThorDispatcher, ‘Thor_Tool_Repository_FoxBin2PrgConvertTextToProject’)
```

### <a name="T5"></a>Create/Edit FoxBin2Prg "SendTo" shortcuts

The tool _Create/Edit FoxBin2Prg "SendTo" shortcuts_ 会显示一个对话框，便于设置或删除Windows FoxBin2Prg附带的VB脚本的“发送至”快捷方式。 如果您已经在标准用户“发送至”文件夹中手动创建了快捷方式，该工具应找到它们并允许您编辑它们。

![](Images/Tweet25c.png)

1.  快捷方式的默认名称显示在文本框中，允许您直接在此表单中编辑名称。 当您完成编辑名称时，将TAB移出文本框，然后再进行编辑
2.  单击“创建”按钮以添加快捷方式（如果尚不存在）或
3.  单击保存按钮更新已存在的快捷方式的名称。

![](Images/Tweet25d.png)

点击创建按钮后，

1.  标题将更改为“编辑”，允许您编辑快捷方式的任何其他设置
2.  此快捷方式现在将出现在Windows资源管理器的“发送到”上下文菜单下。

编辑按钮打开Windows文件属性对话框，您可以在其中编辑快捷方式的任何设置。

![](Images/Tweet25e.png)

删除按钮只是删除快捷方式，将其移动到回收站。 Thor_Tool_FoxBin2PrgCreateShortcuts.PRG中有一个非可视类，它执行此工具的所有实际工作，因此如果要使用不同界面创建自己的工具版本，或者根本没有界面，它应该非常容易 去做。 .PRG中有一些代码已注释，它演示了如何以编程方式创建所有快捷方式。

参看 [所有Thor TWEeTs的历史](../TWEeTs.md) 和 [Thor 社区](https://groups.google.com/forum/?fromgroups#%21forum/FoxProThor).
