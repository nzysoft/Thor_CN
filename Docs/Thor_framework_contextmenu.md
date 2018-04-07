ContextMenu 对象
===
_本文档由 xinjie 于 2018-04-07 翻译_

该对象提供了一个用于创建弹出式上下文菜单的简单机制。

它可以从这一行代码中获得：

    loContextMenu = Execscript (_Screen.cThorDispatcher, 'class= Contextmenu')

使用.AddMenuItem方法添加项目，使用AddSubMenu / EndSubMenu创建子菜单，并使用Activate方法激活菜单。

AddMenuItem参数允许您定义要执行的字符串或可在Activate方法之后处理的关键字/参数对，从而允许将所有处理包含在单个方法中。 看最后一个例子。

这个对象然后可以如下使用：

方法|参数|含义
---|---|---
.AddMenuItem(lcPrompt, lcExec, lcStatusBar, lcKeyStroke, lcKeyWord, lxParameters)|lcPrompt|菜单项的提示
.AddMenuItem parameter|lcExec|要执行的字符串。 这可能是空的，在这种情况下，使用lcKeyword和lxParameters。
.AddMenuItem parameter|lcStatusBar|文本显示在状态栏上
.AddMenuItem parameter|lcKeyStroke|按键
.AddMenuItem parameter|lcKeyword|如果选择了该项目，将从对象中提供关键字（仅当lcExec为空时才相关）
.AddMenuItem parameter|lxParameters|如果选择此项目，则可以从对象中提供的其他参数（仅当lcExec为空时才相关）
.AddMenuItem parameter||请注意，可以通过调用不带参数的AddMenuItem来创建分隔栏
.AddSubMenu(lcPrompt)|Begins definition of a submenu.  All calls to AddMenuItem until the call to the closing EndSubMenu will be in this submenu.  May itself contain a submenu
.EndSubMenu|Marks the end of a submenu.
.Activate|Activates the pop-up menu.  If the item selected had an empty value for lcExec, returns an integer indicating the item selected.  In this case, loContextMenu.Keyword returns the value for lcKeyword for the selected item, and similarly for loContextMenu.Parameters


### \* Sample 1: simple menu, two choices
```foxpro
loContextMenu = Execscript (_Screen.cThorDispatcher, 'class= Contextmenu')  
With loContextMenu  
    .AddMenuItem ('Item 1', [MessageBox('Item 1')])  
    .AddMenuItem ('Item 2', [MessageBox('Item 2')])  
    .Activate()  
Endwith
```
 
### \* Sample 2: sub-menus
 
```foxpro
loContextMenu = Execscript (_Screen.cThorDispatcher, 'class= Contextmenu')  
With loContextMenu  
    .AddMenuItem ('Item 1', [MessageBox('Item 1')])  
    .AddMenuItem ('Item 2', [MessageBox('Item 2')])
 
    .AddSubMenu ('SubMenu 1')  
    .AddMenuItem ('Item 1-1', [MessageBox('Item 1-1')])  
    .AddMenuItem ('Item 1-2', [MessageBox('Item 1-2')])  
    .EndSubMenu()

    .AddSubMenu ('SubMenu 2')  
    .AddMenuItem ('Item 2-1', [MessageBox('Item 2-1')])  
    .AddMenuItem ('Item 2-2', [MessageBox('Item 2-2')])  
    .EndSubMenu()

    .Activate()  
Endwith
```

### \* Sample 3:  Instead of passing something to execute for each menu item, a keyword is associated with each item.  If .Activate() returns .T., the keyword for the selected item is available to be used in the following code.

```foxpro
loContextMenu = Execscript (_Screen.cThorDispatcher, 'class= Contextmenu')  
With loContextMenu  
    .AddMenuItem ('Item 1', , , , 'This is the first item')  
    .AddMenuItem ('Item 2', , , , 'This is the second item')  
    If .Activate()  
        lcKeyword = .KeyWord  
        Messagebox (lcKeyword)  
    Endif  
Endwith
```
