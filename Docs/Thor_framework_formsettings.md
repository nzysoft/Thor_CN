FormSettings 对象
===
_本文档由 xinjie 于 2018-04-07 翻译_

此对象允许表单保存其设置（大小，位置和任何其他表单属性），并将表单与鼠标或光标位置对齐。

FormSettings对象可以从这一行代码中获得，它通常放置在表单的Init方法中：

```loSettings = Execscript (_Screen.cThorDispatcher, 'class= ThorFormSettings', lxFormID)```

lxFormID也是

*   ThisForm (但仅限于在SCX内部调用)
*   或用于保存设置的文件名（例如'GoToMethod.Settings'）

为了稍后使用此对象（表单关闭时），它必须保存为表单属性：

    Thisform.AddProperty(‘oSettings’, loSettings)


### 这个对象然后可以如下使用：

方法|含义
---|---
.Restore(ThisForm)|Restores the saved settings for Top, Left, Height, and Width
.Restore(ThisForm, ‘propertylist’)|Restores the values for all properties named in {propertylist}, which is a character string of existing property names, delimited with commas.
.AlignToCursor(ThisForm, llAlignToMouse, tnVerticalAdjustment, tnHorizontalAdjustment)|Aligns the form (Top and Left properties) to the cursor position in the current edit window, if possible.  If the current window is not a edit window or llAlignToMouse = .T. , the form is aligned to the cursor position instead.
.Save(ThisForm)|Saves values of properties from the form so that they may be restored in the next session.  The properties that are saved are all those that had been restored with all calls to .Restore.  This call is usually made in the Form’s Destroy event


### Sample usage:

In the form’s ‘**Init**’ event:

#### [Click here for ThorFormSettings home page](Thor_framework_formsettings.md)


    loSettings) = ExecScript(_Screen.cThorDispatcher, "Class= ThorFormSettings", lxFormID)
    Thisform.AddProperty ('oSettings', loSettings)
    loSettings.Restore (Thisform) && Gets top, left, height, width
    loSettings.Restore (Thisform, 'nObjectType, cSearchString') && and two other properties

Where lxFormID is either

*   ThisForm (but only if called within an SCX)
*   or the name of the file to be used for saving settings (such as ‘GoToMethod.Settings’)

And in the form’s ‘**Destroy’** event:

    This.oSettings.Save (This)
    This.oSettings = .Null.```
