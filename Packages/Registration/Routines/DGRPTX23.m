DGRPTX23 ; ;05/27/04
 D DE G BEGIN
DE S DIE="^DPT(",DIC=DIE,DP=2,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DPT(DA,""))=""
 I $D(^(.22)) S %Z=^(.22) S %=$P(%Z,U,1) S:%]"" DE(2)=%
 I $D(^(.32)) S %Z=^(.32) S %=$P(%Z,U,5) S:%]"" DE(6)=% S %=$P(%Z,U,8) S:%]"" DE(7)=%
 I $D(^(.33)) S %Z=^(.33) S %=$P(%Z,U,7) S:%]"" DE(1)=% S %=$P(%Z,U,9) S:%]"" DE(3)=% S %=$P(%Z,U,11) S:%]"" DE(4)=%
 I $D(^(.52)) S %Z=^(.52) S %=$P(%Z,U,5) S:%]"" DE(8)=%
 I $D(^(.53)) S %Z=^(.53) S %=$P(%Z,U,1) S:%]"" DE(10)=%
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
BEGIN S DNM="DGRPTX23",DQ=1
1 S DW=".33;7",DV="P5'X",DU="",DLB="E-STATE",DIFLD=.337
 S DU="DIC(5,"
 G RE
X1 I $D(X) S DFN=DA D E1^DGLOCK2
 Q
 ;
2 S DW=".22;1",DV="FOX",DU="",DLB="E-ZIP+4",DIFLD=.2201
 S DQ(2,2)="S Y(0)=Y D ZIPOUT^VAFADDR"
 S DE(DW)="C2^DGRPTX23"
 G RE
C2 G C2S:$D(DE(2))[0 K DB
 S X=DE(2),DIC=DIE
 D KILL^DGREGDD1(DA,.338,.33,8,$E(X,1,5))
C2S S X="" Q:DG(DQ)=X  K DB
 S X=DG(DQ),DIC=DIE
 D SET^DGREGDD1(DA,.338,.33,8,$E(X,1,5))
 Q
X2 K:X[""""!($A(X)=45) X I $D(X) S DFN=DA D E1^DGLOCK2 I $D(X) K:$L(X)>15!($L(X)<5) X I $D(X) D ZIPIN^VAFADDR
 I $D(X),X'?.ANP K X
 Q
 ;
3 D:$D(DG)>9 F^DIE17,DE S DQ=3,DW=".33;9",DV="FX",DU="",DLB="E-PHONE NUMBER",DIFLD=.339
 G RE
X3 K:$L(X)>20!($L(X)<3) X I $D(X) S DFN=DA D E1^DGLOCK2
 I $D(X),X'?.ANP K X
 Q
 ;
4 S DW=".33;11",DV="F",DU="",DLB="E-WORK PHONE NUMBER",DIFLD=.33011
 G RE
X4 K:$L(X)>20!($L(X)<4) X
 I $D(X),X'?.ANP K X
 Q
 ;
5 S DQ=6 ;@40
6 S DW=".32;5",DV="P23'X",DU="",DLB="SERVICE BRANCH [LAST]",DIFLD=.325
 S DE(DW)="C6^DGRPTX23"
 S DU="DIC(23,"
 G RE
C6 G C6S:$D(DE(6))[0 K DB
 S X=DE(6),DIC=DIE
 S A1B2TAG="PAT" D ^A1B2XFR
C6S S X="" Q:DG(DQ)=X  K DB
 S X=DG(DQ),DIC=DIE
 S A1B2TAG="PAT" D ^A1B2XFR
 Q
X6 S DFN=DA D SV^DGLOCK Q
 Q
 ;
7 D:$D(DG)>9 F^DIE17,DE S DQ=7,DW=".32;8",DV="FX",DU="",DLB="SERVICE NUMBER [LAST]",DIFLD=.328
 G RE
X7 S DFN=DA D SV^DGLOCK I $D(X) S:X?1"SS".E L=$S($D(^DPT(DA,0)):$P(^(0),U,9),1:X) W:X?1"SS".E "  ",L S:X?1"SS".E X=L K:$L(X)>15!($L(X)<1)!'(X?.N) X
 I $D(X),X'?.ANP K X
 Q
 ;
8 S DW=".52;5",DV="RSX",DU="",DLB="POW STATUS INDICATED?",DIFLD=.525
 S DE(DW)="C8^DGRPTX23"
 S DU="Y:YES;N:NO;U:UNKNOWN;"
 G RE
C8 G C8S:$D(DE(8))[0 K DB
 S X=DE(8),DIC=DIE
 ;
 S X=DE(8),DIC=DIE
 ;
 S X=DE(8),DIC=DIE
 ;
 S X=DE(8),DIC=DIE
 D AUTOUPD^DGENA2(DA)
 S X=DE(8),DIC=DIE
 X "S DFN=DA D EN^DGMTR K DGREQF"
C8S S X="" Q:DG(DQ)=X  K DB
 D ^DGRPTX24
 Q
X8 S DFN=DA D SV^DGLOCK
 Q
 ;
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 I $P($G(^DPT(DFN,.53)),U)]"" S Y="@53"
 Q
10 D:$D(DG)>9 F^DIE17,DE S DQ=10,DW=".53;1",DV="SX",DU="",DLB="CURRENT PH INDICATOR",DIFLD=.531
 S DE(DW)="C10^DGRPTX23"
 S DU="Y:YES;N:NO;"
 G RE
C10 G C10S:$D(DE(10))[0 K DB
 D ^DGRPTX25
C10S S X="" Q:DG(DQ)=X  K DB
 D ^DGRPTX26
 Q
X10 S DFN=DA D VET^DGLOCK
 Q
 ;
11 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=11 D X11 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X11 I X="Y" S Y="@532",DGPHMULT=1
 Q
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 I X="N" S Y="@533",DGPHMULT=1
 Q
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 S:X="" Y="@53"
 Q
14 S DQ=15 ;@532
15 D:$D(DG)>9 F^DIE17 G ^DGRPTX27