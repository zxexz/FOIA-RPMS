BMCAL1 ; IHS/OIT/FCJ-RCIS LIST FOR ALERT; 20-SEP-2007
 ;;4.0;REFERRED CARE INFO SYSTEM;**3**;JAN 09, 2006
 ; New routine for patch 3 to send a Physician Alert
 ;
EN ; -- main entry point for BMC ALERT REC DISPLAY
 D BROWSE
 Q
 ;
HDR ; -- header code
 S BMCRREC=^BMCREF(BMCRIEN,0)
 S VALMHDR(1)="Patient Name: "_$E($P(^DPT($P(BMCRREC,U,3),0),U),1,25)
 S VALMHDR(1)=VALMHDR(1)_"       Chart #: "_$S($D(^AUPNPAT($P(BMCRREC,U,3),41,DUZ(2),0)):$P(^(0),U,2),1:"None")
 Q
 ;
INIT ; -- init variables and list array
 S BMCSTR="",BMCCTR=0
 S BMCSTR="Referral #: "_$$VAL^XBDIQ1(90001,BMCRIEN,.02)
 S BMCSTR=BMCSTR_"       Date Referral Initiated: "_$$VAL^XBDIQ1(90001,BMCRIEN,.01) D SET
 S BMCH="Requesting Provider",BMCV=$$VAL^XBDIQ1(90001,BMCRIEN,.06),C=23 D BUILD1
 S BMCH="Purpose of Referral",BMCV=$$VAL^XBDIQ1(90001,BMCRIEN,1201),C=23 D BUILD1,SET
 S BMCH="Referred To",BMCV=$$TOFAC^BMC(BMCRIEN),C=15 D BUILD1
 S BMCH="Notes to Scheduler",BMCV=$$VAL^XBDIQ1(90001,BMCRIEN,1301),C=22 D BUILD1,SET
 S BMCSTR="Priority: "_$$VAL^XBDIQ1(90001,BMCRIEN,.32)
 S BMCSTR=BMCSTR_"                     Date of Service:  "_$$AVDOS^BMCRLU(BMCRIEN,"C") D SET
 S BMCH="Referral Type",BMCV=$$VAL^XBDIQ1(90001,BMCRIEN,.04),C=17 D BUILD1,SET
 D BOCOM
 S VALMCNT=$O(^TMP("BMCALT",$J,""),-1)
 Q
BOCOM ; PRINT BO COMMENTS
 S BMCVFLE="90001.03",BMCVDG=^DIC(BMCVFLE,0,"GL")
 S BMCVNM="Business/CHS Comment",BMCVIGR=BMCVDG_"""AD"",BMCRIEN,BMCVDFN)",BMCCTYP="B"
 S BMCVDFN="",BMCVI=1 F  S BMCVDFN=$O(@BMCVIGR) Q:BMCVDFN=""  D
 .I $P(^BMCCOM(BMCVDFN,0),U,5)=BMCCTYP D BOCOM1 S BMCVI=2
 E  F BMCVI=1:1 S BMCVDFN=$O(@BMCVIGR) Q:BMCVDFN=""  D BOCOM1
 S VALMCNT=$O(^TMP("BMCALT",$J,""),-1)
 Q
BOCOM1 ;
 I BMCVI<2 S BMCSTR="" D SET S BMCSTR="=============== "_BMCVNM_"s ===============",X=(80-$L(BMCSTR)\2) D SET
 K BMCAR D ENP^XBDIQ1(BMCVFLE,BMCVDFN,".01:.019999;.04:999999","BMCAR(","E")
 S BMCSTR="" D SET
 S F=0 F  S F=$O(BMCAR(F)) Q:F'=+F  D
 .I $G(BMCAR(F))]"" D
 ..S BMCH=$P(^DD(BMCVFLE,F,0),U)
 ..S BMCV=BMCAR(F)
 ..Q:(BMCVFLE="90001.03")&(F=".05")
 ..D BUILD1
 .S G=0 F  S G=$O(BMCAR(F,G)) Q:G'=+G  I $G(BMCAR(F,G))]"" D
 ..S BMCSTR=BMCAR(F,G)
 ..D SET
 K G
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
BUILD1 ;
 S BMCSTR=$E(BMCH,1,25)_":",BMCSTR=$$SETSTR^VALM1(BMCV,BMCSTR,C,$L(BMCV))
 D SET
 Q
SET ;set array
 S BMCCTR=BMCCTR+1
 S ^TMP("BMCALT",$J,BMCCTR,0)=BMCSTR
 S BMCSTR=""
 Q
EXIT ; -- exit code
 K BMCCTR,BMCSTR,BMCV,C,BMCV,BMCH,BMCAR,F,G,BMCVFLE,BMCVDFN,BMCVNM,BMCVIGR,BMCCTYP,BMCVI
 K BMCRREC,BMCRIEN,^TMP("BMCALT",$J),BMCRNUMB,BMCVI,BMCVDG,BMCVL
 Q
 ;
BROWSE ;
 S XBRP="DISP^BMCAL1"
 S XBRC="",XBRX="EXIT^BMCAL1",XBIOP=0 D ^XBDBQUE
 Q
DISP ;EP
 D EN^VALM("BMC ALERT REC DISPLAY")
 D CLEAR^VALM1
 Q
 ;