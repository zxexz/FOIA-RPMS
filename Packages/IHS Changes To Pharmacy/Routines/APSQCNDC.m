APSQCNDC ;IHS/ASD/ENM/POC - FINDS PROBLEM NDC NUMBERS IN DRUG FILE [ 11/21/2002  10:37 AM ]
 ;;6.0;OUTPATIENT PHARMACY;**3,4**;11/20/2002
 ;CHECK NDCS FOR DRUG FILE
 ;FORMAT IT FOR SCREEN OR PRINTER
 S %ZIS="" ;NO QUEUEING
 D ^%ZIS
 N APSQIEN,APSQNDC,DIV,CNT,CNTGOOD,CNTBAD,NOWRITE,HEAD,PAGE,END
 S (CNT,CNTGOOD,CNTBAD)=0
 S NOWRITE=0
 S U="^"
 S (END,PAGE)=0
 U IO D @("HDR"_(2-($E(IOST,1,2)="C-")))
 S APSQIEN=0 F  S APSQIEN=$O(^PSDRUG(APSQIEN)) Q:(APSQIEN'=+APSQIEN)!END  D
 .I $S('$D(^PSDRUG(+APSQIEN,"I")):0,DT'>^("I"):0,1:1) Q  ;INACTIVE
 .I $P(^PSDRUG(APSQIEN,0),U,1)["OUTSIDE DRUG" Q  ;DONT SHOW THIS ONE
 .;Q:$P($G(^PSDRUG(+APSQIEN,9999999)),U,3)'=+PSOSITE S DIV="FOR DIVISION "_$P(^PS(59,+PSOSITE,0),U,1) ;MUST BE SAME DIVISION PATCH 4
 .S APSQNDC=$P($G(^PSDRUG(+APSQIEN,2)),U,4)
 .D HDR:$Y+5>IOSL
 .S CNT=CNT+1
 .I 'APSQNDC W !,?2,$E($P(^PSDRUG(+APSQIEN,0),U,1),1,20),?25," (",+APSQIEN,")",?40,"HAS NO NDC" S CNTBAD=CNTBAD+1 Q
 .S X=APSQNDC D  I '$G(X) W !,?2,$E($P(^PSDRUG(+APSQIEN,0),U,1),1,20),?25," (",+APSQIEN,")",?40,"HAS INCORRECT FORMAT - ",APSQNDC S CNTBAD=CNTBAD+1 Q
 ..I X'?5N1"-"4N1"-"2N K X Q
 .S CNTGOOD=CNTGOOD+1
 Q:END
 S NOWRITE=1 D HDR ;SO WONT WRITE PART OF HEADER FOR THIS SEGMENT
 W !
 W !,?2,"DRUGS WITH APPROPRIATE NDC NUMBERS: "_$J(CNTGOOD,5)
 W !,?2,"DRUGS WITH PROBLEM NDC NUMBERS:     "_$J(CNTBAD,5)
 W !,?2,"                                    ","------"
 W !,?2,"TOTAL DRUGS COUNTED:                "_$J(CNT,5)
 D ^%ZISC ;NEED TO CLOSE IT DUMMY IHS/OKCAO/POC 8/14/2001
 Q
HDR ;HEADER
 I $E(IOST,1,2)="C-" W !,"PRESS RETURN TO CONTINUE OR '^' TO EXIT:  " R X:DTIME S END='$T!(X="^") Q:END
HDR1 W @IOF
HDR2 S PAGE=PAGE+1
 ;W ?20,"HEADING",?(IOM-10),"PAGE:  ",$J(PAGE,3)
 ;S AZODATE=$$FMTE^XLFDT(AZOBDT,"2")_"-"_$$FMTE^XLFDT(AZOEDT,"2")
 ;S AZOLOC=$P(^AUTTLOC(DUZ(2),0),"^",2)
 S HEAD="INAPPROPRIATE NDC NUMBERS FOR ACTIVE DRUGS"_$G(DIV)
 W ?(IOM-$L(HEAD)-2/2),HEAD,?(IOM-10),"PAGE:  ",$J(PAGE,3)
 W:'$G(NOWRITE) !,?2,"DRUG",?25,"NUMBER",?40,"PROBLEM"
 Q