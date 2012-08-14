ABME8MEA ; IHS/SD/SDR - 837 MEA Segment 
 ;;2.6;IHS 3P BILLING SYSTEM;**3**;NOV 12, 2009
 ;
EP ;EP - START HERE
 K ABMREC("MEA"),ABMR("MEA")
 S ABME("RTYPE")="MEA"
 D LOOP
 K ABME,ABM
 Q
LOOP ;LOOP HERE
 F I=10:10:40 D
 .D @I
 .I $D(^ABMEXLM("AA",+$G(ABMP("INS")),+$G(ABMP("EXP")),ABME("RTYPE"),I)) D @(^(I))
 .I $G(ABMREC("MEA"))'="" S ABMREC("MEA")=ABMREC("MEA")_"*"
 .S ABMREC("MEA")=$G(ABMREC("MEA"))_ABMR("MEA",I)
 Q
10 ;segment
 S ABMR("MEA",10)="MEA"
 Q
20 ;MEA01 - Measurement Reference ID code
 S ABMR("MEA",20)="TR"
 Q
30 ;MEA02 - Measurement Qualifier
 S ABMR("MEA",30)=""
 S ABMR("MEA",30)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),37,ABMJ,0)),U,19)
 Q
40 ;MEA03 - Measurement Value
 S ABMR("MEA",40)=""
 S ABMR("MEA",40)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),37,ABMJ,0)),U,21)
 Q