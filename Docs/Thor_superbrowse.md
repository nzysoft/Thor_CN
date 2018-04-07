SuperBrowse
===
_本文档由 xinjie 于 2018-04-07 翻译_

![](Images/Thor_Super_Browse_SNAGHTML8410e4d.png)

### 左窗格

左侧窗格显示一个表格，其中包含表格的数据结构。 这些字段按字母顺序列出。 点击其中一个标题即可更改排序。

点击 Grid 中列出的字段标记你想要“处理”的字段。

Grid 下方有两个按钮：

**按钮** |**描述**
---|---
Save Selections(保存选择)|保存当前选择，以便下次打开此表格时将选择相同的字段。
Show Schema(显示概要)|在浏览器中打开关于表的详细描述。

### Picker 页

此页面是一个SQL和Browse语法构建器。

![](Images/Thor_Super_Browse_image_thumb_3.png)

**按钮** |**描述**
---|---
Only fields(仅字段)|创建所选字段的列表
Select ...|创建一个 SQL Select 声明
Update ...|创建一个 SQL Update 声明
Insert ...|创建一个 SQL Insert 声明
Create ...|创建一个 SQL Create 声明
Browse|创建一个 Browse 命令


#### 选项组用于选择SQL语法类型：

**按钮** |**描述**
---|---
VFP|以 VFP SQL 语法创建
SQLExec|以 MsSQL 语法创建

#### NVL()的选择:

**按钮** |**描述**
---|---
Add NVL()|在适当的地方添加NVL（）语法

#### 选项组选择字段映射类型：

**按钮** |**描述**
---|---
No|不增加 Cast()
VFP|增加 VFP 类型的 Cast()
ANSI|创建 ANSI 类型的 Cast()

#### 其他选项和控制：

**控制** |**描述**
---|---
“From:” 文本框|显示当前表名
“Add From” 选择框|将“From”短语添加到Select语句
“Close afterwards” 选择框|SuperBrowse退出时关闭表
“As:” 文本框|填写Table_Alias
“=TableName” 按钮|在As文本框中填写当前表名
“Remove” 按钮|As文本框置空
“Into Table” 文本框|填写目标表/游标的名称
Option 1\. Table|目标是一个表
Option 2\. Cursor|目标是一个只读游标
Option 3\. Cursor read/Write|目标是一个可读写的游标

### Grid 页:

此页是一个高级 grid。

点击列标题可以选择/取消选择一个字段。

双击任何记录都可以在由Dynamic Forms创建的单独窗口中打开并进行编辑。 如果选中“只读”复选框，则不可用）。

![](Images/Thor_Super_Browse_image_thumb_2.png)

#### Grid 的过滤设置:

**控制** |**描述**
---|---
Search Values 文本框|输入你想要搜索的内容
Expression 选项|搜索您输入的表达式 
Value 选项|输入你想要搜索的内容

#### 在表中搜索

搜索选项最好由一些样本来描述：

**选项类型** |**键入的内容**|**描述**
---|---|---
Expression|Name='Jim' 或 name = 'Tore'|自解释
Expression|Obsolete|查找逻辑字段Obsolete是.T的每个记录。
Expression|Inlist(custno,10,20,30)|自解释
Expression|'nit'$country|查找“nit”位于字段Country内的每条记录
Value|usa|查找“usa”一词所在的每个记录**任何**所选字段
Value|samsung 5110|查找单词'samsung'**和**'5110'在**任何**所选字段内的每条记录
Value|jim nelson kong|查找每个记录中**任意**所选字段包含'jim'和'nelson'以及'kong'字样的记录
Expression|*jim nelson kong|与上面的相同，星号是用于强调**任意**所选的字段
Value|=price>100|查找 price >100 的所有记录，等号（=）将强制执行表达式类型搜索**任意**所选字段


#### 轻松使用正确的搜索类型

*   用等号（=）开始搜索文本以强制执行表达式类型搜索
*   同样，星号（*）强制执行值类型搜索

#### 对于值搜索，以下规则适用：

*   每个单词都是分开的，并且每个单词都必须存在于记录中
*   只搜索选定的字段
*   所有搜索都不区分大小写
*   备注字段也被搜索
*   在字符和数字字段中搜索数字值

#### 本页其他控制:

**Control** |**Description**
---|---
Listbox Sort|To select the current sort order
Button \|<|Go to previous record
Button \|>|Go to next record
Button +|Add a new record
Button Edit|Edit the current record on a separate form
Checkbox Read-Only|Self explanatory
Checkbox Hide unselected fields|Makes the grid only show selected fields
Button Modify Structure|Gives you the possibility to modify the structure. If the table is opened shared, you are asked whether you want to reopen it exclusive or not.

### Index page

Lists all active index tags, and shows the syntax to recreate the index file. Can be copied to the clipboard by marking the text with the mouse and press Ctrl-C.

### Settings page

This page should be self explanatory.  
Tip: The ForeColor and BackColor is a good tool to find the RGB values for a color. Select any color, press OK and you will see the value.  
NB! It's usually best to use ForeColor, since the default is Black.

### Keyboard shortcuts while the left grid is active:

#### Common:

**Button** |**Description**
---|---
Escape|Close the form
Enter|Close the form
Spacebar|Toggle Select Field
A|Press button Select all
B|Copy the current SQL statement to the clipboard
G|Activate page Grid
H|Toggle checkbox Hide unselected Fields (Grid page)
K|Activate page Picker
O|Copy the current SQL statement to the clipboard
R|Press button Reverse all
S|Toggle Select Field
U|Press button Unselect all


#### When Picker page is visible, these keys also are activated:

**Button** |**Description**
---|---
\:|Set focus to the textbox Into Cursor
C|Select option SQL Create...
D|Set focus to the textbox Into Local Alias
E|Select option SQL Select...
F|Toggle checkbox Add From
I|Select option SQL Insert...
L|Toggle checkbox Add NVL()
M|Click button Remove
N|Select option ANSI Cast
P|Select option SQL Update...
T|Select option No Cast
V|Select option VFP Cast
W|Select option Browse
X|Sets Local Alias to current alias
Y|Select option Only fields
1|Select option Into Table
2|Select option Into Cursor

### Keyboard shortcuts while the main (right) grid is active:

#### **NB!** These shortcuts are only active in Read-Only mode!

**Button** |**Description**
---|---
Enter|Select left grid
F|Set focus to the Searc Values textbox
K|Select left grid
