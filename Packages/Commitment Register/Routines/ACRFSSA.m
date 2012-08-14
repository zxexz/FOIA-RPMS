ACRFSSA ;IHS/OIRM/DSD/THL,AEF - AUXILLIARY SUB-ROUTINES FOR ACRFSS* ROUTINES;  [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;AUXILLIARY SUB-ROUTINES FOR ACRFSS* ROUTINES
EXIT ;EP;
 K ACRSS,ACRSS1,ACRSS2,ACRQUIT,ACRCC,ACRCCDA,ACRITMDA,ACRKW,ACRVENO,ACRVENDA,ACRVENAM,ACRNEW,ACRCHK,ACRDSC1,ACRDSC2,ACRJ,ACRNDC,ACRNOW,ACRNSN,ACROBJ,ACROBJDA,ACROCDA,ACRORDNO,ACRSSDA,ACRSSDS1,ACROB
 K ACRSSIT,ACRSSITM,ACRSSORD,ACRSSQA,ACRXCUT,ACRDOCVN,ACRITMNO,ACRVENNM,ACRSSTOT,ACRSSUNT,ACRSSUP,ACRUC,ACRUI,ACRVENON,ACRSS3,ACRSSDS2,ACRSSDS3,ACRSSDS4,ACRSSDS5
 Q
EXITSS4 ;EP;
 K ACRTV,ACRTV1,ACRTVDA,ACRTVDAT,ACRTVDAY,ACRTVCIT,ACRTVLV,ACRTVAR,ACRYY,ACRTVPD,ACRTVLDG,ACRTVMLS,ACRTVPHN,ACRTVTAX,ACRTVOTH,ACRTOT,ACRADV,ACRDA,ACRI,ACRQUIT,ACRTVMR,ACRTVDT,ACRD,ACRNEW,ACRCHANG,ACRDAYS,ACRAIRP,ACRAIRPT,ACRAIRT
 K ACRMR,ACRTAX,ACRPHN,ACROTH,ACRMRR,ACRTVEXP,ACRTVRC,ACRPMRR,ACRTVPML
 Q
FACTOR ;EP;TO CALCULATE PER DIEM FACTOR - CALLED FROM FILEMAN TEMPLATE
 I $D(DA),'$D(ACRDOCDA) S ACRDOCDA=$P(^ACRTV(DA,0),U,2)
 S ACRTVLR=$P(^ACRDOC(ACRDOCDA,"TO"),U,9)
 S ACRPAYP=$P($G(^ACRAU(+ACRTVLR,1)),U,3)
 S ACRX=X
 N X,Y,ACRL,ACRA
 K ACRFACTR
 S Y=$P(^ACRTV(DA,"DT"),U,2)
 I Y="" S ACRL=""
 E  X ^DD("DD") S ACRL=$P(Y,"@",2)
 S Y=$P(^ACRTV(DA,"DT"),U,3)
 I Y="" S ACRA=""
 E  X ^DD("DD") S ACRA=$P(Y,"@",2)
 I ACRL]"" D
 .S ACRL=$S($E(ACRL)'=0:ACRL,1:$E(ACRL,2,5))
 .S ACRL=$P(ACRL,":")_"."_$P(ACRL,":",2)
 I ACRA]"" D
 .S ACRA=$S($E(ACRA)'=0:ACRA,1:$E(ACRA,2,5))
 .S ACRA=$P(ACRA,":")_"."_$P(ACRA,":",2)
 S:ACRL]"" ACRFACTR=$S(ACRL>18:.25,ACRL>12:.5,ACRL>6:.75,1:1)
 S:'$D(ACRFACTR) ACRFACTR=1
 S:ACRA]"" ACRFACTR=ACRFACTR-$S(ACRA>18:0,ACRA>12:.25,ACRA>6:.5,1:.75)
 I ACRL]"",ACRA]"",ACRA-ACRL>11.9 S ACRFACTR=.75
 I ACRL]"",ACRA]"",ACRA-ACRL<12 S ACRFACTR=0
 I ACRFACTR<.75 S ACRFACTR=.75
 I ACRFACTR=1,+^ACRTV(DA,0)=1 S ACRFACTR=.75
 K ACRTVLR,ACRPAYP
 S ACRPD=$P(^ACRPD($P(^ACRTV(DA,"DT"),U,4),0),U,4)
 S:ACRPD="" ACRPD=$P($G(^ACRSYS(1,"DT")),U,22)
 S ACRFACTR=$S('$D(ACRFACTR):1,ACRFACTR>1:1,1:ACRFACTR)
 S ACRFACTR=ACRPD*ACRFACTR
 S ACRFACTR=$S(ACRX<ACRFACTR:ACRX,1:ACRFACTR)
 S $P(^ACRTV(DA,"DT"),U,5)=ACRFACTR
 K ACRFACTR
 Q
SSCHK ;EP;
 I '$D(^ACRSS(ACRSSDA,"DT")) D
 .S ^ACRSS(ACRSSDA,"DT")=""
 .S ACRSSRQD="Required item data missing."
 F ACR=2,4,5,6 I $D(^ACRSS(ACRSSDA,0)),$P(^(0),U,ACR)=""!(ACR=4&($P(^(0),U,4)="999")) D
 .S ACRSSRQD="Required item data missing."
 .W:$E(IOST,1,2)="C-" *7,*7
 .W !!,$S(ACR=4:"OBJECT CODE",ACR=2:"DOCUMENT REFERENCE",ACR=5:"CAN NUMBER",1:"DEPARTMENT ACCOUNT")," missing"
 .W " from ITEM NO. ",+$G(^ACRSS(ACRSSDA,0))
 I '$D(^ACRSS(ACRSSDA,"DESC"))&'$D(^ACRSS(ACRSSDA,"NMS")) D
 .S ACRSSRQD="Required item data missing."
 .W !!,"Description missing"
 .W " from ITEM NO. ",+$G(^ACRSS(ACRSSDA,0))
 I $D(^ACRSS(ACRSSDA,"DESC")),$P(^("DESC"),U)="" D
 .S ACRSSRQD="Required item data missing."
 .W !!,"Description missing"
 .W " from ITEM NO. ",+$G(^ACRSS(ACRSSDA,0))
 Q
SETSS ;EP;TO SET VARIABLES FOR A SELECTED ITEM
 S ACRSS0=^ACRSS(ACRSSDA,0)
 S ACRSSDT=$G(^ACRSS(ACRSSDA,"DT"))
 S ACRSSDSC=$G(^ACRSS(ACRSSDA,"DESC"))
 S ACRSSNMS=$G(^ACRSS(ACRSSDA,"NMS"))
 S ACRRQD=+ACRSSDT
 S ACRUI=$P(ACRSSDT,U,2)
 S ACRUC=$P(ACRSSDT,U,3)
 S ACRRCD=$P(ACRSSDT,U,5)
 S ACRACP=$P(ACRSSDT,U,6)
 S ACRTP=$P(ACRSSDT,U,7)
 S ACRSSRQ=$P(ACRSS0,U,2)
 S ACRSSPO=$P(ACRSS0,U,7)
 S ACRUNRCD=$P(ACRSSDT,U)-ACRACP
 S ACRUI=$S($D(^ACRUI(+ACRUI,0)):$P(^(0),U),1:"**")
 Q
FEDSTRIP ;EP;TO SET THE FEDSTRIP SERIAL NUMBER FOR EACH ITEM ON A FEDSTRIP
 ;ORDER
 I $P(^ACRDOC(ACRDOCDA,0),U,3)=$P(^ACROBL(ACRDOCDA,0),U,6),DT'=$P(^ACRDOC(ACRDOCDA,0),U,3) D
 .S DA=ACRDOCDA
 .S DIE="^ACRDOC("
 .S DR=".03////"_DT
 .D DIE^ACRFDIC
 D JDATE
 S (X,Y)=0
 F  S X=$O(^ACRSS("J",ACRDOCDA,X)) Q:'X  I $D(^ACRSS(X,0)),$P(^(0),U,14)<1 S Y=Y+1
 Q:Y<1
 S ACRMAX=Y
 S ACRPODA=$P(ACRDOC0,U,8)
 S ACRLBDA=$P(ACRDOC0,U,6)
 S ACRFY=$P(^ACRLOCB(ACRLBDA,"DT"),U)
 S:'$D(^ACRPO(ACRPODA,30,0)) ^ACRPO(ACRPODA,30,0)="^9002199.4301^"
 I '$D(^ACRPO(ACRPODA,30,ACRFY,0))#2 D  Q:+$G(Y)<1
 .S (X,DINUM)=ACRFY
 .S (DA,DA(1))=ACRPODA
 .S DIC="^ACRPO("_ACRPODA_",30,"
 .S DIC(0)="L"
 .D FILE^ACRFDIC
FS L +^ACRPO(ACRPODA,30,ACRFY,0):4
 I $T=1 D  I 1
 .S ACRMIN=$P(^ACRPO(ACRPODA,30,ACRFY,0),U,2)+1
 .S $P(^ACRPO(ACRPODA,30,ACRFY,0),U,2)=ACRMAX+ACRMIN-1
 .L -^ACRPO(ACRPODA,30,ACRFY,0):0
 E  G FS
 S ACRSSDA=0
 F  S ACRSSDA=$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) Q:'ACRSSDA  I $D(^ACRSS(ACRSSDA,0)),$P(^(0),U,14)<1 D FS1
 Q
FS1 S DA=ACRSSDA
 S DIE="^ACRSS("
 S DR=".14////"_ACRMIN
 S ACRMIN=ACRMIN+1
 D DIE^ACRFDIC
 Q
JDATE ;EP;TO SET JULIAN DATE
 S ACRRDATE=$P(^ACRDOC(ACRDOCDA,"PO"),U,12)
 Q:'ACRRDATE
 S X=$E(DT,1,3)_"0101"
 D H^%DTC
 S ACRFY=%H
 S X=ACRRDATE
 D H^%DTC
 S X=%H+1-ACRFY
 S X=$S($L(X)=1:"00"_X,$L(X)=2:"0"_X,1:X)
 S ACRRDATE=X
 S ACR3=$G(^ACRDOC(ACRDOCDA,3))
 S ACR18=$E($P($G(^ACRDOC(ACRDOCDA,18)),U),5,8)
 S X2=$E($P(^ACRDOC(ACRDOCDA,0),U,3),1,3)_"0101"
 S X1=$P(^ACRDOC(ACRDOCDA,0),U,3)+1
 D ^%DTC
 S ACRJDATE=$E($P(^ACRDOC(ACRDOCDA,0),U,3),3)_$E("000",1,3-$L(X))_X
 S ACRFSNUM=$P(ACR3,U,13)
 S ACRFSNUM=$E($P($G(^ACRFSCD(+ACRFSNUM,0)),U,2),3,6)
 S ACRFSNUM=$E("XXXX",1,4-$L(ACRFSNUM))_ACRFSNUM
 I $P(ACR3,U,17)'=1 S ACRFSNUM="FS"_ACRFSNUM_ACRJDATE
 E  S ACRFSNUM="SC"_ACRFSNUM_ACR18
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR=".26////"_ACRJDATE_";.27////"_ACRFSNUM
 D DIE^ACRFDIC
 K ACRFSNUM
 Q