ACMED ; IHS/TUCSON/TMJ - ADD/EDIT ACM FILES ;
 ;;2.0;ACM CASE MANAGEMENT SYSTEM;**8**;JAN 10, 1996
 ;CONTROLLER FOR PATIENT DATA ENTRY AND INDIVIDUAL CASE SUMMARY
QK ;PEP;TO BEGIN QUICK DATA ENTRY SEQUENCE
 S ACMED("ACM")=""
 F ACMED("ACM")=1:1:3 D @$P("CURRENT;^ACMLPAT;^ACMQK",";",ACMED("ACM")) Q:$D(ACMQUIT)
 I $D(ACMQUIT),ACMQUIT="ACMQUIT" G EXIT
 E  K ACMQUIT G QK
 Q
QK1 S ACMED("ACM")=""
 F ACMED("ACM")=1:1:2 D @$P("CURRENT;^ACMQK",";",ACMED("ACM")) Q:$D(ACMQUIT)
 I $D(ACMQUIT),ACMQUIT="ACMQUIT" G EXIT
 E  K ACMQUIT G QK
 Q
QONE ;PEP;TO ADD PATIENT
 S ACMED("ACM")=""
 F ACMED("ACM")=1:1:3 D @$P("CURRENT;^ACMLPAT;^ACMPPDT",";",ACMED("ACM")) Q:$D(ACMQUIT)
 I $D(ACMQUIT),ACMQUIT="ACMQUIT" G EXIT
 E  K ACMQUIT G QONE
 Q
SLCT ;
 S ACMED("ACM")=""
 F ACMED("ACM")=1:1:2 D @$P("CURRENT;^ACMLPAT",";",ACMED("ACM")) Q:$D(ACMQUIT)
 I $D(ACMQUIT),ACMQUIT="ACMQUIT" G EXIT
 E  K ACMQUIT G SLCT
 Q
EXIT K ACMED("ACM"),ACMQUIT W:$D(IOF) @IOF
 Q
CLEAN ;EP;TO KILL OFF ALL VARIABLES
 K ACM,ACMTITLE,ACMENTRY,ACMEND,ACMRG,ACMRGNA,ACMQUIT,ACMPTNA,ACMPTNO
 K ACMTRM,ACMRVON,ACMRVOFF,ACMAGE,ACMMSRT,ACMCMGR,ACMDOB,ACMMGR,ACMPG
 K ACMSTAT,ACMALL,ACMCOMM,ACMINIT,ACMSEV,ACMWHER,^UTILITY("DIQ1",$J)
 K ACMRGTP,ACMCTRL,ACMCTRLE,ACMCTRLP,ACMCTRLS,ACMCTRLX,ACMDIC1,ACMPHN
 K ACMAA,ACMI,APPREFIX,DIC,DIE,DIQ,DIQ1,DA,DR,ACMPAGE,ACMPC,ACMPCCHS
 K ACMPRV,ACMSTYP,ACMU2,ACMUA,ACMZ,ACMLINER,ACMYZ,ACMYX,ACMBY1,ACMBY2
 K ACMCNT,ACMYY,ACMYI,ACMYL,ACMRGDFN,ACMLETR,ACMMHS,ACMRSRG,ACMSITE
 K ACMSVPD,ACMPTDEL,ACMMIFN,ACMCSTG,ACMFILE,ACMMAND,ACMN,ACMPTMP
 K ACMRPT,ACMUB
 Q
CURRENT ;EP;TO SET SCREEN HANDLING VARIABLES
 S IOP="HOME" D ^%ZIS K IOP
 I $D(IOST(0)) S ACMTRM=$S($D(^%ZIS(2,IOST(0),5)):^(5),1:X),ACMRVON=$S($P(ACMTRM,U,4)'="":$P(ACMTRM,U,4),1:""),ACMRVOFF=$S($P(ACMTRM,U,5)'="":$P(ACMTRM,U,5),1:"")
 S:'$D(ACMRVON) (ACMRVON,ACMRVOFF)=""
 Q