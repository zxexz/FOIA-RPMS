BJPC2P21 ; IHS/CMI/LAB - PCC Suite v2.0 
 ;;2.0;IHS PCC SUITE;**21**;MAY 14, 2009;Build 34
 ;
 ;
 ; The following line prevents the "Disable Options..." and "Move Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 ;KERNEL
 I +$$VERSION^XPDUTL("XU")<8 D MES^XPDUTL($$CJ^XLFSTR("Version 8.0 of KERNEL is required.  Not installed",80)) D SORRY(2) I 1
 E  D MES^XPDUTL($$CJ^XLFSTR("Requires Kernel Version 8.0....Present.",80))
 ;FILEMAN
 I +$$VERSION^XPDUTL("DI")<22 D MES^XPDUTL($$CJ^XLFSTR("Version 22.0 of FILEMAN is required.  Not installed.",80)) D SORRY(2) I 1
 E  D MES^XPDUTL($$CJ^XLFSTR("Requires Fileman v22....Present.",80))
 I '$$INSTALLD("BJPC*2.0*20") D MES^XPDUTL($$CJ^XLFSTR("Requires bjpc V2.0 patch 20.  Not installed.",80)) D SORRY(2)
 ;NOTE CHANGE TO P21 WHEN P20 IS OUT
 Q
 ;
PRE ;
 Q
POST ;
 Q
 ;
INSTALLD(BJPCSTAL) ;EP - Determine if patch BJPCSTAL was installed, where
 ; APCLSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BJPCY,DIC,X,Y
 S X=$P(BJPCSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BJPCSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BJPCSTAL,"*",3)
 D ^DIC
 S BJPCY=Y
 D IMES
 Q $S(BJPCY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BJPCSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
