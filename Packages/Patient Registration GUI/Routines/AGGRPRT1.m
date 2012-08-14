AGGRPRT1 ; VNGT/HS/KDC - ;  
 ;;1.0;PATIENT REGISTRATION GUI;;Nov 15, 2010
 ;
 ; Copied from AGREPRT1
 ; 
 S AGBDT=AG("B")-.1,AG("FAC")=AGGDUZ2
 D ^AGPATCNT
 K DUOUT,DTOUT,DFOUT
 D NOW^AG S X="as of : "_AGTIME D CTR^AG S AGTIME=X U IO G ^AGREPRT2:AG("TYPE")>2
 X ^%ZOSF("UCI") S X="UCI: "_$P(Y,",") D CTR^AG S AGUCI=X,X=$P(^DIC(4,AGGDUZ2,0),U) D CTR^AG S AG("LOC")=X,AG("USR")=$P(^VA(200,DUZ,0),U),AGBM=IOSL-10 I $D(AGIO),AGIO=IO S AGBM=IOSL-4
 S AGBDTS=AGBDT
 D SCAN
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 D PRINT
 G END
SCAN ;scan dates
 S AGPGPG=0,(AG("NEW"),AG("KILL"),AG("EDIT"))=0
 K ^TMP($J)
 F  S AGBDTS=$O(^AGPATCH(AGBDTS)),AGBDT=AGBDTS\1 Q:(AGBDT=0!(AGBDT>AG("E")))  Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)  D LPAT
 Q
LPAT ;loop patients
 Q:'$D(^AGPATCH(AGBDTS,AGGDUZ2))
 S AG("DFN")=0 F  S AG("DFN")=$O(^AGPATCH(AGBDTS,AGGDUZ2,AG("DFN"))) Q:AG("DFN")=""  Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)  D PAT
 Q
PAT ;individual patient
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 S AG("GL")=^AGPATCH(AGBDTS,AGGDUZ2,AG("DFN")) I $P(AG("GL"),U,2)]""&($P(AG("GL"),U,3)="") S ^TMP($J,AGBDT,"K")=1+$G(^TMP($J,AGBDT,"K")) Q
 Q:'$D(^AUPNPAT(AG("DFN"),0))!'$D(^AUPNPAT(AG("DFN"),41,AGGDUZ2,0))
 I AG("GL")="NEW" S ^TMP($J,AGBDT,"N")=1+$G(^TMP($J,AGBDT,"N")),^TMP($J,AGBDT,"N",AG("DFN"))="" Q
 S:'$D(^TMP($J,AGBDT,"E",AG("DFN"))) ^TMP($J,AGBDT,"E",AG("DFN"))="",^TMP($J,AGBDT,"E")=1+$G(^TMP($J,AGBDT,"E"))
 Q
PRINT ;
 S (AG("EDIT"),AG("KILL"),AG("NEW"))=0
 S AGBDT="" F  S AGBDT=$O(^TMP($J,AGBDT)) Q:'AGBDT  Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)  D
 .S AG("EDIT")=AG("EDIT")+$G(^TMP($J,AGBDT,"E"))
 .S AG("NEW")=AG("NEW")+$G(^TMP($J,AGBDT,"N"))
 .S AG("KILL")=AG("KILL")+$G(^TMP($J,AGBDT,"K"))
 S AG("HD")="Statistics totals" D HDR
 U IO W !,"Total patients Added :",?30,AG("NEW")
 W !,"Total patients Edited :",?30,AG("EDIT")
 W !,"Total patients Removed :",?30,AG("KILL")
 W !,"Total patients Registered :",?30,AG("TOTPAT")
 ;D RTRN^AG
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 Q:AG("TYPE")=1
 S AGBDT="" F  S AGBDT=$O(^TMP($J,AGBDT)) Q:'AGBDT  Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)  D DAY
 Q
DAY ;print a days information
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 S ^TMP($J,AGBDT,"N")=$G(^TMP($J,AGBDT,"N"))
 S ^TMP($J,AGBDT,"E")=$G(^TMP($J,AGBDT,"E"))
 S ^TMP($J,AGBDT,"K")=$G(^TMP($J,AGBDT,"K"))
 D HDR
 W !!,?4,"NEW PATIENTS REGISTERED: ",^TMP($J,AGBDT,"N"),!!,?7,"PATIENT FILES EDITED: ",^TMP($J,AGBDT,"E"),!! I ^TMP($J,AGBDT,"K")>0 W ?6,"PATIENT FILES DELETED: ",^TMP($J,AGBDT,"K"),!!
 W ?2,"TOTAL PATIENTS REGISTERED: ",AG("TOTPAT"),!!
 ;D RTRN^AG
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 D NEW,EDIT
 Q
NEW I ^TMP($J,AGBDT,"N")'>0 Q
 S AG("HD")="THE FOLLOWING PATIENTS WERE ADDED:" D HDR,UCI1
 F DFN=0:0 S DFN=$O(^TMP($J,AGBDT,"N",DFN)) Q:'DFN  D FILE Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 ;D RTRN^AG
 Q
EDIT Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 Q:^TMP($J,AGBDT,"E")'>0
 S AG("HD")="THE FOLLOWING PATIENT FILES WERE EDITED:" D HDR,UCI1
 S DFN=0 F  S DFN=$O(^TMP($J,AGBDT,"E",DFN)) Q:'DFN  D FILE Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)
 ;D RTRN^AG
 Q
END K AG("HAT") ;D RTRN^AG 
 ;W $$S^AGVDF("IOF") *** commited out  to prevent control characters
END1 D ^%ZISC
 K ^UTILITY("DIQ1",$J),^TMP($J),A,AG,AGBDT,AGIO,AGTIME,AGBM,DA,DIC,DR,AG("LOC"),AGPGPG,AGUCI,AG("USR"),X,Y
 Q
FILE W ?5,$P(^DPT(DFN,0),U),?43,$J($P(^AUPNPAT(DFN,41,AGGDUZ2,0),U,2),6)
 ;K ^UTILITY("DIQ1",$J) S DIC=2,DR=.09,DA=DFN D EN^DIQ1 I $D(^(DR)) W ?52,^(DR)
 W ?52,$$GET1^DIQ(9000001,DFN_",",1107.3)  ;IHS/SD/TPF AG*7.1*4
 ;S DR=.03 D EN^DIQ1 I $D(^(DR)) W ?66,$J(^(DR),10)
 W ?66,$J($P($$GET1^DIQ(2,DFN_",",.03),"@"),10)  ;IHS/SD/TPF AG*7.1*4
 W ! ;I $Y>AGBM D RTRN^AG Q:$D(DUOUT)!$D(DTOUT)!$D(DFOUT)  D HDR
 Q
HDR ;S AGPGPG=AGPGPG+1,Y=AGBDT D DD^%DT W $$S^AGVDF("IOF"),!!,AG("USR"),?72,"page ",AGPGPG,!,AG("LOC"),!?23,"DAILY REGISTRATION ACTIVITY REPORT",!,AGUCI,!,AGTIME,!!,?80-(11+$L(Y))\2,"Report for ",Y,!!
 ;S AGPGPG=AGPGPG+1,Y=AGBDT D DD^%DT W $$S^AGVDF("IOF"),!!,AG("USR"),?72,"page ",AGPGPG,!,AG("LOC"),!?23,"DAILY REGISTRATION ACTIVITY REPORT",!,AGUCI,!,AGTIME,!!,?80-(36+$L(Y))\2,"Report from ",AGB," to ",AGE,!!  ;BAR*1.8*4 IM26905
 S AGPGPG=AGPGPG+1,Y=AGBDT D DD^%DT W !!,AG("USR"),?72,"page ",AGPGPG,!,AG("LOC"),!?23,"DAILY REGISTRATION ACTIVITY REPORT",!,AGUCI,!,AGTIME,!!,?80-(36+$L(Y))\2,"Report from ",AGB," to ",AGE,!!  ;BAR*1.8*4 IM26905
 Q
UCI1 I '$D(AG("TOP")) W ?80-$L(AG("HD"))\2,AG("HD"),!!,?13,"Name",?44,"IHS #",?56,"SSN",?70,"DOB",!,"-----------------------------------",?43,"------",?52,"-----------",?66,"------------",!
 K AG("TOP")
 Q