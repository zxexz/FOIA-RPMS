BDMDB1 ; IHS/CMI/LAB - IHS Diabetes Audit 2014 ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**7,8,10**;JUN 14, 2007;Build 12
 ;
BEGIN ;EP - called from option
 D TAXCHK^BDMDB19
 W:$D(IOF) @IOF
REGASK ;
 W !!!,$$CTR("ASSESSMENT OF DIABETES CARE, 2014")
 W !!,$$CTR("PCC DIABETES AUDIT")
 W !!
 S DIC="^ACM(41.1,",DIC(0)="AEMQ",DIC("A")="Enter the Official Diabetes Register: " D ^DIC K DIC
 I X="^" D XIT Q
 I Y=-1 S BDMDMRG="" W !,"NO Register Selected!!!  The CMS register will not be used in retrieving",!,"any data."
 S BDMDMRG=$S(Y=-1:"",1:+Y)
 S BDMJOB=$J,BDMBTH=$H
GETDATES ;
 S BDMSTP=0 D TIME I BDMSTP D XIT1,XIT Q
TYPE ;
 S BDMSTP=0
 K ^XTMP("BDMDM14",BDMJOB,BDMBTH),^TMP($J,"PATS")
 S BDMTYPE=""
 S DIR(0)="S^P:Individual Patients;S:Search Template of Patients;C:Members of a CMS Register",DIR("A")="Run the audit for",DIR("B")="P" KILL DA D ^DIR KILL DIR
 G:$D(DIRUT) GETDATES
 S BDMTYPE=Y
 S BDMSTP=0 D @BDMTYPE
 I BDMSTP G TYPE
IF ;PEP - called from BDM indivdual or epi
 S BDMSTP=0
 K DIR S DIR(0)="S^1:Print Individual Reports;2:Create AUDIT EXPORT file;3:Cumulative Audit Only;4:Both Individual and Cumulative Audits",DIR("A")="Enter Print option",DIR("B")="1" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G TYPE
 S BDMPREP=Y
 I BDMPREP=2 D FLAT Q:BDMSTP
IF2 ;
 I BDMPREP=1!(BDMPREP=4) S BDMPPN="" D  G:BDMSTP IF
 .K DIR S DIR(0)="Y",DIR("A")="Do you wish to print the Patient's Name on the audit sheet",DIR("B")="N" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S BDMSTP=1
 .S BDMPPN=Y
ZIS ;
DEMO ;
 S BDMDEMO="I"
 I BDMTYPE'="P" D DEMOCHK^BDMUTL(.BDMDEMO) I BDMDEMO=-1 G IF
 I BDMTYPE="P" S BDMDEMO="I"
 I BDMPREP=2 S XBRP="",XBRC="^BDMDB10",XBRX="XIT^BDMDB1",XBNS="BDM" D ^XBDBQUE,XIT Q
 W ! S DIR(0)="S^P:PRINT Output;B:BROWSE Output on Screen",DIR("A")="Do you wish to",DIR("B")="P" K DA D ^DIR K DIR
 I $D(DIRUT) D XIT Q
 S BDMOPT=Y
 I Y="B" D BROWSE,XIT Q
 S XBRP="^BDMDB1P",XBRC="^BDMDB10",XBRX="XIT^BDMDB1",XBNS="BDM"
 D ^XBDBQUE
 D XIT
 Q
BROWSE ;
 S XBRP="VIEWR^XBLM(""^BDMDB1P"")"
 S XBRC="^BDMDB10",XBRX="XIT^BDMDB1",XBIOP=0 D ^XBDBQUE
 Q
IAEP ;EP
 S BDMTYPE="P"
 S BDMPREP=1
 S BDMSTP=0
 G IF2
P ;
 S BDMSTP=0 K ^XTMP("BDMDM14",BDMJOB,BDMBTH),^TMP($J,"PATS")
P1 ;
 K DIC S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 I Y=-1,'$D(^XTMP("BDMDM14",BDMJOB,BDMBTH,"PATS")) W !,"No patients selected" S BDMSTP=1 Q
 I Y=-1 Q
 S ^XTMP("BDMDM14",BDMJOB,BDMBTH,"PATS",+Y)=""
 G P1
 ;
S ; Get patient name or cohort
 K ^XTMP("BDMDM14",BDMJOB,BDMBTH),^TMP($J,"PATS") S BDMSTP=0
 K DIC S DIC("A")="Enter Search Template Name: ",DIC("S")="I $P(^(0),U,4)=2!($P(^(0),U,4)=9000001)"
 S DIC="^DIBT(",DIC(0)="AEMQ" D ^DIC K DIC
 I Y=-1 S BDMSTP=1 W !,"No template selected." Q
 S BDMCNT=0 F BDMPD=0:0 S BDMPD=$O(^DIBT(+Y,1,BDMPD)) Q:'BDMPD  S BDMCNT=BDMCNT+1,^TMP($J,"PATS",BDMCNT,BDMPD)=""
 W !!,"There are ",BDMCNT," patients in the ",$P(^DIBT(+Y,0),U)," template/cohort.",!
 D PCP
 Q:BDMSTP
 D CC
 Q:BDMSTP
 D RAND
 Q
PCP ;
 S BDMSTP=0
 W !,"You have selected a register or template/cohort of patients. ",!,"You can run the audit just for the subset of patients in the cohort or register",!,"who live in a particular community or have a particular primary care provider.",!
 S DIR(0)="Y",DIR("A")="Limit the audit to a particular primary care provider ",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S BDMSTP=1 Q
 Q:'Y
 K DIC S DIC=$S($P(^DD(9000001,.14,0),U,2)[200:200,1:6),DIC(0)="AEMQ" D ^DIC K DIC
 I Y=-1 G PCP
 S BDMPCP=+Y
 S X=0 F  S X=$O(^TMP($J,"PATS",X)) Q:X'=+X  S P=$O(^TMP($J,"PATS",X,0)) I $P(^AUPNPAT(P,0),U,14)'=BDMPCP K ^TMP($J,"PATS",X,P)
 S (X,C)=0 F  S X=$O(^TMP($J,"PATS",X)) Q:X'=+X  S C=C+1
 W !!,C," patients will be used in the audit.",!
 Q
CC ;current community
 S BDMSTP=0
 W ! K DIR S DIR(0)="Y",DIR("A")="Limit the patients who live in a particular community ",DIR("B")="N" KILL DA D ^DIR K DIR
 I $D(DIRUT) S BDMSTP=1 Q
 Q:'Y
 K DIC S DIC="^AUTTCOM(",DIC(0)="AEMQ" D ^DIC K DIC
 I Y=-1 G CC
 S BDMCOM=$P(^AUTTCOM(+Y,0),U)
 S X=0 F  S X=$O(^TMP($J,"PATS",X)) Q:X'=+X  S P=$O(^TMP($J,"PATS",X,0)) I $P($G(^AUPNPAT(P,11)),U,18)'=BDMCOM K ^TMP($J,"PATS",X,P)
 S (X,C)=0 F  S X=$O(^TMP($J,"PATS",X)) Q:X'=+X  S C=C+1
 W !!,C," patients will be used in the audit.",!
 Q
C ;get register, status, random or not
 K ^XTMP("BDMDM14",BDMJOB,BDMBTH),^TMP($J,"PATS")
 S BDMCMS="",BDMSTP=0
 S DIC="^ACM(41.1,",DIC(0)="AEMQ",DIC("A")="Enter the Name of the Register: " D ^DIC K DIC
 I Y=-1 W !,"No register selected." S BDMSTP=1 Q
 S BDMCMS=+Y
 ;get status
 S BDMSTAT=""
 S DIR(0)="Y",DIR("A")="Do you want to select register patients with a particular status",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G C
 I Y=0 G C1
 ;which status
 S DIR(0)="9002241,1",DIR("A")="Which status",DIR("B")="A" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G C
 S BDMSTAT=Y
C1 ;
 ;gather up patients from register in ^XTMP
 K ^TMP($J,"PATS") S BDMCNT=0,X=0 F  S X=$O(^ACM(41,"B",BDMCMS,X)) Q:X'=+X  D
 .I BDMSTAT]"",$P($G(^ACM(41,X,"DT")),U,1)=BDMSTAT S BDMCNT=BDMCNT+1,^TMP($J,"PATS",BDMCNT,$P(^ACM(41,X,0),U,2))="" Q
 .I BDMSTAT="" S BDMCNT=BDMCNT+1,^TMP($J,"PATS",BDMCNT,$P(^ACM(41,X,0),U,2))=""
 I '$D(^TMP($J,"PATS")) W !,"No patients with that status in that register!" S BDMSTP=1 G C
 W !!,"There are ",BDMCNT," patients in the ",$P(^ACM(41.1,BDMCMS,0),U)," register with a status of ",BDMSTAT,".",!!
 D PCP
 Q:BDMSTP
 D CC
 Q:BDMSTP
 D RAND
 Q
RAND ;random sample or not
 S (X,BDMCNT)=0 F  S X=$O(^TMP($J,"PATS",X)) Q:X'=+X  S BDMCNT=BDMCNT+1
 W !!,"There are ",BDMCNT," patients selected so far to be used in the audit.",!
 S DIR(0)="S^A:ALL Patients selected so far;R:RANDOM Sample of the patients selected so far",DIR("A")="Do you want to select",DIR("B")="A" KILL DA D ^DIR KILL DIR
 G:$D(DIRUT) C
 I Y="A" S C=0 F  S C=$O(^TMP($J,"PATS",C)) Q:C'=+C  S X=$O(^TMP($J,"PATS",C,0)),^XTMP("BDMDM14",BDMJOB,BDMBTH,"PATS",X)=""
 I Y="A" K ^TMP($J,"PATS") Q
 S DIR(0)="N^2:"_BDMCNT_":0",DIR("A")="How many patients do you want in your random sample" KILL DA D ^DIR KILL DIR
 ;get random sample AND set xtmp
 I $D(DIRUT) S BDMSTP=1 Q
 S C=0 F N=1:1:BDMCNT Q:C=Y  S I=$R(BDMCNT) I I,$D(^TMP($J,"PATS",I)) S X=$O(^TMP($J,"PATS",I,0)),^XTMP("BDMDM14",BDMJOB,BDMBTH,"PATS",X)="",C=C+1 K ^TMP($J,"PATS",I,X)
 K ^TMP($J,"PATS")
 Q
TIME ;PEP - called from BDM Get fiscal year or time frame
 S BDMSTP=0
 S (BDMRBD,BDMRED,BDMADAT)=""
 W !!,"Enter the date of the audit.  This date will be considered the ending",!,"date of the audit period.  For most data items all data for the period one",!,"year prior to this date will be reviewed.",!
 S DIR(0)="D^::EPX",DIR("A")="Enter the Audit Date" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S BDMSTP=1 Q
 S BDMADAT=Y
 S BDMRED=$$FMTE^XLFDT(BDMADAT)
 S BDMBDAT=($E(BDMADAT,1,3)-1)_$E(BDMADAT,4,7),BDMBDAT=$$FMADD^XLFDT(BDMBDAT,1)
 S BDMRBD=$$FMTE^XLFDT(BDMBDAT)
 Q
 ;
XIT1 ;
 K ^BDMDBTA($J),^BDMDBTA("BDMEPI",$J)
 K ^XTMP("BDMTAX",BDMJOB,BDMBTH)  ;cmi/maw kill tmp storage of taxonomies
 K ^XTMP("BDMDM14",BDMJOB,BDMBTH),BDMJOB,BDMBTH
XIT ;
 I '$D(BDMGUI) D EN^XBVK("BDM"),EN^XBVK("AUPN")
 D ^XBFMK,KILL^AUPNPAT
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
FLAT ;EP
 W !!,"The file generated will be in a ""^"" delimited format.  You can use",!,"this file to review your data in EXCEL if you so choose.",!!
 S BDMFILE=""
 S DIR(0)="F^3:20",DIR("A")="Enter the name of the FILE to be Created (3-20 characters)" K DA D ^DIR K DIR
 I $D(DIRUT) S BDMSTP=1 Q
 I Y["/" W !!,"You cannot use '/' in the filename." G FLAT
 I Y["\" W !!,"You cannot use '\' in the filename." G FLAT
 S BDMFILE=$$LOW^XLFSTR(Y)_".txt"
 W !!,"I am going to create a file called ",BDMFILE," which will reside in ",!,"the "
 W $S($P($G(^APCCCTRL($S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,11)]"":$P(^APCCCTRL($S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U,11),$P($G(^AUTTSITE(1,1)),U,2)]"":$P(^AUTTSITE(1,1),U,2),$P(^AUTTSITE(1,0),U,21)=1:"/usr/spool/uucppublic",1:"C:\EXPORT")
 W " directory on your RPMS server. ",!
 W "It is the same directory that the data export globals are placed."
 W !,"See your site manager for assistance in finding the file",!,"after it is created.  PLEASE jot down and remember the following file name:",!?15,"**********    ",BDMFILE,"    **********",!
 W "It may be several hours (or overnight) before your report and flat file are ",!,"finished.",!
 W !,"The records that are generated and placed in file ",BDMFILE
 W !,"are in a format readable by Excel.  For a definition of the format",!,"please see your user manual.",!
 S DIR(0)="Y",DIR("A")="Is everything ok?  Do you want to continue",DIR("B")="Y" K DA D ^DIR K DIR
 I $D(DIRUT) S BDMSTP=1 Q
 I 'Y S BDMSTP=1 Q
 Q
WRITEF ;EP write flat file
 K ^BDMDBTA($J)
 Q:'$D(^BDMDBTA("BDMEPI",$J))
 ;load in epi definition to ^BDMDBTA($J,"BDM EPI"
 S I=$O(^BDMRECD("B","DM AUDIT 2014 EXPORT RECORD",0))
 S (X,O)=0,N="",T="" F  S O=$O(^BDMRECD(I,11,"AC",O)) Q:O'=+O  D
 .S X=$O(^BDMRECD(I,11,"AC",O,0))
 .S T=$P(^BDMRECD(I,11,X,0),U,1)
 .S N=N_$S(N]"":U,1:"")_T
 S ^BDMDBTA($J,1)=N
 S N=1
 ;MOVE RECORDS TO ^BDMDBTA($J,"BDM EPI"
 S X=0 F  S X=$O(^BDMDBTA("BDMEPI",$J,X)) Q:X'=+X  S N=N+1,^BDMDBTA($J,N)=^BDMDBTA("BDMEPI",$J,X)
 K ^BDMDBTA("BDMEPI",$J)
 S XBGL="BDMDBTA("
 K XBUF I $P($G(^APCCCTRL($S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,11)]"" S XBUF=$P(^APCCCTRL($S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U,11)
 S XBMED="F",XBFN=BDMFILE,XBTLE="SAVE OF DM AUDIT 2014 EXPORT RECORDS GENERATED BY -"_$P(^VA(200,DUZ,0),U)
 S XBQ="N",XBFLT=1,XBE=$J,XBF=$J
 D ^XBGSAVE
 ;check for error
 K ^BDMDBTA("BDMEPI",$J)
 K XBGL,XBMED,XBTLE,XBFN,XBF,XBQ,XBFLT,XBE
 K ^BDMDBTA($J)
 K ^XTMP("BDMTAX",BDMJOB,BDMBTH)
 K ^XTMP("BDMDM14",BDMJOB,BDMBTH),BDMJOB,BDMBTH
 Q
BDMG(BDMJOB,BDMBTH,BDMDMRG,BDMADAT,BDMTYPE,BDMSTMP,BDMPCP,BDMCOM,BDMRAND,BDMRCNT,BDMCMS,BDMSTAT,BDMPREP,BDMFILE,BDMDSP,BDMGIEN,BDMSDPI,BDMSDPG,BDMPPN,BDMDUZ2,BDMDEMO) ;PEP - gui call
 I $G(BDMJOB)="" S BDMIEN=-1 Q
 I $G(BDMBTH)="" S BDMIEN=-1 Q
 I $G(BDMADAT)="" S BDMIEN=-1 Q
 I $G(BDMTYPE)="" S BDMIEN=-1 Q
 I $G(BDMPREP)="" S BDMIEN=-1 Q
 S BDMDEMO=$E(BDMDEMO)
 S BDMDUZ2=$G(BDMDUZ2)
 I BDMFILE]"",$$UP^XLFSTR(BDMFILE)'[".TXT" S BDMFILE=BDMFILE_".txt"
 I BDMPREP=2,BDMFILE="" S BDMIEN=-1 Q
 I $G(BDMPPN)="" S BDMPPN=0
 S BDMRED=$$FMTE^XLFDT(BDMADAT)
 S BDMBDAT=($E(BDMADAT,1,3)-1)_$E(BDMADAT,4,7),BDMBDAT=$$FMADD^XLFDT(BDMBDAT,1)
 ;S BDMBDAT=$$FMADD^XLFDT(BDMADAT,-365)
 S BDMRBD=$$FMTE^XLFDT(BDMBDAT)
 S BDMGUI=1
 I BDMTYPE="P" S BDMDEMO="I"
 ;I BDMTYPE="S" S BDMDEMO="I"
 I $G(BDMDSP) D GUIEP Q
 ;create entry in fileman file to hold output
 N BDMOPT  ;maw
 S BDMOPT="2014 Diabetes Program Audit"
 D NOW^%DTC
 S BDMNOW=$G(%)
 K DD,D0,DIC
 S X=DUZ_"."_BDMBTH
 S DIC("DR")=".02////"_DUZ_";.03////"_BDMNOW_";.05////"_$G(BDMPREP)_";.06///"_$G(BDMOPT)_";.07////R"
 S DIC="^BDMGUI(",DIC(0)="L",DIADD=1,DLAYGO=9003201.4
 D FILE^DICN
 K DIADD,DLAYGO,DIC,DA
 I Y=-1 S BDMIEN=-1 Q
 S BDMIEN=+Y
 S BDMGIEN=BDMIEN
 D ^XBFMK
 K ZTSAVE S ZTSAVE("*")=""
 S ZTIO="",ZTDTH=$$NOW^XLFDT,ZTRTN="GUIEP^BDMDB1",ZTDESC="GUI DM AUDIT" D ^%ZTLOAD
 D XIT
 Q
GUIEP ;EP - called from taskman
 D ^BDMDB10
 I BDMPREP=2,'$G(BDMDSP) D ENDLOG Q
 K ^TMP($J,"BDMDM14")
 I $G(BDMDSP),BDMPREP=2 Q
 S IOM=80  ;cmi/maw added
 D GUIR^XBLM("^BDMDB1P","^TMP($J,""BDMDM14"",")
 Q:$G(BDMDSP)  ;quit if to screen
 S X=0,C=0 F  S X=$O(^TMP($J,"BDMDM14",X)) Q:X'=+X  D
 .S BDMDBTA=^TMP($J,"BDMDM14",X)
 .;I BDMDBTA="ZZZZZZZ" S BDMDBTA=$C(12)
 .S ^BDMGUI(BDMIEN,11,X,0)=BDMDBTA,C=C+1
 S ^BDMGUI(BDMIEN,11,0)="^^"_C_"^"_C_"^"_DT_"^"
 S DA=BDMIEN,DIK="^BDMGUI(" D IX1^DIK
 D ENDLOG
 K ^TMP($J,"BDMDM14")
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
