运行 Thor
===
_本文档由 xinjie 于 2018-04-07 翻译_

**Thor** 只需在每个IDE会话中启动一次，因为它能够对Clear All免疫。

从11月17日发布的版本1.10.019开始，启动Thor的推荐方法有所改变。此更改允许在当天的第一个IDE会话中自动调用“检查更新”，间隔时间可以选择。

有一个名为RunThor.PRG的PRG，它是在Thor子文件夹中创建的，可以复制到任何地方（例如路径中的文件夹）。 它被这样调用：

    Do RunThor with tnDays, tlInstallAllUpdates

在任何时候调用启动PEMEditor之前，你需要执行它，以便在运行其他程序之前下载任何可用更新。 请记住，如果安装更新，“检查更新”会执行“Clear All”。

参数tnDays是调用“检查更新”之间的间隔天数。 值为1表示它将在您每天的第一个IDE会话中执行; 7意味着每周一次。

参数tlInstallAllUpdates将被设置为.T。 如果您希望更新继续进行而不打扰问您是否要安装它们。

通过直接调用Thor.App来启动Thor的旧机制仍然有效，但无法调用“检查更新”进程。

    Do Thor.APP

**注意**: 这里的区别在于Thor.APP不能从其安装文件夹移动（如果是这样，它必须重新安装）。 RunThor.PRG **可以**被移动，因为它包含对安装Thor.APP的文件夹的明确引用。

Thor.App也可以用一个参数来调用各种相关的任务：

参数|描述
---|---
(none)|运行Thor：创建系统菜单和子菜单，弹出菜单，并将热键分配给工具和弹出式菜单。
‘Edit’|打开Thor表单
‘Help’|打开Thor帮助页面 … [Thor 帮助](Thor_help.md)
‘Clear HotKeys’|删除所有热键分配。
‘Install’|安装当前版本的'Thor'。
‘Run’|与无参数相同（不建议使用）
