XUZP8ENV ;IHS/OIRM/DSD/AEF - PATCH XU*8.0*1008 ENVIRONMENT CHECK ROUTINE [ 04/30/2003  3:59 PM ]
 ;;8.0;KERNEL;**1008**;APR 30, 2003
 ;
EN ;EP -- MAIN ENTRY POINT
 ;
 D DUZ
 D NOQUE
 D KERVER
 D NOASK
 D TM
 D P1007
 D QUIT
 Q
DUZ ;----- CHECK FOR VALID DUZ
 ;
 I '$L($P($G(^VA(200,+$G(DUZ),0)),U)) D
 . D BMES^XPDUTL("YOUR DUZ IS NOT SET TO A VALID DUZ")
 . S XPDQUIT=2
 Q:$G(XPDQUIT)
 S DUZ(0)="@"
 Q
NOQUE ;----- SET NOQUEUE FLAG
 ;
 Q:$G(XPDQUIT)
 S XPDNOQUE=1 ;DO NOT QUEUE
 Q
KERVER ;----- CHECK KERNEL VERSION FOR VERSION 8
 ;
 I +$$VERSION^XPDUTL("XU")'=8 D
 . D BMES^XPDUTL("YOU ARE RUNNING VERSION "_$$VERSION^XPDUTL("XU")_" OF KERNEL")
 . D BMES^XPDUTL("YOU MUST BE RUNNING VERSION 8.0")
 . D BMES^XPDUTL("THIS PATCH CANNOT BE INSTALLED")
 . S XPDQUIT=2
 Q
NOASK ;----- SUPPRESS ASK 'DISABLE OPTS', 'MOVE ROUTINES' PROMPTS
 ;
 S XPDDIQ("XPZ1")=0 ;'DISABLE OPTIONS' SET DEFAULT TO 'NO' & NOT ASK
 S XPDDIQ("XPZ2")=0 ;'MOVE ROUTINES' SET DEFAULT TO 'NO' & NOT ASK
 Q
TM ;----- CHECK IF TASKMAN IS RUNNING
 ;
 I $D(^%ZTSCH("RUN")) D
 . D BMES^XPDUTL("IT APPEARS THAT TASKMAN IS RUNNING")
 . D BMES^XPDUTL("YOU MUST SHUT DOWN TASKMAN BEFORE INSTALLING THIS PATCH")
 . S XPDQUIT=2
 Q
P1007 ;----- CHECK IF PATCH XU*8.0*1007 INSTALLED
 ;
 N X
 S X="XU*8.0*1007"
 I '$$CHKPAT(X) D
 . S XPDQUIT=2
 . D BMES^XPDUTL("IT APPEARS THAT PATCH "_X_" HAS NOT BEEN INSTALLED")
 Q
CHKPAT(X)          ;
 ;----- CHECK IF PATCH HAS BEEN INSTALLED
 ;
 N XPDA,OK
 S OK=0
 S XPDA=0
 F  S XPDA=$O(^XPD(9.7,"B",X,XPDA)) Q:'XPDA  D
 . I $P($G(^XPD(9.7,XPDA,0)),U,9)=3 S OK=1
 Q OK
QUIT ;----- ISSUE MESSAGES
 ;
 I $G(XPDQUIT) D
 . D BMES^XPDUTL("INSTALL ABORTED!")
 I '$G(XPDQUIT) D
 . D BMES^XPDUTL("EVERYTHING LOOKS OK")
 Q