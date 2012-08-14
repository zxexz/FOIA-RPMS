APCLAP5 ; IHS/CMI/LAB - APC visit counts by selected vars ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
START ; 
 I '$G(DUZ(2)) W $C(7),$C(7),!!,"SITE NOT SET IN DUZ(2) - NOTIFY SITE MANAGER!!",!! Q
 S APCLSITE=DUZ(2)
 S APCLJOB=$J,APCLBTH=$H
 D INFORM
 ;
GETDATES ;
BD ;get beginning date
 W ! S DIR(0)="D^:DT:EP",DIR("A")="Enter beginning Visit Date" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G XIT
 S APCLBD=Y
ED ;get ending date
 W ! S DIR(0)="DA^"_APCLBD_":DT:EP",DIR("A")="Enter ending Visit Date:  " S Y=APCLBD D DD^%DT S Y="" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S APCLED=Y
 S X1=APCLBD,X2=-1 D C^%DTC S APCLSD=X
 ;
CL ;choose to tally by clinic or location
 K APCLLOC,APCLLOCT,APCLCLNT,APCLCLOC
 S DIR(0)="S^C:CLINIC;F:FACILITY (LOCATION)",DIR("A")="Do you wish to tally by",DIR("B")="C" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 G:$D(DIRUT) BD
 S APCLCLOC=Y,APCLCLOC("NAME")=Y(0)
 G:APCLCLOC="F" F
CLINIC ;
 K APCLCLNT
 S X="CLINIC",DIC="^AMQQ(5,",DIC(0)="FM",DIC("S")="I $P(^(0),U,14)" D ^DIC K DIC,DA I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" G XIT
 D PEP^AMQQGTX0(+Y,"APCLCLNT(")
 I '$D(APCLCLNT) G CL
 S C=0,X=0 F  S X=$O(APCLCLNT(X)) Q:X'=+X  S C=C+1
 I C>12 W !,$C(7),$C(7),"I can't fit ",C," clinics on this report, please select 1-12 clinics." G CLINIC
LOC ;get location
 S APCLLOC=$$GETLOC^APCLOCCK
 I APCLLOC=-1 G BD
 G ZIS
F ;enter location
 S X="LOCATION OF ENCOUNTER",DIC="^AMQQ(5,",DIC(0)="FM",DIC("S")="I $P(^(0),U,14)" D ^DIC K DIC,DA I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" G XIT
 D PEP^AMQQGTX0(+Y,"APCLLOCT(")
 I '$D(APCLLOCT) G CL
 S C=0,X=0 F  S X=$O(APCLLOCT(X)) Q:X'=+X  S C=C+1
 I C>12 W !,$C(7),$C(7),"I can't fit ",C," facilities on this report, please select 1-12 facilities." G F
ZIS ;call to XBDBQUE
DEMO ;
 D DEMOCHK^APCLUTL(.APCLDEMO)
 I APCLDEMO=-1 G LOC
 S XBRP="^APCLAP5P",XBRC="^APCLAP51",XBRX="XIT^APCLAP5",XBNS="APCL"
 D ^XBDBQUE
 D XIT
 Q
XIT ;
 K APCL1,APCL2,APCLAP,APCLBD,APCLBDD,APCLBT,APCLBTH,APCLCLNT,APCLCLOC,APCLDISC,APCLDT,APCLED,APCLEDD,APCLET,APCLJOB,APCLL,APCLLENG,APCLLOC,APCLLOCT,APCLODAT,APCLPG
 K APCLPRIM,APCLQUIT,APCLSD,APCLSITE,APCLSKIP,APCLSORT,APCLVD,APCLVDFN,APCLVREC,APCLX,APCLY
 K IO("Q"),%,Y,POP,DIRUT,ZTSK,ZTQUEUED,H,S,TS,M,DA,D0,DR,DIC,DIE,C,DIR,DIRUT,DR,%DT,DTOUT,DUOUT,J,X,X1,X2
 Q
INFORM ;
 W:$D(IOF) @IOF
 W !!,"This report will tally the number of visits by primary care providers, by date",!,"at the locations or to the clinics that you specify.  ",!
 W "A total number of 6 locations or clinics will fit on an 80 column report,",!,"you may specify up to 12 if you print the report with 132 columns."
 Q
 ;