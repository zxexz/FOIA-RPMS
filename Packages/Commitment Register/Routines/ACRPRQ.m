ACRPRQ ; GENERATED FROM 'ACR REQUISITION TAIL' PRINT TEMPLATE (#3856) ; 09/30/09 ; (FILE 9002196, MARGIN=80)
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
 I $D(DXS)<9 M DXS=^DIPT(3856,"DXS")
 S I(0)="^ACRDOC(",J(0)=9002196
 S X=$G(^ACRDOC(D0,"FA")) D N:$X>30 Q:'DN  W ?30 S Y=$P(X,U,1) S Y(0)=Y S Y=$$NAME2^ACRFUTL1(Y) W $E(Y,1,30)
 D N:$X>69 Q:'DN  W ?69 X DXS(1,9.2) S X=$P(DIP(101),U,1),DIP(102)=X S X=11,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 S X=$G(^ACRDOC(D0,"REQ")) D T Q:'DN  D N D N D N:$X>0 Q:'DN  W ?0 S Y=$P(X,U,12) S Y(0)=Y S Y=$$NAME2^ACRFUTL1(Y) W $E(Y,1,30)
 S X=$G(^ACRDOC(D0,"REQ")) D T Q:'DN  D N D N:$X>0 Q:'DN  W ?0 S Y=$P(X,U,13) S Y(0)=Y S Y=$$NAME2^ACRFUTL1(Y) W $E(Y,1,30)
 S X=$G(^ACRDOC(D0,"REQ")) D T Q:'DN  D N D N D N:$X>0 Q:'DN  W ?0 S Y=$P(X,U,14) S Y(0)=Y S Y=$$NAME2^ACRFUTL1(Y) W $E(Y,1,30)
 S X=$G(^ACRDOC(D0,"REQ")) D T Q:'DN  D N D N:$X>0 Q:'DN  W ?0 S Y=$P(X,U,15) S Y(0)=Y S Y=$$NAME2^ACRFUTL1(Y) W $E(Y,1,30)
 K Y
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!