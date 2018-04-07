创建新工具
===
_本文档由 xinjie 于 2018-04-07 翻译_

要创建一个新工具，请使用Thor表单第二页上的“创建工具”按钮（**工具定义**）。

 
![](Images\Thor_creating_new_tools_createtoolbutton.png)

这将显示“创建工具”表单，该表单将指导您为新工具选择文件夹和文件名。

Thor在以下文件夹中查找名为 **Thor_Tool _ * .PRG** 的文件：
  
1. CurDir()  
1. 您路径中的所有文件夹
1. **Thor\Tools\MyTools** -- 推荐的个人工具文件夹
1. **Thor\Tools** -- 下载工具的推荐文件夹，例如带有IDE Tools或Thor Repository的PEM Editor 7
 
<!--- TBL: Previous: Links to PEME and Thor repository, wrong in old source --->
  
显然，可能会有名称冲突，因为在不同的文件夹中可能有相同名称的PRG。 Thor通过识别遇到的第一个此类工具来解决这些冲突，忽略任何具有相同名称的以下工具。

事实证明，这种设计提供了实质性的好处。 如果该文件夹（**Thor\Tools**）仅用于下载的工具，那么您的个人工具将不会有与其冲突的危险。 除此之外，您可以选择任何下载的工具，尤其是Thor Repository中的任何工具，根据您的口味对其进行调整，并将其保存在**Thor\Tools\MyTools**中。 这些个人副本将始终优先于任何下载的副本。

“创建工具”窗体为您提供了一个组合框，其中显示了Thor将搜索的所有文件夹（按照它们将被搜索的顺序）以及一个文本框，您可以在其中输入要创建的工具的名称。 下面的列表框显示了该文件夹中所有工具的名称，这些工具的名称可能与您创建的名称相冲突。

![](Images/Thor_creating_new_tools_createtoolform1.png)

这将创建PRG并打开它供您编辑。

正如你在下面看到的，新PRG的“标题”是一组40行左右的代码，让工具可以告诉Thor自己。 

![](Images/Thor_creating_new_tools_sampletoolheader.png) 

该工具的实际代码将放置在清单最后的Procedure **ToolCode** 中。

与往常一样，浏览其他工具（您也可以在Thor表单中执行某些操作）以查看这些属性通常如何使用的示例。

最后的建议：为所有个人工具分配**.Source** 的相同值，以便Thor表单将它们组合在一起。

### 参看：

* [浏览工具列表](Thor_browsing_tools.md)  
* [将热键分配给工具](Thor_assign_tool_hot_keys.md)
* [编辑现有工具](Thor_editing_existing_tools.md) 
* [制作工具的工具](Thor_tools_making_tools.md)
