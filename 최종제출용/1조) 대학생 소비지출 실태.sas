libname survey "C:\Users\YongGon\Desktop";

PROC IMPORT OUT= survey.survey 
            DATAFILE= "C:\Users\YongGon\Desktop\1조) 서베이 데이터.csv"
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;

data survey;
	set survey.survey;
run;

proc format;
   value A1W 1='20만원 미만' 2='20만원 이상 40만원 미만' 3='40만원 이상 60만원 미만' 4='60만원 이상 80만원 미만' 5='80만원 이상';
   value A2W 1='신용카드/체크카드' 2='현금' 3='계좌이체' 4='휴대폰소액결제' 5='기타';
   value A3W 1='부모님 용돈' 2='아르바이트' 3='장학금' 4='기타';
   value A4W 1='부모님 용돈' 2='아르바이트' 3='장학금' 4='기타';
   value B1W 1='매우불만족' 2='불만족' 3='만족' 4='매우 만족';
   value B2W 1='취미 생활이나 여가생활을 부족함 없이 즐길 수 있어서' 2='고정지출에 부담되지 않게 계획적으로 소비할 수 있어서' 
               3='고액서비스를 이용하는 데에 부담되지 않아서 (택시, 피부샵 등)' 4='타인을 위해 소비하는 것에 있어 무리 가지 않아서'
               5='급전이 필요할 때 당황하지 않고 지출할 여력이 되어서' 6 ='기타';
   value B3W 1='취미생활이나 여가생활을 충분히 즐길 수 없어서' 2='고정지출비용을 제외한 다른 분야에서 예상외의 소비가 부담되어서'
               3='고액서비스를 이용하는 데에 부담되어서 (택시, 피부샵 등)' 4='타인을 위해 소비하는 것이 부담이 되어서'
               5='급전이 필요할 때 돈을 마련하기가 힘들어서' 6='기타';
   value B4W 1='네' 2='아니오';
   value B5W 1='네' 2='아니오';
   value B6W 1='전혀 그렇지 않다' 2='거의 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value B7W 1='예' 2='아니오';
   value C1_1W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C1_2W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C1_3W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C1_4W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C2_1W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C2_2W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C2_3W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C3_1W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C3_2W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C3_3W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C4_1W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C4_2W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C4_3W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C5_1W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C5_2W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C6_1W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C6_2W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C6_3W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C6_4W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';
   value C6_5W 1='매우 그렇지 않다' 2='약간 그렇지 않다' 3='약간 그렇다' 4='매우 그렇다';

   value D1W 1='주거/생활/가전 - 월세, 공과금, 생활필수품, 가전제품, 전자제품, 통신비'
               2='식비/음주 - 식사 및 간식 구입, 가공제품, 식품재료, 음주, 흡연'
               3='의류/패션/미용 - 옷, 액세서리, 화장품, 헤어 관련'
               4='교통비 - 대중교통, 자가용 유류비, 차량 유지비'
               5='문화/취미/여가 - 연극, 전시, 영화, 페스티벌, 도서, 음악, 운동, 오락시설'
               6='교육/문구 - 교육비, 교재비, 학원 수강비, 인터넷 강의, 사무용품, 완구류';
   value D2W 1='월세' 2='공과금' 3='휴대폰 요금' 4='인터넷 요금' 5='생활필수품' 6='가전제품' 7='전자제품' 8='반려동물용품';
   value D3W 1='식품재료' 2='외식' 3='음료/커피/차' 4='간식' 5='건강식품' 6='음주' 7='흡연';
   value D4W 1='의류' 2='가방/잡화' 3='신발' 4='뷰티' 5='헤어';
   value D5W 1='버스' 2='기차(지하철)' 3='택시' 4='자가용 유류비' 5='차량 유지비';
   value D6W 1='연극' 2='전시' 3='영화' 4='축제' 5='도서/음반(스트리밍)' 6='운동' 7='오락시설(PC방, 노래방 등)' 8='여행';
   value D7W 1='교육비(e.g. 시험 응시료)' 2='교재비' 3='학원 수강비' 4='인터넷 강의' 5='사무용품' 6='완구류';
   value D8W 1='현장 방문 결제' 2='인터넷 쇼핑' 3='홈쇼핑' 4='모바일 쇼핑';
   value D9W 1='기존에 이용해오던 방식이어서' 2='접근성이 용이해서' 3='지갑을 들고 다니는 것에 불편함을 느껴서' 4='다른 소비지출 방법이 신뢰 가지 않아서' 5='기타 : _________________________________';

   value E1W 1='주거/생활/가전' 2='식비/음주' 3='의류/패션/미용' 4='교통비' 5='문화/취미/여가' 6='교육/문구' 7='기타(e.g. 종교, 의료비 등)';
   value E2W 1='주거/생활/가전' 2='식비/음주' 3='의류/패션/미용' 4='교통비' 5='문화/취미/여가' 6='교육/문구' 7='기타(e.g. 종교, 의료비 등)';
   value E3W 1='20만원 미만' 2='20만원 이상 40만원 미만' 3='40만원 이상 60만원 미만' 4='60만원 이상 80만원 미만' 5='80만원 이상';
   value E4W 1='과소비 및 충동구매' 2='타인을 의식한 명품 브랜드 중심의 소비' 3='현재 지향적인 소비' 4='자신의 경제적 수준에 맞지 않는 소비' 5='유행하는 제품을 지나치게 의식하는 소비' 6='기타 : _______________________________';

   value F1W 1='남자' 2='여자';
   value F2W 1='20~21' 2='22~23' 3='24~26' 4='27 ~ 29' 5='30 이상';
   value F3W 1='1학년' 2='2학년' 3='3학년' 4='4학년';
   value F4W 1='기숙사' 2='자취/하숙' 3='통학';
   value F5W 1='있다' 2='없다';
   value F6W 1='서울/인천' 2='경기도' 3='강원도' 4='충청도/대전/세종' 5='경상도/부산/대구' 6='전라도/광주' 7='제주도';
run;

DATA SURVEY;
	SET SURVEY;
LABEL
	A1="지출수준" A2="지출수단" A3="수입출처1" A4="수입출처2"
	B1="만족도" B2="만족이유" B3="불만족이유" B4="합리적소비" B5="과소비" B6="마일리지" B7="통장"
	C1_1="자기중심적 심리" C1_2="유명상표" C1_3="사회적 지위" C1_4="소외감"
	C2_1="주변시선의식" C2_2="주위사람 스타일" C2_3="유행하는 물건"
	C3_1="어울림" C3_2="체중과 몸매" C3_3="성형수술"
	C4_1="유명브랜드" C4_2="신상품" C4_3="외제선호도"
	C5_1="미적중요도" C5_2="분위기"
	C6_1="친환경도" C6_2="근검절약" C6_3="일회용 용기" C6_4="경제적 여유" C6_5="라이프 스타일"
	D1="소비분야" D2="주거생활" D3="식비음주" D4="의류패션" D5="교통" D6="문화여가" D7="교육문구" D8="소비방법" D9="방법이유"
	E1="소비감소항목" E2="소비증가항목" E3="희망지출수준" E4="소비성향문제점"
	F1="성별" F2="나이" F3="학년" F4="주거" F5="이성친구" F6="지역"
;
RUN;

PROC PRINT DATA = SURVEY LABEL;
RUN;

/*빈도분석*/
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

/*chi^2 동질성검정*/
proc freq data=survey;
   tables (F1 F2 F3 F4 F5 F6) * (A1 A2 A3 A4 B1 B2 B3 B4 B5 B6 B7
												C1_1 C1_2 C1_3 C1_4 C2_1 C2_2 C2_3 C3_1 C3_2 C3_3 C4_1 C4_2 C4_3 C5_1 C5_2 C6_1 C6_2 C6_3 C6_4 C6_5
												D1 D2 D3 D4 D5 D6 D7 D8 D9 E1 E2 E3 E4)/chisq norow nocol;
run;

proc freq data=survey;
   tables (F1 F2 F3 F4 F5 F6) * (A1 A2 A3 A4 B1 B3 B4 B6 B7  C1_1 C1_4 C2_3 C4_2 C4_3 C5_2 C6_1 D1 D6 E1 E2 E3 E4)/chisq norow nocol;
run;


/*신뢰도 검정*/
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

/* 점수화 과정 */
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

/*분산분석*/
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
