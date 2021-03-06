BGPMUCP1 ; IHS/MSC/MGH - Print MU EP measures NQF0041 ;02-Mar-2011 11:27;DU
 ;;14.1;IHS CLINICAL REPORTING;**1**;MAY 29, 2014;Build 2
 ;Printed output reports for this measure
FLU ;EP
 D P1
 K ^TMP("BGPMU0041",$J)
 Q
P1 ;Write individual measure
 N X,Y,Z,DEN,NUM,EXC,PC1,STRING1,STRING2,STRING3,PRD,PRN
 S STRING1=$$0041("C")
 S STRING2=$$0041("P")
 S STRING3=$$0041("B")
 S PRD=$P(STRING1,U,3)-$P(STRING2,U,3)
 S PRN=$P(STRING1,U,3)-$P(STRING3,U,3)
 S PRD1=$P(STRING1,U,5)-$P(STRING2,U,5)
 S PRN1=$P(STRING1,U,5)-$P(STRING3,U,5)
 D HEADER^BGPMUPH Q:BGPQUIT
 D HDRBLK^BGPMUPH
 I $Y>(BGPIOSL-3) D HEADER^BGPMUPH Q:BGPQUIT
 W !,"Pts 50+",?33,($P(STRING1,U,1)+$P(STRING1,U,4)),?44,($P(STRING2,U,1)+$P(STRING2,U,4)),?64,($P(STRING3,U,1)+$P(STRING3,U,4))
 I $Y>(BGPIOSL-3) D HEADER^BGPMUPH Q:BGPQUIT
 W !,"# Excluded (Exc)",?33,$P(STRING1,U,4),?44,$P(STRING2,U,4),?64,$P(STRING3,U,4)
 I $Y>(BGPIOSL-3) D HEADER^BGPMUPH Q:BGPQUIT
 W !,"Pts 50+ less Exc",?33,$P(STRING1,U,1),?44,$P(STRING2,U,1),?64,$P(STRING3,U,1)
 I $Y>(BGPIOSL-3) D HEADER^BGPMUPH Q:BGPQUIT
 W !!,"# w/influenza imm",?33,$P(STRING1,U,2),?38,$J($P(STRING1,U,3),5,1),?44,$P(STRING2,U,2),?49,$J($P(STRING2,U,3),5,1),?56,$J($FN(PRD,",+",1),6),?64,$P(STRING3,U,2),?68,$J($P(STRING3,U,3),5,1),?74,$J($FN(PRN,",+",1),6)
 I $Y>(BGPIOSL-3) D HEADER^BGPMUPH Q:BGPQUIT
 W !,"# w/o influenza imm",?33,($P(STRING1,U,1)-$P(STRING1,U,2)),?38,$J($P(STRING1,U,5),5,1),?44,($P(STRING2,U,1)-$P(STRING2,U,2)),?49,$J($P(STRING2,U,5),5,1),?56,$J($FN(PRD1,",+",1),6)
 W ?64,($P(STRING3,U,1)-$P(STRING3,U,2)),?68,$J($P(STRING3,U,5),5,1),?74,$J($FN(PRN1,",+",1),6)
 I $Y>(BGPIOSL-3) D HEADER^BGPMUPH Q:BGPQUIT
 I $D(BGPLIST(BGPIC)) D P2
 D SUM41
 K X,Y,Z,DEN,NUM,PC1,STRING1,STRING2,STRING3,PRD,PRN
 Q
0041(TF) ;Get the numbers for this measure
 N ARRAY
 S DEN=+$G(^TMP("BGPMU0041",$J,TF,"DEN"))
 S NUM=+$G(^TMP("BGPMU0041",$J,TF,"NUM"))
 S EXC=+$G(^TMP("BGPMU0041",$J,TF,"EXC"))
 I DEN=0 S PC1=0,PC2=0
 I DEN>0 S PC1=$$ROUND^BGPMUA01((NUM/DEN),3)*100,PC2=$$ROUND^BGPMUA01(((DEN-NUM)/DEN),3)*100
 S ARRAY=DEN_U_NUM_U_PC1_U_EXC_U_PC2
 Q ARRAY
P2 ;Do the Details
 N PT,NODE,NAME,VST,COLON,FOL,BGPARR,LINE,PTCT
 D HEADERL^BGPMUPH
 S X="Patients 50+ with at least 1 or 2 encounters with the EP, with documented" D W^BGPMUPP(X,0,1,BGPPTYPE)
 S X="influenza immunization, if any." D W^BGPMUPP(X,0,1,BGPPTYPE)
 S X="Patients who do not meet the numerator criteria are listed first (NM:)," D W^BGPMUPP(X,0,2,BGPPTYPE)
 S X="followed by patients who do meet the numerator criteria (M:)." D W^BGPMUPP(X,0,1,BGPPTYPE)
 S X="The following are the abbreviations used in the denominator column:" D W^BGPMUPP(X,0,2,BGPPTYPE)
 S X="EN=Encounter" D W^BGPMUPP(X,0,1,BGPPTYPE)
 S X="" D W^BGPMUPP(X,0,1,BGPPTYPE)
 S PTCT=0
 I $Y>(BGPIOSL-5) D HEADERL^BGPMUPH Q:BGPQUIT
 W !,"PATIENT NAME",?23,"HRN",?30,"COMMUNITY",?42,"SEX",?46,"AGE",?50,"DENOMINATOR",?63,"NUMERATOR"
 S LINE="",$P(LINE,"-",81)="" W !,LINE
 I BGPLIST="D"!(BGPLIST="A") D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0041"","_$J_",""PAT"",""C"",""DEN"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DATA(NODE)
 I BGPLIST="N"!(BGPLIST="A") D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0041"","_$J_",""PAT"",""C"",""NUM"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DATA(NODE)
 I BGPLIST="A" D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0041"","_$J_",""PAT"",""C"",""EXC"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DATA(NODE)
 W !!,"Total # of patients on list: "_PTCT
 K PT,NODE,NAME,VST,COLON,FOL
 Q
DATA(NODE) ;GET DATA
 N NAME,HRN,DEN,DEN1,DEN2,NUM,AGE,DFN,LINE
 S DFN=$P(NODE,U,1)
 S NAME=$E($$GET1^DIQ(2,$P(NODE,U,1),.01),1,22)
 S HRN=$$HRN^AUPNPAT(DFN,DUZ(2))
 S AGE=$$AGE^AUPNPAT(DFN,BGPED)
 S COMM=$E($$GET1^DIQ(9000001,DFN,1118),1,11)
 S SEX=$P(^DPT(DFN,0),U,2)
 S DEN=$P(NODE,U,2),NUM=$P(NODE,U,3)
 S DEN1=$P(DEN,";",1),DEN2=$P(DEN,";",2)
 I $Y>(BGPIOSL-2) D
 .D HEADERL^BGPMUPH Q:BGPQUIT
 .W !,"PATIENT NAME",?23,"HRN",?30,"COMMUNITY",?42,"SEX",?46,"AGE",?50,"DENOMINATOR",?63,"NUMERATOR"
 .S LINE="",$P(LINE,"-",81)="" W !,LINE
 W !,NAME,?23,HRN,?30,COMM,?43,SEX,?46,AGE,?50,DEN1,?63,$S($G(NUM)="":"NM:",NUM'="Excluded":"M:",1:"")_NUM
 W:DEN2'="" !,?50,DEN2
 K NAME,HRN,DEN,NUM,AGE,DFN
 Q
XML41 ;Populate the BGPXML array with data for each population/numerator
 ; BGPXMLOUT(i)=PQRI number^""^Denominator Count^Numerator Count^Exclusion Count
 S BGPXML(1)="110"_U_""_U_+$G(^TMP("BGPMU0041",$J,"C","DEN"))_U_+$G(^TMP("BGPMU0041",$J,"C","NUM"))_U_+$G(^TMP("BGPMU0041",$J,"C","EXC"))
 K ^TMP("BGPMU0041",$J)
 Q
SUM41 ;Populate "BGPMU SUMMARY" for Colorectal Cancer
 ;Initialize iCare/summary global
 N BGPDNCNT,BGPSSTR,J,N
 S BGPDNCNT=0
 K ^TMP("BGPMU SUMMARY",$J,BGPIC)
 S ^TMP("BGPMU SUMMARY",$J,BGPIC)="0041"_U_"110"
 S N=1 ;only 1 numerator
 ;Setup summary page/iCare ^TMP global
 S CDEN1CT=+$G(^TMP("BGPMU0041",$J,"C","DEN"))+$G(^TMP("BGPMU0041",$J,"C","EXC"))   ;current
 S CNUM1CT=+$G(^TMP("BGPMU0041",$J,"C","NUM"))
 S CEXC1CT=+$G(^TMP("BGPMU0041",$J,"C","EXC"))
 S CMP=$S((CDEN1CT-CEXC1CT)>0:$$ROUND^BGPMUA01(CNUM1CT/(CDEN1CT-CEXC1CT),3)*100,1:0)
 S PDEN1CT=+$G(^TMP("BGPMU0041",$J,"P","DEN"))+$G(^TMP("BGPMU0041",$J,"P","EXC"))   ;previous
 S PNUM1CT=+$G(^TMP("BGPMU0041",$J,"P","NUM"))
 S PEXC1CT=+$G(^TMP("BGPMU0041",$J,"P","EXC"))
 S PMP=$S((PDEN1CT-PEXC1CT)>0:$$ROUND^BGPMUA01(PNUM1CT/(PDEN1CT-PEXC1CT),3)*100,1:0)
 S BDEN1CT=+$G(^TMP("BGPMU0041",$J,"B","DEN"))+$G(^TMP("BGPMU0041",$J,"B","EXC"))   ;baseline
 S BNUM1CT=+$G(^TMP("BGPMU0041",$J,"B","NUM"))
 S BEXC1CT=+$G(^TMP("BGPMU0041",$J,"B","EXC"))
 S BMP=$S((BDEN1CT-BEXC1CT)>0:$$ROUND^BGPMUA01(BNUM1CT/(BDEN1CT-BEXC1CT),3)*100,1:0)
 S BGPDNCNT=BGPDNCNT+1
 S BGPSSTR="MU.EP.0041."_N_U_"50+ w/immunization"_U_CEXC1CT_U_CDEN1CT_U_CNUM1CT_U_CMP_U_U_U_U
 ; 11 12 13 14
 S BGPSSTR=BGPSSTR_U_PEXC1CT_U_PDEN1CT_U_PNUM1CT_U_PMP
 ; 15 16 17 18
 S BGPSSTR=BGPSSTR_U_BEXC1CT_U_BDEN1CT_U_BNUM1CT_U_BMP
 S ^TMP("BGPMU SUMMARY",$J,BGPIC,BGPDNCNT)=BGPSSTR
 Q
