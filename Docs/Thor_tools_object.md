Thor 工具对象
===

此对象是为PEM编辑器创建的各种工具的集合，它也适用于PEM编辑器外的应用程序。

Thor工具对象可以从这一行代码中获得：

    loTools = Execscript (_Screen.cThorDispatcher, 'class= tools from pemeditor')

请注意，这些工具的工作时并不需要打开PEM编辑器。

方法 (参数)|描述
---|---
AddMRUFile (tcFileName, tcClassName)|将文件添加到其相应的MRU列表（在FoxPro资源文件中）。 如果文件是类库，但没有提供类名称，则将该文件添加到类库的MRU列表（对于PEM编辑器是唯一的）
BeautifyCode(lcCode)|将BeautifyX样式应用于包含正常代码文本的字符串。 请注意，它不会在此字符串中创建局部变量; 请参阅下面的CreateLocals
BeautifySelectStatement (lcSelectCode)|将BeautifyX样式应用于包含单个SQL Select，Update或Delete语句的字符串，以执行以下操作：
BeautifySelectStatement (cont.)|* 插入CR，以便每个字段都在一个新行中
BeautifySelectStatement (cont.)|* 插入CR，以便主要关键字在新行中
BeautifySelectStatement (cont.)|* 对子查询应用类似的格式，在它们的SELECT语句下为它们对齐新行
CloseForms()|如果 PEM Editor 和 树形文档查看器 打开的话，关闭它们
CreateLocals(lcSelectCode)|在包含正常代码文本的字符串中创建LOCAL语句
CreateNewPEM(tcType, tcName, txValue)|创建一个新的属性或者方法： 
CreateNewPEM (cont.)|属性:tcType = 'P', 方法：tcType = 'M'  
CreateNewPEM (cont.)|新的PEM：tcName = Name (_Memberdata 属性值将被更新)  
CreateNewPEM (cont.)|txValue = Value (for properties) or method code (for methods)
DiskFileName(tcFileName)|Returns the file name as it is stored on disk (that is, with current upper/lower case).
EditMethod(toObject, tcMethodName)|Opens a method (or event) for editing. {toObject} may be
EditMethod (cont.)|* an object reference,
EditMethod (cont.)|* .T. for the current form or class
EditMethod (cont.)|* empty for the current object.
EditSourceX(tcFileName, tcClass, tcMethodName, tnStartRange, tnEndRange)|Opens any file for editing (as **EditSource** does), with additional capabilities:
EditSourceX (cont.)|* The file is added to its appropriate MRU library.
EditSourceX (cont.)|* The file is opened with the correct case for the file name, so that when it is saved the case for the file name will not be changed.
EditSourceX (cont.)|* If the file is a class library, and no class name is supplied, the class browser is opened.
EditSourceX (cont.)|* You will be asked whether you want to check out the file from Source Code Control (if you use SCC and you have marked the appropriate item in the Preferences file.)
FindObjects (tcSearchText)|Finds all objects matching the search criteria in {tcSearchText}. The search criteria are the same as are specified by the 'Find' (binoculars) search button. The result is a collection, where each item in the collection is an object with two properties:
FindObjects (cont.)|1.  Object - a reference to the object
FindObjects (cont.)|2.  FullObjectName - the full path name to the object
FindObjects (cont.)|_For example, **.FindObjects ('Exists ("ControlSource")' )** returns a collection of all objects having a ControlSource._
FindProcedure(tcName)|Finds a PRG named {tcName}, or a procedure or function named {tcName} within a PRG, or a constant named {tcName}, opens the file for editing, and highlights the searched-for name.
GetBeautifyXOptions()|Returns a character result which, when executed with ExecScript, will re-create the current settings used by BeautifyX. Note that this does **not** include settings from native VFP Beautify.
GetClass()|Prompts for class, using IDE Tools ‘Open Class’ dialog; returns object with two properties, ‘Class’ and ‘ClassLib’
GetClassList(tcClass, tcClassLib, tlSearchClassLibs, tlSearchProcs, tlProjectVCXs, tlProjectPRGs, tcFolder, tlSubFolders)|Creates an array of all classes defined in the active project.  The array is the only property of the result object.  The array has three columns:
GetClassList (cont.)|1.  Class name
GetClassList (cont.)|2.  Class library (full path name)
GetClassList (cont.)|3.  Internal timestamp (for VCX classes only)
GetClassList (cont.)|The parameters provide for a number of different searches:
GetClassList (cont.)|*   tcClass – name of class to search for (empty for all)
GetClassList (cont.)|*   tcClassLib – name of VCX or PRG (empty for all)
GetClassList (cont.)|*   tlSearchClassLibs – search Set(‘ClassLibs’)
GetClassList (cont.)|*   tlSearchProcs – search Set(‘Procedures’)
GetClassList (cont.)|*   tlProjectsVCXs – search VCXs in active project
GetClassList (cont.)|*   tlProjectPRGs – search PRGs in active project
GetClassList (cont.)|*   tcFolder – search all files in this folder (unless empty)
GetClassList (cont.)|*   tcSubFolders – search sub-folders of tcFolder
GetCurrentObject(tlTopOfForm)|If (tlTopOfForm) is true, returns the current form/class. Otherwise, returns the currently selected object.
GetFullObjectName(toObject)|Returns the full name path of an object {toObject}
GetPEMList(toObject, tcTypes|Returns a collection of the names of PEMs for an object.
GetPEMList (cont.)|{toObject} may be
GetPEMList (cont.)|*   an object reference
GetPEMList (cont.)|*   .T. for the current form or class
GetPEMList (cont.)|*   empty for the current object.
GetPEMList (cont.)|{tcTypes} may be one or more of
GetPEMList (cont.)|*   'P' (for properties),
GetPEMList (cont.)|*   'E' (for Events),
GetPEMList (cont.)|*   'M' (for Methods)
GetPEMList (cont.)|or, if empty or missing, the collection will contain all PEMs.
GetMRUList (tcName)|Returns a collection of file names in a MRU list. {tcName} may be a file name, a file extension, or the actual MRU-ID (if you know it)
GetThis()|Returns the object that the current method belongs to.
GetVariablesList(tcCodeBlock, tcTypes)|Returns an collection of the names of variables in the code block that are either Parameters (‘P’), Locals (‘L’), or assigned (‘!’).  An empty list for tcTypes returns a list of all variables that are parameters, locals, or assigned. A value of ‘#’ returns an object containing a single array (‘aList’) with two columns, listing all parameters, and local, private and public variables.
SelectObject (toObject)|Selects {toObject} as the current object displayed in the PEM Editor form and in the Properties Window (if possible).
UseHighlightedTable()|SELECTs or USEs the current highlighted file.  
UseHighlightedTable (cont.)|If the alias exists, it SELECTs it.  Otherwise, it looks for {PEME_OpenTable.PRG} and executes it, assuming that it will open the table (if possible)
UseHighlightedTable (cont.)|If there is no highlighted text, uses the current cursor or table.  
UseHighlightedTable (cont.)|An example of {PEME_OpenTable.PRG} can be found in the sub-folder **Dynamic Snippets\Snippet Samples** of the installation folder for PEM Editor. You can activate this by copying it to its parent folder (make any adjustments to it as you need.)
