ASMTLOG2 ;PRINT LISTS OF CARTRIDGES ALREADY MAILED [ 11/21/85  3:56 PM ]
 ;IHS-OKLA CITY AREA OFFICE-LMD
A1 D ^AUCLS W "RPMS DATA CARTRIDGE MAILING LISTS......",!!!
A2 W !!,"Enter the BEGINNING DATE for this report: " D SBRS Q:$D(DUOUT)!$D(DFOUT)!$D(DTOUT)!$D(DLOUT)  S:$D(DQOUT) Y="?" S DTIME=300,X=Y,%DT="XEP" D ^%DT G A2:Y<1 S ASM("START")=Y I Y>DT W !!,*7,"Do not use future dates." H 1 G A2
A3 W !!,"Enter the ENDING DATE for this report: " D SBRS Q:$D(DFOUT)!$D(DTOUT)!$D(DLOUT)  G A2:$D(DUOUT) S:$D(DQOUT) Y="?" S DTIME=300,X=Y,%DT="XEP" D ^%DT G A3:Y<1 S ASM("END")=Y I Y>DT W !!,*7,"Do not use future dates." H 1 G A3
A4 G A5:ASM("START")'>ASM("END") W !!,*7,"INVALID ENTRY - The END is before the BEGINNING." H 3 G A2
A5 G QUE
START ;PRINT LIST OF MAILED CARTRIDGES
B1 S ASM=ASM("START")-1
B2 S ASM=$O(^AZOTXST("AC",ASM)) G END:ASM>ASM("END")!(ASM="") S ASM(1)=0,Y=ASM X ^DD("DD") S ASM("DT")=Y,PG=0 D HEADING
B2A S ASM(1)=$O(^AZOTXST("AC",ASM,ASM(1))) G B2:ASM(1)="" S ASM(2)=0
B2B S ASM(2)=$O(^AZOTXST("AC",ASM,ASM(1),ASM(2))) G B2A:ASM(2)="" S ASM(3)=0
B2C S ASM(3)=$O(^AZOTXST("AC",ASM,ASM(1),ASM(2),ASM(3))) G B2B:ASM(3)=""
 S ASM("GL")=^AZOTXST(ASM(1),1,ASM(2),1,ASM(3),0)
B3 W ?5,$P(^AUTTLOC(ASM(1),0),"^",1),?42,$P($T(@$P(ASM("GL"),"^",1)),";;",2),?56,$P(ASM("GL"),"^",5),! D HEADING:$Y>50 G B2C
END W @IOF K ASM Q
SBRS K DFOUT,DTOUT,DUOUT,DQOUT,DLOUT R Y:USTO I '$T W *7 R Y:5 G SBRS:Y="." I '$T S (DTOUT,Y)="" Q
 S:Y="" DLOUT="" S:Y="/.," (DFOUT,Y)="" S:Y="^" (DUOUT,Y)="" S:Y?1"?".E!(Y["^") (DQOUT,Y)=""
 Q
YN W !!,"Enter a ""Y"" for YES or an ""N"" for NO." H 2 Q
PRQ S ASM("START")=^%ZTSK(ZTSK,"START"),ASM("END")=^("END")
PRQ1 S:$D(^%ZTSK(ZTSK,"SITE")) SITENUM=^%ZTSK(ZTSK,"SITE") S U="^" K ^%ZTSK(ZTSK) G START
QUE D ^%AUQUE G START:$D(AU("PRINT")) Q:'$D(AU("QUE"))
QUE1 S ^%ZTSK(ZTSK,0)="PRQ^ASMTLOG2"_^%ZTSK(ZTSK,0),^("START")=ASM("START"),^("END")=ASM("END")
QUEND K ZTSK Q
HEADING U IO W @IOF
 S PG=PG+1,LOC=^DD("SITE"),TITLE="R.P.M.S. DATA CARTRIDGE MAILING LIST",AG("TM")=$P($H,",",2),AG("HR")=AG("TM")\3600,AG("MIN")=AG("TM")#3600\60
 S:AG("MIN")<10 AG("MIN")="0"_AG("MIN") S TME=AG("HR")_":"_AG("MIN"),USER=$P(^DIC(3,DUZ,0),"^",2)
 W !!,USER,?80-$L(LOC)\2,LOC,?72,"page ",PG,!,TME,?80-$L(TITLE)\2,TITLE S Y=DT X ^DD("DD") W ?78-$L(Y),Y,!!!,"THE FOLLOWING CARTRIDGES WERE MAILED ON: ",ASM("DT"),!
LABEL W !!,?15,"FACILITY",?42,"DATA",?52,"# OF RECORDS" S AG("LINE")="=" D LINE Q
LINE S:'$D(AG("PRL")) AG("OLD")="" S:AG("OLD")'=AG("LINE") AG("PRL")="",$P(AG("PRL"),AG("LINE"),79)="",AG("OLD")=AG("LINE") W !,AG("PRL"),! Q
AG ;;REG
AAPC ;;APC
ACHS ;;CHS