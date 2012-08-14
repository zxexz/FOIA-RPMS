ACRFSS2 ;IHS/OIRM/DSD/THL,AEF - ACRFSS CON'T; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;CONTINUATION OF ACRFSS
 ;;TRANSFER AND DELETE REQUEST ITEMS
TRANS ;EP;TO SELECT ITEMS TO TRANSFER TO ANOTHER REQUEST
 S DIR(0)="S^1:Transfer to existing PO;2:Create new PO;3:Duplicate This PO"
 S DIR("A")="Which one"
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT)!(+Y<1) K ACRQUIT Q
 N ACRDOCD1
 S ACRDOCD1=ACRDOCDA
 I Y=1 D T Q
 I Y=2 K ACRNOT D NEW^ACRFAUTO Q
 I Y=3 S ACRNOT="" D NEW^ACRFAUTO Q
 S ACRDOCDA=ACRDOCD1
 Q
T S ACRTRANS=""
 S DIR(0)="LO^1:"_ACRJ
 S DIR("A")="Item NO.(S) ==> "
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT)!(+Y<1) K ACRQUIT Q
 S ACRSSX=Y(0)
 D HEAD^ACRFSSD1
 N ACRX
 F ACRX=1:1 S ACRJ=$P(ACRSSX,",",ACRX) Q:ACRJ=""  D
 .S ACRSSDA=+ACRSS(ACRJ)
 .S ACRTRQ=$P(^ACRSS(ACRSSDA,"DT"),U,4)
 .S ACRJ=ACRJ-1
 .D ^ACRFSSD
 W !!,"Transfer Item NO.(S) ",ACRSSX," from ",ACRDOC
 W !,"to one of the following:"
 W $$DASH^ACRFMENU
 S (ACRTDA,ACROOBL)=ACRDOCDA
 N ACRDOCDA,ACRDOC,ACRZDA,ACRDOCDA,ACRID
 D LOOKUP^ACRFPO
 D DISPLAY^ACRFPO
 D SELECT^ACRFPO2
 I $D(ACRQUIT)!$D(ACROUT) D T11 Q
 W *7,*7
 W !!,"The items listed above will now be transferred to the purchase order selected."
 S DIR(0)="YO"
 S DIR("A")="Sure you want to make this transfer"
 S DIR("B")="NO"
 D DIR^ACRFDIC
 I Y'=1 D T11 Q
 N ACRI
 F ACRI=1:1 S ACRX=$P(ACRSSX,",",ACRI) Q:'ACRX  D T1:$G(ACRSS(ACRX))
T11 K ACRTRANS,ACRQUIT,ACRTDOC,ACRTOBL,ACRRQ,ACROOBL,ACRTRQ,ACRTDA,ACRSSX,ACRDOCX,ACRDOCY,ACRZDAX,ACROBLX
 Q
T1 ;SET THE PURCHASE ORDER FROM WHICH THE ITEM IS BEING PURCHASED WHEN
 ;IT IS DIFFERENT FROM THE ORIGINAL REQUISITION FOR WHICH THE ITEM WAS
 ;ORDERED
 S DA=+ACRSS(ACRX)
 S DR=".2////"_ACRDOCDA
 S DIE="^ACRSS("
 D DIE^ACRFDIC
 Q
DELETE ;EP;TO DELETE ITEMS FROM A REQUEST
 I ACRJ<2 S Y=1
 E  D  I $D(ACRQUIT)!$D(ACROUT)!'$D(Y) K ACRQUIT Q
 .S DIR(0)="LOA^1:"_ACRJ
 .S DIR("A")="Delete item(s) (1-"_ACRJ_") ==> "
 .W !
 .D DIR^ACRFDIC
 S ACRX=Y
 S:$E(ACRX,$L(ACRX))="," ACRX=$E(ACRX,1,($L(ACRX)-1))
 S DIR(0)="YO"
 S DIR("A")="Sure you want to delete item(s) "_ACRX_" "
 S DIR("B")="NO"
 W !
 D DIR^ACRFDIC
 I $D(ACGQUIT)!(Y'=1) K ACRQUIT Q
 W !
 D:$E($G(IOST),1,2)="C-" WAIT^DICD
 S:$E(ACRX,$L(ACRX))="," ACRX=$E(ACRX,1,$L(ACRX)-1)
DELETE1 ;EP;TO DELETE ITEM FROM ITEM FILE
 ;THE DFN(S) TO BE DELETED MUST BE IN ACRX, ACRX="1,2,3"
 F ACRI=1:1:$L(ACRX,",") D
 .S ACRY=$P(ACRX,",",ACRI)
 .Q:'$D(ACRSS(ACRY))
 .S ACRDEL=""
 .S DA=+ACRSS(ACRY)
 .S DIE="^ACRSS("
 .S DR="13///0;16///0;16.1///0;18///0"
 .D DIE^ACRFDIC
 .K ACRDEL,^ACRSS("C",ACRDOCDA,+ACRSS(ACRY)),^ACRSS("J",ACRDOCDA,+ACRSS(ACRY)),ACRSS(ACRY)
 D APCHK^ACRFSCHK
 I $P(^ACRDOC(ACRDOCDA,0),U,4)=35,$E($G(^ACROBL(ACRDOCDA,"APV")))="A" Q
 D APPROVE^ACRFSCHK
 Q
VIEW ;EP;
 S DIR(0)="NOA^1:"_ACRJ_"^K:X'?1N.2N!(X<1)!(X>ACRJ)!'$D(ACRSS(X)) X"
 S DIR("A")="Item NO. ==> "
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT) K ACRQUIT Q
 I '$D(^ACRSS(+ACRSS(X),1,1)) D  Q
 .W !!?10,"No ADDITIONAL DESCRIPTION on file for this Item."
 .H 2
 W !
 N DXS,DIP,DC,DN,D0
 S D0=+ACRSS(X)
 D ^ACRADDM
 Q
SVEND ;
 S (ACRV1,ACRV2,ACRV1NAM,ACRV2NAM)=""
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR="[ACR COST COMPARISON]"
 D DDS^ACRFDIC
 I $D(ACRSCREN) D
 .K ACRSCREN
 .W !
 .D DIE^ACRFDIC
 S ACRV1=$P($G(^ACRDOC(ACRDOCDA,13)),U,5)
 I ACRV1,$D(^AUTTVNDR(ACRV1,0)) S ACRV1NAM=$P(^(0),U)
 E  S (ACRV1,ACRV1NAM)=$P($G(^ACRDOC(ACRDOCDA,14)),U)
 S ACRV2=$P($G(^ACRDOC(ACRDOCDA,13)),U,6)
 I ACRV2,$D(^AUTTVNDR(ACRV2,0)) S ACRV2NAM=$P(^(0),U)
 E  S (ACRV2,ACRV2NAM)=$P($G(^ACRDOC(ACRDOCDA,15)),U)
 Q
EDIT ;EP;TO EDIT COST COMPARISON DATA FOR SELECTED ITEMS
 D SVEND
 Q:$D(ACROUT)
 Q:ACRV1=""&(ACRV2="")
 N ACRI,ACRY
 I ACRJ=1 S Y=1 D EDIT1 Q
 S DIR(0)="LO^1:"_ACRSJ
 S DIR("A")="Which Item(s)"
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT) K ACRQUIT Q
EDIT1 S ACRY=Y
 F ACRJ=1,2 D:ACRJ=1&(ACRV1]"")!(ACRJ=2&(ACRV2]""))
 .F ACRI=1:1 S X=$P(ACRY,",",ACRI) Q:X=""!$D(ACROUT)  D:$D(ACRSS(X)) ED1
 Q
ED1 S ACRSSDA=+ACRSS(X)
 W !!?21,"Item NO. ",X," UNIT COST COMPARISON"
 S DA=ACRSSDA
 S DIE="^ACRSS("
 S:ACRJ=1 DR=$S(ACRV1:"141////"_ACRV1_";142T;",ACRV1]"":"142T",1:"")
 S:ACRJ=2 DR=$S(ACRV2:"143////"_(ACRV2)_";144T;",ACRV2]"":"144T",1:"")
 D DIE^ACRFDIC
 Q