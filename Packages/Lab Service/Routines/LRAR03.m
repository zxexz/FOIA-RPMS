LRAR03 ; IHS/DIR/AAB - NEW ARCHIVE PURGERSET 12/12/96 10:16 ; [ 07/22/2002  1:05 PM ]
 ;;5.2;LR;**1002,1013**;JUL 15, 2002
 ;;5.2;LAB SERVICE;**111**;Sep 27, 1994
INIT ;              Building block from...\/
 ;     LRCHIVK SLC/RWF - REMOVE OLD LAB DATA ; 12/14/87  15:46 ;
 Q
EN ;from LRCHIV
 U IO W @IOF,"START OF PURGE PASS" D STAMP^LRX
 S LRDFN=0
DFN ;
 S LRDFN=$O(^LAR("Z",LRDFN)) G END:LRDFN="" W "."
 F LRSS="CH","MI" I $O(^LAR("Z",LRDFN,LRSS,0)) S LRIDT=0,C1=1 D LAB,UPDT
 S ^LAB(69.9,1,"PURGE LRDFN")=LRDFN G DFN
LAB ;
 S LRIDT=$O(^LAR("Z",LRDFN,LRSS,LRIDT)) Q:LRIDT<1
 ;
 IF '$D(^LR(LRDFN,LRSS,LRIDT,0)) W !,"Data not found." G LAB
 ;
 ;              If data in ^LRA matches ^LR purge
 ;
 IF ^LAR("Z",LRDFN,LRSS,LRIDT,0)=^LR(LRDFN,LRSS,LRIDT,0) D  G LAB
 .  K ^LAR("Z",LRDFN,LRSS,LRIDT),^LR(LRDFN,LRSS,LRIDT)
 .  S ^LR(LRDFN,"T",P1,0)=P1
 W !,"^LAR and ^LR don't match, Data not purged.",!
 W " LRDFN = ",LRDFN_" Sub Script = "_LRSS_" LRIDT = "_LRIDT
 W !?4,"^LR("_LRDFN_","_LRSS_","_LRIDT_",0) = ",^LR(LRDFN,LRSS,LRIDT,0)
 W !,"^LAR(""Z"","_LRDFN_","_LRSS_","_LRIDT_",0) = ",^LAR("Z",LRDFN,LRSS,LRIDT,0)
 K ^LAR("Z",LRDFN,LRSS,LRIDT)
 G LAB
 Q
UPDT S X=0,LRCNT=0
 F I=0:0 S X=$O(^LR(LRDFN,LRSS,X)) Q:X<1  S LRCNT=LRCNT+1
 I LRCNT=0 S ^LR(LRDFN,LRSS,0)=$S(LRSS="CH":"^63.04D",1:"^63.05DA") Q
 S $P(^LR(LRDFN,LRSS,0),U,4)=LRCNT
 Q
END W !!,"**PURGE PASS DONE ** " D STAMP^LRX Q  ;W @IOF G H^XUS
 Q
SET ;
 Q
 ;CAN BE USED INSTEAD OF dots TO SHOW USER HOW JOB IS PROCEEDING
 ;   
 ;    LRJT0=4th piece of 0 node of file being searched
 ;F LRI=1:1:70 S DX=LRI*2+2,DY=6 X IOXY D
JOBTIME ;
 ;
 Q:$E(IOST,1,2)'="C-"
 S OK=1
 S DX=LRI*2+2,DY=6 X IOXY D
 . I '$G(LRTIC) S LRTIC=$P((LRJT0/70),".")
 . Q:(LRI+1)'>LRTIC  S LRTIC=LRTIC+$P((LRJT0/70),".") S LRIN=LRIN+1
 . S DX=2+LRIN,DY=8 X IOXY
 . W IORVON
 . W ">"
 . W IORVOFF
 . S DX=16,DY=17 X IOXY
 . W IODHLT,$E((LRIN/LRJT0)*100,1,4),"% of ^LR"
 . S DX=16,DY=18 X IOXY
 . W IODHLB,$E((LRIN/LRJT0)*100,1,4),"% of ^LR"
 . D FLASH
 I 'OK D SCRNOFF
 Q
SCRNON ;
 QUIT
FLASH ;
 QUIT
SCRNOFF ;
 QUIT