BWBRNOT1 ;IHS/ANMC/MWR - BROWSE NOTIFICATIONS;15-Feb-2003 21:47;PLS
 ;;2.0;WOMEN'S HEALTH;**8**;MAY 16, 1996
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  DISPLAY CODE FOR BROWSING NOTIFICATIONS.  CALLED BY BWBRNOT.
 ;
DISPLAY ;EP
 ;---> BWCONF=DISPLAY "CONFIDENTIAL PT INFO" BANNER.
 ;---> BWTITLE=TITLE AT TOP OF DISPLAY HEADER.
 ;---> BWSUBH=CODE TO EXECUTE FOR SUBHEADER (COLUMN TITLES).
 ;---> BWCODE=CODE TO EXECUTE AS 3RD PIECE OF DIR(0) (AFTER DIR READ).
 ;---> BWCRT=1 IF OUTPUT IS TO SCREEN (ALLOWS SELECTIONS TO EDIT).
 ;---> BWTAB=6 IF OUTPUT IS TO SCREEN, =3 IF OUTPUT IS TO PRINTER.
 ;---> BWPRMT(1,Q)=PROMPTS FOR DIR.
 ;---> BWD=0, TELLS DIRPRMT^BWUTL3 TO DISPLAY SELECTION NUMBERS.
 ;
 U IO
 S BWCONF=1
 S BWTITLE1=$S(BWC=1:"DATE",BWC=2:"PATIENT",BWC=3:"PRIORITY",1:"?")
 S BWTITLE="* * *  NOTIFICATIONS LISTED BY "_BWTITLE1_"  * * *"
 D CENTERT^BWUTL5(.BWTITLE)
 S BWSUBH="SUBHEAD^BWBRNOT1"
 S BWCODE="D EDIT^BWBRNOT1,SORT^BWBRNOT,COPYGBL^BWBRNOT"
 S BWPRMT1="   Press RETURN to continue or '^'to exit, or"
 S BWPRMT="   Select a left column number to edit"
 S BWPRMTQ="     To edit a Notification, choose a number from the "
 S BWPRMTQ=BWPRMTQ_"left column"
 S (BWD,BWPOP,N,Z)=0
 D TOPHEAD^BWUTL7
 S BWTAB=$S(BWCRT:6,1:3)
 ;
NOMATCH ;EP
 ;---> QUIT IF NO RECORDS MATCH.
 I '$D(^TMP("BW",$J,3)) D  Q
 .D HEADER1^BWUTL7
 .K BWPRMT,BWPRMT1,BWPRMTQ,DIR
 .W !!?5,"No records match the selected criteria.",!
 .D:BWCRT DIRZ^BWUTL3 W @IOF D ^%ZISC S BWPOP=1
 ;
DISPLAY1 ;EP
 ;---> IF A NOTIFICATION IS EDITED ON THE LAST PAGE, GOTO HERE
 ;---> FROM LINELABEL "END" BELOW.
 D HEADER1^BWUTL7
 F  S N=$O(^TMP("BW",$J,4,N)) Q:'N!(BWPOP)  D
 .I $Y+6>IOSL D:BWCRT DIRPRMT^BWUTL3 Q:BWPOP  D
 ..S BWPAGE=BWPAGE+1
 ..D HEADER1^BWUTL7 S Z=0
 .S Y=^TMP("BW",$J,4,N),M=N
 .W !
 .;---> DON'T WRITE CHART# AND NAME IF IT MATCHES THE PREVIOUS RECORD.
 .;---> DON'T WRITE BROWSE SELECTION#'S IF IO IS NOT A CRT (BRCRT).
 .I $P(Y,U)'=Z D
 ..W ! W:BWCRT $J(N,3),")"                      ;BROWSE SELECTION#
 ..W ?BWTAB,$P(Y,U)                             ;CHART#
 ..W ?BWTAB+10,$E($P(Y,U,2),1,22)," "           ;NAME
 ..F I=1:1:22-$L($P(Y,U,2)) W "."               ;CONNECTING DOTS
 ..W:'BWCRT "..."                               ;ADD DOTS IF NOT A CRT
 .I $P(Y,U)=Z D                                 ;IF NEW CHART#...
 ..W:BWCRT $J(N,3),")"                          ;BROWSE SELECTION#
 ..W ?BWTAB,". . . .   . . . . . . . . . . . ." ;CONNECTING DOTS
 .S Z=$P(Y,U)                                   ;STORE AS PREVIOUS CHRT#
 .;
 .W ?41,$$SLDT2^BWUTL5($P(Y,U,3))               ;DATE OF NOTIFICATION
 .W ?51,$P(Y,U,4)                               ;ACCESSION#
 .W ?62,$P(Y,U,5)                               ;STATUS
 .S X=$P(Y,U,6)                                 ;PRIORITY
 .W ?70,$S(X=1:"*",1:" ")
 .W $P($P(^DD(9002086.404,.02,0),X_":",2),";") K X
 ;
END ;EP
 W:'BWCRT @IOF
 ;---> IF A NOTIFICATION HAS BEEN EDITED, SET N=N-5 AND START (GOTO)
 ;---> DISPLAY1 OVER AGAIN FROM 5 RECORDS PREVIOUS.
 I BWCRT&('$D(IO("S")))&('BWPOP) D DIRPRMT^BWUTL3 I N S N=N-1 G NOMATCH
 D ^%ZISC
 Q
 ;
SUBHEAD ;EP
 ;---> SUB HEADER FOR NOTIFICATION BROWSE OUTPUT.
 W !?BWTAB,$$PNLB^BWUTL5(DUZ(2))
 W ?BWTAB+10,"PATIENT",?41,"DATE",?51,"ACC#"
 W ?62,"STATUS",?70,"PRIORITY",!
 F I=1:1:80 W "-"
 Q
 ;
EDIT ;EP
 ;---> FROM BROWSE, POP IN TO EDIT A SINGLE NOTIFICATION.
 N (BWLOOP,DT,DTIME,DUZ,M,N,U,X,Z) D SETVARS^BWUTL5
 S X=+X,DA=$P(^TMP("BW",$J,4,X),U,7)
 S BWNN=X N X
 D EDIT2^BWNOTIF(DA)
 ;---> BACK UP 5 RECORDS AFTER EDIT.
 S N=$S(BWNN<6:1,1:BWNN-5),Z=0 K BWNN
 Q