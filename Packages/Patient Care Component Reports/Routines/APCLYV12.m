APCLYV12 ; IHS/CMI/LAB - CO VISITS REPORT (PRINT) ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
INIT ;
 S APCLFAC=$P(^DIC(4,DUZ(2),0),"^")
 I '$D(^XTMP("APCLYV1",APCLJOB,APCLBT)) D HEAD W !!,"No visits to report" G END
 S APCLTOT=0,APCLSTOP=""
 S X=132 X ^%ZOSF("RM")
 S APCLBD=$E(APCLBD,4,5)_"/"_$E(APCLBD,6,7)_"/"_$E(APCLBD,2,3)
 S APCLED=$E(APCLED,4,5)_"/"_$E(APCLED,6,7)_"/"_$E(APCLED,2,3)
 S APCLCHMP=$O(^AUTNINS("B","CHAMPUS",0))
 I 'APCLCHMP S APCLCHMP=$O(^AUTNINS("B","TRICARE",0))
 ;
MAIN I $D(APCLOP) S APCLII="O" D PRINT,TOTALS G END:APCLSTOP="^"
 I $D(APCLIP) S APCLII="I" D PRINT,TOTALS G END:APCLSTOP="^"
 I $D(APCLDEN) S APCLII="D" D PRINT,TOTALS
 ;
END ;
 D DONE^APCLOSUT
 K APCLBD,APCLED,APCLPAT,APCLNAME,APCLHRCN,APCLBEN,APCLII,APCLSTOP,APCLTOT,APCLSUB,Y,APCLRET,APCLRETD,APCLCHMP
 K APCLVDT,APCLVDFN,APCLSSN,APCLFAC,J,APCLDSCH,X,APCLIP,APCLOP,APCLBENP,APCLIDFN,APCLSTR,APCLCFLG
 K APCLDEN,^XTMP("APCLYV1",APCLJOB,APCLBT)
 ;
 Q
PRINT ;
 D HEAD S APCLBEN=0
P1 S APCLBEN=$O(^XTMP("APCLYV1",APCLJOB,APCLBT,APCLII,APCLBEN)) Q:APCLBEN=""  S APCLNAME=0
P2 S APCLNAME=$O(^XTMP("APCLYV1",APCLJOB,APCLBT,APCLII,APCLBEN,APCLNAME)) G P1:APCLNAME="" S (APCLPAT,APCLSUB)=0
P3 S APCLPAT=$O(^XTMP("APCLYV1",APCLJOB,APCLBT,APCLII,APCLBEN,APCLNAME,APCLPAT)) I APCLPAT="" W:APCLII'="I" ?114,APCLSUB G P2
 ;
 S APCLVDT=0
P4 S APCLVDT=$O(^XTMP("APCLYV1",APCLJOB,APCLBT,APCLII,APCLBEN,APCLNAME,APCLPAT,APCLVDT)) G P3:APCLVDT="" S APCLVDFN=0
P5 S APCLVDFN=$O(^XTMP("APCLYV1",APCLJOB,APCLBT,APCLII,APCLBEN,APCLNAME,APCLPAT,APCLVDT,APCLVDFN)) G P4:APCLVDFN="" S APCLSTR=^(APCLVDFN)
 S APCLHRCN=$P(APCLSTR,"^") S:APCLII="I" APCLDSCH=$P(APCLSTR,"^",2)
 S APCLBENP=$P(^AUTTBEN(APCLBEN,0),"^",2) I APCLBENP="03",'$D(APCLCFLG) S APCLCFLG=""
 I APCLBENP'="03",$D(APCLCFLG) D TOTALS K APCLCFLG D HEAD
 S APCLBENP=$S(APCLBENP="03":"CO",APCLBENP="04":"DEP",APCLBENP="30":"APCLRET",1:"APCLRETD")
 S APCLSSN=$P(^DPT(APCLPAT,0),"^",9)
 S:APCLSSN]"" APCLSSN=$E(APCLSSN,1,3)_"-"_$E(APCLSSN,4,5)_"-"_$E(APCLSSN,6,9)
 ;
WRITE ;print line
 D PAGE:$Y>(IOSL-4) Q:APCLSTOP="^"  ;check for end of page
 W:APCLSUB=0 !,$E(APCLNAME,1,20),?23,$J(APCLHRCN,6),?33,APCLSSN,?48,APCLBENP
 I APCLII'="I",(APCLSUB'=0) W !
 D PRVTINS
 S X=$E(APCLVDT,4,5)_"/"_$E(APCLVDT,6,7)_"/"_$E(APCLVDT,2,3) W ?97,X
 I APCLII'="I" S APCLTOT=APCLTOT+1,APCLSUB=APCLSUB+1 G P5
 S X=$S(APCLDSCH="":"",1:$E(APCLDSCH,4,5)_"/"_$E(APCLDSCH,6,7)_"/"_$E(APCLDSCH,2,3))
 W ?110,X S X1=APCLDSCH,X2=APCLVDT D ^%DTC S:X=0 X=1 W ?123,X
 S APCLTOT=APCLTOT+X G P5
 ;
HEAD ;print page heading
 W:$D(IOF) @IOF,!?11,"*****Confidential Patient Data Covered by Privacy Act*****",!
 W !?132-$L(APCLFAC)/2,APCLFAC
 W !?45,"COMMISSIONED OFFICERS & DEPENDENTS VISITS"
 W !?55,APCLBD," to ",APCLED
 S X=$S(APCLII="O":"OUTPATIENT VISITS",APCLII="I":"INPATIENT VISITS",1:"DENTAL VISITS")
 W !?132-$L(X)/2,X,!
 F J=1:1:132 W "-"
 W !,"Patient Name",?23,"Chart #",?36,"SSN",?45,"CO or Dep"
 W ?58,"Sponsor",?80,"SSN"
 W ?97,$S(APCLII="I":"Admit Date",1:"Visit Date")
 W ?110,$S(APCLII="I":"Dsch Date",1:"No. of Visits")
 I APCLII="I" W ?122,"# of Days"
 W ! F J=1:1:132 W "-"
 W ! Q
 ;
PAGE ;form feed to new page
 I IOST'?1"C-".E D HEAD Q
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="E" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLSTOP="^" Q
 D HEAD
 Q
 ;
PRVTINS ;does patient have co dep info in prvt ins file?
 G PRV9:APCLCHMP=""
 G PRV9:APCLBENP="CO",PRV9:APCLBENP="APCLRET"
 S INS=$O(^AUPNPRVT("I",APCLCHMP,APCLPAT,0)) G PRV9:INS=""
 S APCLSTR1=^AUPNPRVT(APCLPAT,11,INS,0) W ?58,$P(APCLSTR1,"^",4)
 S X=$P(APCLSTR1,"^",2) W ?80,$E(X,1,3),"-",$E(X,4,5),"-",$E(X,6,9)
PRV9 Q
 ;
TOTALS ;print visit totals
 Q:APCLSTOP="^"
 I $Y>(IOSL-6) D PAGE
 I APCLII="O" W !!?80,"TOTAL OUTPATIENT VISITS:",?112,$J(APCLTOT,3)
 I APCLII="I" W !!?95,"TOTAL INPATIENT DAYS:",?121,$J(APCLTOT,3)
 I APCLII="D" W !!?80,"TOTAL DENTAL VISITS:",?112,$J(APCLTOT,3)
 S APCLTOT=0 ;reset for next category
 I IOST?1"C-".E R !!,"Enter <return> to continue or '^' to stop",APCLSTOP:DTIME S:'$T APCLSTOP="^" Q
 Q