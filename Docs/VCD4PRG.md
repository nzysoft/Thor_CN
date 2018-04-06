#### Version 0.9 – 9.3, 201

### 目的

此工具的目的在于使用可视化的类设计器来编辑一个基于PRG的自定义类成为可能（仅限于不包含子对象的类）。

### 优点

拥有可视化类设计器(继承、智能感应以及同时打开多个多个代码窗口等) 和 Thor 的 IDE 工具 (GoToDefinition, ExtractToMethod, 等)的所有优点

### 用法

VCD4PRG 可以通过 Thor 菜单访问，就像下图这样。最好，你为它指定一个快捷键。

![](Images/VCD4PRG_image_2.png)

### **如何使用 – 一个示例**

有几种不同的方式可以使 VCD4PRG 针对基于 PRG 格式的类工作。这里是最简单的步骤：

1.  使用 ‘Modify Command’ 打开 PRG 文件，并将光标至于类定义内部的任意位置。
2.  如上图所示使用工具。这将转换PRG类为一个临时的VCX类。
3.  根据需要对类进行一些修改(增加属性和方法等)
4.  在当前窗口为临时 VCX 或者它的任意方法窗口使，再次使用该工具将类定义回写到PRG类的窗口。

### 如何处理不可调和的分歧

在PRG类和VCX类之间存在清晰的界限，所以当转换PRG类为VCX时，必须对可用于PRG类但是不能直接用于VCX的部分予以调整。因为VCX必须包含基于PRG的整个类定义，所以需要一些技巧，这是你必须要清楚的地方：

*   在PRG类中，针对属性描述没有统一的标准。然而，一个常见的用法是，在属性的前一行来描述属性或者在和属性定义的同一行用注释进行描述(例如 Rick Strahl 的 West-Wind Help 生成器中那样的处理)。这些属性定义在此工具下是可用的。(为了允许很长的属性描述，属性定义的“前一行”，可以是带有续行符号的多行描述)。在VCX中的属性描述将按照此格式予以导出。
*   在PRG类中，针对方法的描述具有同样的问题。然而，一个常见的用法是，在紧挨着 PROCEDURE 这一行的前一行对方法予以描述（同样，例如 Rick Strahl 的 West-Wind Help 生成器中那样的处理）。本工具适用这种描述方式，注意，描述方法的注释中不能存在空行且和方法定义之间不能存在空行。由于在VCX中的属性描述有254个字符的限制，所以，当从PRG转换为VCX时，PRG中的方法描述将被置于方法代码的开始部分。当回写到PRG时，它位于方法的内部而不是外部。
*   在PRG类中，允许多条 #Include 语句，同时，#Define 语句和注释，允许存在于类定义中。但在VCX中，并没有对应的结构存在。所有这些行（除上述注释行外）在回写到PRG中时，都会放置在 DEFINE CLASS 语句之后。注意，这将包括在 PROCEDURES 和 ENDPROC 之间的注释。
*   PRG类可以将值分配给数组，在VCX中不存在等价的方式。这些任务将在VCX类的INIT中予以完成。
*   PRG类允许在过程定义的同一行列出 LParameters ：PROCEDURE SomeProcedure(参数列表)。这些参数将被移动到方法的 LParaments 列表中。

### Handling of non-visual classes

There are four classes which cannot be represented in VCXs (Session, Column, Header, and Exception).  These classes can still be edited using VCD4PRG, as the temporary VCX that they are exported into is based on the custom class.  When posted back to the PRG, they are re-created using the base class on which they were originally defined.

### Alternate methods for starting VCD4PRG

*   #### From a PRG opened in a code window:

    *   If the cursor is within a procedure within a class definition, that class will be used and that procedure will be opened
    *   Else, if the cursor is within a class definition, but not within a procedure, the class will be opened.
    *   Else, a pop-up form will allow selection of a class from the code window.
*   #### If the current window is any other window that a PRG, Class Designer, or method window:

    *   GetFile(‘PRG’) is used to select a file containing PRG-base class(es), and then a pop-up form will allow selection of a class from the PRG file.  Note that the PRG file itself is _not_ opened.
*   #### Opening programmatically:

    *   The following line of code can be used to open a class programmatically, rather than by hot key.  I

```foxpro
Result = ExecScript (_screen.cThorDispatcher, 'THOR_TOOL_REPOSITORY_VCD4PRG', lcSomePRGFileName)
```


*   Note that if the named PRG has any classes, you will be prompted for the class to open; if none, the file will be opened with Modify Command. Thus, this line can be inserted into the QueryModifyFile event of a Project Hook when opening a PRG, and the only change in behavior will occur if there are classes in the file.

### Revision History

Version 0.9 – Sept. 3, 2011

*   Text between #IF / #ENDIF statements left untouched (treated like comments)
*   Backup file *.BAK created when PRG file is updated.
*   Descriptions in VCX for methods are (and should be) ignored.
*   Recognizes parent classes from VCXs
*   Generates appropriate error message if parent class not found

Version 0.04 – Sept. 1, 2011

*   Resolution for problem of finding parent class from the DEFINE CLASS statement
*   Handling for comments, #Include statements, #Define statements that are not with Procedure blocks
*   Implementation of a structure for property descriptions, based on Rick Strahl’s WestWind

Version 0.02 – Aug 27, 2011

*   When saving, all VCX/SCX code windows are closed (saved) first, to make sure that no work is lost. Unfortunately, it is not possible to distinguish between VCX and SCX code windows, nor which VCX or SCX they belong to, so in the case where there are multiple VCXs or SCXs open, ALL their code windows are closed.
*   Classes which cannot be defined in VCXs (Session, Column, and Header') can be edited; they are made to appear as ‘Custom’ classes, meaning that there may be some native PEMs which are handled wrong (but this should be minor). 
*   When writing back to a file rather than a code window, MessageBox is used to notify that posting was complete.  An appropriate message will be displayed should posting should fail for any reason (such as if the file has subsequently been opened for editing by Modify Command)
