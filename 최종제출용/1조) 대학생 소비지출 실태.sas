libname survey "C:\Users\YongGon\Desktop";

PROC IMPORT OUT= survey.survey 
            DATAFILE= "C:\Users\YongGon\Desktop\1��) ������ ������.csv"
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;

data survey;
	set survey.survey;
run;

proc format;
   value A1W 1='20���� �̸�' 2='20���� �̻� 40���� �̸�' 3='40���� �̻� 60���� �̸�' 4='60���� �̻� 80���� �̸�' 5='80���� �̻�';
   value A2W 1='�ſ�ī��/üũī��' 2='����' 3='������ü' 4='�޴����Ҿװ���' 5='��Ÿ';
   value A3W 1='�θ�� �뵷' 2='�Ƹ�����Ʈ' 3='���б�' 4='��Ÿ';
   value A4W 1='�θ�� �뵷' 2='�Ƹ�����Ʈ' 3='���б�' 4='��Ÿ';
   value B1W 1='�ſ�Ҹ���' 2='�Ҹ���' 3='����' 4='�ſ� ����';
   value B2W 1='��� ��Ȱ�̳� ������Ȱ�� ������ ���� ��� �� �־' 2='�������⿡ �δ���� �ʰ� ��ȹ������ �Һ��� �� �־' 
               3='��׼��񽺸� �̿��ϴ� ���� �δ���� �ʾƼ� (�ý�, �Ǻμ� ��)' 4='Ÿ���� ���� �Һ��ϴ� �Ϳ� �־� ���� ���� �ʾƼ�'
               5='������ �ʿ��� �� ��Ȳ���� �ʰ� ������ ������ �Ǿ' 6 ='��Ÿ';
   value B3W 1='��̻�Ȱ�̳� ������Ȱ�� ����� ��� �� ���' 2='������������ ������ �ٸ� �о߿��� ������� �Һ� �δ�Ǿ'
               3='��׼��񽺸� �̿��ϴ� ���� �δ�Ǿ (�ý�, �Ǻμ� ��)' 4='Ÿ���� ���� �Һ��ϴ� ���� �δ��� �Ǿ'
               5='������ �ʿ��� �� ���� �����ϱⰡ ����' 6='��Ÿ';
   value B4W 1='��' 2='�ƴϿ�';
   value B5W 1='��' 2='�ƴϿ�';
   value B6W 1='���� �׷��� �ʴ�' 2='���� �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value B7W 1='��' 2='�ƴϿ�';
   value C1_1W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C1_2W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C1_3W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C1_4W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C2_1W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C2_2W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C2_3W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C3_1W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C3_2W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C3_3W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C4_1W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C4_2W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C4_3W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C5_1W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C5_2W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C6_1W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C6_2W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C6_3W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C6_4W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';
   value C6_5W 1='�ſ� �׷��� �ʴ�' 2='�ణ �׷��� �ʴ�' 3='�ణ �׷���' 4='�ſ� �׷���';

   value D1W 1='�ְ�/��Ȱ/���� - ����, ������, ��Ȱ�ʼ�ǰ, ������ǰ, ������ǰ, ��ź�'
               2='�ĺ�/���� - �Ļ� �� ���� ����, ������ǰ, ��ǰ���, ����, ��'
               3='�Ƿ�/�м�/�̿� - ��, �׼�����, ȭ��ǰ, ��� ����'
               4='����� - ���߱���, �ڰ��� ������, ���� ������'
               5='��ȭ/���/���� - ����, ����, ��ȭ, �佺Ƽ��, ����, ����, �, �����ü�'
               6='����/���� - ������, �����, �п� ������, ���ͳ� ����, �繫��ǰ, �ϱ���';
   value D2W 1='����' 2='������' 3='�޴��� ���' 4='���ͳ� ���' 5='��Ȱ�ʼ�ǰ' 6='������ǰ' 7='������ǰ' 8='�ݷ�������ǰ';
   value D3W 1='��ǰ���' 2='�ܽ�' 3='����/Ŀ��/��' 4='����' 5='�ǰ���ǰ' 6='����' 7='��';
   value D4W 1='�Ƿ�' 2='����/��ȭ' 3='�Ź�' 4='��Ƽ' 5='���';
   value D5W 1='����' 2='����(����ö)' 3='�ý�' 4='�ڰ��� ������' 5='���� ������';
   value D6W 1='����' 2='����' 3='��ȭ' 4='����' 5='����/����(��Ʈ����)' 6='�' 7='�����ü�(PC��, �뷡�� ��)' 8='����';
   value D7W 1='������(e.g. ���� ���÷�)' 2='�����' 3='�п� ������' 4='���ͳ� ����' 5='�繫��ǰ' 6='�ϱ���';
   value D8W 1='���� �湮 ����' 2='���ͳ� ����' 3='Ȩ����' 4='����� ����';
   value D9W 1='������ �̿��ؿ��� ����̾' 2='���ټ��� �����ؼ�' 3='������ ��� �ٴϴ� �Ϳ� �������� ������' 4='�ٸ� �Һ����� ����� �ŷ� ���� �ʾƼ�' 5='��Ÿ : _________________________________';

   value E1W 1='�ְ�/��Ȱ/����' 2='�ĺ�/����' 3='�Ƿ�/�м�/�̿�' 4='�����' 5='��ȭ/���/����' 6='����/����' 7='��Ÿ(e.g. ����, �Ƿ�� ��)';
   value E2W 1='�ְ�/��Ȱ/����' 2='�ĺ�/����' 3='�Ƿ�/�м�/�̿�' 4='�����' 5='��ȭ/���/����' 6='����/����' 7='��Ÿ(e.g. ����, �Ƿ�� ��)';
   value E3W 1='20���� �̸�' 2='20���� �̻� 40���� �̸�' 3='40���� �̻� 60���� �̸�' 4='60���� �̻� 80���� �̸�' 5='80���� �̻�';
   value E4W 1='���Һ� �� �浿����' 2='Ÿ���� �ǽ��� ��ǰ �귣�� �߽��� �Һ�' 3='���� �������� �Һ�' 4='�ڽ��� ������ ���ؿ� ���� �ʴ� �Һ�' 5='�����ϴ� ��ǰ�� ����ġ�� �ǽ��ϴ� �Һ�' 6='��Ÿ : _______________________________';

   value F1W 1='����' 2='����';
   value F2W 1='20~21' 2='22~23' 3='24~26' 4='27 ~ 29' 5='30 �̻�';
   value F3W 1='1�г�' 2='2�г�' 3='3�г�' 4='4�г�';
   value F4W 1='�����' 2='����/�ϼ�' 3='����';
   value F5W 1='�ִ�' 2='����';
   value F6W 1='����/��õ' 2='��⵵' 3='������' 4='��û��/����/����' 5='���/�λ�/�뱸' 6='����/����' 7='���ֵ�';
run;

DATA SURVEY;
	SET SURVEY;
LABEL
	A1="�������" A2="�������" A3="������ó1" A4="������ó2"
	B1="������" B2="��������" B3="�Ҹ�������" B4="�ո����Һ�" B5="���Һ�" B6="���ϸ���" B7="����"
	C1_1="�ڱ��߽��� �ɸ�" C1_2="�����ǥ" C1_3="��ȸ�� ����" C1_4="�ҿܰ�"
	C2_1="�ֺ��ü��ǽ�" C2_2="������� ��Ÿ��" C2_3="�����ϴ� ����"
	C3_1="��︲" C3_2="ü�߰� ����" C3_3="��������"
	C4_1="����귣��" C4_2="�Ż�ǰ" C4_3="������ȣ��"
	C5_1="�����߿䵵" C5_2="������"
	C6_1="ģȯ�浵" C6_2="�ٰ�����" C6_3="��ȸ�� ���" C6_4="������ ����" C6_5="������ ��Ÿ��"
	D1="�Һ�о�" D2="�ְŻ�Ȱ" D3="�ĺ�����" D4="�Ƿ��м�" D5="����" D6="��ȭ����" D7="��������" D8="�Һ���" D9="�������"
	E1="�Һ񰨼��׸�" E2="�Һ������׸�" E3="����������" E4="�Һ��⹮����"
	F1="����" F2="����" F3="�г�" F4="�ְ�" F5="�̼�ģ��" F6="����"
;
RUN;

PROC PRINT DATA = SURVEY LABEL;
RUN;

/*�󵵺м�*/
proc freq data=survey;
	tables F1 F2 F3 F4 F5 F6;
run;
proc freq data=survey;
	tables A1 A2 A3 A4
				B1 B2 B3 B4 B5 B6 B7
				C1_1 C1_2 C1_3 C1_4 C2_1 C2_2 C2_3 C3_1 C3_2 C3_3 C4_1 C4_2 C4_3 C5_1 C5_2 C6_1 C6_2 C6_3 C6_4 C6_5
				D1 D2 D3 D4 D5 D6 D7 D8 D9
				E1 E2 E3 E4;
run;

/*chi^2 ����������*/
proc freq data=survey;
   tables (F1 F2 F3 F4 F5 F6) * (A1 A2 A3 A4 B1 B2 B3 B4 B5 B6 B7
												C1_1 C1_2 C1_3 C1_4 C2_1 C2_2 C2_3 C3_1 C3_2 C3_3 C4_1 C4_2 C4_3 C5_1 C5_2 C6_1 C6_2 C6_3 C6_4 C6_5
												D1 D2 D3 D4 D5 D6 D7 D8 D9 E1 E2 E3 E4)/chisq norow nocol;
run;

proc freq data=survey;
   tables (F1 F2 F3 F4 F5 F6) * (A1 A2 A3 A4 B1 B3 B4 B6 B7  C1_1 C1_4 C2_3 C4_2 C4_3 C5_2 C6_1 D1 D6 E1 E2 E3 E4)/chisq norow nocol;
run;


/*�ŷڵ� ����*/
proc corr data=survey alpha nosimple;
   var C1_1-C1_4;
run;

proc corr data=survey alpha nosimple;
   var C2_1-C2_3;
run;

proc corr data=survey alpha nosimple;
   var C3_1-C3_3;
run;

proc corr data=survey alpha nosimple;
   var C3_1 C3_2;
run;

proc corr data=survey alpha nosimple;
   var C6_1-C6_5;
run;

proc corr data=survey alpha nosimple;
   var C6_2-C6_5;
run;

/* ����ȭ ���� */
DATA SURVEY;
SET SURVEY;
MEAN1 = (C1_1+C1_2+C1_3+C1_4)/4; 
RUN;
PROC FACTOR DATA = SURVEY OUT = FACTOR1
NFACTORS = 1;
VAR C1_1 C1_2 C1_3 C1_4;
RUN;
PROC REG DATA = FACTOR1;
MODEL MEAN1 = FACTOR1;
quit;

DATA survey;
SET survey;
MEAN2 = (C2_1+C2_2+C2_3)/3; 
RUN;
PROC FACTOR DATA = survey OUT = FACTOR2 (rename=(factor1=factor2))
NFACTORS = 1;
VAR C2_1-C2_3;
RUN;
PROC REG DATA = FACTOR2;
MODEL MEAN2 = FACTOR2;
quit;

DATA SURVEY;
	SET SURVEY;
	MEAN3 = (C3_1+C3_2)/2; 
RUN;
PROC FACTOR DATA = SURVEY OUT = FACTOR3 (rename=(factor1=factor3))
	NFACTORS = 1;
	VAR C3_1 C3_2;
RUN;
PROC REG DATA = FACTOR3;
	MODEL MEAN3 = FACTOR3;
quit;

DATA SURVEY;
SET SURVEY;
MEAN6 = (C6_2+C6_3+C6_4+C6_5)/4;
RUN;
PROC FACTOR DATA = SURVEY OUT = FACTOR6 (rename=(factor1=factor6))
NFACTORS = 1;
VAR C6_2 C6_3 C6_4 C6_5;
RUN;
PROC REG DATA = FACTOR6;
MODEL MEAN6 = FACTOR6;
quit;

proc factor data=survey
	cov simple reorder plot
	outstat=outst1;
	var C1_1-C1_4;
run;

proc factor data=survey
	cov simple reorder plot
	outstat=outst1;
	var C2_1-C2_3;
run;

proc factor data=survey
	cov simple reorder plot
	outstat=outst1;
	var C3_1-C3_2;
run;

proc factor data=survey
	cov simple reorder plot
	outstat=outst1;
	var C6_2-C6_5;
run;

/*�л�м�*/
PROC GLM DATA = FACTOR1;
	CLASS F1;
	MODEL MEAN1 = F1;
	MEANS F1/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR1;
	CLASS F2;
	MODEL MEAN1 = F2;
	MEANS F2/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR1;
	CLASS F3;
	MODEL MEAN1 = F3;
	MEANS F3/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR1;
	CLASS F4;
	MODEL MEAN1 = F4;
	MEANS F4/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR1;
	CLASS F5;
	MODEL MEAN1 = F5;
	MEANS F5/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR1;
	CLASS F6;
	MODEL MEAN1 = F6;
	MEANS F6/ TUKEY alpha=0.10;
quit;


PROC GLM DATA = FACTOR2;
	CLASS F1;
	MODEL MEAN2 = F1;
	MEANS F1/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR2;
	CLASS F2;
	MODEL MEAN2 = F2;
	MEANS F2/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR2;
	CLASS F3;
	MODEL MEAN2 = F3;
	MEANS F3/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR2;
	CLASS F4;
	MODEL MEAN2 = F4;
	MEANS F4/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR2;
	CLASS F5;
	MODEL MEAN2 = F5;
	MEANS F5/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR2;
	CLASS F6;
	MODEL MEAN2 = F6;
	MEANS F6/ TUKEY alpha=0.10;
quit;

PROC GLM DATA = FACTOR3;
	CLASS F1;
	MODEL MEAN3 = F1;
	MEANS F1/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR3;
	CLASS F2;
	MODEL MEAN3 = F2;
	MEANS F2/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR3;
	CLASS F3;
	MODEL MEAN3 = F3;
	MEANS F3/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR3;
	CLASS F4;
	MODEL MEAN3 = F4;
	MEANS F4/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR3;
	CLASS F5;
	MODEL MEAN3 = F5;
	MEANS F5/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR3;
	CLASS F6;
	MODEL MEAN3 = F6;
	MEANS F6/ TUKEY alpha=0.10;
quit;

PROC GLM DATA = FACTOR6;
	CLASS F1;
	MODEL MEAN6 = F1;
	MEANS F1/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR6;
	CLASS F2;
	MODEL MEAN6 = F2;
	MEANS F2/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR6;
	CLASS F3;
	MODEL MEAN6 = F3;
	MEANS F3/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR6;
	CLASS F4;
	MODEL MEAN6 = F4;
	MEANS F4/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR6;
	CLASS F5;
	MODEL MEAN6 = F5;
	MEANS F5/ TUKEY alpha=0.10;
quit;
PROC GLM DATA = FACTOR6;
	CLASS F6;
	MODEL MEAN6 = F6;
	MEANS F6/ TUKEY alpha=0.10;
quit;
