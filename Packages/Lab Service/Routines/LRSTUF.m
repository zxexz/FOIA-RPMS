LRSTUF ; IHS/DIR/FJE - MASS DATA ENTRY INTO FILE 63.04 ;
 ;;5.2T9;LR;**1018*;Nov 17, 2004
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 D ^LRPARAM G:$G(LREND) QUIT
 I '$P($G(LRLABKY),U) W !,"You're not cleared for this option" G QUIT
 D ^LRSTUF1
 ;D ANN^LRCAPV,KVAR^BLRDPT,STOP^LRCAPV,SLOQ^LRVER
 ;----- BEGIN IHS MODIFICATION SLR*5.2*1018
 D ANN^LRCAPV
 D @$S($$ISPIMS^BLRUTIL:"DEM^VADPT",1:"DEM^BLRDPT")
 D STOP^LRCAPV,SLOQ^LRVER
 ;----- END IHS MODIFICATIONS
QUIT K %,A,A1,AGE,DFN,DOB,DQ,I,J,K,LRAD,LRAN,LRDFN,LRDPF,LREDN,LRFLD,LRIDT,LRINI,LRLLOC,LRMETH,LRNOP,LRNOW,LRODT
 K LROUTINE,LRSN,LRSS,LRSTUFF,LRTEC,^TMP("LR",$J,"TMP"),LRTN,LRTSTLM,LRUSI,LRA,LRAA,DIC,DR,DIE,LRAC,M,^TMP("LR",$J,"VTO"),%DT,LRSB
 K %H,%X,%Y,C,D,D1,DA,G,G1,G2,G4,J1,LRAC,LRACD,LRADD,LRDAT,LRDEL,LRDV,LRDVF,LREDIT,LREND,LREXEC,LRFFLG,LRFP,LRGVP,LRIOZERO,LRLCT,LRLDT,LRM
 K LRNAME,LRNG,LRNG2,LRNG3,LRNG4,LRNG5,LRNTN,LRNX,LRORD,LRPER,LRPLOC,LRSA,LRSPEC,LRSSQ,LRTESTSV,LRTX,LRVF,LRVRM,LRXD,LRXDH,LRXDP,M,POP,R,S1,T,T1,X1,X2,X9,Y,Z1,Z2
 ;K LRPRAC,LRTREA,ORVP,LRRB,LRTT,ORIFN,LRUSNM,LRWRD,PNM,SEX,SSN,X,Y,Z,LRTEST,LRTS,LRVX Q
 K LRPRAC,LRTREA,ORVP,LRRB,LRTT,ORIFN,LRUSNM,LRWRD,PNM,SEX,SSN,HRCN,X,Y,Z,LRTEST,LRTS,LRVX ;IHS/ANMC/CLS 08/18/96
 Q  ;IHS/ITSC/MKK 10/07/04