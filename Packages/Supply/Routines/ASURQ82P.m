ASURQ82P ; IHS/ITSC/LMH -RPT 82 LIST YEARLY ITEMS ; 
 ;;4.2T2;Supply Accounting Mgmt. System;;JUN 30, 2000
 ;This routine formats and prints report 82, List of Yearly
 ;Items.
EN ;EP;PRIMARY ENTRY POINT FOR REPORT 82
 Q  ;WAR 5/21/99
 I '$D(IO) D HOME^%ZIS
 I '$D(DUZ(2)) W !,"Report must be run from Kernel option" Q
 I '$D(ASUL(1,"AR","AP")) D SETAREA^ASULARST
 S ASUK("PTRSEL")=$G(ASUK("PTRSEL")) I ASUK("PTRSEL")]"" G PSER
 S ZTRTN="PSER^ASURQ82P",ZTDESC="SAMS RPT 82" D O^ASUUZIS
 I POP S IOP=$I D ^%ZIS Q
 I ASUK(ASUK("PTR"),"Q") Q
PSER ;EP;FOR TASKMAN QUEUE OF PRINT
 S ASUF("HDR")=1
 S ASUX("ARST")=$O(^XTMP("ASUR","R82",0))
 I ASUX("ARST")']"" D
 .I $G(ASUP("TYP"))=0 Q
 .D ^ASURQ810
 D U^ASUUZIS
 S ASUX("ARST")=$O(^XTMP("ASUR","R82",0))
 I ASUX("ARST")']"" W !!,"No Data for Yearly Item Report for this quarter" G K
 S (ASUX("STA"),ASUQA("STA"))=ASUX("ARST")
 D ARE^ASULARST($P(^ASUL(1,$E(ASUX("ARST"),1,2),0),U,2))
 S ASUQA("AR")=ASUL(1,"AR","AP")_" - "_ASUL(1,"AR","NM")
 D STA^ASULARST($P(^XTMP("ASUR","R81",ASUX("ARST")),U))
 S ASUQA("STA")=ASUL(2,"STA","CD")_" - "_ASUL(2,"STA","NM")
 S Y=$P(^XTMP("ASUR","R82",0),U) X ^DD("DD") S ASUV("DT")=Y
 S (ASUC("LN"),ASUC("PG"))=0
 S ASUP("YR")=$E($P(^XTMP("ASUR","R81",0),U,2),1,4),ASUT("QTR")=$E($P(^XTMP("ASUR","R81",0),U,2),5,6)
 S ASUQA("DIV")=$S(ASUT("QTR")="04":12,ASUT("QTR")="03":9,ASUT("QTR")="02":6,1:3)
 S ASUX("ACIX")="" K ASUL(9)
 F ASUC=0:1 S ASUX("ACIX")=$O(^XTMP("ASUR","R82",ASUX("ARST"),ASUX("ACIX"))) Q:ASUX("ACIX")=""  D
 .Q:$D(DTOUT)  Q:$D(DUOUT)
 .S ASUMX("ACC")=$E(ASUX("ACIX"))
 .I $G(ASUL(9,"ACC"))'=ASUMX("ACC") D
 ..I $G(ASUL(9,"ACC"))]"" S ASUV("LEV")=1 D PRTOTL
 ..D ACC^ASULDIRF(ASUMX("ACC"))
 ..S ASUQA("ACC")=ASUL(9,"ACC")_" - "_ASUL(9,"ACC","NM")
 .D P1
 I $D(DUOUT)!($D(DTOUT))!(ASUC=0) G K
 I ASUV("LEV")'=1 D
 .S ASUV("LEV")=1 D PRTOTL
 S ASUV("LEV")=2 D PRTOTL
 D CLS^ASUUHDG
K ;
 K ASUC,ASUQX,ASUR,ASUT,ASUV,ASUX,ASURZ,ASURZX,ASUMS
 F X=3:1:22 K ASUL(X) ;Clear Table Lookup fields
 K DFOUT,DIR,DLOUT,DTOUT,DUOUT
 K X,X1,X2,X3,X4,Y
 I ASUK("PTRSEL")]"" Q
 D C^ASUUZIS
 Q
P1 ;
 S ASUMX("E#","IDX")=$E(ASUX("ACIX"),2,9) D READ^ASUMXDIO
 ;S ASUX(0)=^XTMP("ASUR","R82",ASUX("ARST"),ASUX("ACIX"))
 S ASUX("REQ")="",ASUF("IDX")=0
 F  S ASUX("REQ")=$O(^XTMP("ASUR","R82",ASUX("ARST"),ASUX("ACIX"),ASUX("REQ"))) Q:ASUX("REQ")=""  Q:$D(DTOUT)  Q:$D(DUOUT)  D
 .F X=18,19,20,22 K ASUL(X)
 .S ASUX("SST")=$E(ASUX("REQ"),1,5),ASUX("USR")=$E(ASUX("REQ"),1,2)_$E(ASUX("REQ"),6,9)
 .F X=18,19 K ASUL(X)
 .D SST^ASULDIRR(ASUX("SST")),USR^ASULDIRR(ASUX("USR"))
 .S ASUQA("SST")=ASUL(18,"SST")_" - "_ASUL(18,"SST","NM")
 .S ASUV("LEV")=0,ASUV("SST")=ASUX("SST")
 .F X=20,22 K ASUL(X)
 .D REQ^ASULDIRR(ASUX("REQ"))
 .S ASUQA("USR")=ASUL(19,"USR")_" - "_ASUL(19,"USR","NM")
 .S ASUQ=^XTMP("ASUR","R82",ASUX("ARST"),ASUX("ACIX"),ASUX("REQ"))
 .S $P(ASUQA(0,ASUX("SST")),U)=$P(ASUQ,U)
 .S $P(ASUQA(0,ASUX("SST")),U,2)=$P(ASUQ,U,2)
 .S $P(ASUQA(0,ASUX("SST")),U,3)=$FN(($P(ASUQ,U,2)/ASUQA("DIV")),"",2)
 .S $P(ASUQA(0,ASUX("SST")),U,4)=$P(ASUQ,U,3)
 .S $P(ASUQA(0,ASUX("SST")),U,5)=$P(ASUQ,U,4)
 .S $P(ASUQA(0,ASUX("SST")),U,6)=$FN(($P(ASUQ,U,3)/ASUQA("DIV")),"",2)
 .D P3
 .D:ASUF("HDR") HEADER Q:$D(DUOUT)
 .W ! S ASUC("LN")=ASUC("LN")+1
 .I ASUF("IDX")=1 D
 ..W ?10,ASUMX("DESC",2) S ASUF("IDX")=2
 .E  I ASUF("IDX")=0 D
 ..W ! S ASUC("LN")=ASUC("LN")+1
 ..W ?1,$E(ASUMX("IDX"),1,5)_"."_$E(ASUMX("IDX"),6,6)
 ..W ?10,ASUMX("DESC",1)
 ..W ?45,ASUMX("AR U/I")
 .S ASUF("IDX")=1
 .D P2
 Q:$D(DTOUT)  Q:$D(DUOUT)
 I ASUF("IDX")=1 W !?10,ASUMX("DESC",2) S ASUC("LN")=ASUC("LN")+1
 I ASUF("IDX") S ASUV("SST")=0 D PRTOTL
 Q
P2 ;
 W ?50,ASUL(18,"SST"),?55,ASUL(19,"USR")
PRLQTY ;
 F ASUV("PIECE")=1:1:3 D
 .S ASURZX=((ASUV("PIECE")-1)*10)+60
 .S ASURZ=$J($FN($P(ASUQA(ASUV("LEV"),ASUX("SST")),U,ASUV("PIECE")),"+,T",0),10)
 .D PRCOLM
PRLVAL ;EP ; PRINT VALUES ISSUED -CUR QTR/YTD/AVERAGE
 F ASUV("PIECE")=4:1:6 D
 .S ASURZX=((ASUV("PIECE")-4)*12)+90
 .S ASURZ=$J($FN($P(ASUQA(ASUV("LEV"),ASUX("SST")),U,ASUV("PIECE")),"+,T",2),12)
 .D PRCOLM
 I ASUC("LN")>(IOSL-2) S ASUF("HDR")=1
 Q
PRCOLM ;
 W ?ASURZX,ASURZ
 Q
PRTOTL ;PRINT TOTAL LINES
 I ASUC("LN")>(IOSL-ASUV("LEV")*2) S ASUF("HDR")=1
 D:ASUF("HDR") HEADER Q:$D(DUOUT)
 W !,$P($T(TOTNAM+ASUV("LEV")),";",4)
 S ASUC("LN")=ASUC("LN")+1
 S ASUV("SST")=ASUL(18,"SST","E#"),ASUL(18,"SST","E#")=0
 I ASUV("LEV")=0 D
 .D PRDASH
 .W !?35,$P($T(TOTNAM+ASUV("LEV")),";",3)
 .S ASUC("LN")=ASUC("LN")+1
 .D PRLQTY,PRDDSH
 E  D
 .S ASUF("HDR")=1
 .D PRSST
 .S ASUL(18,"SST","E#")=0
 .W !?55,$P($T(TOTNAM+ASUV("LEV")),";",3)
 .S ASUC("LN")=ASUC("LN")+1
 .D PRLVAL
 .W ! D PRDDSHV
 S ASUL(18,"SST","E#")=ASUV("SST")
 K ASUQA(ASUV("LEV"))
 Q
PRDASH ;
 F ASUC=0:1:2 S X=(ASUC*10)+60 W ?X," _________"
PRDASHV ;
 F ASUC=0:1:2 S X=(ASUC*12)+90 W ?X," ___________",?1,""
 S ASUC("LN")=ASUC("LN")+1
 Q
PRDDSH ;
 W !
 F ASUC=0:1:2 S X=(ASUC*10)+60 W ?X," ========="
PRDDSHV ;
 F ASUC=0:1:2 S X=(ASUC*12)+90 W ?X," ===========",?1,""
 S ASUC("LN")=ASUC("LN")+1
 Q
PRSST ;
 S ASUV("SST")=0
 F  S ASUV("SST")=$O(ASUQA(ASUV("LEV"),ASUV("SST"))) Q:ASUV("SST")=""  D
 .W !?50,$E(ASUV("SST"),4,5)
 .W ?55,$P($T(TOTNAM+ASUV("LEV")),";",3)
 .D PRLVAL
 W ! D PRDASHV
 Q
HEADER ;PRINT PAGE HEADINGS
 S ASUC("PG")=ASUC("PG")+1
 D:ASUC("PG")>1 PAZ^ASUURHDR Q:$D(DUOUT)
 W @IOF,!,"REPORT #82 QUARTERLY LISTING OF YEARLY ITEMS",?70,"DATE : ",ASUV("DT"),?95,"PAGE :",$J(ASUC("PG"),3)
 W !,"AREA: ",ASUQA("AR"),?50,$S(ASUT("QTR")="04":"LAST",ASUT("QTR")="03":"THIRD",ASUT("QTR")="02":"SECOND",1:"1ST")," QUARTER OF FISCAL YEAR ",ASUP("YR")
 W !,"STAT: ",ASUQA("STA"),?53,"GL ACCOUNT : ",ASUQA("ACC")
 W !!?68,"QUANTITY ISSUED",?96,"ISSUE VALUE          ISSUE VALUE"
 W !?3,"INDEX  ITEM",?45,"U",?49,"SUB",?55,"USER",?64,"CURRENT",?83,"MONTHLY",?96,"CURRENT",?119,"MONTHLY"
 W !?2,"NUMBER  DESCRIPTION",?46,"I",?49,"STA",?55,"CODE",?64,"QUARTER",?76,"Y-T-D",?83,"AVERAGE",?96,"QUARTER",?110,"Y-T-D",?119,"AVERAGE"
 W ! F ASUC=1:1:132 W "_"
 W !!
 S ASUC("LN")=10,ASUF("HDR")=0
 Q
TOTNAM ;;ITEM TOTAL
 ;;GL ACCOUNT TOTAL VALUE;SUMMARY OF YEARLY ITEMS BY ACCOUNT
 ;;TOTAL VALUE YEARLY ITEMS;SUMMARY OF TOTAL VALUE YEARLY ITEMS
P3 ;
 F ASUV("PIECE")=1:1:6 D
 .S ASUQA(0,0)=$G(ASUQA(0,0))
 .S $P(ASUQA(0,0),U,ASUV("PIECE"))=$P(ASUQA(0,0),U,ASUV("PIECE"))+$P(ASUQA(0,ASUX("SST")),U,ASUV("PIECE"))
 F ASUV("LEVA")=0:1:2 D
 .F ASUV("PIECE")=1:1:6 D
 ..S ASUQA(ASUV("LEVA")+1,ASUX("SST"))=$G(ASUQA(ASUV("LEVA")+1,ASUX("SST")))
 ..S $P(ASUQA(ASUV("LEVA")+1,ASUX("SST")),U,ASUV("PIECE"))=$P(ASUQA(ASUV("LEVA")+1,ASUX("SST")),U,ASUV("PIECE"))+$P(ASUQA(ASUV("LEVA"),ASUX("SST")),U,ASUV("PIECE"))
 ..S ASUQA(ASUV("LEVA")+1,0)=$G(ASUQA(ASUV("LEVA")+1,0))
 ..S $P(ASUQA(ASUV("LEVA")+1,0),U,ASUV("PIECE"))=$P(ASUQA(ASUV("LEVA")+1,0),U,ASUV("PIECE"))+$P(ASUQA(ASUV("LEVA"),ASUX("SST")),U,ASUV("PIECE"))
 Q
