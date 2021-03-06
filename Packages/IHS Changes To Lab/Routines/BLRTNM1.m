BLRTNM1 ; IHS/HQT/MJL - SET IHS LAB TRANSACTION LOG - MICRO ; 14 Jun 2010  9:55 AM
 ;;5.2;IHS LABORATORY;**1010,1018,1028,1030**;NOV 01, 1997
 ;;
 ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER ^BLRTNM1")
 S BLRCMF="C"
 Q:$D(^LRO(69,BLRODT,1,BLRSEQ,0))<1    ; IHS/OIT/MKK - LR*5.2*1028 -- If no Data, skip.  PIMC correction.
 ; S BLRVAL=^LRO(69,BLRODT,1,BLRSEQ,0),BLRLRDFN=$P(BLRVAL,U,1),BLRODTM=$P(BLRVAL,U,5)
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1030 -- Naked Reference Issue
 S BLRVAL=$G(^LRO(69,BLRODT,1,BLRSEQ,0))
 S BLRLRDFN=$P(BLRVAL,U,1)
 S BLRODTM=$P(BLRVAL,U,5)
 ; ----- END IHS/OIT/MKK -- LR*5.2*1030
 S BLRDUZ=$P(BLRVAL,U,2),BLRDUZ2=DUZ(2)
 S BLRDTC=$P(BLRVAL,U,8),BLRLOCN=$P(BLRVAL,U,7)
 S BLRLOC="" I BLRLOCN'="" S BLRLOC=$O(^SC("B",BLRLOCN,"")) S:BLRLOC="" BLRLOC=$O(^SC("C",BLRLOCN,"")) I BLRLOC="" S X=BLRLOCN,DIC=44,DIC(0)="MX" D ^DIC S BLRLOC=+Y I Y=-1 S BLRLOC=""
 S BLRCLNC="" I BLRLOC'="" S BLRCLNC=$P(^SC(BLRLOC,0),U,7)
 ;S BLRCAT="A" I $L($G(^DPT(BLRLRDFN,.1))) S BLRCAT="I"
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018
  S BLRCAT="A" S X=$$GET1^DIQ(2,BLRLRDFN,.103) I X]"",X'["OBSERVATION" S BLRCAT="I"
 ;----- END IHS MODIFICATIONS MOD SUGGESTED BY LINDA FELS
 S BLRPROV=$P(BLRVAL,U,6)
 S BLRDFN=$P(^LR(BLRLRDFN,0),U,3),BLRFILE=$P(^LR(BLRLRDFN,0),U,2),BLRODTM=$G(BLRODTM)
 S BLR("SEQUENCE NUMBER")=$$GETIEN
 S BLR("LRFILE")=BLRFILE,BLR("LRDFN")=BLRLRDFN,BLR("PATIENT POINTER VALUE")=BLRDFN,BLR("ORDERING PROVIDER POINTER")=BLRPROV,BLR("VERIFIER POINTER")=BLRDUZ
 S BLR("ORDER DATE")=$P(BLRVAL,U,5),BLR("ORDER SEQ. NUMBER")=BLRSEQ,BLR("ORDER NUMBER")=^LRO(69,BLRODT,1,BLRSEQ,.1)
 D NOW^%DTC S BLR("ENTRY DATE/TIME")=%
 S BLR("COLLECTION DATE/TIME")=BLRDTC,BLR("CLINIC STOP CODE POINTER")=BLRCLNC
 S BLR("ORDERING LOCATION POINTER")=BLRLOC,BLR("DUZ(2)")=BLRDUZ2,BLR("I/O CATEGORY")=BLRCAT,BLR("ACCESSION NUMBER")=BLRACCN,BLR("COLLECTION SAMPLE POINTER")=BLRCOLSP
 S BLRLEV=1,BLRTEST1=BLRTEST,BLRLEV(1)=BLRTEST,BLRLEV(1,1)="",BLRATOM=1
 I BLR60F,'BLRSETP S BLRPAR=""
 D SET3 I BLR60F F  D SET2 Q:'BLRLEV
 K BLR,BLRLEV I BLR60F,'BLRSETP K BLRPAR
 Q
 ;
SET2 ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER SET2^BLRTNM1")
 S BLRATOM=$O(^LAB(60,BLRLEV(BLRLEV),2,0))="" I BLRATOM,BLRLEV=1 S BLRLEV=0 Q
 S:'BLRATOM BLRLEV=BLRLEV+1 S BLRLEV(BLRLEV,0)=$O(^LAB(60,BLRLEV(BLRLEV-1),2,$G(BLRLEV(BLRLEV,0),0)))
 I BLRLEV(BLRLEV,0) S BLRTEST1=+^LAB(60,BLRLEV(BLRLEV-1),2,$G(BLRLEV(BLRLEV,0),0),0),BLRLEV(BLRLEV)=BLRTEST1 D SET3 Q
 S BLRLEV(BLRLEV,0)=0,BLRLEV=BLRLEV-2
 Q
 ;
SET3 ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER SET3^BLRTNM1")
 S BLRMOD="MI"
 I BLR60F S BLRL60=^LAB(60,BLRTEST1,0),BLRMOD=$P(BLRL60,U,4),BLRCST=$P(BLRL60,U,11)
 S BLR("LAB MODULE")=BLRMOD
 ;S (BLRXII,BLRCPTS,BLRCPTP)="" F  S BLRFOUND=0,BLRXII=$O(^BLRCPT("C",BLRTEST1,BLRXII)) Q:(BLRXII=""!(BLRFOUND))  S BLRCPTF=$P(^BLRCPT(BLRXII,1),U,2) Q:BLRCPTF  D GETCPT Q
 D:BLRLEV=1 CPTCODE^BLRTN
 S BLRSPEC=$G(LRSPEC) D:BLRSPEC'="" SET4
 D:BLR60F
 .S BLR("CPT LAB CODE POINTER")=BLRCPTP,BLR("CPT CODE")=BLRCPTS,BLR("PANEL/TEST POINTER")=BLRTEST1,BLR("PANEL/TEST NAME")=BLRTESTN,BLR("LAB TEST LIST COST")=BLRCST,BLR("RESULT")=BLRRES S:BLRCMTS'="" BLR("COMMENTS")=BLRCMTS
 I 'BLR60F D
 .S BLR("PARENT POINTER")=BLRPAR,BLR("CPT LAB CODE POINTER")=BLRCPTP,BLR("CPT CODE")=BLRCPTS,BLR("RESULT")=BLRRES,BLR("ORGANISM")=BLRORG,BLR("PANEL/TEST POINTER")=BLRCULT
 .I BLRSPT'=6,BLRANTP'="" S BLR("ANTIBIOTIC")=BLRANTP,BLR("ANTIBIOTIC NAME")=BLRANTN,BLR("PCC ERROR FLAG")=BLRERFS
 .S:BLRSTGN'="" BLR("STAGE NAME")=BLRSTGN
 .S:BLRSTG'="" BLR("STAGE COUNTER")=BLRSTG Q
 I BLR60F S BLR("PARENT POINTER")=BLRLEV(BLRLEV,1) S:'BLRATOM BLRPAR=BLR("SEQUENCE NUMBER")
 S:+BLRCMPD BLR("COMPLETE DATE")=BLRCMPD
 D ^BLRNFLTL
 I 'BLRATOM S BLRLEV(BLRLEV+1,1)=BLRPAR
 S BLRCMTS=""
 Q
 ;
SET4 ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER SET4^BLRTNM1")
 S BLRZ=$G(^LAB(60,BLRTEST1,1,BLRSPEC,0)),BLRUNITS=$P($P(BLRZ,U,7)," ",1)
 ;[LR*5.2*1028;08/20/10;IHS/OIT/MPW]Added next 1 line
 I BLRUNITS?1N.N,$D(^BLRUCUM(BLRUNITS,0)) S BLRUNITS=$P($G(^BLRUCUM(BLRUNITS,0)),U,1)
 S BLR("UNITS")=BLRUNITS,BLR("SITE/SPECIMEN POINTER")=BLRSPEC
 Q
 ;
GETIEN() ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER GETIEN^BLRTNM1")
 I BLRCMF="C" D GETNEW Q BLRENT
 D
 .S BLRCRGL="^BLRTXLOG("_BLRCRSBS_")",BLRENT=$O(@BLRCRGL@(""),BLRDIR)
 .S:'BLRENT BLRERR=1
 .I BLRENT,BLROKCK'="" D @BLROKCK
 .I 'BLRERR,BLRBADCK'="" D @BLRBADCK
 .I BLRERR D EMSG Q
 .S BLRIEN=BLRENT_"," Q
 Q BLRENT
 ;
GETNEW ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER GETNEW^BLRTNM1")
 S BLRENT=$G(^BLRTXLOG("SEQ"))
 I 'BLRENT S BLRENT=$O(^BLRTXLOG("@"),-1) I BLRENT,'$D(^BLRTXLOG(1)) S BLRENT=0
 F BLRENT=BLRENT+1:1 Q:'$D(^BLRTXLOG(BLRENT))
 S BLRENTS="BLRENTS",BLRENTS(1)=BLRENT,^BLRTXLOG("SEQ")=BLRENT,BLRIEN="+1,"
 Q
 ;
CHKDT ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER CHKDT^BLRTNM1")
 S BLRCDT=$P(^BLRTXLOG(BLRENT,12),U)
 Q:$E(BLRCDT,1,3)=$E(DT,1,3)
 I ($E(BLRCDT,1,3)+1)'=$E(DT,1,3) S BLRERR=1,BLRDTER=1 Q  ;MORE THAN 1 YEAR AHEAD
 I $E(BLRCDT,4,5)<11 S BLRERR=1,BLRDTER=1 Q
 Q
 ;
EMSG ;
 ; Log an error because the crossreference isn't set.
 I 'BLRENT D
 .S BLRERR=1,BLRERROR(1)="Something wrong -- problem with IHS Lab Transaction Log Cross Reference: "_BLRCRGL
 Q
 ;
 ;
GETCPT ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER GETCPT^BLRTNM1")
 S BLRFOUND=1
 S BLRCPTP=BLRXII
 S (BLRCPTS,BLRCPTC)="" F  S BLRCPTC=$O(^BLRCPT(BLRXII,11,"B",BLRCPTC)) Q:BLRCPTC=""  S BLRCPTS=BLRCPTS_BLRCPTC_";"
 I $L(BLRCPTS,";")=2 S BLRCPTS=$P(BLRCPTS,";",1)
 I $E(BLRCPTS,$L(BLRCPTS))=";" S BLRCPTS=$E(BLRCPTS,$L(BLRCPTS))
 Q
 ;
