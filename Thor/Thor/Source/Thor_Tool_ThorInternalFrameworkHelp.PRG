Lparameters lxParam1

****************************************************************
****************************************************************
* Standard prefix for all tools for Thor, allowing this tool to tell Thor about itself.
* CN: ����Thor���ߵı�׼ǰ׺��������������� Thor �н�����ȷע�ᡣ

If Pcount() = 1						  ;
		And 'O' = Vartype (lxParam1)  ;
		And 'thorinfo' = Lower (lxParam1.Class)

	With lxParam1
		.Prompt		 =  [Thor ��ܰ���] 
		.Description =  [���ӵ� Thor ��ҳ] 
		.Source		 = 'Thor'
		.Version     = 'Thor - 1.42.13 - June 18, 2016'
		.Sort		 = 20
		
		If Version(3) = [86]
			.Link        = 'https://github.com/vfp9/Thor_CN/blob/master/Docs/Thor_help.md'			
		Else 
			.Link        = 'https://github.com/VFPX/Thor/blob/master/Docs/Thor_help.md'
		EndIf 
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
	Do 'D:\PROGRAM FILES\MICROSOFT VISUAL FOXPRO 9\Thor.APP' with 'Help'
EndProc