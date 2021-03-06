BUD9RP7Q ; IHS/CMI/LAB - UDS REPORT DRIVER TABLE 6B ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
 ;
DMRACE1 ;EP - called from taskman
 ;S BUDPREN=1,BUDSITE=2582,BUDBD=3030101,BUDED=3031231
 ;S BUDQUIT=0
 D HEADER^BUD9RPTP Q:BUDQUIT  D T7H^BUD9RP7P
 W ?29,"|Unreported/",?49,"|",?69,"|",!
 W ?29,"|Refused to",?49,"|",?55,"Total",?69,"|",!
 W ?29,"|  Report",?49,"|",?69,"|",!
 D LINE^BUD9RP7P
 I $Y>(IOSL-3) D HEADER^BUD9RPTP Q:BUDQUIT  D T7H^BUD9RP7P
 W ?69,"|",!
 W $$CTR("SECTION C:  DIABETES BY RACE AND HISPANIC/LATINO IDENTITY",69),?69,"|",!  ;,?79,"|",!
 D LINE^BUD9RP7P
 W $$CTR("Patients 18 to 75 diagnosed with Type I or Type II diabetes:",69),?69,"|",!,$$CTR("Most recent test results",69),?69,"|",!  ;,?79,"|",!
 D LINE^BUD9RP7P
 W ?2,"9",?5,"Total patients",?29,"|",?49,"|",?69,"|",!  ;,?79,"|",!
 W ?5,"with diabetes",?29,"|",$$C($P($G(BUDSECTC(9)),U,16)),?49,"|",$$C($P($G(BUDSECTC(9)),U,17)),?69,"|",!  ;,?79,"|",!
 D LINE1^BUD9RP7P
 I $Y>(IOSL-3) D HEADER^BUD9RPTP Q:BUDQUIT  D T7H^BUD9RP7P
 W ?1,"10",?5,"Charts sampled or",?29,"|",?49,"|",?69,"|",!  ;,?79,"|",!
 W ?5,"EHR total",?29,"|",$$C($P($G(BUDSECTC(10)),U,16)),?49,"|",$$C($P($G(BUDSECTC(10)),U,17)),?69,"|",!  ;,?79,"|",!
 D LINE1^BUD9RP7P
 I $Y>(IOSL-3) D HEADER^BUD9RPTP Q:BUDQUIT  D T7H^BUD9RP7P
 W ?1,"11",?5,"Patients with ",?29,"|",?49,"|",?69,"|",!  ;,?79,"|",!
 W ?5,"HBA1c < 7%",?29,"|",$$C($P($G(BUDSECTC(11)),U,16)),?49,"|",$$C($P($G(BUDSECTC(11)),U,17)),?69,"|",!  ;,?79,"|",!
 D LINE1^BUD9RP7P
 I $Y>(IOSL-3) D HEADER^BUD9RPTP Q:BUDQUIT  D T7H^BUD9RP7P
 W ?1,"12",?5,"Patients with ",?29,"|",?49,"|",?69,"|",!  ;,?79,"|",!
 W ?5,"7% >= HBA1c <= 9%",?29,"|",$$C($P($G(BUDSECTC(12)),U,16)),?49,"|",$$C($P($G(BUDSECTC(12)),U,17)),?69,"|",!  ;,?79,"|",!
 D LINE1^BUD9RP7P
 I $Y>(IOSL-3) D HEADER^BUD9RPTP Q:BUDQUIT  D T7H^BUD9RP7P
 W ?1,"13",?5,"Patients with ",?29,"|",?49,"|",?69,"|",!  ;,?79,"|",!
 W ?5,"HBA1c > 9% OR No",?29,"|",?49,"|",?69,"|",!  ;,?79,"|",!
 W ?5,"test during year",?29,"|",$$C($P($G(BUDSECTC(13)),U,16)),?49,"|",$$C($P($G(BUDSECTC(13)),U,17)),?69,"|",!  ;,?79,"|",!
 D LINE1^BUD9RP7P
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
C(X,Y) ;
 I $G(Y)=1,+X=0 Q ""
 I $G(Y)=2 Q "********"
 S X2=0,X3=8
 D COMMA^%DTC
 Q X
