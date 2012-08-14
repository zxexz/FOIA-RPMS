APCLYV62 ; IHS/CMI/LAB - VISIT COUNTS BY PROV PRINT ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
INIT ;initialize variables
 I '$D(^XTMP("APCLYV6",APCLJOB,APCLBT)) S APCLPAGE=0 D HEAD W !,"No data to report." G END
 S APCLSTOP="",APCLPAGE=0
 S APCLTOT=0 ;total count
 ;
SET ;set up print fields
 S APCLCS=0
SET1 S APCLCS=$O(^XTMP("APCLYV6",APCLJOB,APCLBT,APCLCS)) G FINAL:APCLCS=""
 S APCLPRN=0
SET2 S APCLPRN=$O(^XTMP("APCLYV6",APCLJOB,APCLBT,APCLCS,APCLPRN)) G SET1:APCLPRN=""
 S APCLPR=0
SET3 S APCLPR=$O(^XTMP("APCLYV6",APCLJOB,APCLBT,APCLCS,APCLPRN,APCLPR)) G SET2:APCLPR=""
 S (APCLVDAT,APCLPCNT)=0 D HEAD
SET4 S APCLVDAT=$O(^XTMP("APCLYV6",APCLJOB,APCLBT,APCLCS,APCLPRN,APCLPR,APCLVDAT))
 I APCLVDAT="" D TOTALS G END:APCLSTOP="^" G SET3
 S (APCLCL,APCLFLG)=0
SET5 S APCLCL=$O(^XTMP("APCLYV6",APCLJOB,APCLBT,APCLCS,APCLPRN,APCLPR,APCLVDAT,APCLCL)) G SET4:APCLCL="" S APCLCNT=^(APCLCL),APCLPCNT=APCLPCNT+APCLCNT
 I $Y>(IOSL-5) D PAGE
 G:APCLSTOP="^" END
 I 'APCLFLG W !,$E(APCLVDAT,4,5),"/",$E(APCLVDAT,6,7),"/",$E(APCLVDAT,2,3)
 W:APCLFLG ! W ?15,APCLCL,?60,$J(APCLCNT,5) S APCLFLG=1 G SET5
 ;
FINAL ;print grand totals
 I $Y>(IOSL-5) D PAGE
 W !!?30,"TOTAL PROVIDER ENTRIES: ",?60,$J(APCLTOT,5),!!
END ;
 D DONE^APCLOSUT
 K APCLPCNT,APCLTOT,APCLCL,APCLVDAT,APCLPAGE,APCLSTOP,APCLCNT
 K APCLCS,APCLPRN,APCLPR,APCLPCNT,APCLBD,APCLED,APCLFLG,APCLS
 K APCLPDFN,APCLPRV,APCLSTR
 K ^XTMP("APCLYV6",APCLJOB,APCLBT)
 Q
 ;
TOTALS ;print totals
 I $Y>(IOSL-5) D PAGE
 W !!?21,"TOTAL VISITS FOR PROVIDER:",?60,$J(APCLPCNT,5)
 S APCLTOT=APCLTOT+APCLPCNT
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="E" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLSTOP="^" Q
 Q
 ;
HEAD W:$D(IOF) @IOF S X=$P(^DIC(4,DUZ(2),0),"^"),APCLPAGE=APCLPAGE+1
 W !!,$P(^VA(200,DUZ,0),"^",2),?(80-$L(X)/2),X,?70,"Page ",APCLPAGE
 S X=$P($H,",",2) D TIME W !,Y
 S:'$D(APCLPRN) APCLPRN="" S X="VISIT COUNTS FOR "_APCLPRN W ?(80-$L(X)/2),X
 S:'$D(APCLCS) APCLCS="" S Y=DT X ^DD("DD") W !,Y,?80-$L(APCLCS)\2,"(",APCLCS,")"
 S X="Service Categories: " S Y="" F  S Y=$O(APCLSCAT(Y)) Q:Y=""  S X=X_Y_";"
 W !,$$CTR(X,80)
 W !?28,"for ",$E(APCLBD,4,5),"/",$E(APCLBD,6,7),"/",$E(APCLBD,2,3)
 W " to ",$E(APCLED,4,5),"/",$E(APCLED,6,7),"/",$E(APCLED,2,3)
 W !!,"VISIT DATES",?15,"CLINIC",?60,"NUMBER OF VISITS"
 W !,"-----------",?15,"------",?60,"----------------"
 Q
 ;
PAGE ;form feed to new page
 I IOST'?1"C-".E D HEAD Q
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="E" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLSTOP="^" Q
 I APCLSTOP'="^" D HEAD
 Q
TIME NEW %A,%B,%C S Y="" Q:'$D(X)  Q:X<0!(X>86400)
 S %A=X\60,%B=%A\60 S:%B>12 %B=%B-12 S:%B=0 %B=12 S:%B<10 %B=" "_%B
 S %C=$S(%A=0:"M ",%A=720:"N ",%A=1440:"M ",%A<720:"am",1:"pm")
 S Y=%B_":"_$E(%A#60+100,2,3)_" "_%C K %A,%B,%C Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------