ABMDF26X ; IHS/ASDST/DMJ - ADA-99 FORM V2000 ;   
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;Original;TMD;09/12/95 8:49 AM
 ;
 ; IHS/SD/SDR - v2.5 p8 - IM12857
 ;    Created new export mode for ADA-99 v2000 format
 ;                
MARG ;Set left and top margins
 S U="^",(ABM("LM"),ABM("TM"),ABM("LN"))=0
 I $D(^ABMDEXP(26,0)) S ABM("TM")=$P(^(0),U,3),ABM("LM")=$P(^(0),U,2)
 W $$EN^ABMVDF("IOF")
 I +ABM("TM") F ABM("I")=1:1:ABM("TM") W !
 ;
LOOP ;
 ;Loop thru line number array
 S ABM("LN")=$O(ABMF(ABM("LN"))) I +ABM("LN")=0!(ABM("LN")>62) G XIT
 ;
 ;Set to correct format line
 S ABM("FL")=ABM("LN")
 I ABM("LN")>40,ABM("LN")<50 S ABM("FL")=41 ;Lines 41 thru 49 are same
 I ABM("LN")>53,ABM("LN")<57 S ABM("FL")=54 ;Lines 54 thru 56 are same
 ;
 ;Set tab & format variables
 S ABM("TABS")=$P($T(@ABM("FL")),";;",2)
 S ABM("FMAT")=$P($T(@ABM("FL")),";;",3)
 ;
 ;Skip to req'd line
 F  Q:$Y-ABM("TM")>(ABM("LN")+0)  W !
 ;
 ; Test Modes for setting Data Fields
 G LOOP2:'$D(ABMF("TEST"))
 F ABM("I")=1:1:$L(ABM("FMAT"),U) D
 .I $P(ABM("TABS"),U,ABM("I"))]"" D
 ..S ABM("FLD")=""
 ..S $P(ABM("FLD"),"X",$P(ABM("FMAT"),U,ABM("I"))+1)=""
 ..I ABM("FLD")]"" D
 ...W ?($P(ABM("TABS"),U,ABM("I"))+ABM("LM"))
 ...D FRMT
 G LOOP
 ;
LOOP2 ;
 ;Loop thru the pieces of the line array
 F ABM("I")=1:1:$L(ABMF(ABM("LN")),U) D
 .I $P(ABM("TABS"),U,ABM("I"))]"" D
 ..S ABM("FLD")=$P(ABMF(ABM("LN")),U,ABM("I"))
 ..I ABM("FLD")]"" D
 ...W ?($P(ABM("TABS"),U,ABM("I"))+ABM("LM"))
 ...D FRMT
 G LOOP
 ;
FRMT ;
 ;Write the field in the designated format
 S ABM("LTH")=$P(ABM("FMAT"),U,ABM("I"))
 I +ABM("LTH")=0 S ABM("LTH")=99
 I ABM("LTH")["$" D  Q
 .S ABM("LTH")=$P(ABM("LTH"),"$")
 .W $J($FN(+ABM("FLD"),",",2),ABM("LTH"))
 I ABM("LTH")["D" D  Q
 .S ABM("LTH")=$P(ABM("LTH"),"D")
 .W $E(ABM("FLD"),4,5),"/",$E(ABM("FLD"),6,7),"/",($E(ABM("FLD"),1,3)+1700)
 I ABM("LTH")["L" D
 .S ABM("LTH")=$P(ABM("LTH"),"L")
 .F  Q:$L(ABM("FLD"))=ABM("LTH")!($L(ABM("FLD"))>ABM("LTH"))  D
 ..S ABM("FLD")="0"_ABM("FLD")
 I ABM("LTH")["C" D
 .S ABM("LTH")=$P(ABM("LTH"),"C")
 .S ABM("FLD")=$J("",ABM("LTH")-$L(ABM("FLD"))\2)_ABM("FLD")
 I ABM("LTH")["R" D
 .S ABM("LTH")=$P(ABM("LTH"),"R")
 .S ABM("RT")=ABM("LTH")-$L(ABM("FLD"))+1
 .I ABM("RT")>1 D
 ..S ABM("BLNK")=""
 ..S $P(ABM("BLNK")," ",ABM("RT"))=""
 ..S ABM("FLD")=ABM("BLNK")_ABM("FLD")
 W $E(ABM("FLD"),1,ABM("LTH"))
 Q
 ;
TEST ;
 S ABMF("TEST")=1
 F ABM=0:ABMF("TEST"):62 S ABMF(ABM)=""
 G MARG
 ;
XIT ;
 I '$D(ABM("MORE")) K ABMF,ABM
 E  K ABM("MORE")
 Q
TEXT ;;TABS;;FIELD LENGTH
 ;            FORMAT ($-$ FORMAT,L-LNGTH REQ'D,C-CENTER,R-RIGHT,D-DATE)
1 ;;1;;1
3 ;;1^29;;1^42
4 ;;1^29;;1^42
5 ;;1^14;;1^12
6 ;;29^65^68;;34^2^10
8 ;;2^31^53^75;;27^19^19^2
10 ;;4^8^12^17^36^39^44^66;;2^2^4^17C^1^1^12^10
12 ;;3^5^9^12^16^46^63;;1^1^1^1^23^12^15
14 ;;2^15^33^43^52^55^59^70;;12^17^7^1^1^1^1^10
16 ;;2^43;;37^37
17 ;;2^30^44^48^52^59^61^67;;26^12^2^2^4^1^1^12
19 ;;2^25^29^46^64;;21^2^10^14^15
21 ;;3^7^11^21^25^28^36^38^42^47^55^62;;2^2^4^1^1^1^1^1^1^1^1^1
23 ;;46^64;;14^15
25 ;;4^28^44^64;;23^10D^21^10D
28 ;;2^36^52^64;;29^12^10^15
30 ;;2^36^52^62^66^69^72;;33^12^10D^1^1^1^1
31 ;;70^73;;1^2^1^1^1
32 ;;2^23^27^36^43^47;;19^2^6^1^2^1
34 ;;10^12^23^41^59^75;;1^1^14^15^10D^4
35 ;;24^26^45^52^58;;1^1^1^1^1
36 ;;13^47;;22^32
41 ;;0^2^4^9^14^20^30^38^41^61^71;;2^2^4^4^5^8^6^2^19^6$^9
50 ;;62;;6$
51 ;;62;;6$
52 ;;62;;6$
54 ;;13^62;;37^6$
55 ;;1^62;;45^6$
58 ;;48;;30
60 ;;1^19^34^48^68^73;;16^12^10D^17^2^7