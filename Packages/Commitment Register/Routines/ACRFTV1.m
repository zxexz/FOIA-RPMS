ACRFTV1 ;IHS/OIRM/DSD/THL,AEF - TRAVEL REPORT -CON'T;  [ 09/262005  2:53 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**3,19**;NOV 05, 2001
 ;;CONTINUATION OF ACRFTV
DISPLAY ;EP;TO SETUP TO DISPLAY PAGE AND COLUMN HEADER
 ;I "^CAN^TDEPT^PO^"'[(U_ACRTVT_U),"NDC"'[$E(ACRTVT) D  ;ACR*2.1*19.05 IM16848 -NOT NEEDED
 I "GFH"'[$E(ACRTVT) S (ACRFY,ACRALWDA,ACRSSADA,ACRSSA)=""
 I "GFH"[$E(ACRTVT) D
 . I ACRTVT="G" D   ;ACR*2.1*3.24
 . . S ACRDEPT=$P($G(^ACRALC(ACRZDA,0)),U,12) ;ACR*2.1*3.24
 . . S ACRDT=$G(^ACRALC(ACRZDA,"DT")) ;ACR*2.1*3.24
 . I ACRTVT="F" D   ;ACR*2.1*3.24
 . . S ACRDEPT=$P($G(^ACRLOCB(ACRZDA,0)),U,5) ;ACR*2.1*3.24
 . . S ACRDT=$G(^ACRLOCB(ACRZDA,"DT")) ;ACR*2.1*3.24
 . I ACRTVT="H" D   ;ACR*2.1*3.24
 . . S ACRDEPT=$P($G(^ACRALW(ACRZDA,0)),U,12) ;ACR*2.1*3.24
 . . S ACRDT=$G(^ACRALW(ACRZDA,"DT")) ;ACR*2.1*3.24
 ;S:ACRTVT="D" ACRDEPT=$P(^VA(200,ACRTVDA,0),U)  ;ACR*2.1*19.02 IM16848
 S:ACRTVT="D" ACRDEPT=$$NAME2^ACRFUTL1(ACRTVDA)  ;ACR*2.1*19.02 IM16848
 S:ACRTVT="TDEPT"!(ACRTVT="PO") ACRDEPT=ACRZDA
 S:ACRTVT="C" ACRDEPT=ACRDPTDA
 S:"^LOC^RC^AE^"[(U_ACRTVT_U) ACRDEPT="NOT SPECIFIED"
 Q
H1 ;EP;TO PRINT PAGE HEADER
 Q:$D(ACRQUIT)!$D(ACROUT)
 I $E(IOST,1,2)="C-" W @IOF
 W !,"TRAVEL REPORT"
 S Y=DT
 X ^DD("DD")
 W ?40,"DATE: ",Y
 S ACRPAGE=$G(ACRPAGE)+1
 W ?60,"PAGE: ",ACRPAGE
 I ACRTVT="CAN"!$D(ACRCANDA) D
 .S:ACRTVT="CAN" ACRCANDA=ACRZDA
 .W !!,"Report for CAN:  ",$P(^AUTTCAN(ACRCANDA,0),U)
 I ACRTVT'="CAN","ND"'[$E(ACRTVT) D
 .W !,"-----------------------"
 .W ?40,"----------------"
 .W ?60,"-------"
 .I $G(ACRSSA)]""&$G(ACRALWDA) D   ;ACR*2.1*3.24
 ..W !,"SUB-SUB ACT: ",ACRSSA
 ..W ?50,"ALLOWANCE: ",$P(^AUTTALLW(ACRALWDA,0),U)
 .I ACRTVT'="PO" W !,"DEPARTMENT.: ",$S(ACRTVT="F"!(ACRTVT="TDEPT")!(ACRTVT="C"):$P(^AUTTPRG(ACRDEPT,0),U)_" ("_ACRDEPT_")",1:ACRDEPT)
 .I ACRTVT="PO" W !,"PURCHASING OFFICE: ",$P(^DIC(4,+$G(^ACRPO(ACRDEPT,0)),0),U)," (",ACRDEPT,")"
 .W:$G(ACRFY)]"" ?50,"FY.......: ",$G(ACRFY) ;ACR*2.1*3.24 
 I ACRTVT="RC" D
 .W !!,"TRAVEL ORDERS WITH RENTAL VEHICLE"
 .W !
 I ACRTVT="LOC" D
 .W !!,"TRAVEL ORDERS TO SELECTED LOCATION: ",$P($G(^ACRPD(+$G(ACRLOC),0)),U)
 .W !
 I ACRTVT="AE" W !!,"TRAVEL ORDERS WHERE ACTUAL EXPENSES CLAIMED"
 I ACRTVT="NCC" W !!,"TRAVEL ORDERS ON WHICH A NON-CONTRACT CARRIER WAS USED"
 I ACRTVT="D" D
 .W !!
 .W:'$D(ACRDTAIL) "SUMMARY FOR "
 .W "TRAVELER: ",ACRDEPT
 S Y=ACRBEGIN
 X ^DD("DD")
 W !,"FOR TRAVEL BETWEEN..: ",Y
 S Y=ACREND
 X ^DD("DD")
 W "  AND: ",Y
H11 W:$D(ACRDTAIL) $$DASH^ACRFMENU
 Q
H2 W !,"------"
 W ?25,"---------------"
 W ?42,"---------------"
 W ?59,"---------------"
 W !?27,"OBLIGATIONS"
 W ?46,"PENDING"
 W !?29,"TO DATE"
 W ?44,"OBLIGATIONS"
H3 W !,"------"
 W ?25,"---------------"
 W ?42,"---------------"
 W ?59,"---------------"
 Q
CAN ;EP;TO SELECT CAN FOR TV
 S DIC="^AUTTCAN("
 S DIC(0)="AEMQ"
 S DIC("A")="Which CAN NO.: "
 W !
 D DIC^ACRFDIC
 I +Y<1 S ACRQUIT="" Q
 S ACRZDA=+Y
 S DIR(0)="FOA^4:4"
 S DIR("A")="Fiscal Year..: "
 W !
 D DIR^ACRFDIC
 I Y'?4N S ACRQUIT="" Q
 S ACRFY=Y
 Q
DEPT ;EP;TO SELECT DEPARTMENT
 I ACRTVT="TDEPT" D
 .S DIC="^AUTTPRG("
 .S DIC(0)="AEMQ"
 .S DIC("A")="Which DEPARTMENT/PROGRAM: "
 I ACRTVT="PO" D
 .S DIC="^ACRPO("
 .S DIC(0)="AEMQ"
 .S DIC("A")="Which PURCHASING OFFICE: "
 W !
 D DIC^ACRFDIC
 I +Y<1 S ACRQUIT="" Q
 S ACRZDA=+Y
 Q
C1 ;EP;
 S DIR(0)="YO"
 S DIR("A")="Print report for a specific CAN"
 S DIR("B")="NO"
 K ACRCANDA
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 I ACRY=1 D
 .S ACRZZDA=ACRZDA
 .D CAN
 .Q:$D(ACRQUIT)!$D(ACROUT)
 .S ACRCANDA=ACRZDA
 .S ACRZDA=ACRZZDA
 .K ACRZZDA
 Q
PDEPT ;EP;
 K ^TMP("ACRTV",$J)
 S ACRXREF=ACRTVT
 S ACRDPTDA=ACRZDA
 S ACRZDA=0
 S (ACRREQ,ACROBL,ACRSPT)=0
 F  S ACRZDA=$O(^ACRDOC(ACRXREF,ACRDPTDA,ACRZDA)) Q:'ACRZDA  D
 .Q:'$D(^ACRDOC(ACRZDA,"TO"))
 .S ACRTO=^ACRDOC(ACRZDA,"TO")
 .S ACRFR=$P(ACRTO,U,14)
 .S ACRTO=$P(ACRTO,U,15)
 .I ACRFR>(ACRBEGIN-1),ACRTO<(ACREND+1) D
 ..I $D(ACRINCMP) D  I $D(ACRQUIT) K ACRQUIT Q
 ...S ACRDOCDA=ACRZDA
 ...D INCOMP^ACRFTV3
 ..S:'$D(ACRTVTX) ACRTVTX=ACRTVT
 ..S ACRTVT="C"
 ..I $D(ACRBOTH) N ACRDTAIL S ACRDTAIL=""
 ..D SS4^ACRFTV3
 S ACRZDA=ACRDPTDA
 S ACRTVT=$S($G(ACRTVTX)]"":ACRTVTX,1:"TDEPT")
 K ACRZZDA,ACRTVTX
 D SS1^ACRFTV2
 D PAUSE^ACRFWARN
 W:$D(ACRDTAIL) @IOF
 Q
SS2 ;EP;TO PRINT DETAILED LISTING OF EACH TRAVEL ORDER
 D H1,SS3
 S ACROBJ=$S($G(ACRDTL1):"",1:"ALL")
 S ACRX=""
 F  S ACRX=$O(^TMP("ACRTV",$J,ACR,ACRX)) Q:ACRX=""!$D(ACRQUIT)!$D(ACROUT)  S ACR0=^(ACRX) D
 .I ACR'="ALL",ACROBJ'="ALL",ACROBJ'=ACR D
 ..S ACROBJ=ACR
 ..W !?10,"Object Code: ",ACROBJ
 .F ACRI=1:1:6,11:1:14,21 S @("ACR"_ACRI)=$P(ACR0,U,ACRI)
 .W !,$E(ACR1,4,7),$E(ACR1,2,3)
 .W ?7,ACR2
 .W ?22,ACR3
 .W ?50,$J($FN(ACR5,"P,",2),15)
 .W ?64,$J($FN(ACR6,"P,",2),15)
 .I ION>80 W ?80,$J($FN(ACR21,"P,",2),15)
 .W !,$E(ACR11,4,7),$E(ACR11,2,3)
 .W ?7,$S(ACRTVT="D":ACR14,1:$P(ACR0,U,10))
 .;I ACR13,ACRTVT'="D" W ?22,$E($P(^VA(200,ACR13,0),U),1,28)  ;ACR*2.1*19.02 IM16848
 .I ACR13,ACRTVT'="D" W ?22,$E($$NAME2^ACRFUTL1(ACR13),1,28)  ;ACR*2.1*19.02 IM16848
 .I ACR12]"",ACRTVT="D" W ?22,$E(ACR12,1,28)
 .I ION<81 W ?65,$J($FN(ACR21,"P,",2),15)
 .I $D(^TMP("ACRTV",$J,ACR,ACRX,"SIGS")) S ACRSIGS=^("SIGS") D SIGS
 .K ACRSIGS
 .I $Y>(IOSL-5) D PAUSE^ACRFWARN W @IOF D:'$D(ACRQUIT) H1,SS3
 Q
SS3 ;EP;TO PRINT COLUMN LABELS
 Q:$D(ACRQUIT)!$D(ACROUT)
 I $D(ACRDTAIL) D
 .W !,"BEGIN"
 .W:ION<81 ?68,"OBLIGATED"
 .W !,"END"
 .W ?7,"DOCUMENT NO."
 .W ?22,"PURPOSE OF TRAVEL/",$S(ACRTVT'="D":"TRAVELER",1:"DESTINATION")
 .W ?53,"REQUESTED"
 I '$D(ACRDTAIL) D
 .W !
 .W:ION<81 ?68,"OBLIGATED"
 .W !?53,"REQUESTED"
 I ION>80 D
 .W ?68,"OBLIGATED"
 .W ?84,"SPENT"
 W:ION<81 ?68,"SPENT"
 W $$DASH^ACRFMENU
 Q
SIGS ;CHECK EACH DOCUMENT IF ONLY INCOMPLETE TV'S ARE BEING REPORTED
 S ACRY=$P(ACR0,U,11)
 F ACRI=1:1:6 S ACRD=$P($P(ACRSIGS,U,ACRI),".") D DD
 S ACRSIGS=""
 W $$DASH^ACRFMENU
 Q
DD W:ACRI=1 !?7,"TO TRAVELER..: "
 W:ACRI=2 !?7,"TRAVELER SIG.: "
 I ACRD]"" D
 .W:ACRI=3 !?7,"RECOMMEND SIG: "
 .W:ACRI=4 !?7,"APPROVER SIG.: "
 W:ACRI=5 !?7,"AUDITOR SIG..: "
 W:ACRI=6 !?7,"CERTIFIER SIG: "
 S:'$D(ACRSIGT(ACRI)) ACRSIGT(ACRI)=0
 Q:ACRD=""
 W $E(ACRD,4,5),"-",$E(ACRD,6,7),"-",$E(ACRD,2,3)
 S X1=ACRD,X2=ACRY
 D ^%DTC
 W " (",$J(X,2),")"
 S ACRY=ACRD
 S $P(ACRSIGT(ACRI),U)=$P(ACRSIGT(ACRI),U)+1
 S $P(ACRSIGT(ACRI),U,2)=$P(ACRSIGT(ACRI),U,2)+X
 Q