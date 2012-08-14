ABMUBLST ; IHS/SD/SDR - 3PB/UFMS Bills not export report   
 ;;2.6;IHS 3P BILLING SYSTEM;**4**;NOV 12, 2009
 ; New routine - v2.6 p4
 ;
DT ;
 W !!," ============ Entry of APPROVAL DATE Range =============",!
 S DIR("A")="Enter STARTING APPROVAL DATE for the Report"
 S DIR(0)="DO^::EP"
 S DIR("B")="10/01/2008"
 D ^DIR
 Q:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 S ABMY("DT",1)=Y
 W !
 S DIR("A")="Enter ENDING DATE for the Report"
 S DIR("B")="TODAY"
 D ^DIR
 K DIR
 Q:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 S ABMY("DT",2)=Y
 I ABMY("DT",1)>ABMY("DT",2) W !!,*7,"INPUT ERROR: Start Date is Greater than than the End Date, TRY AGAIN!",!! G DT
 I ABMY("DT",1)<3081001 W !!,*7,"INPUT ERROR: Start Date must be on or before 10/01/2008, TRY AGAIN!",!! G DT
SEL ;
 ; Select device
 S DIR(0)="F"
 S DIR("A")="Enter Path"
 S DIR("B")=$P($G(^ABMDPARM(DUZ(2),1,4)),"^",7)
 D ^DIR K DIR
 Q:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 S ABMPATH=Y
 S DIR(0)="F",DIR("A")="Enter File Name"
 D ^DIR K DIR
 Q:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 S ABMFN=Y
PRINT ;EP
 ; Callable point for queuing
 S ABME("PG")=0
 D GETDATA
 D WRITE  Q:(IOST["C")&(($G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 W !!,$$EN^ABMVDF("HIN"),"E N D   O F   R E P O R T",$$EN^ABMVDF("HIF"),!
 I $E(IOST)="C" S DIR(0)="E" D ^DIR K DIR
 I $E(IOST)="P" W $$EN^ABMVDF("IOF")
 I $D(IO("S")) D ^%ZISC
 D CLOSE^%ZISH("ABM")
 W "DONE"
 K ABME
 Q
GETDATA ;
 W !!,"Searching...."
 K ABMPSFLG,ABMLOC
 K ^TMP($J,"ABMUBLST")
 S ABMLOC=DUZ(2)
 S:$G(ABMP("LDFN"))="" ABMP("LDFN")=DUZ(2)
 S:$G(ABMP("VDT"))="" ABMP("VDT")=DT
 S ABMPAR=0
 F  S ABMPAR=$O(^BAR(90052.05,ABMPAR)) Q:+ABMPAR=0  D  Q:($G(ABMPSFLG)=1)
 .I $D(^BAR(90052.05,ABMPAR,ABMP("LDFN"))) D
 ..; Use A/R parent/sat is yes, but DUZ(2) is not the parent for this 
 ..; visit location
 ..Q:$P($G(^BAR(90052.05,ABMPAR,ABMP("LDFN"),0)),U,3)'=ABMPAR
 ..Q:$P($G(^BAR(90052.05,ABMPAR,ABMP("LDFN"),0)),U,6)>ABMP("VDT")
 ..Q:$P($G(^BAR(90052.05,ABMPAR,ABMP("LDFN"),0)),U,7)&($P(^(0),U,7)<ABMP("VDT"))
 ..S ABMLOC=ABMPAR,ABMPSFLG=1
 K ABMP("SITES")
 S ABMP("LDFN")=0
 F  S ABMP("LDFN")=$O(^BAR(90052.05,ABMLOC,ABMP("LDFN"))) Q:'ABMP("LDFN")  D
 .Q:$P($G(^BAR(90052.05,ABMPAR,ABMP("LDFN"),0)),U,3)'=ABMPAR
 .Q:$P($G(^BAR(90052.05,ABMPAR,ABMP("LDFN"),0)),U,6)>ABMP("VDT")
 .Q:$P($G(^BAR(90052.05,ABMPAR,ABMP("LDFN"),0)),U,7)&($P(^(0),U,7)<ABMP("VDT"))
 .S ABMP("SITES",ABMP("LDFN"))=""
 ;
 S ABMY("DT",1)=$G(ABMY("DT",1))-.5
 S ABMY("DT",2)=ABMY("DT",2)_".999999"
 S ABMDUZ2=0
 F  S ABMDUZ2=$O(^ABMDBILL(ABMDUZ2)) Q:'ABMDUZ2  D
 .S ABMADIEN=$O(^AUTTLOC(DUZ(2),11,9999999),-1)
 .I +$G(ABMADIEN)&($P($G(^AUTTLOC(DUZ(2),11,ABMADIEN,0)),U,3)'="1") Q
 .S ABMP("BDFN")=0
 .F  S ABMP("BDFN")=$O(^ABMDBILL(ABMDUZ2,ABMP("BDFN"))) Q:'ABMP("BDFN")  D
 ..S ABMP("ADT")=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),1)),U,5)
 ..Q:(ABMP("ADT")<ABMY("DT",1))
 ..Q:(ABMP("ADT")>ABMY("DT",2))
 ..Q:($D(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),69,0)))
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U)=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),2)),U,2)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,2)=$P($G(^AUTNINS($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,8),2)),U)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,3)=$P($G(^AUTNINS($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,8),0)),U)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,6)=$J($FN($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),2)),U),",",2),10)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,7)=$$CDT^ABMDUTL($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),1)),U,5))
 ..S ABMBILL=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U)
 ..S ABMP("LDFN")=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,3)
 ..S ABMP("PDFN")=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,5)
 ..S ABMBILL=ABMBILL_$S($P($G(^ABMDPARM(ABMDUZ2,1,2)),U,4)]"":"-"_$P($G(^ABMDPARM(ABMDUZ2,1,2)),U,4),1:"")
 ..I $P($G(^ABMDPARM(ABMDUZ2,1,3)),U,3),$P($G(^AUPNPAT(ABMP("PDFN"),41,ABMP("LDFN"),0)),U,2) S ABMBILL=ABMBILL_"-"_$P(^AUPNPAT(ABMP("PDFN"),41,ABMP("LDFN"),0),U,2)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,8)=ABMBILL
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,9)=$P($G(^VA(200,$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),1)),U,4),0)),U)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,10)=ABMDUZ2
 ..S ABMITYP=$S($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),2)),U,2)'="":$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),2)),U,2),1:$P($G(^AUTNINS($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,8),2)),U))
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,11)=$P($T(@ABMITYP^ABMUVBCH),";;",2)
 ..S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,12)=$P($G(^AUTTLOC($P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,3),0)),U,2)
 ..S ABMP("UFMS")=+$O(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),69,99),-1)
 ..I ABMP("UFMS")'=0 D
 ...S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,4)=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),69,ABMP("UFMS"),0)),U)
 ...S $P(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")),U,5)=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),69,ABMP("UFMS"),0)),U,2)
 Q
WRITE ;
 W !!,"Creating file..."
 D OPEN^%ZISH("ABM",ABMPATH,ABMFN,"W")
 Q:POP
 U IO
 S ABMDUZ2=0
 W !,"Missing Bills List for "_$P($G(^AUTTLOC(DUZ(2),0)),U,2)
 W !,"BILL IEN^BILL ITYPE^INSURER TYPE^INSURER^UFMS TRANS^UFMS INV^BILL AMT^DT/TM APPR^BILL#^APPROV. BY^3P DUZ^ALL CAT^VISIT LOC"
 F  S ABMDUZ2=$O(^TMP($J,"ABMUBLST",ABMDUZ2)) Q:'ABMDUZ2  D
 .S ABMP("BDFN")=0
 .F  S ABMP("BDFN")=$O(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN"))) Q:'ABMP("BDFN")  D
 ..S ABMREC=$G(^TMP($J,"ABMUBLST",ABMDUZ2,ABMP("BDFN")))
 ..W !,ABMP("BDFN")_U_ABMREC
 K ^TMP($J,"ABMUBLST")
 Q