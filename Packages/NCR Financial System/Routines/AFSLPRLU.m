AFSLPRLU ;IHS/OIRM/DSD/JDM - PERSON SELECTION;  [ 09/27/2005  12:53 PM ]
 ;;3.0t1;1166 APPROVALS FOR PAYMENT;**19**;AUG 31, 2005
 ;Lookup for person selection
 D ^XBCLS
 K AFSLPFND,AFSLPNOD,AFSLPZRO
 I '$D(AFSLVND) S AFSLVND="?"
DOIT ;
 S DIC="^VA(200,",DIC(0)="EZNQA",X=AFSLVND
 I AFSLVND'["?" S DIC(0)="EZMNQ"
 D ^DIC
 I Y<1 S AFSLPFND="XX" G FINI
 S AFSLPNOD=$P(Y,U,1),AFSLPFND=Y(0,0),AFSLPZRO=Y(0)
 I ($P(Y,U,1)="")!('$D(^VA(200,AFSLPNOD,.11)))!($P(^VA(200,AFSLPNOD,1),U,9)="") S AFSLERR=33 Q
 S AFSLPADD=^VA(200,AFSLPNOD,.11),AFSLXX1=$P(^VA(200,AFSLPNOD,1),U,9)
 ;S AFSLPNAM=$P(^VA(200,AFSLPNOD,0),U,1)  ;ACR*2.1*19.02 IM16848
 S AFSLPNAM=$$NAME2^ACRFUTL1(AFSLPNOD)  ;ACR*2.1*19.02 IM16848
FINI ;
 QUIT