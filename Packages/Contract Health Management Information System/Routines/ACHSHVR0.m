ACHSHVR0 ; IHS/ITSC/PMF - RECEIVE NOTIFICATION REPORT FROM VENDOR/FAC ;  [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 I '$D(^AUTTTEL(DUZ(2),2)) U IO(0) W *7,?10,"UNIX 3780 PORT NOT DEFINED FOR THIS FACILITY - CONTACT SITE MANAGER" G ABEND
 S ACHSTTY=$P(^AUTTTEL(DUZ(2),2),U,1)
 I $L(ACHSTTY)=1 S ACHSTTY="0"_ACHSTTY
 D ^ACHSTUT2
A0 ;
 S ACHS3780="cd /usr/bin/3780;3780Plus -d /dev/tty"_ACHSTTY_" -c /usr/bin/3780/3780.cfgachs.s -j /usr/bin/3780/achshv.rec.j"
 S X="",ACHSHCMD=ACHS3780
 S ACHSRTCD=$$TERMINAL^ACHSHCMD(ACHSHCMD)
 I ACHSRTCD=0 G TXOK
 I ACHSRTCD=18 U IO(0) W *7,!!?10,"3780 RECEIVE SESSION FAILURE -- CONTACT SITE MANAGER" G ABEND
 I X=ACHSRTCD U IO(0) W *7,!!?10,"Auto-Answer Timeout Limit Reached - Receive not Completed" G ABEND
 U IO(0)
 W *7,!!?10,"UNKNOWN error." G ABEND
EXIT ;
 K X,Y,ACHS3780,ACHSTTY
 Q
 ;
TXOK ;
 U IO(0)
 W !!?10,"Transmission Successful"
ABEND ;
 U IO(0)
 I $$DIR^XBDIR("E","Enter <RETURN> to Continue","","","","",1)
 G EXIT
 ;