DGJOTP3 ;ALB/MAF - TOTALS PAGE FOR TRANS PROD REPORT ; SEP 26 1991@1100
 ;;5.3;Registration;**44,163**;Aug 13, 1993
 ;
 S (DGJDOC,DGJTOTAL)=0
 F DGJTTO=0:0 S DGJTOTAL=$O(DGJTOT(DGJTOTAL)) Q:DGJTOTAL']""!(DGU)  D SET,HEAD1,LIST,TOT
QUIT G QUIT^DGJOTP
SET S (DGJTDIC,DGJTTRN,DGJTCOD,DGJTTODY,DGJTO30,DGJTOREC)=0 Q
TOT W !,"------------------------",?30,"-------",?45,"-------",?60,"-------",?75,"-------",?88,"-------",?100,"-------",?112,"-------",?125,"-------"
 W !,"DIVISION TOTAL",?30 S X=DGJTDIC/DGJTOREC D EXT W ?45 S X=DGJTTRN/DGJTOREC D EXT W ?60 S X=DGJTCOD/DGJTOREC D EXT W ?75 S X=DGJTTODY/DGJTOREC D EXT W ?88 S X=DGJTO30/DGJTOREC D EXT
 W ?100,$J(+DGJTOT(DGJTOTAL),7),?112,$S($P(DGJTOT(DGJTOTAL),"^",2)]"":$J($P(DGJTOT(DGJTOTAL),"^",2),7),1:$J(0,7)),?125 S X=($P(DGJTOT(DGJTOTAL),"^",2)/+DGJTOT(DGJTOTAL))*100 D EXT I $O(DGJTOT(DGJTOTAL))]"" D RET1 Q:DGU
 Q
HEAD1 W @IOF,"TOTALS PAGE FOR "_DGJTOTAL,?100,DGJTDAT,!
 W $S(DGJTL="PHY":"PHYSICIAN",1:"SERVICE/SPECIALTY"),?30,"AVG DAYS",?45,"AVG DAYS",?60,"AVG DAYS",?75,"AVG TOT",?88,"AVG DAYS",?100,"TOT REC",?111,"REC DELQ",?123,"% DELQ>30",!
 W ?30,"D/C-DIC",?45,"DIC-TRAN",?60,"TRAN-COD",?75,"DAYS DELQ",?88,"DELQ>30",!,DGJTLN Q
RET1 F X=$Y:1:(IOSL-3) W !
 Q:IOST'?1"C-".E
 R ?22,"Enter <RET> to continue or ^ to QUIT ",X:DTIME S:X["^"!('$T) DGU=1 Q:DGU  S DGFLAG=1 Q
RELP I $Y+8>IOSL D RET1:(IOST?1"C-".E) Q:DGU  D HEAD:DGJTLPG=1 D HEAD1:DGJTLPG'=1
 Q
HEAD S:DGJTDV'=DGJTDV1 DGJTPAG=0
 S DGJTDIR=2 W @IOF,"TRANSCRIPTION PRODUCTIVITY REPORT BY "_$S(DGJTL="PHY":"PHYSICIAN",1:"SERVICE/SPECIALTY"),?97,DGJTDAT,"  ","PAGE " S DGJTPAG=DGJTPAG+1 W DGJTPAG
 I DGJTL="SER" W !,"PATIENT",?19,"PT ID",?26,"EVT DATE",?39
 I DGJTL="PHY" W !,"PATIENT",?23,"PT ID",?31,"EVT DATE",?44
 W "LOCATION"
 I DGJTL="SER" W ?53,"PHYSICIAN"
 W ?65,"TYP" W:DGJTDIR=2 ?70,"STATUS"
 W ?78,"DIC DATE",?88,"D/C-DIC",?97,"DIC-TRN",?106,"TRN-COD",?115,"TOT DAYS",?125,"DELQ>30",!,DGJTLN,!
 Q
PH Q:$O(^UTILITY("VAS",$J,DGJTDV,DGJTPHY,DGJTPT))]""  Q:$O(^UTILITY("VAS",$J,DGJTDV,DGJTPHY,DGJTPT,DFN,IFN))]""
 W !,"-------------------",?70,"-------",?88,"-------",?97,"-------",?106,"-------",?116,"-------",?125,"-------",!,"COUNT: ",$P(DGJPHTOT(DGJTDV,DGJTPHY),"^",1) D CNTWR D RET1:(IOST'?1"C-".E) Q
SV Q:$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP,DGJTPT))]""  Q:$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP,DGJTPT,DFN,IFN))]""  W !,"------------------------",!,"COUNT: ",DGJSPTOT(DGJTDV,DGJTSV,DGJTSP)
 Q:$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP))]""
 W !,"------------------------",?70,"-------",?88,"-------",?97,"-------",?106,"-------",?116,"-------",?125,"-------",!,"SERVICE SUBTOTAL: ",$P(DGJSVTOT(DGJTDV,DGJTSV),"^",1) D CNTWR D RET1:(IOST'?1"C-".E) Q
 Q
LIST F DGJTTI=0:0 S DGJDOC=$S(DGJTL="PHY":$O(DGJPHTOT(DGJTOTAL,DGJDOC)),1:$O(DGJSVTOT(DGJTOTAL,DGJDOC))) Q:DGJDOC']""!(DGU)  D WR Q:DGU
 Q
WR S DGJJX=0 W !,$E(DGJDOC,1,20),?30 S DGJX=$S(DGJTL="PHY":DGJPHTOT(DGJTOTAL,DGJDOC),1:DGJSVTOT(DGJTOTAL,DGJDOC)) S DGJJX=$P(DGJX,"^",1) S X=$P(DGJX,"^",3)/DGJJX D EXT W ?45 S X=$P(DGJX,"^",4)/DGJJX D EXT W ?60 S X=$P(DGJX,"^",5)/DGJJX D EXT
 W ?75 S X=$P(DGJX,"^",6)/DGJJX D EXT W ?88 S X=$P(DGJX,"^",7)/DGJJX D EXT
 W ?100,$J($P(DGJX,"^",1),7),?112 S X=$P(DGJX,"^",2) D EXT W ?125 S X=($P(DGJX,"^",2)/+DGJX)*100 D EXT D DIVTOT,RELP Q:DGU
 Q
EXT S X=$S(X]"":X,1:0)
 I X["." S X=$P(X,".",1)_"."_$E($P(X,".",2),1,2) W $J(X,7) Q
 W $J(X,7) Q
CNTWR W ?70,"AVG DAYS" S DGJCNTX=$S(DGJTL="PHY":DGJPHTOT(DGJTDV,DGJTPHY),1:DGJSVTOT(DGJTDV,DGJTSV)) S DGJ2CNT=$P(DGJCNTX,"^",1) W ?88 S X=$P(DGJCNTX,"^",3)/DGJ2CNT D EXT
 W ?97 S X=$P(DGJCNTX,"^",4)/DGJ2CNT D EXT W ?106 S X=$P(DGJCNTX,"^",5)/DGJ2CNT D EXT W ?116 S X=$P(DGJCNTX,"^",6)/DGJ2CNT D EXT W ?125 S X=$P(DGJCNTX,"^",7)/DGJ2CNT D EXT Q
 Q
DIVTOT S DGJTDIC=DGJTDIC+$P(DGJX,"^",3),DGJTTRN=DGJTTRN+$P(DGJX,"^",4),DGJTCOD=DGJTCOD+$P(DGJX,"^",5),DGJTTODY=DGJTTODY+$P(DGJX,"^",6),DGJTO30=DGJTO30+$P(DGJX,"^",7),DGJTOREC=DGJTOREC+$P(DGJX,"^",1)
 Q