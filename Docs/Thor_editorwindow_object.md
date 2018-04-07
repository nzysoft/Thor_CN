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

1.  字符位置和行数从0开始，而不是1 \。 （即小心）
2.  While this object only is available if PEM Editor has been installed, the PEM Editor form itself need not be open for it to work.
3.  There are numerous uses of this object in the tools in the Thor Repository.

### Window manipulation: handles, size, position, title, etc.

Methods (Parameters)|Description
---|---
CloseWindow()|Close the current window
FindLastWindow()|Returns the handle of the most recently used window which is either of a PRG or method code from the Form or Class Designer.
FindWindow() |Saves the handle for the currently active window, and returns its window type:
FindWindow() return value x|x=0: Command Window, Form and Class Designers, other FoxPro windows|
FindWindow() return value x|x=1: Program file (MODIFY COMMAND)|
FindWindow() return value x|x=2: Text Editor (MODIFY FILE)|
FindWindow() return value x|x=8: Menu code edit window|
FindWindow() return value x|x=10: Method code edit window of the Class or Form Designer
FindWindow() return value x|x=12: Stored procedure in a DBC (MODIFY PROCEDURE)
FindWindow() return value x|x=-1: None
GetHeight()|Returns the height of the editing window, in pixels.
GetLeft()|Returns the left position of the editing window, in pixels.
GetOpenWindows()|Returns a collection of the handles of all open windows, most recently used first.
GetTitle()|Returns the title for the current window
GetTop()|Returns the top position of the editing window, in pixels.
GetWidth()|Returns the width of the editing window, in pixels.
GetWindowHandle()|Returns the handle of the current editing window
MoveWindow (tnLeft, tnTop)|Moves the editing window to position {tnLeft}, {tnTop}. Both are in pixels.
ResizeWindow (tnWidth, tnHeight)|Resizes the editing window to {tnWidth} by {tHeight}. Both are in pixels.
SelectWindow (tnHandle)|Selects (brings to the foreground) window with handle {tnhandle}
SetHandle (tnHandle)|Sets the handle (used to indicate the window being referenced in most of these commands)
SetTitle (tcNewTitle)|Sets the title for the editing window to {tcNewTitle}


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
