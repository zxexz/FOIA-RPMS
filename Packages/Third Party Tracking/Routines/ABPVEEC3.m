ABPVEEC3 ;ENTER/EDIT PVT INS CLAIMS; [ 07/16/91  9:01 AM ]
 ;;2.0;FACILITY PVT-INS TRACKING;*0*;IHS-OKC/KJR;AUGUST 7, 1991
 W !!,"NOT AN ENTRY POINT!",!! Q
 ;---------------------------------------------------------------------
DOS D REVON^ABPVEEC0 W "Enter/Select billing date"
 W:$D(ABPVRON)=1 @(ABPVROFF)
 S ABPVDOS=$O(^ABPVFAC("PC",ABPVPDFN,"")) I +ABPVDOS=0 G GETDOS
 S ABPVDOS=0,ABPVCNT=10000 F I=0:0 D  Q:+ABPVDOS=0
 .S ABPVDOS=$O(^ABPVFAC("PC",ABPVPDFN,ABPVDOS)) Q:+ABPVDOS=0
 .S DA=0 F J=0:0 D  Q:+DA=0
 ..S DA=$O(^ABPVFAC("PC",ABPVPDFN,ABPVDOS,DA)) Q:+DA=0
 ..Q:$D(^ABPVFAC(DA,0))'=1  S DATA=^(0),ABPVCNT=ABPVCNT-1
 ..S ABPVDT(ABPVCNT)=$J($P(DATA,"^"),7)_"  "
 ..S ABPVDT(ABPVCNT)=ABPVDT(ABPVCNT)_$E(ABPVDOS,4,5)_"/"_$E(ABPVDOS,6,7)_"/"
 ..S ABPVDT(ABPVCNT)=ABPVDT(ABPVCNT)_$E(ABPVDOS,2,3)_$J($P(DATA,"^",6),5)
 ..S ABPVDT(ABPVCNT)=ABPVDT(ABPVCNT)_$J($P(DATA,"^",7),5)
 ..S ABPVDT(ABPVCNT)=ABPVDT(ABPVCNT)_$J($P(^AUTNINS($P(DATA,"^",8),0),"^"),33)
 ..S ABPVDT(ABPVCNT)=ABPVDT(ABPVCNT)_$J($P(DATA,"^",9),8,2)
 G:+ABPVCNT=10000 GETDOS S CT=0
 W !?6,"BILL ID     DOS     TYP  D/V              INSURER    "
 W "            AMT",!?6,"-------  --------   ---  ---  "
 W "------------------------------   -----"
 F CNT=1:1 S CT=$O(ABPVDT(CT)) Q:+CT=0  S ABPVDATE(CNT)=ABPVDT(CT)
 S CNT=CNT-1 K ABPVDT S (CT,I,II)=0
NXTCT S DN=I+1 F I=I+1:1:II+3 S CT=$O(ABPVDATE(CT)) Q:+CT=0  D
 .W ! W $J(CT,2),".",?6,ABPVDATE(CT)
 S:I=CNT CT="",I=I+1 S:+CT=0 I=I-1 S (D1,II)=I
SELECT W !,"CHOOSE " S:+CT=0 DN=1 W DN,"-",D1 W:+CT'=0 " or '^' TO STOP"
 W ": " R X:DTIME
 I X["^" G GETDOS
 I X="" G:+CT=0 GETDOS G NXTCT
 I X<1 G:+CT=0 GETDOS G NXTCT
 I $D(ABPVDATE(X))=0 W *7,"   ??" G SELECT
 S ABPVDOS=$E(ABPVDATE(+X),10,17),ABPVCDFN=$E(ABPVDATE(+X),1,7)
 F ABPVI=0:0 Q:$E(ABPVCDFN,1)'=" "  S ABPVCDFN=$E(ABPVCDFN,2,7)
 K DIC S DIC="^ABPVFAC(",DIC(0)="QM",X=ABPVCDFN D ^DIC S DA=+Y
 I +Y'>0 W *7," ??" K ABPVDOS G SELECT
 K ABPVDATE,CT,DN,D1,I,II S ABPVCDFN=DA,DATA=^ABPVFAC(ABPVCDFN,0)
 S ABPVTYPE=$P(DATA,"^",6),ABPVDV=$P(DATA,"^",7),ABPVINS=$P(DATA,"^",8)
 S:ABPVTYPE="O" ABPVTYPE="OUTPATIENT"
 S:ABPVTYPE="I" ABPVTYPE="INPATIENT (HOSPITAL ONLY)"
 S:ABPVTYPE="P" ABPVTYPE="INPATIENT (PHYSICIAN ONLY)"
 S:ABPVTYPE="D" ABPVTYPE="DENTAL"
 S ABPVINS=$P(^AUTNINS(ABPVINS,0),"^")
 S ABPVAMT=$P(DATA,"^",9),ABPVAMT="$"_$J(ABPVAMT,8,2)
 S ABPVTXFG=$P(DATA,"^",14),ABPVTXDT=$P(DATA,"^",15)
 S ABPVPHNM=$P(DATA,"^",16),ABPVPNUM=$P(DATA,"^",17) D SCREEN^ABPVEEC0
 Q
GETDOS K DIR,ABPVDOS
 S DIR(0)="D",DIR("A")="Select DATE OF SERVICE" D ^DIR S ABPVDOS=+Y
 I +ABPVDOS'>0 K ABPVDOS Q
 I $D(^ABPVFAC("PC",ABPVPDFN,ABPVDOS))'=0 S NEW=0 D  I 'NEW K ABPVDOS Q
 .K DIR S DIR(0)="Y",DIR("B")="N"
 .S DIR("A")="Claim already on file for this date - add another"
 .W *7 D ^DIR I Y S NEW=1
 S (DA,ABPVCDFN)=$P(^ABPVFAC(0),"^",3)
 F ABPVI=0:0 S DA=$O(^ABPVFAC(DA)) Q:+DA=0  S ABPVCDFN=DA
 S ABPVCDFN=ABPVCDFN+1 K DIC S DIC="^ABPVFAC(",DIC(0)="L"
 S X=ABPVCDFN_"A" D ^DIC K DIE,DA,DR I +Y<1 D  K ABPVDOS Q
 .W *7,!?5,"<<< Sorry, file access denied >>>" H 3
 S DIE="^ABPVFAC(",DA=ABPVCDFN,DR="1////"_ABPVPDFN_";2////"_ABPVDOS
 S DR=DR_";3////"_DUZ(2)_";4////"_ABPVHRN_";4.03////"_ABPVPSSN
 S DR=DR_";11////"_DT_";16////N"
 D ^DIE S Y=ABPVDOS X ^DD("DD") S ABPVDOS=Y
 S ABPVTEXT=";;(4)   ;Date of Service:;7;10;ABPVDOS"
 S X=$S($Y>23:"SCREEN",$Y'>23:"WRITE",1:"SCREEN")
 S X=X_"^ABPVEEC0" D @X
 Q