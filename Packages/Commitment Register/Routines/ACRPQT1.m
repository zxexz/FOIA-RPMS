ACRPQT1 ; GENERATED FROM 'ACR REQUEST FOR QUOTATION' PRINT TEMPLATE (#3964) ; 09/29/09 ; (continued)
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
 D N:$X>0 Q:'DN  W ?0 W "--------------------------------------------------------------------------------"
 D N:$X>0 Q:'DN  W ?0 W "NSN 7540-01-152-8085"
 D N:$X>52 Q:'DN  W ?52 W "STANDARD FORM 18 (REV 10-83)"
 D PAUSE^ACRFWARN K DIP K:DN Y
 I $D(ACRPOL),ACRPOL>5 S ACRDOCDA=D0,ACRDOC=$P(^ACRDOC(D0,0),U,2) D DISPLAY^ACRFSS12 K DIP K:DN Y
 D PAUSE^ACRFWARN K DIP K:DN Y
 K Y
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!