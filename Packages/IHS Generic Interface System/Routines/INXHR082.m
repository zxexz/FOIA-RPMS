INXHR082 ; GENERATED FROM 'INHSG MESSAGE' PRINT TEMPLATE (#2828) ; 10/25/01 ; (continued)
 G BEGIN
N W !
T W:$X ! I '$D(DIOT(2)),DN,$D(IOSL),$S('$D(DIWF):1,$P(DIWF,"B",2):$P(DIWF,"B",2),1:1)+$Y'<IOSL,$D(^UTILITY($J,1))#2,^(1)?1U1P1E.E X ^(1)
 S DISTP=DISTP+1,DILCT=DILCT+1 D:'(DISTP#100) CSTP^DIO2
 Q
DT I $G(DUZ("LANG"))>1,Y W $$OUT^DIALOGU(Y,"DD") Q
 I Y W $P("JAN^FEB^MAR^APR^MAY^JUN^JUL^AUG^SEP^OCT^NOV^DEC",U,$E(Y,4,5))_" " W:Y#100 $J(Y#100\1,2)_"," W Y\10000+1700 W:Y#1 "  "_$E(Y_0,9,10)_":"_$E(Y_"000",11,12) Q
 W Y Q
M D @DIXX
 Q
BEGIN ;
 S:'$D(DN) DN=1 S DISTP=$G(DISTP),DILCT=$G(DILCT)
 S DICMX="D L^DIWP" D N:$X>21 Q:'DN  S DIWL=22,DIWR=22 N DIP X DXS(8,9.4) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>24 Q:'DN  S DIWL=25,DIWR=59 N DIP X DXS(9,9.4) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>61 Q:'DN  S DIWL=62,DIWR=80 N DIP X DXS(10,9.5) S D1=I(1,0) K DIP K:DN Y
 D A^DIWW
 D T Q:'DN  D N D N:$X>0 Q:'DN  W ?0 W "SeqNo Incoming-Xform   Over-In-Xf  In-Validat   Output-Xform     Map-Function"
 D T Q:'DN  D N D N:$X>0 Q:'DN  W ?0 W "----- --------------   ----------  ----------   --------------   --------------"
 S DICMX="D L^DIWP" D T Q:'DN  D N D N:$X>0 Q:'DN  S DIWL=1,DIWR=6 N DIP X DXS(11,9.4) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>6 Q:'DN  S DIWL=7,DIWR=21 N DIP X DXS(12,9.5) S D1=I(1,0) K DIP K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>23 Q:'DN  S DIWL=24,DIWR=33 N DIP X DXS(13,9.5) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>35 Q:'DN  S DIWL=36,DIWR=45 N DIP X DXS(14,9.5) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>48 Q:'DN  S DIWL=49,DIWR=63 N DIP X DXS(15,9.5) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW K DIP K:DN Y
 S DICMX="D L^DIWP" D N:$X>65 Q:'DN  S DIWL=66,DIWR=80 N DIP X DXS(16,9.5) S D1=I(1,0) K DIP K:DN Y
 D A^DIWW
 Q
D1R ;
 K Y K DIWF
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!
