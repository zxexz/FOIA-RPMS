LREPIAK ;VA/DALOI/HOAK-EXTRACT ACKNOWLEDGEMENT ;4/10/98
 ;;5.2;LAB SERVICE;**1030**;NOV 01, 1997
 ;;5.2;LAB SERVICE;**175,260**;Sep 27, 1994;Build 2
 ;
 ;  ^HL(772,1732536,0) = 1700204^40^^I^^1695685^^1728022^I^4576
 ;  ^HL(772,1732536,"IN",0) = ^^104^104^2980404^
 ;  ^HL(772,1732536,"IN",1,0) = MSH^~|\&^NCH-AAC^200^NCH-LAB^525^19980403210341^^ACK~^1695685^P^2.2^^^NE^AL
 ;                                   ID    LEVEL
 ;  ^HL(772,1732536,"IN",99,0) = DSP^0001^029349629:19980401093501:000
 ;  ^HL(772,1732536,"IN",101,0) = DSP^0001^010486381:19980331114855:000
 ;  ^HL(772,1732536,"IN",104,0) = NNNN
 ;                       CODE
 ;                        \/
LOOK ;  ^HL(772,1732536,"P") = 3^2980404.002435
 ;
 I '$G(LRPROT) S LRPROT=$G(HL("EID"))
 D GENACK^HLMA1(HL("EID"),HLMTIENS,HL("EIDS"),"LM",1,.HLRESLTA)
TEST ;
 I '$G(HLFS) S HLFS=HL("FS")
 S LRMID=HLMTIEN D
  . D GETS^DIQ(772,LRMID,200,"Z","LREPRT","LREPMT")
  . S LRMN=$P($G(LREPRT(772,LRMID_",",200,1,0)),HLFS,10)
  . ;$P($G(^HL(772,LRMID,"IN",1,0)),HLFS,10)
  . I '$G(LRMN) S LRMN=$P($G(HLHDR),HLFS,10)
  . Q:'$G(LRMN)
  . I $G(HLHDR) S LRNCHAAC=$P(HLHDR,HLFS,3)
  . I '$G(LRNCHAAC) S LRNCHAAC=$P($G(LREPRT(772,LRMID_",",200,1,0)),HLFS,3)
  . ;$P($G(^HL(772,LRMID,"IN",1,0)),HLFS,3)
  . D GETS^DIQ(772,LRMID,20,"Z","LREPRT","LREPMT")
  . S LRSTATUS=LREPRT(772,LRMID_",",20)
  . ;S LRSTATUS=+$G(^HL(772,LRMID,"P"))
  . I 'LRSTATUS S LRSTATUS=3
  . D GETS^DIQ(772,LRMID,21,"Z","LREPRT","LREPMT")
  . S LRSTADT=LREPRT(772,LRMID_",",21)
  . ;S LRSTADT=$P(^HL(772,LRMID,"P"),U,2)
  . S ^TMP($J,"LREPIACK",LRMN)=LRSTATUS_U_LRSTADT
 I $G(LRNCHAAC)'="NCH-AAC" S HLRESLT=0 QUIT
 D MAIL
 S HLRESLT=0
 QUIT
 ;
 ;
 ;
 ; Send a message to entries
 ;
MAIL I $G(DUZ)'>0 S LRDUZ2=.5
 I $G(LRDUZ2)'>0 S LRDUZ2=.5
 ;
 ;
 ;  ^XMB(3.8,"B","LR NCH-REPORT",4741)
 K XMY S X="LR NCH-REPORT",XMDUZ=DUZ D INST^XMA21 I XMMG["not found" S HLRESLT="LR NCH-REPORT mail group not defined" QUIT
 ;S LRGRP=$O(^XMB(3.8,"B","LR NCH-REPORT",0))
 ;I '$G(LRGRP) S HLRESLT="LR NCH-REPORT mail group not defined" QUIT
 ;
 ;
 ;  ^XMB(3.8,4741,0) = LR NCH-REPORT^PR^n^^^1^1059
 ;  ^XMB(3.8,4741,1,0) = ^3.81P^2^2
 ;  ^XMB(3.8,4741,1,1,0) = 10984
 ;
 ;  GET mail group members
 ;S LRMEM=0
 ;F  S LRMEM=$O(^XMB(3.8,LRGRP,1,LRMEM)) Q:+LRMEM'>0  S XMY(^(LRMEM,0))="" D
 S XMDUZ=LRDUZ2
 S XMTEXT="LRTXT("
 S LRTXT(1)="Flash... This is an acknowledgement message from NCH"
 S LRTXT(2)="Message #: "_$G(LRSTATUS)_" From the status file 771.6 message is categorized as: "
 S LRX=0
 F  S LRX=$O(^TMP($J,"LREPIACK",LRX)) Q:+LRX'>0  S LRSTATUS=$P(^(LRX),U),LRSTADT=$P(^(LRX),U,2) I $G(LRSTATUS) D
  . S LRTXT(LRX)="Message: "_LRX_" "_$$GET1^DIQ(771.6,+LRSTATUS,.01)_" @ "_$$FMTE^XLFDT(LRSTADT)
 S XMSUB="Acknowledgement message from Austin."
 D ^XMD
 ;
 ;
 QUIT
 ;
 ;
 ;
END ;
 ;
 K LRX,LRSTATUS,LRSTADT,LRDUZ2,LREPRT,LRMID,LRMN,LRNCHAAC,LRTXT,XMMG,XMSUB,XMTEXT
 K ^TMP($J,"LREPIACK")
 ;
 QUIT