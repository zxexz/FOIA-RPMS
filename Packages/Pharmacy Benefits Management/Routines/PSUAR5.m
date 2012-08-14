PSUAR5 ;BIR/PDW - PRINT CYCLE CONTROLLER ;25 AUG 1998
 ;;3.0;PHARMACY BENEFITS MANAGMENT;**26**;Oct 15, 1998
EN ;EP for printing reports
 N PSUQUIT
 S PSUPG=0
CATRPT ;
 ; Printing Device should be opened by PSUDBQUE by now & IO set
 ;For summary print for each division
 I '$D(PSUARSUB) S PSUARSUB="PSUAR_"_PSUJOB
 S PSUDIV=0 F  S PSUDIV=$O(^XTMP(PSUARSUB,"REPORT1",PSUDIV)) Q:PSUDIV=""  D
 . S L="" F  S L=$O(^XTMP(PSUARSUB,"REPORT1",PSUDIV,L)) Q:L=""  S X=^(L) U IO W !,X I L=2 W !,?60,"PAGE: 1"
 .;VMP-IOFO BAY PINES;ELR;PSU*3.0*26 - REMOVED FORM FEED
 . ;U IO W @IOF
 ;
 ;
DRUGRPT ; Print Drug Summary
 S PSUDIV=0 F  S PSUDIV=$O(^XTMP(PSUARSUB,"REPORT2",PSUDIV)) Q:PSUDIV=""  D
 . S PSUPG("PG")=1 D PGHDR S L=7 F  S L=$O(^XTMP(PSUARSUB,"REPORT2",PSUDIV,L)) Q:L=""  S X=^(L) U IO W !,X I $Y+4>IOSL D PG Q:$G(PSUQUIT)
 . U IO W @IOF
 Q
 ;
PG ;EP  Page controller
 S PSUQUIT=0
 I $Y<(IOSL-4) Q
 S:'$D(PSUPG("PG")) PSUPG("PG")=0 S PSUPG("PG")=PSUPG("PG")+1
 I $E(IOST)="C" K DIR S DIR(0)="E" D ^DIR I ($G(DIROUT)!$G(DUOUT)!$G(DTOUT)!$G(DROUT)) S PSUQUIT=1
 ;
PGHDR ; Write Page Header (SUBJECT of MAILMESSAGE)
 U IO W @IOF
 F I=1,2 W !,^XTMP(PSUARSUB,"REPORT2",PSUDIV,I)
 W !,?60,"Page: ",PSUPG("PG")
 ;S PSUPG("PG")=PSUPG("PG")+1
 F I=4:1:7 I $D(^XTMP(PSUARSUB,"REPORT2",PSUDIV,I)) W !,^(I)
 Q