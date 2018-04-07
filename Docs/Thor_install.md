首次和手动安装Thor
===
_本文档由 xinjie 于 2018-04-07 翻译_

注意：从Thor版本1.1开始，Thor的更新可以通过使用[Thor一键更新](Thor_one-click_update.md)来获得。 此页面适用于Thor的初始安装，或者如果One-Click Update不起作用。
### **选择一个安装文件夹**

THOR 必须安装在永久文件夹中; 它会创建一些必须始终可用的文件夹和表格。 建议将其安装在您经常备份的文件夹中。

选择Thor的安装文件夹有两种不同的策略：

1.  将它安装在一个通用文件夹中（例如在你的路径中），以便Thor.App可以被轻松访问
2.  将其安装在自己的单独文件夹中，然后使用RunThor.PRG（请参阅下文）访问Thor.App

[**点击这里下载当前版本的Thor**](https://github.com/VFPX/Thor/archive/master.zip) 



### **安装 Thor**

将Zip文件下载到安装文件夹后，请执行以下操作： 


    Clear All
    Do Thor.APP

这会

*   在安装文件夹中创建一个名为Thor的文件夹
*   在该文件夹中创建一些子文件夹和文件
*   更新VFP系统菜单（通过为Thor添加菜单实现）
*   运行[“检查更新”](Thor_one-click_update.md)，以便它可以下载并安装[PEM编辑器](https://github.com/VFPX/PEMEditor)和[Thor Repository](Thor_repository.md)，这是Thor的必要组件
*   然后打开Thor表单。

请注意，安装不会以任何其他方式影响VFP（它不会设置任何变量，修改foxcode等），并且可以根据需要安全地重复多次。
