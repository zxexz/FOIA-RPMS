LA72 ;VA/DALOI/JMC - LA*5.2*72 PATCH ENVIRONMENT CHECK ROUTINE ; 8/30/05 12:01pm
 ;;5.2;AUTOMATED LAB INSTRUMENTS;**1031**;NOV 01, 1997
 ;
 ;;VA LA Patche(s): 72
 ;
EN ;
 ; Does not prevent loading of the transport global.
 ; Environment check is done only during the install.
 ;
 N XQA,XQAMSG
 ;
 I '$G(XPDENV) D  Q
 . S XQAMSG="Transport global for patch "_$G(XPDNM,"Unknown patch")_" loaded on "_$$HTE^XLFDT($H)
 . S XQA("G.LMI")=""
 . ; D SETUP^XQALERT
 . ; D BMES^XPDUTL($$CJ^XLFSTR("Sending transport global loaded alert to mail group G.LMI",80))
 ;
 S XQAMSG="Installation of patch "_$G(XPDNM,"Unknown patch")_" started on "_$$HTE^XLFDT($H)
 S XQA("G.LMI")=""
 ; D SETUP^XQALERT
 ; 
 D BMES^XPDUTL($$CJ^XLFSTR("--- "_XQAMSG_" ---",80))       ; IHS/OIT/MKK
 ; 
 D CHECK
 D EXIT
 Q
 ;
CHECK ;
 ; Perform environment check
 D BMES^XPDUTL($$CJ^XLFSTR("--- Environment Check for "_$G(XPDNM,"Unknown patch")_" ---",80))      ; IHS/MSC/MKK
 ; Device Defined
 I $S('$G(IOM):1,'$G(IOSL):1,$G(U)'="^":1,1:0) D  Q
 . D BMES^XPDUTL($$CJ^XLFSTR("Terminal Device is not defined",80))
 . S XPDQUIT=2
 ; DUZ setup
 I $S('$G(DUZ):1,$D(DUZ)[0:1,$D(DUZ(0))[0:1,1:0) D  Q
 . D BMES^XPDUTL($$CJ^XLFSTR("Please log in to set local DUZ... variables",80))
 . S XPDQUIT=2
 ; Active User
 I $P($$ACTIVE^XUSER(DUZ),"^")'=1 D  Q
 . D BMES^XPDUTL($$CJ^XLFSTR("You are not a valid user on this system",80))
 . S XPDQUIT=2
 S XPDIQ("XPZ1","B")="NO"
 Q
 ;
EXIT ;
 ;
 ; I $G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Install Environment Check FAILED ---",80))
 ; I '$G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Environment Check is Ok ---",80))
 ;
 I $G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Install Environment Check for "_$G(XPDNM,"Unknown patch")_" FAILED ---",80))     ; IHS/MSC/MKK
 I '$G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Install Environment Check for "_$G(XPDNM,"Unknown patch")_" is Ok ---",80))     ; IHS/MSC/MKK
 ;
 Q
 ;
PRE ;
 ;; KIDS Pre Install
 N DA,DIK
 ; D BMES^XPDUTL($$CJ^XLFSTR("Sending install started alert to mail group G.LMI",80))
 D BMES^XPDUTL($$CJ^XLFSTR("*** Pre install started ***",80))
 D BMES^XPDUTL($$CJ^XLFSTR("--- No actions required for pre install ---",80))
 D BMES^XPDUTL($$CJ^XLFSTR("*** Pre install completed ***",80))
 Q
 ;
POST ;
 ;; KIDS Post Install
 N DA,DIK,FDA,LA7X,LA7ERR,XQA,XQAMSG
 D BMES^XPDUTL($$CJ^XLFSTR("*** Post install started ***",80))
 D BMES^XPDUTL($$CJ^XLFSTR("--- No actions required for post install ---",80))  ; IHS/MSC/MKK
 D BMES^XPDUTL($$CJ^XLFSTR("*** Post install completed ***",80))
 ; D BMES^XPDUTL($$CJ^XLFSTR("Sending install completion alert to mail group G.LMI",80))
 ; Send alert
 S XQAMSG="Installation of patch "_$G(XPDNM,"Unknown patch")_" completed on "_$$HTE^XLFDT($H)
 S XQA("G.LMI")=""
 ; D SETUP^XQALERT
 D BMES^XPDUTL($$CJ^XLFSTR("--- "_XQAMSG_" ---",80))       ; IHS/MSC/MKK
 Q