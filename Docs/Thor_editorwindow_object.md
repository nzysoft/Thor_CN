Thor EditorWindow 对象
===
_本文档由 xinjie 于 2018-04-07 翻译_

访问和/或修改当前打开的编辑窗口中的文本的所有PEM编辑器的IDE功能都使用** FoxTools.fll **中的函数。

Thor EditorWindow对象可用于构建Thor工具，这些工具还可以访问或修改当前打开的编辑窗口中的文本。 这个对象有两个目的：

1.  它提供了**FoxTools.fll**中最有用功能的包装方法。
2.  当被访问时，它已经确定当前编辑窗口的句柄。 它的所有方法都引用这个句柄，而不需要另外知道或引用句柄。

Thor EditorWindow对象可以从这一行代码中获得：

```foxpro
loEditorWin = Execscript (_Screen.cThorDispatcher, 'class= editorwin from pemeditor')
```


一些进一步说明：

1.  字符位置和行数从0开始，而不是1 。 （小心）
2.  虽然只有安装了PEM编辑器才能使用此对象，但PEM编辑器表单本身无需打开即可使用。
3.  Thor Repository中这个工具有很多用途。

### 窗口操作：句柄，大小，位置，标题等

方法(参数)|描述
---|---
CloseWindow()|关闭当前窗口
FindLastWindow()|返回最近使用的窗口的句柄，它是来自Form或Class Designer的PRG或方法代码。
FindWindow() |保存当前活动窗口的句柄，并返回其窗口类型：
FindWindow() return value x|x=0: 命令窗口，表单和类设计器，其他FoxPro窗口|
FindWindow() return value x|x=1: 程序文件 (MODIFY COMMAND)|
FindWindow() return value x|x=2: 文本编辑器 (MODIFY FILE)|
FindWindow() return value x|x=8: 菜单代码编辑窗口|
FindWindow() return value x|x=10: 类或表单设计器的方法代码编辑窗口
FindWindow() return value x|x=12: DBC 的存储过程 (MODIFY PROCEDURE)
FindWindow() return value x|x=-1: 无
GetHeight()|返回编辑窗口的高度，以像素为单位。
GetLeft()|返回编辑窗口的左侧位置，以像素为单位。
GetOpenWindows()|返回最近最先使用的所有打开窗口句柄的集合。
GetTitle()|返回当前窗口的标题
GetTop()|返回编辑窗口的顶部位置，以像素为单位。
GetWidth()|返回编辑窗口的宽度，以像素为单位。
GetWindowHandle()|返回当前编辑窗口的句柄
MoveWindow (tnLeft, tnTop)|将编辑窗口移动到位置{tnLeft}，{tnTop}。 两者都以像素为单位。
ResizeWindow (tnWidth, tnHeight)|{tHeight}将编辑窗口的大小调整为{tnWidth}。 两者都以像素为单位。
SelectWindow (tnHandle)|选择句柄{tnhandle}的窗口
SetHandle (tnHandle)|设置句柄（用于指示大多数这些命令中引用的窗口）
SetTitle (tcNewTitle)|将编辑窗口的标题设置为{tcNewTitle}


### Text manipulation

Methods (Parameters)|Description|
---|---
Copy()|Copies the currently highlighted text into the clipboard
Cut()|Cuts the currently highlighted text
EnsureVisible (tnPosition, tlScroll)|Ensures that the character at position {tnPosition} is visible in the editing window. If {tlScroll} is true, it is brought to the mid-point of the editing window
GetCharacter (tnPosition)|Returns the character at position {tnPosition}
GetEnvironment {tnIndex}|Returns a single environment setting. {tnIndex} takes values from 1 to 25\. See _EdGetEnv in the help for FoxTools for a description of all the settings. Frequently used values are:
GetEnvironment {tnIndex} Return value x|x=2: File Size
GetEnvironment {tnIndex} Return value x|x=17: Selection start
GetEnvironment {tnIndex} Return value x|x=18x: Select end
GetEnvironment {tnIndex} Return value x|x=25: Window Type
GetFileSize()|Returns the file size
GetLineNumber (tnSelStart)|Returns the line number for the character at position {tnPosition}
GetLineStart (tnSelStart, tnLineOffset)|Determines the line number for the character at position {tnPosition} and returns the position for the character at the beginning of that line. If {tnLineOffset} is supplied, it first offsets the line number by that amount. Thus .GetLineStart (tnSelStart, 1) gives the start position of the next line after the line for {tnSelStart}
GetSelEnd()|Returns the position for the end of the currently highlighted text
GetSelStart()|Returns the position for the start of the currently highlighted text
GetString (tnSelStart, tnSelEnd)|Returns the string of characters from position {tnSelStart} through {tnSelEnd}
Paste(tcText)|If {tcText} is supplied, pastes it into the editing window, leaving _ClipText unchanged.  Otherwise, pastes the contents of the clipboard into the editing window.
Select (tnSelStart, tnSelEnd)|Selects (highlights) the string of characters from position {tnSelStart} through {tnSelEnd}
SetInsertionPoint (tnPosition)|Sets the insertion point to {tnPosition}
