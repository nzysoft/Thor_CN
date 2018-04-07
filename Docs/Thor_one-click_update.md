一键更新 Thor
===
_本文档由 xinjie 于 2018-04-07 翻译_

使用IDE Tools和其他工具更新[Thor](Thor.md)，[Thor Repository](Thor_repository.md)，[PEM Editor 7](https://github.com/VFPX/PEMEditor) 因为[VFPX]（https://github.com/VFPX）中的所有项目都可以通过Thor菜单上的单个菜单（在FoxPro系统菜单中）使用。 菜单'检查更新'可检查是否有更新可用于任何这些应用程序; 如果找到，它们会被自动下载并安装。

![](Images/Thor_One-Cick_Update_image_4.png)

“检查更新”从确定是否有更新版本的Thor本身开始。 如果是这样，它会显示如下消息：
“Check for Updates” begins by determining whether there is a newer version of Thor itself. If so, it displays a message like the following:

![](Images/Thor_One-Cick_Update_SNAGHTML17f44631.png)

It then proceeds to check for updates to all of the other available applications and tools, as shown below.  Note that [PEM Editor](https://github.com/VFPX/PEMEditor) and the [Thor Repository](Thor_repository.md) are essential parts of [Thor](Thor.md); you should download them immediately and update them any time that they show on the “Check for Updates” form. The items in green on the form are those that have been updated recently

![](Images/Thor_One-Cick_Update_SNAGHTML1f1f7c63.png)

The projects listed in Check For Updates are listed alphabetically within these five groups:

1.  Projects that you have already downloaded for which there is a more current version. (see #4)
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
