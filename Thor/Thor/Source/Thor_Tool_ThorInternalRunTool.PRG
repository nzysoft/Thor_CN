Lparameters lxParam1

****************************************************************
****************************************************************
* Standard prefix for all tools for Thor, allowing this tool to tell Thor about itself.
* CN: ����Thor���ߵı�׼ǰ׺��������������� Thor �н�����ȷע�ᡣ

If Pcount() = 1								;
		And 'O' = Vartype (lxParam1)		;
		And 'thorinfo' == Lower (lxParam1.Class)

	With lxParam1

		.Prompt		 =  [����������] 
		.Description =  [���Һ����й��ߣ��������������ѡ���] 
		.Source		 = 'Thor'
		.Version     = 'Thor - 1.42.13 - June 18, 2016'
		.Sort		 = 20
		.CanRunAtStartUp = .T.
		.VideoLink   = 'http://youtu.be/2ttBR9vQqew'

	Endwith

	Return lxParam1
Endif

If Pcount() = 0
	Do ToolCode
Else
	Do ToolCode With lxParam1
Endif

Return

****************************************************************
****************************************************************
* Normal processing for this tool begins here.                  
* CN: ������ߵ��������������￪ʼ��
Procedure ToolCode
	Lparameters lxParam1

	Execscript (_Screen.cThorDispatcher, 'FORMRUNTOOL')

Endproc