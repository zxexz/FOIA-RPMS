DGJTDEL ;ALB/MAF - DELETE OPTION FOR INCOMPLETE RECORDS TRACKING ; JAN 31,1989@900
 ;;5.3;Registration;;Aug 13, 1993
EN D QUIT
 I $D(^DG(43,1,"GL")) S X=$P(^DG(43,1,"GL"),"^",2) I X=1 S DIR(0)="393,.06",DIR("A")="Select DIVISION " D ^DIR G QUIT:Y="^"!($D(DTOUT)) S DGJTDV=Y
 I '$D(DGJTDV) S X=$O(^DG(40.8,0)) S DGJTDV=X_"^"_$P(^DG(40.8,+X,0),"^")
 I '$D(^DG(40.8,+DGJTDV,"DT")) W !!?10,"PARAMETERS MUST BE SET UP IN THE MEDICAL CENTER DIVISION FILE ",!?30,"FOR DELINQUENCY TRACKING" G EN
 S DIC("S")="I $P(^VAS(393,+Y,0),""^"",6)=$P(DGJTDV,""^"",1)"
PAT S DIC="^VAS(393,",DIC(0)="AQEMZ",DIC("A")="Select PATIENT INCOMPLETE RECORD to Delete: " D ^DIC G QUIT:Y'>0 S DGJTIFN=+Y
 S DGJTEDT1=1,DGJTEDT="^"_DGJTIFN D EN2^DGJTVW
OKD N DGJVALM,DGJAT,VALMY
 S VALMBCK=""
 D SEL^VALM2 G ENQ:'$O(VALMY(0)) S DGJVALM=0
 D FULL^VALM1 S VALMBCK="R"
 F DGJVALM=0:0 S DGJVALM=$O(VALMY(DGJVALM)) Q:'DGJVALM  S (DA,DGJIFNO)=$P($G(^TMP("DGJIDX",$J,DGJVALM)),"^",2) I DA]"" S DGJTEDT="1^"_DA S DGJDFNO=DA,DIC="^VAS(393,",DGJTYP=$P(^VAS(393,DA,0),"^",2) D EDIT^DGJTEE2,OKD1
ENQ D REP^DGJTEE Q
OKD1 D FULL^VALM1 S %=2 W !!,"Ok to delete PATIENT INCOMPLETE RECORD ENTRY " D YN^DICN I '% D YN G OKD1
 I %=1 S DIK="^VAS(393,",DA=DGJIFNO D ^DIK W !,"*DELETED*" K DIC  Q
 I %=2 Q
 S DGJOUT=1 Q
QUIT K %,DA,DIC,DIR,DGT,DGJTST,DGA1,DIK,DGJTDELE,DGJTIFN,DGJTEDT1,X,Y,%Y Q
YN W !?10,"Choose:",!?25,"Y for YES",!?25,"N for NO",! Q