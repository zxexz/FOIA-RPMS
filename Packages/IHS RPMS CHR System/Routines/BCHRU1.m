BCHRU1 ; IHS/CMI/LAB - CHR Report 1 ; 
 ;;2.0;IHS RPMS CHR SYSTEM;;OCT 23, 2012;Build 27
 ;
START ; 
 I '$G(DUZ(2)) W $C(7),$C(7),!!,"SITE NOT SET IN DUZ(2) - NOTIFY SITE MANAGER!!",!! Q
 I '$G(BCHRPT) W !,$C(7),$C(7),"REPORT NUMBER MISSING" Q
 D @BCHRPT
 S BCHJOB=$J,BCHBTH=$H
 D INFORM
GETDATES ;
BD ;get beginning date
 W ! S DIR(0)="D^:DT:EP",DIR("A")="Enter BEGINNING Date of Service for Report" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G XIT
 S BCHBD=Y
ED ;get ending date
 W ! S DIR(0)="D^"_BCHBD_":DT:EP",DIR("A")="Enter ENDING Date of Service for Report" S Y=BCHBD D DD^%DT S DIR("B")=Y,Y="" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S BCHED=Y
 S X1=BCHBD,X2=-1 D C^%DTC S BCHSD=X
 ;
PROG ;
 W !
 S BCHPRG=""
 S DIR(0)="Y",DIR("A")="Include data from ALL CHR Programs",DIR("B")="N",DIR("?")="If you wish to include visits from ALL programs answer Yes.  If you wish to tabulate for only one program enter NO." D ^DIR K DIR
 G:$D(DIRUT) BD
 I Y=1 S BCHPRG="" G CHRT
PROG1 ;enter program
 K X,DIC,DA,DD,DR,Y S DIC("A")="Which CHR Program: ",DIC="^BCHTPROG(",DIC(0)="AEMQ" D ^DIC K DIC,DA G:Y<0 PROG
 S BCHPRG=+Y
CHRT ;
 W !
 K BCHPROVT
 S DIR(0)="S^O:One CHR;A:All CHRs",DIR("A")="Include Data for",DIR("B")="A" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PROG
 S BCHPROVT=Y
 I BCHPROVT="A" G REG
CHR1 ;
 K DIC
 S DIC=200,DIC(0)="AEMQ",DIC("A")="Enter the CHR: " D ^DIC
 I Y=-1 G CHRT
 S BCHCHR1=+Y
REG ;
 S BCHREG="",BCHREGN=""
 S DIR(0)="S^R:Registered Patients;N:Non-Registered Patients;B:Both Registered and Non-Registered Patients",DIR("A")="Include which Patients",DIR("B")="B" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G CHRT
 S BCHREG=Y,BCHREGN=Y(0)
SUB ;
 ;W !
 S BCHSUB="",BCHSUB3=""
 ;I BCHRPT=4 S BCHSUB=0 G ZIS
 ;I BCHRPT'=3 S DIR(0)="Y",DIR("A")="Do you wish to subtotal by "_BCHSUBT,DIR("B")="N" KILL DA D ^DIR KILL DIR
 ;S DIR(0)="S^H:HEALTH PROBLEM;S:SERVICE CODE;N:NO SUBTOTALLING",DIR("A")="Sub total by",DIR("B")="N" KILL DA D ^DIR KILL DIR
 ;I $D(DIRUT) G REG
 ;S BCHSUB3=Y,Y=$S(BCHSUB3="N":0,1:1),BCHSUBT=$S(BCHSUB3="H":"HEALTH PROBLEM",BCHSUB3="S":"SERVICE CODE",1:"")
 S BCHSUB="N"
ZIS ;CALL TO XBDBQUE
 S XBRP="^BCHRU1P",XBRC="^BCHRU11",XBRX="XIT^BCHRU1",XBNS="BCH"
 D ^XBDBQUE
 D XIT
 Q
ERR W $C(7),$C(7),!,"Must be a valid date and be Today or earlier. Time not allowed!" Q
XIT ;
 K BCHPRG,BCHTOTC,BCHTOTS,BCHTOTA,BCHTOTT,BCHHA,BCHCA,BCHCC,BCHCS,BCHCT,BCHQUIT,BCHJOB,BCHBTH,BCHBT,BCHET,BCHBD,BCHED,BCHBDD,BCHEDD,BCHSD,BCHODAT,BCHPROG,BCHX,BCHC,BCHPROB,BCHPROBN,BCHR,BCHR0,BCHPG,BCHDT,BCHRPT,BCHCH
 Q
 ;
X1 ;
 S BCHCH="HEALTH PROBLEM",BCHSUBT="SERVICE CODE"
 Q
X2 ;
 S BCHCH="SERVICE",BCHSUBT="HEALTH PROBLEM"
 Q
1 ;
 S BCHCH="CHR",BCHSUBT="HEALTH PROBLEM"
 Q
2 ;
 S BCHCH="PATIENT AGE",BCHSUBT="HEALTH PROBLEM"
 Q
3 ;
 S BCHCH="GENDER",BCHSUBT="HEALTH PROBLEM"
 Q
4 ;
 S BCHCH="TRIBE",BCHSUBT="HEALTH PROBLEM"
 Q
5 ;
 S BCHCH="PROGRAM",BCHSUBT="HEALTH PROBLEM"
 Q
INFORM ;
 W:$D(IOF) @IOF
 W !?20,"**********  UNDUPLICATED PATIENT REPORT NO. ",BCHRPT,"  **********"
 W !!,"This report will present an unduplicated count of patients seen by ",BCHCH,".",!!
 Q
 ;
 ;
