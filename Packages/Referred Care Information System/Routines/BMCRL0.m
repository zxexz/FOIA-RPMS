BMCRL0 ; IHS/PHXAO/TMJ - SCREEN LOGIC ;   
 ;;4.0;REFERRED CARE INFO SYSTEM;;JAN 09, 2006
 ;IHS/ITSC/FCJ ADDED TO TEST FOR CANNED REPORT
 ;
 ;
Q ;EP
 K ^XTMP("BMCRL",$J,"QMAN"),^UTILITY("AMQQ TAX",$J),DIC,X,Y,DD
 S X=$P(^BMCTSORT(BMCCRIT,0),U,3),DIC="^AMQQ(5,",DIC(0)="EQXM",DIC("S")="I $P(^(0),U,14)"
 D ^DIC
 K DIC,DA,DINUM,DICR I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" Q
 S BMCQMAN=+Y
 D ^AMQQGTX0(BMCQMAN,"^XTMP(""BMCRL"",$J,""QMAN"",")
 I '$D(^XTMP("BMCRL",$J,"QMAN")) W !!,$C(7),"** No ",$P(^BMCTSORT(BMCCRIT,0),U)," selected, all will be included." Q
 I $D(^XTMP("BMCRL",$J,"QMAN","*")) K ^XTMP("BMCRL",$J,"QMAN")
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,0)=BMCCRIT,^BMCRTMP(BMCRPT,11,"B",BMCCRIT,BMCCRIT)=""
 S X="",Y=0
 F  S X=$O(^XTMP("BMCRL",$J,"QMAN",X)) Q:X=""  S Y=Y+1,^BMCRTMP(BMCRPT,11,BMCCRIT,11,Y,0)=X,^BMCRTMP(BMCRPT,11,BMCCRIT,11,"B",X,Y)="",^BMCRTMP(BMCRPT,11,BMCCRIT,11,0)="^90001.82110101A^"_Y_"^"_Y
 K X,Y,Z,BMCQMAN,V
 K ^XTMP("BMCRL",$J,"QMAN")
 Q
R ;EP
 S DIR(0)=$P(^BMCTSORT(BMCCRIT,0),U,4)_"O",DIR("A")="ENTER "_$P(^(0),U) D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q:$D(DIRUT)
 I Y="" Q
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,0)=BMCCRIT,^BMCRTMP(BMCRPT,11,"B",BMCCRIT,BMCCRIT)=""
 S BMCCNT=BMCCNT+1,^BMCRTMP(BMCRPT,11,BMCCRIT,11,BMCCNT,0)=$P(Y,U)
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,11,"B",$P(Y,U),BMCCNT)=""
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,11,0)="^90001.82110101A^"_BMCCNT_"^"_BMCCNT
 G R
 Q
D ;EP;DATE RANGE
BD ;get beginning date
 W ! S DIR(0)="D^::EP",DIR("A")="Enter beginning "_BMCTEXT_" for Search" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) Q
 S BMCBD=Y
ED ;get ending date
 W ! S DIR(0)="D^"_BMCBD_"::EP",DIR("A")="Enter ending "_BMCTEXT_" for Search"
 S Y=BMCBD D DD^%DT S Y="" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S BMCED=Y
 S X1=BMCBD,X2=-1 D C^%DTC S BMCSD=X
 ;
 Q:$D(BMCCAND)
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,0)=BMCCRIT,^BMCRTMP(BMCRPT,11,"B",BMCCRIT,BMCCRIT)=""
 S BMCCNT=0,^BMCRTMP(BMCRPT,11,BMCCRIT,11,BMCCNT,0)="^90001.82110101A^1^1" S BMCCNT=BMCCNT+1,^BMCRTMP(BMCRPT,11,BMCCRIT,11,1,0)=BMCBD_U_BMCED,^BMCRTMP(BMCRPT,11,BMCCRIT,11,"B",BMCBD,BMCCNT)=""
 Q
N ;
 D N^BMCRL01
 Q
F ;FREE TEXT RANGE
 K ^BMCRTMP(BMCRPT,11,BMCCRIT),^BMCRTMP(BMCRPT,11,"B",BMCCRIT)
 S DIR(0)="FO^1:20",DIR("A")="Enter a Range of Characters for Search (e.g. A:B) " D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !!,"No range entered.  All ",BMCTEXT,"  will be included." Q
 I $D(^BMCTSORT(BMCCRIT,21)) S X=Y X ^(21) I '$D(X),$D(^BMCTSORT(BMCCRIT,22)) W !! X ^(22) G F ;if input tx exists and fails G N
 I '$D(^BMCTSORT(BMCCRIT,21)),Y'?1.ANP1":"1.ANP W !!,$C(7),$C(7),"Enter an free text range in the format AAA:AAA.  E.g. 94-01:94-200,CA:CZ, A:Z." G F
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,0)=BMCCRIT,^BMCRTMP(BMCRPT,11,"B",BMCCRIT,BMCCRIT)=""
 S BMCCNT=0,^BMCRTMP(BMCRPT,11,BMCCRIT,11,BMCCNT,0)="^90001.82110101A^1^1" S BMCCNT=BMCCNT+1,^BMCRTMP(BMCRPT,11,BMCCRIT,11,1,0)=$P(X,":")_U_$P(X,":",2),^BMCRTMP(BMCRPT,11,BMCCRIT,11,"B",$P(X,":"),BMCCNT)=""
 Q
J ;
 D J^BMCRL01
 Q
Y ;
 D Y^BMCRL01
 Q
W ;EP - contains
 K DIR,DTOUT,DUOUT,DIRUT
 W !!,?5,"What phrase do you want to search for in the ",$P(^BMCTSORT(BMCCRIT,0),U),"?",!
 S DIR(0)="FO^2:40",DIR("A")=$P(^BMCTSORT(BMCCRIT,0),U)_" - CONTAIN" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q:$D(DIRUT)
 Q:Y=""
 S ^BMCRTMP(BMCRPT,11,BMCCRIT,0)=BMCCRIT,^BMCRTMP(BMCRPT,11,"B",BMCCRIT,BMCCRIT)=""
 S BMCCNT=BMCCNT+1,^BMCRTMP(BMCRPT,11,BMCCRIT,11,BMCCNT,0)=$P(Y,U),^BMCRTMP(BMCRPT,11,BMCCRIT,11,"B",$P(Y,U),BMCCNT)="",^BMCRTMP(BMCRPT,11,BMCCRIT,11,0)="^90001.82110101A^"_BMCCNT_"^"_BMCCNT
 G W
 Q