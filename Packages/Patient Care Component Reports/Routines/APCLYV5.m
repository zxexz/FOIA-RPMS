APCLYV5 ; IHS/CMI/LAB - INPATIENT VISITS WITH ICD CODES ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;This report is to be used to list inpatient visits by code
 ;
 W:$D(IOF) @IOF W !!?22,"LISTING OF INPATIENT VISITS WITH ICD CODES"
 W !?30,"SORTED BY HEALTH RECORD NUMBER",!
 S APCLJOB=$J,APCLBTH=$H
F ;
 S DIC("A")="Run for which Facility of Encounter: ",DIC="^AUTTLOC(",DIC(0)="AEMQ" D ^DIC K DIC,DA G:Y<0 END
 S APCLLOC=+Y
TDATE ;GET TYPE OF DATE
 K DIR S DIR(0)="SB^A:ADMISSION DATE;D:DISCHARGE DATE",DIR("A")="Report Admissions by ADMISSION DATE or DISCHARGE DATE?",DIR("B")="D" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 G:$D(DIRUT) F
 S APCLSRT=Y,APCLX=Y(0),APCLTITL=$P(APCLX," ")_"S"
GETDATES ;
BD ;get beginning date
 K DIR W ! S DIR(0)="D^:DT:EP",DIR("A")="Enter beginning "_APCLX D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G END
 S APCLBD=Y
ED ;get ending date
 K DIR W ! S DIR(0)="DA^"_APCLBD_":DT:EP",DIR("A")="Enter ending "_APCLX_" Date:  " S Y=APCLBD D DD^%DT S Y="" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S APCLED=Y
 S X1=APCLBD,X2=-1 D C^%DTC S APCLSD=X
 ;
SRV ;
 K DIR S DIR(0)="YO",DIR("A")="Do you want ALL Treating Specialties",DIR("B")="YES" D ^DIR G BD:$D(DIRUT) I Y=1 S APCLSV=0 G ICD
 K DIR S DIR(0)="PO^45.7:EMQZ" D ^DIR G SRV:$D(DIRUT) S APCLSV=+Y
ICD ;
 ;IHS/CMI/LAB - change line below to say diagnosis
 K DIR S DIR(0)="S^1:Print all Visits;2:Print Visits for Diagnosis Code Range ;3:Print Visits for Procedure Code Range;4:Print Visits for Provider(s)",DIR("A")="Which visits should be printed" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 G:$D(DIRUT) SRV
 S APCLICD=Y
 I APCLICD=1 G ZIS
LKUP ;
 S X=$S(APCLICD=2:"DIAGNOSIS",APCLICD=3:"PROCEDURE (MEDICAL)",1:"PROVIDER"),DIC="^AMQQ(5,",DIC(0)="FM",DIC("S")="I $P(^(0),U,14)" D ^DIC K DIC,DA I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" G END
 D PEP^AMQQGTX0(+Y,"^XTMP(""APCLYV5"",APCLJOB,APCLBTH,""ICD"",")
 I '$D(^XTMP("APCLYV5",APCLJOB,APCLBTH,"ICD")) G SRV
 I $D(^XTMP("APCLYV5",APCLJOB,APCLBTH,"ICD","*")) S APCLICD=1
ZIS ;
DEMO ;
 D DEMOCHK^APCLUTL(.APCLDEMO)
 I APCLDEMO=-1 G LKUP
 S XBRC="^APCLYV51",XBRP="^APCLYV52",XBNS="APCL",XBRX="END^APCLYV5",XBNS("^XTMP(""APCLYV5"",APCLJOB,APCLBTH,")=""
 D ^XBDBQUE
END K %DT,%T,%Y,ZTSK,Y,POP,APCLBD,APCLED,APCLICD,APCLBICD,APCLEICD,IO("Q"),APCLBTH,APCLAC,APCLJOB,APCLSD,APCLSRT,APCLSTR1,APCLSV,APCLX,APCLSTR,APCLTITL,APCLLENG,APCLHRCN,APCLBT,APCLPROV
 K AMQQATN,AMQQCOMP,AMQQTXS,AMQQUNK,AMQQTAX,AMQQLINK,AMQQCTXS
 Q