ACR999 ; GENERATED FROM 'ACR PAYROLL' PRINT TEMPLATE (#3868) ; 09/29/09 ; (FILE 9002196, MARGIN=80)
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
 I $D(DXS)<9 M DXS=^DIPT(3868,"DXS")
 S I(0)="^ACRDOC(",J(0)=9002196
 W ?0 I IOST["C-" W:$D(IOF) @IOF K DIP K:DN Y
 D N:$X>0 Q:'DN  W ?0 W "[1 ]*EMPLOYEE..:"
 S X=$G(^ACRDOC(D0,"PR")) W ?18 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^ACRAU(Y,0))#2:$P(^(0),U),1:Y) S Y=$S(Y="":Y,$D(^VA(200,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,35)
 D N:$X>54 Q:'DN  W ?54 W "TOTAL PAY.:"
 W ?67 X DXS(1,9.2) S X=$P(DIP(101),U,3),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>5 Q:'DN  W ?5 W "PAY PLAN..:"
 W ?18 X DXS(2,9.2) S DIP(101)=$S($D(^ATAEMP(D0,0)):^(0),1:"") S X=$P($P(DIP(102),$C(59)_$P(DIP(101),U,9)_":",2),$C(59),1) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>54 Q:'DN  W ?54 W "POSITION #:"
 W ?67 X DXS(3,9.2) S X=$P(DIP(101),U,7) S D0=I(0,0) K DIP K:DN Y W X
 D T Q:'DN  W ?2 W ! F ACRI=1:1:80 W "-" K DIP K:DN Y
 D N:$X>0 Q:'DN  W ?0 W "[2 ]*FICA......:"
 W ?18 X DXS(4,9.2) S X=$P(DIP(101),U,1),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "[7 ] QUARTERS..:"
 W ?67 X DXS(5,9.2) S X=$P(DIP(101),U,5),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>0 Q:'DN  W ?0 W "[3 ] FEHBA.....:"
 W ?18 X DXS(6,9.2) S X=$P(DIP(101),U,2),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "[8 ] SUBSISTENC:"
 W ?67 X DXS(7,9.2) S X=$P(DIP(101),U,6),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>0 Q:'DN  W ?0 W "[4 ] RETIREMENT:"
 W ?18 X DXS(8,9.2) S X=$P(DIP(101),U,3),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "[9 ] VHA.......:"
 W ?67 X DXS(9,9.2) S X=$P(DIP(101),U,7),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>0 Q:'DN  W ?0 W "[5 ] FEGLI.....:"
 W ?18 X DXS(10,9.2) S X=$P(DIP(101),U,4),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "[10] BOARD CERT:"
 W ?67 X DXS(11,9.2) S X=$P(DIP(101),U,8),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>0 Q:'DN  W ?0 W "[6 ] PSI.......:"
 W ?18 X DXS(12,9.2) S X=$P(DIP(101),U,11),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "[11] VSP.......:"
 W ?67 X DXS(13,9.2) S X=$P(DIP(101),U,9),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 D N:$X>49 Q:'DN  W ?49 W "[12] OTHER.....:"
 W ?67 X DXS(14,9.2) S X=$P(DIP(101),U,10),DIP(102)=X S X=10,X=$J(DIP(102),X) S D0=I(0,0) K DIP K:DN Y W X
 K Y
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!