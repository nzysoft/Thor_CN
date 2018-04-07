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

After you have downloaded the Zip file into its installation folder, do the following:  


    Clear All
    Do Thor.APP

This will

*   create a folder named Thor in the installation folder
*   create some sub-folders and files in that folder
*   update the VFP system menu (by adding a menu pad for Thor)
*   run ["Check for Updates"](Thor_one-click_update.md) so that you it can download and install [PEM Editor](https://github.com/VFPX/PEMEditor) and [The Thor Repository](Thor_repository.md), which are necessary components for Thor
*   and open the Thor form.

Note the installation does not affect VFP in any other way (it does not SET any variables, modify foxcode, etc.) and may safely be repeated as many times as desired.
