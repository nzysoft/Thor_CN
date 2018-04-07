一键更新 Thor
===
_本文档由 xinjie 于 2018-04-07 翻译_

使用IDE Tools和其他工具更新[Thor](Thor.md)，[Thor Repository](Thor_repository.md)，[PEM Editor 7](https://github.com/VFPX/PEMEditor) 因为[VFPX](https://github.com/VFPX)中的所有项目都可以通过Thor菜单上的单个菜单（在FoxPro系统菜单中）使用。 菜单'检查更新'可检查是否有更新可用于任何这些应用程序; 如果找到，它们会被自动下载并安装。

![](Images/Thor_One-Cick_Update_image_4.png)

“检查更新”从确定是否有更新版本的Thor开始。 如果存在，它会显示如下消息：

![](Images/Thor_One-Cick_Update_SNAGHTML17f44631.png)

然后继续检查所有其他可用应用程序和工具的更新，如下所示。 请注意[PEM编辑器](https://github.com/VFPX/PEMEditor)和[Thor Repository](Thor_repository.md)是[Thor](Thor.md)的重要组成部分; 您应该立即下载它们，并随时在“检查更新”窗体上显示更新它们。 表格中绿色的项目是最近更新的项目

![](Images/Thor_One-Cick_Update_SNAGHTML1f1f7c63.png)

检查更新中列出的项目在五个分组中按字母顺序列出：

1.  您已下载的项目有更新的版本。(see #4)
2.  Projects that you have not downloaded which have had updates in the last three months
3.  All other projects that you have not downloaded
4.  Projects that you have already downloaded and which are current
5.  All projects marked as “never update”. This takes precedence over any of the other categories.

### Where are these updates installed?

If you already have versions of [Thor](Thor.md), [PEM Editor](https://github.com/VFPX/PEMEditor), or [GoFish](https://github.com/mattslay/GoFish) installed, this update process will replace the installed versions with the newer versions.  You will ***not*** lose any work you had already done in the folders for these already installed tools.

If you did ***not*** have prior versions installed, then the update process will install them in a subfolder of the Thor folder (Thor\Tools\Apps).

### Important Note

The applications that are automatically downloaded as part of ‘Checking for Updates’ are not only downloaded, but they are also installed and ready to run.  There is nothing else you need to do in order to start using them.

### Recommendations

Thor is started by running RunThor.PRG, a file that is created as part of the installation process. This file can be copied into any other folder you wish (such as in your path), since it contains an explicit reference to the folder where you installed Thor.

1.  Since this process works best if run right after launching FoxPro, before you begin working and BEFORE opening PEM Editor, and with no other FoxPro sessions running, we recommend that you call RunThor as part of your IDE setup
2.  As Thor continues to evolved there are updates from time to time. We recommend calling RunThor with a parameter of 7 so that “Check For Updates” is run automatically every week.
