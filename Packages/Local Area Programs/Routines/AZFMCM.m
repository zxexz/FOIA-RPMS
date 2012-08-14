AZFMCM ;IHS/OHPRD/JCM;MOST COMMON DRUGS[ 02/03/95  8:21 AM ]
 ;;5.06;PS;;JUL 12, 1990
 ; IHS/OHPRD/JCM 11/15/89 Inserted line after CONVERT+0
 ;THIS ROUTINE BUILDS THE MOST COMMONLY PRESCRIBED DRUGS GLOBAL
 ;IT RUNS AND THEN CALLS PSOZCOM1 TO DO THE ACUTAL PRINT OF LIST
 ;
 ;OUTPUT VARIABLES: BD,ED,DATE,DRGNAME,IRXN,PSZCNT,RNUM,X,Y,I,TAB
 ;^TMP("PSOZCOM2",$J,
 ;^TMP("PSOZCOM1,$J,ZTIO,%IS,ZTSAVE("BD"),ZTSAVE("ED"),ZTDESC,ZTRTN
 ;
 ;EXTERNAL CALLS: ^%DT,^%ZIS,^PSOZCOM1,^%ZTLOAD
 ;^PSDRUG,^PSRX
INIT ;
 K ^TMP("PSOZCOM1",$J),^TMP("PSOZCOM2",$J)
 W @IOF
 W "Pharmacy Dispensed Drug List ",!!
 S %DT("A")="PLEASE ENTER BEGINNING DATE: "
 S %DT="AE"
 D ^%DT
 I Y=-1 G EXIT
 S BD=Y
 S %DT("A")="PLEASE ENTER ENDING DATE: "
 D ^%DT
 I Y=-1 G:X="" INIT G EXIT
 S ED=Y
CNT ;R !,"DO NOT PRINT DRUG IF COUNT IS LESS THAN: 20//",X:DTIME S:X="" X=20
 ;G:"^"[X!('$T) AZFMCM I +X'=X W !?5,*7,"PLEASE ENTER A NUMBER." G CNT
 ;S PSZCNT=9999999-X
QUE ;
 W !
 S %IS="QM"
 D ^%ZIS
 I POP G EXIT
 I $D(IO("Q")),IO=IO(0) W !!,"Sorry, you cannot queue to your screen or to a slave printer.",! K IO("Q") G QUE
 I IO=IO(0)!('$D(IO("Q"))) G DATE
 S ZTRTN="DATE^AZFMCM",ZTIO=IO,ZTSAVE("BD")="",ZTSAVE("ED")=""
 S ZTSAVE("PSZCNT")="",ZTDESC="PHARMACY COMMON DRUG LISTING"
 D ^%ZTLOAD
 G EXIT
DATE ;
 F DATE=(BD-1):0 S DATE=$O(^PSRX("AD",DATE)) Q:(DATE>ED)!(DATE="")  D RX
 ;BUILD DESCENDING ORDER ARRAY
 ;S DRGNAME=0,APSPOU=0
 ;F I=0:0 S DRGNAME=$O(^TMP("PSOZCOM1",$J,DRGNAME)) Q:DRGNAME=""  F  S APSPOU=$O(^TMP("PSOZCOM1",$J,DRGNAME,APSPOU)) Q:APSPOU=""  D
 ;.S RNUM=9999999-$P(^TMP("PSOZCOM1",$J,DRGNAME,APSPOU),U,3),^TMP("PSOZCOM2",$J,RNUM,DRGNAME,APSPOU)=^TMP("PSOZCOM1",$J,DRGNAME,APSPOU)
 D ^AZFMCM1
 K:$D(ZTSK) ^%ZTSK(ZTSK)
EXIT ;
 K ^TMP("PSOZCOM1",$J)
 K ^TMP("PSOZCOM2",$J)
 K BD,ED,ZTRTN,ZTIO,ZTSAVE("ED"),IRXN,DATE,RNUM,PSZCNT
 K ZTSAVE,ZTDESC,%IS,POP,ZTSK,%DT
 K DRGNAME,DRGNUM,UTL,IO("C"),I,X,Y,IO("Q"),TAB
 Q
RX ;
 ;IRXN IS THE SUBSCRIPT PRESCRIPTION NUMBER
 F IRXN=0:0 S IRXN=$O(^PSRX("AD",DATE,IRXN)) Q:IRXN=""  D CHECK
 Q
CHECK ;
 Q:'$D(^PSRX(IRXN,0))
 S PSFILL=$S($N(^PSRX("AD",DATE,IRXN,-1))=0:1,1:2) ;ORIGINAL OR REFILL
 ;DSD/ENM
 S DRGNUM=$P(^PSRX(IRXN,0),"^",6),QTY=$P(^(0),"^",7) ;DRUG NUMBER FOR THE DRUG FILE
 I '$D(^PSDRUG(DRGNUM,0)) Q
 Q:$P(^PSDRUG(DRGNUM,0),U,1)=""
 ;DSD/ENM
 S DRGNAME=$P(^PSDRUG(DRGNUM,0),U,1),APSPOU=$P($G(^PSDRUG(DRGNUM,660)),"^",8) I APSPOU="" S APSPOU="UNK" G APSP
APSP ;I DRGNAME'["U/D",DRGNAME[" TAB"!(DRGNAME[" CAP") D CONVERT
 ;IHS/ENM
 S:'$D(^TMP("PSOZCOM1",$J,DRGNAME,APSPOU)) ^TMP("PSOZCOM1",$J,DRGNAME,APSPOU)="0^0^0^0"
 S UTL=^TMP("PSOZCOM1",$J,DRGNAME,APSPOU)
 S $P(UTL,U,PSFILL)=$P(UTL,U,PSFILL)+1
 S $P(UTL,U,3)=$P(UTL,U,3)+1
 S $P(UTL,U,4)=$P(UTL,U,4)+QTY
 S ^TMP("PSOZCOM1",$J,DRGNAME,APSPOU)=UTL
 ;W !,DRGNAME,?30,QTY
 K UTL,PSFILL,DRGNAME,DRGNUM,QTY
 Q
 ;
CONVERT ; Strips TAB or CAP from Drug Name
 Q:$P(DRGNAME," ",1)["TAB"!($P(DRGNAME," ",1)["CAP")  ;IHS/OHPRD/JCM 11/15/89
 S TAB=$S(DRGNAME["TAB":$F(DRGNAME," TAB"),1:$F(DRGNAME," CAP"))
 S DRGNAME=$E(DRGNAME,1,(TAB-4))
 Q