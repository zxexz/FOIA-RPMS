PSAVER4 ;;BIR/JMB-Verify Invoices - CONT'D ;9/8/97
 ;;3.0; DRUG ACCOUNTABILITY/INVENTORY INTERFACE;**15**; 10/24/97
 ;This routine prints the report of new drugs that will be added to
 ;each pharmacy location or master vault.
 ;
 ;Asks & prints all invoices the user can verify.
 W @IOF,!,"The verified invoices contain new drugs for the assigned pharmacy location.",!,"A report will print by pharmacy location listing the new drugs. Use the"
 W !,"Balance Adjustment option to enter an adjustment that reflects the total",!,"dispense units on hand for each new drug.",!!,"It is suggested that you send the report to a print."
 K IO("Q") S %ZIS="Q" W !
 D ^%ZIS I POP W !,"NO DEVICE SELECTED OR OUTPUT PRINTED!" Q
 I $D(IO("Q")) D  G QUIT
 .N ZTSAVE,ZTIO,ZTRTN,ZTSAVE,ZTDTH,ZTSK
 .S ZTDESC="Drug Acct. - Print New Drugs",ZTDTH=$H,ZTRTN="PRINT^PSAVER4"
 .S ZTSAVE("PSANEWD(")="" D ^%ZTLOAD
 ;
PRINT ;Sends invoices to printer
 S (PSALOC,PSAOUT)=0,PSAPG=1,PSADLN="",$P(PSADLN,"=",80)="",PSASLN="",$P(PSASLN,"-",80)=""
 F  S PSALOC=+$O(PSANEWD(PSALOC)) Q:'PSALOC!(PSAOUT)  S PSADRGN=1 D HDR  Q:PSAOUT  D  Q:PSAOUT
 .F  S PSADRGN=$O(PSANEWD(PSALOC,PSADRGN)) Q:PSADRGN=""!(PSAOUT)  D:$Y+5>IOSL HDR Q:PSAOUT  W !,PSADRGN,!,PSASLN,!
 D:$E(IOST,1,2)="C-"&('PSAOUT) END^PSAPROC W:$E(IOST)'="C" @IOF
 K PSANEWD(PSALOC)
QUIT D ^%ZISC S:$D(ZTQUEUED) ZTREQ="@" K IO("Q")
 Q
 ;
HDR     ;Prints the header to the New Drug Report on the screen & paper.
 I $E(IOST,1,2)="C-" D:PSAPG'=1 END^PSAPROC Q:PSAOUT  W @IOF,!?28,"<<< NEW DRUG REPORT >>>"
 I $E(IOST)'="C" W:PSAPG'=1 @IOF W !?20,"DRUG ACCOUNTABILITY/INVENTORY INTERFACE",!?28,"<<< NEW DRUG REPORT >>>",?72,"Page "_PSAPG
 I $P($G(^PSD(58.8,PSALOC,0)),"^",2)="M" W !?34,"MASTER VAULT",!!,$P($G(^PSD(58.8,PSALOC,0)),"^")
 I $P($G(^PSD(58.8,PSALOC,0)),"^",2)="P" D
 .D SITES^PSAUTL1 S PSALOCN=$P(^PSD(58.8,PSALOC,0),"^")_PSACOMB
 .W !?31,"PHARMACY LOCATION",!!
 .W:$L(PSALOCN)>76 $P(PSALOCN,"(IP)",1)_"(IP)",!?17,$P(PSALOCN,"(IP)",2) W:$L(PSALOCN)<77 PSALOCN
 W !,PSADLN S PSAPG=PSAPG+1
 Q