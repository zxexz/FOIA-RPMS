ACRFEVAX ;IHS/OIRM/DSD/THL,AEF - EVALUATE QUOTES; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;EVALUATE QUOTES
EN D EN1
EXIT K ACR,ACRVEND,ACRVND,ACRITEM,ACRTSIDA,ACRPO1,ACRAMT,ACRTOP,ACRTSI,ACRQUIT,ACROUT,ACRMODE,ACRJ,ACRN1,ACRPID,ACR843,ACRDETL,ACRXAMT,ACRIAMT,ACRSS,ACRPID1,ACRN11,ACRQUAN,ACRSEG,ACRUI,ACRVDA,ACRCOST,ACRCOUNT,ACRDESC,ACRDT,ACRMAX,ACRN11,ACRSEQ
 K ACRAMX
 Q
EN1 ;
 D COUNT^ACRFEVX1,MODE^ACRFEVX1
 Q:$D(ACRQUIT)!$D(ACROUT)
 D @ACRMODE
 Q
VENDOR ;ORDER QUOTES BY PRICE FOR EACH VENDOR
 K ACRVND
 S ACRTSIDA=$O(^ACREDI("B",843,0))
 Q:'ACRTSIDA
 S (ACRDT,ACRI)=0
 F  S ACRDT=$O(^ACREDII("AA",ACRDOCDA,ACRTSIDA,ACRDT)) Q:'ACRDT  D
 .S ACRSEQ=0
 .F  S ACRSEQ=$O(^ACREDII("AA",ACRDOCDA,ACRTSIDA,ACRDT,ACRSEQ)) Q:'ACRSEQ  D
 ..S (ACR,ACRN11,ACRPID1,ACRMAX)=0
 ..F  S ACR=$O(^ACREDII("AA",ACRDOCDA,ACRTSIDA,ACRDT,ACRSEQ,ACR)) Q:'ACR  S X=$G(^ACREDII(ACR,1)) D:X]""
 ...S ACRSEG=$P(X,U)
 ...I ACRSEG="N1",ACRN11=0 D
 ....S ACRVENDR=$P(X,U,3)
 ....S ACRN11=ACRN11+1
 ....S ACRAMT=0
 ...I ACRSEG="PID",ACRPID1=0 D
 ....S ACRPID=$P(X,U,3)
 ....S ACRPID1=ACRPID1+1
 ....S ACRDESC=$P(X,U,6)
 ...S ACRI=ACRI+1
 ...S ^TMP("ACREDII",$J,ACRSEQ,ACRI,ACRSEG)=X
 ...S ACRJ=ACRSEQ
 ...I ACRSEG="PO1" S ACRPO1=X D
 ....S ACRMAX=ACRMAX+1
 ....S ACRQUAN=$P(ACRPO1,U,3)
 ....S ACRCOST=$P(ACRPO1,U,5)
 ....S ACRUI=$P(ACRPO1,U,4)
 ....S ACRAMT=ACRAMT+(ACRQUAN*ACRCOST)
 ....S ACRITEM(ACRVENDR,$P(ACRPO1,U,2),ACRSEQ)=ACRAMT_U_ACRQUAN_U_ACRUI_U_ACRCOST
 ...I ACRSEG="PID" S ACRPID=X D
 ....S $P(ACRITEM(ACRVENDR,$P(ACRPO1,U,2),ACRSEQ),U,5)=$P(ACRPID,U,6)
 ..S ACRVND(ACRAMT,ACRVENDR)=ACRMAX
 ..S ACRVEND(ACRSEQ,ACRVENDR)=ACRAMT
 Q:'$D(ACRVND)
 D TOP^ACRFEVX1
 Q:$D(ACRQUIT)!$D(ACROUT)
 D VDISPLAY
 Q
ITEM ;ORDER QUOTES BY PRICE FOR EACH ITEM
 K ACRITEM
 S (ACRTSIDA,ACRJ,ACRMAX)=0
 F  S ACRTSIDA=$O(^ACRI843I("AA",ACRDOCDA,ACRTSIDA)) Q:'ACRTSIDA!$D(ACRQUIT)!$D(ACROUT)  D
 .S ACRJ=ACRJ+1
 .S ACRN1=$G(^ACRI843(ACRTSIDA,"N1",1,"N1"))
 .S ACRVENDR=$P(ACRN1,U,2)
 .S ACR843DA=0
 .F  S ACR843DA=$O(^ACRI843I("AA",ACRDOCDA,ACRTSIDA,ACR843DA)) Q:'ACR843DA!$D(ACRQUIT)!$D(ACROUT)  D
 ..S ACR843=$G(^ACRI843I(ACR843DA,0))
 ..S ACRPO1=$G(^ACRI843I(ACR843DA,"PO1"))
 ..S ACRQUAN=$P(ACRPO1,U,2)
 ..S ACRCOST=$P(ACRPO1,U,4)
 ..S ACRUI=$P(ACRPO1,U,3)
 ..S ACRAMT=$P(ACRPO1,U,2)*$P(ACRPO1,U,4)
 ..S ACRPID=$G(^ACRI843I(ACR843DA,"PID",1,"PID"))
 ..S ACRDESC=$P(ACRPID,U,5)
 ..S ACRITEM(+ACRPO1,ACRAMT,ACR843DA)=ACRVENDR_U_ACRQUAN_U_ACRUI_U_ACRCOST_U_ACRDESC
 ..S:+ACRPO1>ACRMAX ACRMAX=+ACRPO1
 Q:'$D(ACRITEM)
 D TOP^ACRFEVX1
 Q:$D(ACRQUIT)!$D(ACROUT)
 D IDISPLAY
 Q
VDISPLAY ;DISPLAY VENDORS IN PRICE ORDER
 I $D(ACRDETL) D  I $D(ACROUT)!$D(ACRQUIT) K ACRQUIT Q
 .S DIR(0)="NO^1:"_ACRJ
 .S DIR("A")="Review selected Vendor"
 .W !
 .D DIR^ACRFDIC
 .K ACRQUIT
 .Q:$D(ACROUT)
 .I +Y D
 .S ACRI=+Y
 .S ACRVND=$O(ACRVEND(ACRI,""))
 .I ACRVND]"" D
 ..S ACRAMT=ACRVEND(ACRI,ACRVND)
 ..D VD
 ..S ACRQUIT=""
 D VHEAD^ACRFEVX1
 S (ACRAMT,ACRI)=0
 F ACRJ=1:1 S ACRAMT=$O(ACRVND(ACRAMT)) Q:'ACRAMT!$D(ACRQUIT)!$D(ACROUT)!(ACRJ>ACRTOP)  D
 .S ACRVND=""
 .F  S ACRVND=$O(ACRVND(ACRAMT,ACRVND)) Q:ACRVND=""!$D(ACRQUIT)!$D(ACROUT)  D
 ..S ACRI=ACRI+1
 ..S ACRAMX=+ACRVND(ACRAMT,ACRVND)
 ..D VD
 D PAUSE^ACRFWARN
 Q
VD D:$D(ACRDETL) VHEAD^ACRFEVX1
 W !?10,ACRI
 W ?13,$S(ACRCOUNT>ACRMAX:"**",1:"")
 W ?15,ACRVND
 W ?50,$J($FN(ACRAMT,"P",2),14)
 I $D(ACRDETL) D
 .S ACRXAMT=ACRAMT
 .S ACRSS=0
 .F ACRK=1:1 S ACRSS=$O(ACRITEM(ACRVENDR,ACRSS)) Q:'ACRSS!$D(ACRQUIT)  D
 ..S ACR843DA=0
 ..F  S ACR843DA=$O(ACRITEM(ACRVENDR,ACRSS,ACR843DA)) Q:'ACR843DA!$D(ACRQUIT)  D
 ...S X=ACRITEM(ACRVENDR,ACRSS,ACR843DA)
 ...S ACRAMT=+X
 ...D IDW
 ..I ACRK#5=0 D PAUSE^ACRFWARN
 .S ACRAMT=ACRXAMT
 .D PAUSE^ACRFWARN
 I '$D(ACRDETL),IOSL-4<$Y D PAUSE^ACRFWARN
 Q
IDISPLAY ;DISPLAY ITEMS IN PRICE ORDER
 S DIR(0)="NO^1:"_ACRMAX
 S DIR("A")="Review selected item"
 W !
 D DIR^ACRFDIC
 K ACRQUIT
 Q:$D(ACROUT)
 I +Y S ACRI=+Y D ID Q
 D IHEAD^ACRFEVX1
 S (ACRI,ACRX)=0
 F  S ACRI=$O(ACRITEM(ACRI)) Q:'ACRI!$D(ACRQUIT)!$D(ACROUT)  D ID
 Q
ID D IHEAD^ACRFEVX1
 S ACRAMT=0
 F ACRJ=1:1 S ACRAMT=$O(ACRITEM(ACRI,ACRAMT)) Q:'ACRAMT!$D(ACRQUIT)!$D(ACROUT)!(ACRJ>ACRTOP)  D
 .S ACR843DA=0
 .F  S ACR843DA=$O(ACRITEM(ACRI,ACRAMT,ACR843DA)) Q:'ACR843DA!$D(ACRQUIT)!$D(ACROUT)  D
 ..S X=ACRITEM(ACRI,ACRAMT,ACR843DA)
 ..S ACRQUAN=$P(X,U,2)
 ..S ACRUI=$P(X,U,3)
 ..S ACRCOST=$P(X,U,4)
 ..S ACRDESC=$E($P(X,U,5),1,75)
 ..D IDW
 ..I IOSL-4<$Y D PAUSE^ACRFWARN
 D PAUSE^ACRFWARN
 Q:$D(ACRQUIT)!$D(ACROUT)
 D IHEAD^ACRFEVX1
 Q
IDW ;WRITE ITEM
 S:'$D(ACRDETL) ACRVENDR=$E($P(X,U),1,30)
 S ACRQUAN=$P(X,U,2)
 S ACRUI=$P(X,U,3)
 S ACRCOST=$P(X,U,4)
 S ACRDESC=$E($P(X,U,5),1,75)
 W !,$S('$D(ACRDETL):ACRI,1:ACRSS)
 W ?4,ACRDESC
 W !?4,ACRVENDR
 W ?46,$J(ACRQUAN,7)
 W ?56,ACRUI
 W ?68,$J($FN(ACRAMT,"P",2),12)
 Q
