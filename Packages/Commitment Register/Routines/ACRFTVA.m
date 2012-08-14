ACRFTVA ;IHS/OIRM/DSD/THL,AEF - TRAVEL VOUCHER AUDIT REPORT;  [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;UTILITY TO PRINT TRAVEL VOUCHER AUDIT LIST
EN D EN1 Q:$D(ACRQUIT)!$D(ACROUT)
EXIT K ACR,ACRDOCDA,ACRQUIT,ACROUT,ACRRTN,ACRBEGIN,ACRBEG,ACREND,ACRDOC0,ACRDOC,ACRREF,ACRREFX,ACRREFDA,ACRDDATE,ACRLIST,ACRRCODE,ACRRREF,ACRREQST,ACRPERC,ACRMIN,ACRSTART,ACRRDATE,ACRINTRV,ACRLAST,ACRQUIT,ACROUT,ACRTVAI,ACRTVAJ,ACRWATCH
 K ^TMP("ACRTVA",$J)
 Q
EN1 D HEAD
 I '$O(^ACRSYS(1)) S ACRADA=1
 E  D AREA^ACRFAS
 Q:'$G(ACRADA)
 W !!,"Select range of dates for documents to include"
 W !,"on the TRAVEL VOUCHER AUDIT LIST:"
 W !
 D DATES^ACRFDATE
 Q:$D(ACRQUIT)!$D(ACROUT)
 I '$G(ACRBEGIN) S ACRQUIT="" Q
 D COUNT
 Q:$D(ACRQUIT)!$D(ACROUT)
 D LIST
 Q:$D(ACRQUIT)!$D(ACROUT)
 S ZTDESC="TRAVEL VOUCHER AUDIT LIST"
 S ZTDTH=$H
 D ^ACRFZIS
 Q
PALL ;
 F ACRLIST="LIST","DOCUMENTS" D PRINT
 D EXIT
 Q
PRINT ;EP;TO PRINT AUDIT REPORT
 D:ACRLIST="LIST" PHEAD
 S ACRLAST=ACRJ
 S ACRTVAI=1
 F ACRTVAJ=ACRSTART:ACRINTRV:ACRLAST Q:ACRTVAI>ACRMIN!$D(ACRQUIT)!$D(ACROUT)  D
 .S ACRDDATE=$O(^TMP("ACRTVA",$J,ACRTVAJ,""))
 .Q:ACRDDATE=""
 .S ACRDOCDA=$O(^TMP("ACRTVA",$J,ACRTVAJ,ACRDDATE,""))
 .Q:ACRDOCDA=""
 .S D0=ACRDOCDA
 .S ACRTVAI=ACRTVAI+1
 .I ACRLIST="DOCUMENTS" D  Q
 ..S ACRREQST=""
 ..S (ACRREFX,ACRREF)=600
 ..D ^ACRFQ
 .I ACRLIST="LIST" D ^ACRPTVA
 .I $G(IOSL)-5<$Y D
 ..D PAUSE^ACRFWARN
 ..D PHEAD:'$D(ACRQUIT)&'$D(ACROUT)
 S ACRWATCH=""
 D PAUSE^ACRFWARN
 D PHEAD
 S ACRTVAJ=""
 F  S ACRTVAJ=$O(^TMP("ACRTVA",$J,ACRTVAJ)) Q:ACRTVAJ=""!$D(ACROUT)!$D(ACRQUIT)  D
 .S ACRDATE=0
 .F  S ACRDDATE=$O(^TMP("ACRTVA",$J,ACRTVAJ,ACRDDATE)) Q:ACRDDATE=""!$D(ACROUT)!$D(ACRQUIT)  D
 ..S ACRDOCDA=0
 ..F  S ACRDOCDA=$O(^TMP("ACRTVA",$J,ACRTVAJ,ACRDDATE,ACRDOCDA)) Q:'ACRDOCDA  D
 ...S D0=ACRDOCDA
 ...S ACRDUZ=$P($G(^ACRDOC(ACRDOCDA,"TO")),U,9)
 ...Q:$P($G(^ACRAU(+ACRDUZ,1)),U,12)'=1
 ...I ACRLIST="DOCUMENTS" D  Q
 ....S ACRREQST=""
 ....S (ACRREFX,ACRREF)=600
 ....D ^ACRFQ
 ...I ACRLIST="LIST" D ^ACRPTVA
 ...I $G(IOSL)-5<$Y D
 ....D PAUSE^ACRFWARN
 ....D PHEAD:'$D(ACRQUIT)&'$D(ACROUT)
 I ACRLIST="LIST",$E($G(IOST),1,2)="C-" D
 .W !,"END OF REPORT..."
 .D PAUSE^ACRFWARN
 D:ACRRTN["PRINT" EXIT
 W @IOF
 Q
PHEAD ;
 D HEAD,H1
 W:$D(ACRWATCH) !!,"AUDIT WATCH LISTING"
 W !!,"DOCUMENT NO."
 W ?19,"TRAVELER"
 W ?51,"DEPART"
 W ?62,"RETURN"
 W !,"---------------"
 W ?19,"------------------------------"
 W ?51,"--------"
 W ?62,"--------"
 Q
HEAD ;REPORT HEADER
 W @IOF
 W !?20,"***************************"
 W !?20,"TRAVEL VOUCHER AUDIT REPORT"
 W !?20,"***************************"
 Q
H1 S Y=DT
 X ^DD("DD")
 W !?20,"REPORT DATE............: ",Y
 S Y=ACRBEGIN
 X ^DD("DD")
 W !?20,"FIRST TRAVEL START DATE: ",Y
 S Y=ACREND
 X ^DD("DD")
 W !?20,"LAST TRAVEL START DATE.: ",Y
 Q
LIST ;DETERMINE IF LIST OF DOCUMENTS OR ALL DOCUMENTS SHOULD BE PRINTED
 S DIR(0)="SO^1:Print List of Documents;2:Print a copy of each Document;3:Print BOTH the List AND Each Document"
 S DIR("A")="Which print option"
 S DIR("B")=1
 W !
 D DIR^ACRFDIC
 I '$G(Y) S ACRQUIT="" Q
 S ACRLIST=$S(Y=1:"LIST",Y=3:"ALL",1:"DOCUMENTS")
 S (ACRRTN,ZTRTN)=$S(Y'=3:"PRINT^ACRFTVA",1:"PALL^ACRFTVA")
 Q
COUNT ;COUNT NUMBER OF TV'S
 W !!
 K ^TMP("ACRTVA",$J)
 S ACRBEG=ACRBEGIN-.001
 S ACREND=ACREND+.999999
 S ACRJ=0
 F  S ACRBEG=$O(^ACRDOC("DD",ACRBEG)) Q:'ACRBEG!(ACRBEG>ACREND)!$D(ACRQUIT)!$D(ACROUT)  D
 .S ACRDOCDA=0
 .F  S ACRDOCDA=$O(^ACRDOC("DD",ACRBEG,ACRDOCDA)) Q:'ACRDOCDA!(ACRBEG>ACREND)!$D(ACRQUIT)!$D(ACROUT)  I $P($G(^ACROBL(ACRDOCDA,"APV")),U,8)="A" D
 ..S ACRDOC0=^ACRDOC(ACRDOCDA,0)
 ..Q:'$P(ACRDOC0,U,8)
 ..Q:ACRADA'=$P($G(^ACRPO(+$P(ACRDOC0,U,8),0)),U,19)
 ..S ACRDDATE=$P($P(^ACRDOC(ACRDOCDA,"TO"),U,14),".")
 ..S ACRRDATE=$P($P(^ACRDOC(ACRDOCDA,"TO"),U,15),".")
 ..Q:'ACRDDATE
 ..Q:$P(ACRDOC0,U,15)
 ..S ACRJ=ACRJ+1
 ..S ^TMP("ACRTVA",$J,ACRJ,ACRDDATE,ACRDOCDA)=""
 ..W "."
 W !!,"There are ",$S(ACRJ:ACRJ,1:"NO")," Signed Vouchers within the specified date range"
 I ACRJ=0 D  Q
 .W !
 .D PAUSE^ACRFWARN
 .S ACRQUIT=""
 S DIR(0)="SO^1:10;2:20;3:33;4:50;5:100"
 S DIR("A")="Percent of Vouchers to Audit"
 S DIR("B")=2
 W !
 D DIR^ACRFDIC
 I '$G(Y) S ACRQUIT="" Q
 S ACRPERC=Y(0)
 S ACRMIN=$P(ACRJ*ACRPERC/100,".")
 W !!,ACRMIN," documents will be selected for this audit list."
RANDOM I ACRPERC=100 S (ACRSTART,ACRINTRV)=1 Q
 S ACRSTART=$R($S(ACRPERC=10:10,ACRPERC=20:5,ACRPERC=33:3,ACRPERC=50:2,1:1))
 G:'ACRSTART RANDOM
 S ACRINTRV=$S(ACRPERC=10:10,ACRPERC=20:5,ACRPERC=33:3,ACRPERC=50:2,1:1)
 Q