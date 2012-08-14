XUNTEG0 ;ISC/XTSUMBLD KERNEL - Package checksum checker ;2980623.172436 [ 04/02/2003   8:29 AM ]
 ;;8.0;KERNEL;**1002,1003,1004,1005,1007**;APR 1, 2003
 ;;0.0;
 ;;7.3;2980623.172436
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 G CONT^XUNTEG01
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
XQSMD4 ;;12522111
XQSMD5 ;;5607731
XQSMDCPY ;;10103610
XQSMDFM ;;19137162
XQSMDP ;;5646302
XQSRV ;;9924970
XQSRV1 ;;8909491
XQSRV2 ;;6714725
XQSRV3 ;;3496082
XQSRV4 ;;3216408
XQSRV5 ;;18981592
XQSTCK ;;3031866
XQSUITE ;;8554117
XQSUITE1 ;;921483
XQT ;;14447490
XQT1 ;;10862317
XQT2 ;;12300772
XQT3 ;;12897117
XQT4 ;;15473941
XQT5 ;;3522804
XQTOC ;;9078690
XQUIT ;;6866588
XQUSR ;;5529339
XQUTL ;;3035072
XTER ;;18002669
XTER1 ;;19625741
XTER1A ;;16347555
XTER1A1 ;;4398575
XTER1B ;;5286418
XTER2 ;;10505990
XTERPUR ;;8641280
XTRMON ;;2411518
XTSUMCK ;;15718237
XTSUMCK1 ;;2240321
XUA4A7 ;;5147008
XUA4A71 ;;8344994
XUA4A72 ;;3438134
XUAPURGE ;;3095834
XUCIDTM ;;2586155
XUCIMSM ;;2860960
XUCIMSQ ;;2309474
XUCIVXD ;;2973452
XUDHRES ;;949696
XUDHSET ;;1566467
XUFILE ;;7382222
XUFILE0 ;;4451711
XUFILE1 ;;3723306
XUFILE3 ;;2493041
XUGET ;;1957440
XUHGLST ;;1897967
XUINCNV ;;1168935
XUINCON ;;8326075
XUINEACH ;;1608976
XUINEND ;;9463455
XUINENV ;;745524
XUINOK ;;4136444
XUINPCH ;;4014109
XUINPRE ;;1661188
XUINPRE1 ;;445322
XUINTSK ;;622549
XUINTSK1 ;;2935067
XUINTSK2 ;;1546985
XUP ;;4889873
XUPARAM ;;1038716
XUS ;;8130615
XUS1 ;;11733633
XUS11 ;;2253952
XUS1A ;;5469552
XUS1B ;;1937961
XUS2 ;;14087848
XUS3 ;;5764888
XUS3A ;;2788072
XUS4 ;;3298230
XUS5 ;;10324963
XUS6 ;;540462
XUS9 ;;3317179
XUS91 ;;8564429
XUS911 ;;9067144
XUSCLEAN ;;6947166
XUSER ;;722717
XUSERBLK ;;10301404
XUSERNEW ;;7033074
XUSESIG ;;5898026
XUSESIG1 ;;896290
XUSG ;;3411461
XUSG1 ;;3622065
XUSHSH ;;9190985
XUSHSHP ;;11519001
XUSMGR ;;2622541
XUSPURGE ;;6057560
XUSRA ;;1922318
XUSRB ;;5189858
XUSRB1 ;;9935689
XUSTAT ;;12789745
XUSTAT1 ;;4238143
XUSTAT2 ;;7449274
XUSTERM ;;14414385
XUSTERM1 ;;12388178
XUSTERM2 ;;918022
XUSTZ ;;3043236
XUTMD ;;5716360
XUTMD1 ;;2786473
XUTMDEVQ ;;301064
XUTMDQ ;;5815989
XUTMDQ1 ;;2812623
XUTMG145 ;;756645
XUTMG146 ;;2796686
XUTMG14P ;;905998
XUTMG19 ;;3927926
XUTMG43 ;;959490
XUTMK ;;6693065
XUTMKE ;;11755850
XUTMKE1 ;;3551705
XUTMKE2 ;;2728625
XUTMONH ;;4803834
XUTMONH1 ;;7123808
XUTMONH2 ;;4690407
XUTMOPT ;;3660415
XUTMQ ;;8173643
XUTMQ0 ;;5899641
XUTMQ1 ;;7717308
XUTMQ2 ;;6364385
XUTMQ3 ;;6082991
XUTMQH ;;3395369
XUTMR ;;10109710
XUTMR1 ;;3273351
XUTMRJD ;;6876289
XUTMRJD1 ;;5109406
XUTMRP ;;15493753
XUTMRP1 ;;7029216
XUTMSYNC ;;678537
XUTMT ;;891834
XUTMTA ;;5836441
XUTMTAL ;;5351024
XUTMTD ;;2473334
XUTMTDL ;;8266337
XUTMTED ;;754921
XUTMTEIO ;;2812560
XUTMTEP ;;849769
XUTMTES ;;535862
XUTMTL ;;3371652
XUTMTLD ;;5371015
XUTMTLU ;;4440637
XUTMTP ;;10704702
XUTMTP0 ;;4331804
XUTMTP1 ;;5147814
XUTMTPD ;;6389592
XUTMTPU ;;5923563
XUTMTR1 ;;13308308
XUTMTR2 ;;9504083
XUTMTR3 ;;7627095
XUTMTR4 ;;1154325
XUTMTS ;;1220358
XUTMTU ;;4497383
XUTMTUL ;;6415410
XUTMTZ ;;7837634
XUTMTZ1 ;;8880619
XUTMTZ2 ;;4914071
XUTMTZ3 ;;12499483
XUTMUSE ;;14602802
XUTMUSE1 ;;3122246
XUTMUSE2 ;;13059147
XUTMUSE3 ;;11072040
XUTMUTL ;;2265621
XUVERIFY ;;3930077