XMSVRTST ; ACC/OHPRD - ROUTINE FOR SERVER TEST ; [ 03/26/92  11:40 AM ]
 ;;7.1;Mailman;**1003**;OCT 27, 1998
 ;;3.27;;ACC/IHS ROUTINE FROM;;3.18;;
 ;
 X XMREC
 I XMRG="RETAIN" S XMSVRS="retained"
 E  S XMSVRS="disposed of"
 S XMSVRC=0
 F XMSVRN=0:1 X XMREC Q:XMER  S XMSVRC=XMSVRC+XMRG
 S (DUZ,XMDUZ)=.5
 S XMSUB="Response to your "_XMSVRN_" line message ["_XQSUB_"]"
 ;K XMY S XMY(XMFROM)=""
 K XMY S XMY(XQSND)="" ; CAN'T USE ALPHA RECIPIENT
 K XMTEXT S XMTEXT="XMTEXT(",XMTEXT(1,0)="I "_XMSVRS_" my message ["_XQMSG_"]",XMTEXT(2,0)="Sum = "_XMSVRC
 D ^XMD
 ;I XMSVRS="disposed of" S XMZ=XQMSG,XMSER="S.XM SERVER TEST" D REMSBMSG^XMA1C
 I XMSVRS="disposed of" S XMZ=XQMSG,XMSER="S.XMSVRTST" D REMSBMSG^XMA1C
KILLS K XMSVRS,XMSVRC,XMSVRN
 K XQMSG,XQSUB,XQSND
 K XMREC,XMZ,XMFROM,XMRG,XMDUZ,XMSUB,XMY,XMTEXT
EXIT S ZTREQ="@"
 Q
