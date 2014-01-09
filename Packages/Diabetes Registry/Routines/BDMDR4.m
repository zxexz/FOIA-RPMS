BDMDR4 ; IHS/CMI/LAB - patients w/o TB TX ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**6**;JUN 14, 2007;Build 6
 ;
 ;
START ;
 D INFORM
 D EXIT
 D GETINFO
 I $D(BDMQUIT) D EXIT Q
 Q
INFORM ;
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC)
 W !,$$CTR($$USR)
 W !!,"This report will list patients who have a positive PPD/TB who have",!,"no documentation of treatment being completed."
 W !,"Treatment Completed is defined as having Health Factor TB - TX COMPLETE",!,"documented.",!
 Q
 ;
GETINFO ;
 S (BDMTR,BDMREG,BDMSTAT,BDMND)=""
 S DIR(0)="S^R:Those who are members of a Register;A:All Patients",DIR("A")="List which subset of patients",DIR("B")="R" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S BDMQUIT="" Q
 S BDMTR=Y
 D @Y
 I $D(BDMQUIT) D EXIT Q
 D ZIS
 Q
R ;
 S BDMREG=""
 S DIC="^ACM(41.1,",DIC(0)="AEMQ",DIC("A")="Enter the Name of the Register: " D ^DIC
 I Y=-1 W !,"No register selected." S BDMQUIT="" Q
 S BDMREG=+Y
 ;get status
 S BDMSTAT=""
 S DIR(0)="Y",DIR("A")="Do you want to select register patients with a particular status",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G R
 I Y=0 S BDMSTAT="" Q
 ;which status
 S DIR(0)="9002241,1",DIR("A")="Which status",DIR("B")="A" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G R
 S BDMSTAT=Y
 Q
A ;
 Q
ZIS ;call to XBDBQUE
DEMO ;
 D DEMOCHK^BDMUTL(.BDMDEMO)
 I BDMDEMO=-1 G R
 S XBRP="PRINT^BDMDR4",XBRC="PROC^BDMDR4",XBRX="EXIT^BDMDR4",XBNS="BDM"
 D ^XBDBQUE
 D EXIT
 Q
EXIT ;clean up and exit
 I '$D(BDMGUI) D EN^XBVK("BDM")
 D ^XBFMK
 D KILL^AUPNPAT
 Q
PROC ;EP - called from XBDBQUE
 S BDMJOB=$J,BDMBTH=$H
 K ^XTMP("BDMDR4",BDMJOB,BDMBTH)
 D XTMP^BDMOSUT("BDMDR4","DM NOT ON PROBLEM LIST")
 I BDMTR="R" D REGPROC Q
 I BDMTR="A" D ALLPROC Q
 Q
ALLPROC ;
 ;get last dm dx, if less than last date, Q
 ;if null Q
 ;get # of dxs, if less than BDMnd q
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D CHK1SET
 Q
CHK1SET ;
 Q:$$DEMO^BDMUTL(DFN,$G(BDMDEMO))
 Q:$$DOD^AUPNPAT(DFN)]""
 Q:$P($G(^AUPNPAT(DFN,41,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,5)]""  ;IHS/CMI/GRL
 Q:$P($G(^AUPNPAT(DFN,41,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,2)=""  ;IHS/CMI/GRL
 S BDMTB=$$HASTB(DFN)
 Q:$E(BDMTB)'=1
 Q:$$HASTBTX(DFN)
 S ^XTMP("BDMDR4",BDMJOB,BDMBTH,"PATIENTS",$P(^DPT(DFN,0),U),DFN)=$P(BDMTB,"  ",2,999)
 Q
HASTB(P) ;
 ;positive ppd
 NEW BDMS,E,X
 S BDMS=$P($$PPD^BDMDA18(DFN,DT),"||",2)
 Q BDMS
 ;
HASTBTX(P) ;
 I '$G(P) Q ""
 NEW X,E,BDM,Y
 S Y="BDM("
 S X=P_"^LAST HEALTH TX COMPLETE" S E=$$START1^APCLDF(X,Y)
 I $D(BDM(1)) Q $P(BDM(1),U)
 Q ""
 ;
NUMDXS(P) ;
 I '$G(P) Q ""
 NEW X,E,BDM,Y
 S Y="BDM("
 S X=P_"^ALL DX [SURVEILLANCE DIABETES" S E=$$START1^APCLDF(X,Y)
 S (X,Y)=0
 F  S X=$O(BDM(X)) Q:X'=+X  S Y=Y+1
 Q Y
 ;
REGPROC ;
 ;$o through register, check status, if no DM on problem list
 ;set xtmp
 ;gather up patients from register in ^XTMP
 S X=0 F  S X=$O(^ACM(41,"B",BDMREG,X)) Q:X'=+X  D
 .I BDMSTAT]"",$P($G(^ACM(41,X,"DT")),U,1)=BDMSTAT S DFN=$P(^ACM(41,X,0),U,2) D CHKSET Q
 .I BDMSTAT="" S DFN=$P(^ACM(41,X,0),U,2) D CHKSET Q
 .Q
 Q
CHKSET ;
 Q:$$DOD^AUPNPAT(DFN)]""
 Q:$P($G(^AUPNPAT(DFN,41,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,5)]""   ;IHS/CMI/GRL
 Q:$P($G(^AUPNPAT(DFN,41,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,2)=""   ;IHS/CMI/GRL
 S BDMTB=$$HASTB(DFN)
 Q:$E(BDMTB)'=1
 Q:$$HASTBTX(DFN)
 S ^XTMP("BDMDR4",BDMJOB,BDMBTH,"PATIENTS",$P(^DPT(DFN,0),U),DFN)=$P(BDMTB,"  ",2,999)
 Q
PRINT ;EP - called from xbdbque
 S BDMIOSL=$S($G(BDMGUI):55,1:IOSL)
 S BDM80D="-------------------------------------------------------------------------------"
 S BDMPG=0 D HEAD
 I '$D(^XTMP("BDMDR4",BDMJOB,BDMBTH)) W !!,"NO PATIENTS TO REPORT" G EXIT
 S BDMNAME="" K BDMQ
 F  S BDMNAME=$O(^XTMP("BDMDR4",BDMJOB,BDMBTH,"PATIENTS",BDMNAME)) Q:BDMNAME=""!($D(BDMQ))  D
 .S DFN="" F  S DFN=$O(^XTMP("BDMDR4",BDMJOB,BDMBTH,"PATIENTS",BDMNAME,DFN)) Q:DFN=""!($D(BDMQ))  S BDMX=^XTMP("BDMDR4",BDMJOB,BDMBTH,"PATIENTS",BDMNAME,DFN) D
 ..I $Y>(BDMIOSL-4) D HEAD Q:$D(BDMQ)
 ..W !,$E(BDMNAME,1,20),?22,$$HRN^AUPNPAT(DFN,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2))),?29,$$DOB^AUPNPAT(DFN,"E"),?43,$P(^DPT(DFN,0),U,2),?47,$$FMTE^XLFDT($$LASTVD^APCLV1(DFN))
 ..W !?5,"TB Status: ",^XTMP("BDMDR4",BDMJOB,BDMBTH,"PATIENTS",BDMNAME,DFN)
 ..W !?5,"Last Documented TB Health Factor: ",$$LASTHF^BDMSMU(DFN,"TB STATUS","B")
 I $E(IOST)="C",IO=IO(0) S DIR(0)="EO",DIR("A")="End of report.  HIT RETURN" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 W:$D(IOF) @IOF
 K ^XTMP("BDMDR4",BDMJOB,BDMBTH),BDMJOB,BDMBTH
 Q
HEAD I 'BDMPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQ="" Q
HEAD1 ;
 W:$D(IOF) @IOF S BDMPG=BDMPG+1
 I $G(BDMGUI),BDMPG'=1 W !,"ZZZZZZZ"
 W !?13,"********** CONFIDENTIAL PATIENT INFORMATION **********"
 W !,$P(^VA(200,DUZ,0),U,2),?72,"Page ",BDMPG,!
 W ?(80-$L($P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U))/2),$P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U),!
 W $$CTR("PATIENTS W/POSITIVE PPD/TB W/O DOCUMENTED TX COMPLETE",80),!
 I BDMTR="R" W $$CTR("Patients on the "_$P(^ACM(41.1,BDMREG,0),U)_" Register",80),!
PIH W !,"PATIENT NAME",?22,"HRN",?29,"DOB",?47,"LAST VISIT",!,BDM80D
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
TEST ;
 D BDMG("R",1,"A")
 Q
BDMG(BDMTR,BDMREG,BDMSTAT,BDMDEMO) ;EP - GUI DMS Entry Point
 S BDMND=$G(BDMND)
 S BDMGUI=1
 S BDMLDAT=$G(BDMLDAT)
 NEW BDMNOW,BDMOPT,BDMIEN
 S BDMOPT="Patients w/POS PPD/TB w/o TX"
 D NOW^%DTC
 S BDMNOW=$G(%)
 K DD,DO,DIC
 S X=DUZ_BDMNOW
 S DIC("DR")=".02////"_DUZ_";.03////"_BDMNOW_";.06///"_$G(BDMOPT)_";.07////R"
 S DIC="^BDMGUI(",DIC(0)="L",DIADD=1,DLAYGO=9003201.4
 D FILE^DICN
 K DIADD,DLAYGO,DIC,DA
 I Y=-1 S BDMIEN=-1 Q
 S BDMIEN=+Y
 S BDMGIEN=BDMIEN  ;cmi/maw added
 D ^XBFMK
 K ZTSAVE S ZTSAVE("*")=""
 ;D GUIEP for interactive testing
 S ZTIO="",ZTDTH=$$NOW^XLFDT,ZTRTN="GUIEP^BDMDR4",ZTDESC="GUI DM PTS TB" D ^%ZTLOAD
 D EXIT
 Q
GUIEP ;EP
 D PROC
 K ^TMP($J,"BDMDR4")
 S IOM=80
 D GUIR^XBLM("PRINT^BDMDR4","^TMP($J,""BDMDR4"",")
  S X=0,C=0 F  S X=$O(^TMP($J,"BDMDR4",X)) Q:X'=+X  D
 .S BDMDATA=^TMP($J,"BDMDR4",X)
 .I BDMDATA="ZZZZZZZ" S BDMDATA=$C(12)
 .S ^BDMGUI(BDMIEN,11,X,0)=BDMDATA,C=C+1
 S ^BDMGUI(BDMIEN,11,0)="^^"_C_"^"_C_"^"_DT_"^"
 S DA=BDMIEN,DIK="^BDMGUI(" D IX1^DIK
 D ENDLOG
 K ^TMP($J,"BDMDR4")
 D EXIT
 S ZTREQ="@"
 Q
 ;
ENDLOG ;-- write the end of the log
 D NOW^%DTC
 S BDMNOW=$G(%)
 S DIE="^BDMGUI(",DA=BDMIEN,DR=".04////"_BDMNOW_";.07////C"
 D ^DIE
 K DIE,DR,DA
 Q