Lparameters lxParam1

****************************************************************
****************************************************************
* Standard prefix for all tools for Thor, allowing this tool to tell Thor about itself.
* CN: ����Thor���ߵı�׼ǰ׺��������������� Thor �н�����ȷע�ᡣ

If Pcount() = 1						  ;
		And 'O' = Vartype (lxParam1)  ;
		And 'thorinfo' = Lower (lxParam1.Class)

	With lxParam1
		.Prompt		 =  [�༭ Thor] 
		.Summary     =  [Thor ����] 
		.Description =  [����Thor������Ϊ����ָ����ݼ������������˵���Ϊ��ָ����ݼ����޸�VFPϵͳ�˵��ȡ�] 
		.FolderName	 = 'D:\PROGRAM FILES\MICROSOFT VISUAL FOXPRO 9\'
		.Source		 = 'Thor'
		.Version     = 'Thor - 1.42.13 - June 18, 2016'
		.Sort		 = 10
	Endwith

	Return lxParam1
Endif

Do ToolCode

Return

****************************************************************
****************************************************************
* Normal processing for this tool begins here.
* CN: ������ߵ��������������￪ʼ��
Procedure ToolCode
	Do 'D:\PROGRAM FILES\MICROSOFT VISUAL FOXPRO 9\Thor.APP' with 'Edit'
EndProc