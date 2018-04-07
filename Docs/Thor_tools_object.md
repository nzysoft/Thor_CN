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
CreateNewPEM (cont.)|txValue = Value (针对属性) 或者方法代码 (针对方法)
DiskFileName(tcFileName)|返回存储在磁盘上的文件名（即，使用当前的大写/小写）。
EditMethod(toObject, tcMethodName)|打开一个方法（或事件）进行编辑。 toObject 参数参看：
EditMethod (cont.)|* 一个对象引用，
EditMethod (cont.)|* 针对当前表单或类， .T. 
EditMethod (cont.)|* 如果为空，则指当前对象。
EditSourceX(tcFileName, tcClass, tcMethodName, tnStartRange, tnEndRange)|打开任意文件进行编辑（作为** EditSource **），并具有其他功能：
EditSourceX (cont.)|* 该文件被添加到其适当的MRU库。
EditSourceX (cont.)|* 该文件以正确的文件名大小写打开，以便在保存时文件名的大小写不会被更改。
EditSourceX (cont.)|* 如果该文件是类库，并且没有提供类名称，则会打开类浏览器。
EditSourceX (cont.)|* 系统会询问您是否要从源代码管理中检出文件（如果您使用SCC并且已在首选项文件中标记了适当的项目）。
FindObjects (tcSearchText)|在{tcSearchText}中查找符合搜索条件的所有对象。 搜索标准与'查找'（双筒望远镜图标）的搜索按钮指定的相同。 结果是一个集合，集合中的每个项目都是具有两个属性的对象：
FindObjects (cont.)|1.  Object - 对象的引用
FindObjects (cont.)|2.  FullObjectName - 对象的完整路径名称
FindObjects (cont.)|例如, **.FindObjects ('Exists ("ControlSource")' )** 返回具有 ControlSource 的所有对象的集合
FindProcedure(tcName)|在PRG中找到一个名为{tcName}的PRG，或名为{tcName}的过程或函数，或名为{tcName}的常量，打开该文件进行编辑，并突出显示搜索到的名称。
GetBeautifyXOptions()|返回一个字符结果，当使用ExecScript执行该结果时，将使用BeautifyX的当前设置重新予以美化。 请注意，这不会包含VFP原生美化的设置。
GetClass()|使用IDE工具的“打开类”对话框时对类予以提示; 返回具有两个属性的对象，‘Class’ 和 ‘ClassLib’
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
