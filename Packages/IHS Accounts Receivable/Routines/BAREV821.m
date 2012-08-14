BAREV821 ; IHS/SD/LSL - ENVIRONMENT CHECK V1.8 PATCH 820; 06/01/2010
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**21**;OCT 26,2005
 ;
 K XPDQUIT                       ;CLEAR FLAG
 I '$G(DUZ) D  Q
 . W !,"DUZ UNDEFINED OR 0"
 . D SORRY(2)
 ;
 I '$L($G(DUZ(0))) D  Q
 . W !,"DUZ(0) UNDEFINED OR NULL"
 . D SORRY(2)
 ;
 S X=$P(^VA(200,DUZ,0),U)                ;User's name
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3),IOM)
 ;
 N BARXU
 S BARXU=$$INSTALLD("XU","8.0",1011)     ;Find current Kernel version and patch
 I $P(BARXU,"*",2)<8 S BARXU=0
 I $P(BARXU,"*",3)'=1011 S BARXU=0
 W !,$$CJ^XLFSTR("Need at least XU v8.0 Patch 1011..... "_$S(BARXU=0:"NOT ",1:"")_"Present",IOM)
 I BARXU=0 D SORRY(2)
 ;
 I $$VCHK("DI","22.0",2) ;FileMan V22.0
 ;
 N BARXB
 S BARXB=$$INSTALLD("XB","2.6",11)       ;Find current IHS utilities version and patch
 I $P(BARXB,"*",2)<3 S BARXB=0
 I $P(BARXU,"*",3)'=11 S BARXU=0
 ;
 I $$VCHK("BAR","1.8",2)                 ;Accounts Receivable V1.8
 ;A/R IS NO LONGER CUMULATIVE AFTER PATCH 6
 ;LAST CUMULATIVE PATCH WAS PATCH 6
 N BAR,I
 F I=6:1:7,9,10,12,13,14,15,16,17,18,19,20 D
 .S BAR=$$INSTALLD("BAR","1.8",I)
 .I $P(BAR,"*",3)'=I S BAR=0 D
 ..W !,$$CJ^XLFSTR("Need Accounts Receivable v1.8 Patch "_I_"..... "_$S(BAR=0:"NOT ",1:"")_"Present",IOM)
 I BAR=0 D SORRY(2)
 ;
3PB N BARABM
 S BARABM=$$INSTALLD("ABM","2.6",4)
 I $P(BARABM,"*",2)<2.6 S BARABM=0
 I $P(BARABM,"*",3)<4 S BARABM=0
 W !,$$CJ^XLFSTR("Need at least Third Party Billing v2.6 Patch 4..... "_$S(BARABM=0:"NOT ",1:"")_"Present",IOM)
 I BARABM=0 D SORRY(2)
 ;
 N DA,DIC
 S X="BAR"
 S DIC="^DIC(9.4,"
 S DIC(0)=""
 S D="C"
 D IX^DIC
 I Y<0,$D(^DIC(9.4,"C","BAR")) D
 . W !!,*7,*7,$$CJ^XLFSTR("You Have More Than One Entry In The",IOM)
 . W !,$$CJ^XLFSTR("PACKAGE File with an ""BAR"" prefix.",IOM)
 . W !,$$CJ^XLFSTR("One entry needs to be deleted.",IOM)
 . D SORRY(2)
 . Q
 ;
 I $G(XPDQUIT) W !,$$CJ^XLFSTR("FIX IT! Before Proceeding.",IOM),!!,*7,*7,*7 Q
 ;
 W !!,$$CJ^XLFSTR("ENVIRONMENT OK.",IOM)
 D HELP^XBHELP("INTROE","BAREV810")
 ;
 I $G(XPDENV)=1 D
 . ; The following line prevents the "Disable Options..." and "Move
 . ; Routines..." questions from being asked during the install.
 . S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 . D HELP^XBHELP("INTROI","BAREV810")
 . Q
 ;
 I '$$DIR^XBDIR("E","","","","","",1) D SORRY(2)
 Q
 ;
POST ;EP - POST INSTALL
 ;
 ;D EN^BARADJR3  ;update SARs and Table Types
 ;
 D BMES^XPDUTL("Post-install routine is complete.")
 Q
 ;
 ;
 ;
SORRY(X) ;
 KILL DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
 ; ***
VCHK(BARPRE,BARVER,BARQUIT)     ; Check versions needed.
 ;
 N BARV
 S BARV=$$VERSION^XPDUTL(BARPRE)
 W !,$$CJ^XLFSTR("Need at least "_BARPRE_" v "_BARVER_"....."_BARPRE_" v "_BARV_" Present",IOM)
 I BARV<BARVER KILL DIFQ S XPDQUIT=BARQUIT D SORRY(BARQUIT) Q 0
 Q 1
 ; ***
INSTALLD(BARNM,BARVR,BARPT) ;EP    ;RLT
 ; RLT - 04/05/05 - Per Don Jackson, modified this tag to use
 ;                  PATCH^XPDUTL.  Removed the reverse $O, problem
 ;                  with XU patch numbers. VA (lower than 1000) and
 ;                  IHS patch numers (1000 and higher) not loaded
 ;                  in numerical order.  No longer
 ;                  verifies that a lower version did not get
 ;                  reinstalled over a higher version.
 N BARVNUM,BARPATCH
 ;1 get current version
 S BARVNUM=$$VERSION^XPDUTL(BARNM)
 I '+BARVNUM Q 0
 ;2 is needed patch loaded
 S BARPATCH=$$PATCH^XPDUTL(BARNM_"*"_BARVR_"*"_BARPT)
 I '+BARPATCH Q 0
 Q BARNM_"*"_BARVNUM_"*"_BARPT
 ;
 ; ********************************************************************
INTROE ; Intro text during KIDS Environment check.
 ;;This distribution Modifies Accounts Receivable and does not contain
 ;;previous patch modifications for version 1.8.
 ;;
 ;;        This patch is **not** cumulative.
 ;;
 ;;###
 ;;
 ;
INTROI ; Intro text during KIDS Install.
 ;;If you run interactively, results will be displayed on your screen,
 ;;and recorded in the entry in the INSTALL file.
 ;;If you queue to TaskMan, remember not to Q to the HOME device.
 ;;###