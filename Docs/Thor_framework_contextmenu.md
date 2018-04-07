ContextMenu 对象
===
_本文档由 xinjie 于 2018-04-07 翻译_

该对象提供了一个用于创建弹出式上下文菜单的简单机制。

它可以从这一行代码中获得：

    loContextMenu = Execscript (_Screen.cThorDispatcher, 'class= Contextmenu')

使用.AddMenuItem方法添加项目，使用AddSubMenu / EndSubMenu创建子菜单，并使用Activate方法激活菜单。

AddMenuItem参数允许您定义要执行的字符串或可在Activate方法之后处理的关键字/参数对，从而允许将所有处理包含在单个方法中。 看最后一个例子。

这个对象然后可以如下使用：

方法|含义|
---|---
.AddMenuItem(lcPrompt, lcExec, lcStatusBar, lcKeyStroke, lcKeyWord, lxParameters)|lcPrompt. 菜单项的提示
.AddMenuItem parameter|lcExec|String to be executed.  This may be empty, in which case lcKeyword and lxParameters are used.
.AddMenuItem parameter|lcStatusBar|Text to be displayed on the status bar
.AddMenuItem parameter|lcKeyStroke|Keystroke
.AddMenuItem parameter|lcKeyword|Keyword which will be available from the object if this item is chosen (relevant only if lcExec is empty)
.AddMenuItem parameter|lxParameters|Other parameters which will me made available from the object if this item is chosen (relevant only if lcExec is Empty)
.AddMenuItem parameter|Note that a separator bar can be created by calling AddMenuItem with no parameters
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
