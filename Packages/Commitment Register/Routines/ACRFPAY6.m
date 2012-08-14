ACRFPAY6 ;IHS/OIRM/DSD/THL,AEF - CERTIFY AND EXPORT PAYMENT BATCH;  [ 07/20/2006  12:17 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**5,16,19,20**;NOV 05, 2001
 ;;
BATCHD ;EP - DISPLAY BATCH SUMMARY
 K ^TMP("ACRPAY",$J)
 K ^TMP("ACRBAT",$J)
 K ^TMP("ACR",$J)
 K ^TMP("ACRACR",$J)
 S ACRBATNO=$P(^AFSLAFP(ACRFYDA,1,ACRBATDA,0),U)
 S ACRBTYP=$P(^AFSLAFP(ACRFYDA,1,ACRBATDA,0),U,4)
 S ACRACH=$P(^AFSLAFP(ACRFYDA,1,ACRBATDA,2),U,8)
 S X=$O(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,0))
 S ACRREF=$P($G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,+X,0)),U,5)
 I ACRREF="" S ACRREF=$P($G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,+X,0)),U,6)
 S ACRBTYP=$S(ACRBTYP]"":ACRBTYP,ACRREF=""&("ABC"[$E(ACRBATNO)):"V",ACRREF=""&("DEF"[$E(ACRBATNO)):"T","^130^600^602^   ^"[(U_ACRREF_U):"T",1:"V")
 D BATHEAD
 K ACR,ACRBAT,ACRPAY,ACRTOT
 S (ACR,ACRJ)=0
 F  S ACR=$O(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACR)) Q:'ACR!$D(ACRQUIT)  D
 .Q:'$D(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACR,0))  S ACR0=$G(^(0)),ACR1=$G(^(1)),ACR2=$G(^(2))
 .S ACRJ=ACRJ+1
 .S X=$P(ACR0,U,$S(ACRBTYP="V":10,1:24))
 .;S X=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+X,0)),U),1:$P($G(^VA(200,+X,0)),U)),1,12)  ;ACR*2.1*19.02 IM16848
 .S X=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+X,0)),U),1:$$NAME2^ACRFUTL1(+X)),1,12)  ;ACR*2.1*19.02 IM16848
 .S:X="" X="NOT STATED"
 .S ^TMP("ACR",$J,X,ACRJ)=ACR_U_ACRFYDA_U_ACRBATDA
 S ACRK=0
 S ACR=""
 F  S ACR=$O(^TMP("ACR",$J,ACR)) Q:ACR=""  S ACRJ=0 F  S ACRJ=$O(^TMP("ACR",$J,ACR,ACRJ)) Q:'ACRJ  S ACRK=ACRK+1,^TMP("ACRACR",$J,ACRK)=^TMP("ACR",$J,ACR,ACRJ)
 S (ACRJ,ACRMAX)=0
 F  S ACRJ=$O(^TMP("ACRACR",$J,ACRJ)) Q:'ACRJ  D
 .S ACRMAX=ACRJ
 .S X=^TMP("ACRACR",$J,ACRJ)
 .S ACRFYDA=$P(X,U,2)
 .S ACRBATDA=$P(X,U,3)
 .S ACR=+X
 .Q:'ACRFYDA!'ACRBATDA!'ACR
 .Q:'$D(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACR,0))
 .S ACR0=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACR,0))
 .S ACR1=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACR,1))
 .S ACR2=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACR,2))
 .S ACR2=$P(ACR2,U,2)
 .I $E(ACR2,$L(ACR2))'="\" D
 ..S DA(2)=ACRFYDA
 ..S DA(1)=ACRBATDA
 ..S DIE="^AFSLAFP("_ACRFYDA_",1,"_ACRBATDA_",1,"
 ..S DA=ACR
 ..S DR="63////"_(ACR2)_"\"
 ..S:DR[";" DR=$TR(DR,";",",")
 ..D DIE^ACRFDIC
 .S ACRDOC=$E($P(ACR0,U,20),1,10)
 .S:ACRDOC=""!(ACRDOC="          ") ACRDOC=$E($P(ACR0,U,21),1,10)
 .D ODOC:ACRDOC]""
 .;S ^TMP("ACRPAY",$J,ACRJ)=ACR_U_$P(ACR0,U,$S(ACRBTYP="V":10,1:24))_U_ACRDOC_U_$S(ACRBTYP="V":+$P(ACR0,U,11)-$P(ACR0,U,12),ACRBTYP="T":$$NET^ACRFSSU(ACRFYDA,ACRBATDA,ACR),1:0) ;ACR*2.1*16.06 IM15505
 .N ACRTMP                                       ;ACR*2.1*16.06 IM15505
 .S ACRTMP=ACR_U_$P(ACR0,U,$S(ACRBTYP="V":10,1:24))_U_ACRDOC_U  ;ACR*2.1*16.06 IM15505
 .S ACRTMP=ACRTMP_$S(ACRBTYP="V":+$P(ACR0,U,11),ACRBTYP="T":$$NET^ACRFSSU(ACRFYDA,ACRBATDA,ACR),1:0)  ;ACR*2.1*16.06 IM15505
 .S ^TMP("ACRPAY",$J,ACRJ)=ACRTMP        ;ACR*2.1*16.06 IM15505
 .S ^TMP("ACRBAT",$J,$S($P(ACR0,U)]"":$P(ACR0,U),1:"NOTSTATED"))=ACRJ
 .S ACRTOT=$G(ACRTOT)+$P(^TMP("ACRPAY",$J,ACRJ),U,4)
 K ACRACR,ACRK,ACR
 K ^TMP("ACR",$J)
 K ^TMP("ACRACR",$J)
 S ACRJJ=0
 F  S ACRJJ=$O(^TMP("ACRPAY",$J,ACRJJ)) Q:'ACRJJ!$D(ACRQUIT)  D
 .S X=^TMP("ACRPAY",$J,ACRJJ)
 .;S ACRPAYEE=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+$P(X,U,2),0)),U),1:$P($G(^VA(200,+$P(X,U,2),0)),U)),1,12)  ;ACR*2.1*19.02 IM16848
 .S ACRPAYEE=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+$P(X,U,2),0)),U),1:$$NAME2^ACRFUTL1(+$P(X,U,2))),1,12)  ;ACR*2.1*19.02 IM16848
 .W !,ACRJJ,?4,ACRPAYEE,?17,$P(X,U,3),?28,$J($FN($P(X,U,4),"P",2),11)
 .I '$D(^TMP("ACRPAY",$J,ACRJJ+10)) D  Q
 ..I ACRJJ#10=0 D PAUSE^ACRFWARN S ACRJJ=ACRJJ+10
 .S X=^TMP("ACRPAY",$J,ACRJJ+10)
 .;S ACRPAYEE=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+$P(X,U,2),0)),U),1:$P($G(^VA(200,+$P(X,U,2),0)),U)),1,12)  ;ACR*2.1*19.02 IM16848
 .;S ACRPAYEE=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+$P(X,U,2),0)),U),1:$$NAME2^ACRFUTL1($P(+X,U,2))),1,12)  ;ACR*2.1*19.02 IM16848   ; ACR*2.1*20.04  IM16848
 .S ACRPAYEE=$E($S(ACRBTYP="V":$P($G(^AUTTVNDR(+$P(X,U,2),0)),U),1:$$NAME2^ACRFUTL1(+$P(X,U,2))),1,12)  ;ACR*2.1*19.02 IM16848    ; ACR*2.1*20.04  IM16848
 .W ?39,"|",ACRJJ+10,?44,ACRPAYEE,?57,$P(X,U,3),?68,$J($FN($P(X,U,4),"P",2),11)
 .I ACRJJ#10=0 D PAUSE^ACRFWARN Q:$D(ACRQUIT)  S:ACRJJ#10=0 ACRJJ=ACRJJ+10
 W !?16,"----------- -----------"
 W !?15,"BATCH TOTAL: ",$J($FN($G(ACRTOT),"P",2),11)
 K ACRQUIT,ACROUT
 S DIR(0)="SO^1:Review ALL Payments;2:Review SELECTED Payments;3:ADD a Payment;4:"_$S('$D(ACRCERT)#2:"CLOSE",1:"CERTIFY")_" the Batch;5:DELETE a Payment;6:TRANSFER a Payment;7:CHANGE Payee Info;8:PRINT Related Document;N:EXIT Payment Review"
 S DIR("A")="Which one"
 S DIR("B")="EXIT Payment Review"
 D DIR^ACRFDIC
 I '+Y S ACRQUIT="" Q
 I +Y=1 D ALL Q
 I +Y=7 S ACRVSYNC=""
 I +Y=2!(+Y=7) D  Q
 .D WHICHP
 .I $D(ACRQUIT) K ACRQUIT Q
 .D SREV^ACRFPAY:'$D(ACRVSYNC)
 .D VSYNC^ACRFPAY4:$D(ACRVSYNC)
 .K ACRVSYNC
 I +Y=3 D ADDPAY^ACRFPAY Q
 I +Y=4 D CLOSEB^ACRFPAY4 Q
 I +Y=5 D DELETE^ACRFPAY4 K ACRQUIT Q
 I +Y=6 D TRANS^ACRFPAY2 K ACRQUIT Q
 I +Y=8 D PORR^ACRFPAYR K ACRQUIT Q
 Q
ODOC ;UPDATE OPEN DOCUMENT FILE POINTERS
 Q:'$D(^AFSLODOC("DOCNO",ACRDOC))
 S ACRDFYDA=$O(^AFSLODOC("DOCNO",ACRDOC,0))
 Q:'ACRDFYDA
 N ACRDDCDA
 S ACRDDCDA=$O(^AFSLODOC("DOCNO",ACRDOC,ACRDFYDA,0))
 Q:$P(ACR1,U,15)=ACRDFYDA&($P(ACR1,U,16)=ACRDDCDA)
 S DA(2)=ACRFYDA
 S DA(1)=ACRBATDA
 S DA=ACR
 S DIE="^AFSLAFP("_DA(2)_",1,"_DA(1)_",1,"
 S DR="43////"_ACRDFYDA_";44////"_ACRDDCDA
 D DIE^ACRFDIC
 Q
REPORTS ;EP;SELECT PAYMENT MANAGEMENT REPORTS
 F  D R1 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT,ACROUT
 Q
R1 W @IOF
 W !?10,"Select PAYMENT MANAGEMENT Report"
 S DIR(0)="SO^1:Document Payment History;2:Print Payment DHR's;3:Invoices without Receiving Reports;4:Interest Penalty Report;5:Prompt Payment Report;6:List Batches exported on specified date;7:Invoice Workload Report"
 S DIR(0)=DIR(0)_";8:Electronic funds Transfer Profile;9:Vendor Payment Notification Letters;10:Treasury Schedule Comparison;11:Appropriation List;12:Batch Payment Listing;13:Review Payments for One Tech only"
 S DIR(0)=DIR(0)_";14:Create ECS Schedule Flat File"
 S DIR("A")="Which report"
 W !
 D DIR^ACRFDIC
 I 'Y S ACRQUIT="" Q
 I Y=1 D LOCATOR^ACRFPAY2 K ACRQUIT Q
 I Y=2 D DHRPRINT^ACRFPAY2 K ACRQUIT Q
 I Y=3 D NORR K ACRQUIT Q
 I Y=4 D IPPR^ACRFPAYR Q
 I Y=5 D PPR^ACRFPPR Q
 I Y=6 D EXPLIST^ACRFPAY8 Q
 I Y=7 D INVRPT^ACRFPAY5 Q
 I Y=8 D EFTRPT^ACRFPAYE Q                  ;ACR*2.1*5.05
 I Y=9 D ZIS^ACRFPAYL Q
 I Y=10 D CASHREC^ACRFPAY7 Q
 I Y=11 D APPROP^ACRFPAY7 Q
 I Y=12 D PBAT^ACRFPAY7 Q
 I Y=13 D TECHPAY^ACRFPAY9 Q
 I Y=14 D EN^ACRFFF1 Q
 Q
SCHCHK ;EP;CHECK FOR CURRENT SCHEDULE NUMBER
 Q:$P($G(^AFSLAFP(ACRFYDA,1,ACRBATDA,2)),U,6)=""  S (ACRBSCH,ACRSNO(1))=$P(^(2),U,6)
 S DIR(0)="YO"
 S DIR("A",1)="Treasury Schedule Number: "_ACRSNO(1)
 S DIR("A",2)="has been assigned to this batch."
 S DIR("A",3)="  "
 S DIR("A")="Retain SCHEDULE NO. "_ACRSNO(1)
 S DIR("B")="YES"
 D DIR^ACRFDIC
 I Y'=1 K ACRSNO
 Q
NORR ;EP;PRINT INVOICES WITHOUT RECEIVING REPORTS
 S ZTDESC="INVOICE'S WITHOUT RECEIVING  RECEIVING REPORTS"
 S (ZTRTN,ACRRTN)="NO1^ACRFPAY6"
ZIS D ^ACRFZIS
 K ACRQUIT,ACROUT
 Q
NO1 ;EP;
 N ACRRO,ACRX,ACRDOCDA,ACRIVNO,ACRIVD
 D NOHEAD
 K ^TMP("ACRNORR",$J)
 S ACRX=""
 F  S ACRX=$O(^ACRDOC("L",ACRX)) Q:ACRX=""  D
 .S ACRDOCDA=0
 .F  S ACRDOCDA=$O(^ACRDOC("L",ACRX,ACRDOCDA)) Q:'ACRDOCDA  D
 ..I $P($G(^ACROBL(ACRDOCDA,"APV")),U,8)="A",$P($G(^ACRDOC(ACRDOCDA,5)),U,5),'$D(^ACRRR("AC",ACRDOCDA)) S ^TMP("ACRNORR",$J,$S($P(^ACRDOC(ACRDOCDA,0),U,2)]"":$P(^(0),U,2),1:$P(^(0),U)),ACRDOCDA)=""
 S ACRX=""
 F  S ACRX=$O(^TMP("ACRNORR",$J,ACRX)) Q:ACRX=""!$D(ACRQUIT)  D
 .S ACRDOCDA=$O(^TMP("ACRNORR",$J,ACRX,0))
 .S ACRRO=$P($G(^ACRDOC(ACRDOCDA,"REQ1")),U,6)
 .S ACRIVNO=$P($G(^ACRDOC(ACRDOCDA,"PO")),U,16)
 .S ACRIVD=$P($G(^ACRDOC(ACRDOCDA,"PO")),U,21)
 .S ACRLBDA=$P($G(^ACRDOC(ACRDOCDA,0)),U,6)
 .S ACRDEPT=$P($G(^ACRLOCB(+ACRLBDA,0)),U,5)
 .S ACRPHONE=$P($G(^AUTTPRG(+ACRDEPT,"DT")),U,6)
 .;S ACRRO=$P($G(^VA(200,+ACRRO,0)),U)  ;ACR*2.1*19.02 IM16848
 .S ACRRO=$$NAME2^ACRFUTL1(+ACRRO)  ;ACR*2.1*19.02 IM16848
 .W !,ACRX,?14,ACRIVNO,?30
 .S Y=ACRIVD
 .I Y X ^DD("DD") W Y
 .W ?45,$E(ACRRO,1,20),?66,$E(ACRPHONE,1,14)
 .I IOSL-4<$Y D PAUSE^ACRFWARN Q:$D(ACRQUIT)  D NOHEAD
 K ^TMP("ACRNORR",$J)
 D PAUSE^ACRFWARN
 Q
NOHEAD ;
 W @IOF
 W !?10,"Documents with Invoice recorded"
 W !?10,"but no Receiving Report on file."
 S Y=DT
 X ^DD("DD")
 W !!,"REPORT DATE: ",Y
 W !!,"DOCUMENT NO.",?14,"INVOICE NO.",?30,"RECEIVED",?45,"RECEIVING AGENT"
 W !,"------------",?14,"--------------",?30,"-------------",?45,"------------------------------"
 Q
BATHEAD ;EP;
 W @IOF
 W !!,"BATCH NO.: ",ACRBATNO,?20,"TREASURY SCHEDULE NO.: ",ACRBSCH
 W !!,"NO.",?4,"PAYEE",?17,"DOCUMENT",?28,"AMOUNT",?39,"|","NO.",?44,"PAYEE",?57,"DOCUMENT",?68,"AMOUNT"
 W !,"---",?4,"------------",?17,"----------",?28,"-----------",?39,"|","---",?44,"------------",?57,"----------",?68,"-----------"
 Q
WHICHP ;EP - SPECIFY PAYMENT(S) TO SELECT
 S DIR(0)="LO^1:"_ACRMAX
 S DIR("A")="Which PAYMENT(s)"
 W !
 D DIR^ACRFDIC
 I '+Y S ACRQUIT="" Q
 Q
ALL ;REVIEW ALL PAYMENTS
 K ACRSEQDA,ACRBAT,ACRQUIT
 S ACRSEQ=0
 F  S ACRSEQ=$O(^TMP("ACRPAY",$J,ACRSEQ)) Q:'ACRSEQ!$D(ACRQUIT)  S ACRSEQDA=+$G(^TMP("ACRPAY",$J,ACRSEQ)) I ACRSEQDA D PAYE^ACRFPAY I $O(^TMP("ACRPAY",$J,ACRSEQ)) D NEXT
 K ACRQUIT,ACRSEQDA,ACRBAT,ACRPAY,ACRQUIT
 Q
NEXT ;
 S DIR(0)="YO"
 S DIR("A")="Continue Payment Review/Edit"
 S DIR("B")="YES"
 W !
 D DIR^ACRFDIC
 S:+Y'=1 ACRQUIT=""
 Q