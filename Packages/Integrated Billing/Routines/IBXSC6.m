IBXSC6 ; GENERATED FROM 'IB SCREEN6' INPUT TEMPLATE(#2568), FILE 399;11/29/04
 D DE G BEGIN
DE S DIE="^DGCR(399,",DIC=DIE,DP=399,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGCR(399,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,6) S:%]"" DE(2)=%
 I $D(^("U")) S %Z=^("U") S %=$P(%Z,U,1) S:%]"" DE(15)=% S %=$P(%Z,U,2) S:%]"" DE(16)=% S %=$P(%Z,U,3) S:%]"" DE(12)=% S %=$P(%Z,U,5) S:%]"" DE(7)=% S %=$P(%Z,U,6) S:%]"" DE(10)=% S %=$P(%Z,U,7) S:%]"" DE(9)=% S %=$P(%Z,U,11) S:%]"" DE(19)=%
 I  S %=$P(%Z,U,15) S:%]"" DE(20)=%
 I $D(^("U2")) S %Z=^("U2") S %=$P(%Z,U,2) S:%]"" DE(3)=% S %=$P(%Z,U,3) S:%]"" DE(4)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET N DIR S DIR(0)="SV"_$E("o",$D(DB(DQ)))_U_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="IBXSC6",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(2568,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=2568,U="^"
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 S:IBDR20'["61" Y="@62"
 Q
2 S DW="0;6",DV="RS",DU="",DLB="TIMEFRAME OF BILL",DIFLD=.06
 S DU="1:ADMIT THRU DISCHARGE CLAIM;2:INTERIM - FIRST CLAIM;3:INTERIM - CONTINUING CLAIM;4:INTERIM - LAST CLAIM;5:LATE CHARGE(S) ONLY CLAIM;6:ADJUSTMENT OF PRIOR CLAIM;7:REPLACEMENT OF PRIOR CLAIM;0:NON-PAYMENT/ZERO CLAIM;"
 G RE
X2 Q
3 S DW="U2;2",DV="NJ3,0",DU="",DLB="COVERED DAYS",DIFLD=216
 G RE
X3 K:+X'=X!(X>999)!(X<0)!(X?.E1"."1N.N) X
 Q
 ;
4 S DW="U2;3",DV="NJ4,0",DU="",DLB="NON-COVERED DAYS",DIFLD=217
 G RE
X4 K:+X'=X!(X>9999)!(X<0)!(X?.E1"."1N.N) X
 Q
 ;
5 S DQ=6 ;@62
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 S:IBDR20'["62" Y="@63"
 Q
7 S DW="U;5",DV="RFOX",DU="",DLB="IS THIS A SENSITIVE RECORD?",DIFLD=155
 S DQ(7,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X7 I $D(X) D YN^IBCU
 I $D(X),X'?.ANP K X
 Q
 ;
8 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=8 D X8 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X8 S:X=0 Y=156
 Q
9 S DW="U;7",DV="FOX",DU="",DLB="R.O.I. FORM(S) COMPLETED?",DIFLD=157
 S DQ(9,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X9 I $D(X) D YN^IBCU
 I $D(X),X'?.ANP K X
 Q
 ;
10 S DW="U;6",DV="RFOX",DU="",DLB="ASSIGNMENT OF BENEFITS",DIFLD=156
 S DQ(10,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X10 I $D(X) D YN^IBCU I $D(X) X:X=0 ^DD(399,156,9.3) K IBRATY
 I $D(X),X'?.ANP K X
 Q
 ;
11 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=11 D X11 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X11 S:'$D(IBOX) Y="@63"
 Q
12 S DW="U;3",DV="RFOX",DU="",DLB="POWER OF ATTORNEY COMPLETED?",DIFLD=153
 S DQ(12,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X12 I $D(X) D YN^IBCU
 I $D(X),X'?.ANP K X
 Q
 ;
13 S DQ=14 ;@63
14 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=14 D X14 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X14 S:IBDR20'["63" Y="@64"
 Q
15 S DW="U;1",DV="RDX",DU="",DLB="STATEMENT COVERS FROM",DIFLD=151
 S DE(DW)="C15^IBXSC6"
 G RE
C15 G C15S:$D(DE(15))[0 K DB
 S X=DE(15),DIC=DIE
 ;
 S X=DE(15),DIC=DIE
 S DGRVRCAL=2
 S X=DE(15),DIC=DIE
 ;
C15S S X="" G:DG(DQ)=X C15F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I $P(^DGCR(399,DA,0),U,5)<3 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X=DIV S X=$$LOS1^IBCU64(DA) X ^DD(399,151,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"U1")):^("U1"),1:"") S X=$P(Y(1),U,9),X=X S DIU=X K Y X ^DD(399,151,1,3,1.1) X ^DD(399,151,1,3,1.4)
C15F1 Q
X15 S %DT="ETP" D ^%DT S X=Y K:Y<1 X I $D(X) D DDAT^IBCU4 K IB00
 Q
 ;
16 D:$D(DG)>9 F^DIE17,DE S DQ=16,DW="U;2",DV="RDX",DU="",DLB="STATEMENT COVERS TO",DIFLD=152
 S DE(DW)="C16^IBXSC6"
 G RE
C16 G C16S:$D(DE(16))[0 K DB
 S X=DE(16),DIC=DIE
 ;
 S X=DE(16),DIC=DIE
 S DGRVRCAL=2
C16S S X="" G:DG(DQ)=X C16F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I $P(^DGCR(399,DA,0),U,5)<3 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X=DIV S X=$$LOS1^IBCU64(DA) X ^DD(399,152,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
C16F1 Q
X16 S %DT="ETP" D ^%DT S X=Y K:Y<1 X I $D(X) D DDAT1^IBCU4 K IB00
 Q
 ;
17 S DQ=18 ;@64
18 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=18 D X18 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X18 S:IBDR20'["64" Y="@65"
 Q
19 D:$D(DG)>9 F^DIE17,DE S DQ=19,DW="U;11",DV="*P399.1'",DU="",DLB="DISCHARGE BEDSECTION",DIFLD=161
 S DE(DW)="C19^IBXSC6"
 S DU="DGCR(399.1,"
 G RE
C19 G C19S:$D(DE(19))[0 K DB
 S X=DE(19),DIC=DIE
 ;
C19S S X="" G:DG(DQ)=X C19F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,161,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,12),X=X S DIU=X K Y S X=DIV D DIS^IBCU S X=X X ^DD(399,161,1,1,1.4)
C19F1 Q
X19 S DIC("S")="I $P(^DGCR(399.1,+Y,0),""^"",5)=1" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
20 D:$D(DG)>9 F^DIE17,DE S DQ=20,DW="U;15",DV="F",DU="",DLB="LENGTH OF STAY",DIFLD=165
 G RE
X20 K:$L(X)>6!($L(X)<1)!'(X?.N) X
 I $D(X),X'?.ANP K X
 Q
 ;
21 S DQ=22 ;@65
22 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=22 D X22 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X22 S:IBDR20'["65" Y="@66"
 Q
23 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=23 D X23 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X23 D RCD^IBCU1
 Q
24 S D=0 K DE(1) ;42
 S DIFLD=42,DGO="^IBXSC61",DC="9^399.042PAI^RC^",DV="399.042MR*P399.2'X",DW="0;1",DOW="REVENUE CODE",DLB="Select "_DOW S:D DC=DC_D
 S DU="DGCR(399.2,"
 G RE:D I $D(DSC(399.042))#2,$P(DSC(399.042),"I $D(^UTILITY(",1)="" X DSC(399.042) S D=$O(^(0)) S:D="" D=-1 G M24
 S D=$S($D(^DGCR(399,DA,"RC",0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M24 I D>0 S DC=DC_D I $D(^DGCR(399,DA,"RC",+D,0)) S DE(24)=$P(^(0),U,1)
 G RE
R24 D DE
 S D=$S($D(^DGCR(399,DA,"RC",0)):$P(^(0),U,3,4),1:1) G 24+1
 ;
25 D:$D(DG)>9 F^DIE17 G ^IBXSC62