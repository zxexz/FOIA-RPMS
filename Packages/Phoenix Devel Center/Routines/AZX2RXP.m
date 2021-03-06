AZQ2RXP ;IHS/ASU/RPL;SEARCH PRESCRIPTION FILE BY FILL DATE RANGE AND PVT INS. ELIGIBLE;8/18/89 ; 8/22/89  10:25 AM
 ;Version 1.1
START ;
 W !!,"This Option will search the prescription file for all prescriptions with",!,"fill dates within the range you specify that were ordered for Private Insurance",!,"Eligible patients.",!!
SD S %DT("A")="Starting Fill Date: ",%DT="AEPX" D ^%DT
 G:Y=-1 QUIT S AZQ2SD=Y
 W !
ED S %DT("A")="Ending Fill Date: " D ^%DT
 G:Y=-1 SD S AZQ2FD=Y
 I AZQ2FD<AZQ2SD W !,"Ending Date cannot be before Starting Date! Please redo.",! G SD
ZIS W !! S %IS="Q" D ^%ZIS G:POP QUIT I '$D(IO("Q")) U IO G DQUE
QUE K IO("Q"),IO("S") I IO=IO(0) W !,"Cannot Queue to Screen or Slave Printer!",! G ZIS
 S ZTRTN="DQUE^AZQ2RXP",ZTDESC="PRESCRIPTION FILE SEARCH BY DATE AND PRIV INS EL" F AZQ2="ZTRTN","ZTDESC","AZQ2SD","AZQ2FD" S ZTSAVE(AZQ2)=""
 D ^%ZTLOAD G QUIT
DQUE ;Entry point from Taskmanager
 K ^UTILITY($J)
 S AZQ2S=AZQ2SD-.0001 F I=0:0 S AZQ2S=$O(^PSRX("AD",AZQ2S)) G PRINT:AZQ2S=""!(AZQ2S>AZQ2FD) D C1
 G QUIT2
C1 S AZQ2PDFN="" F J=0:0 S AZQ2PDFN=$O(^PSRX("AD",AZQ2S,AZQ2PDFN)) Q:AZQ2PDFN=""  D C2
 Q
C2 Q:'$D(^PSRX(AZQ2PDFN,0))
 S DFN=$P(^PSRX(AZQ2PDFN,0),"^",2) Q:DFN']""
 Q:'$D(^AUPNPRVT(DFN,11))
 S AZQ2DRG=$P(^PSRX(AZQ2PDFN,0),"^",6) Q:AZQ2DRG']""  Q:'$D(^PSDRUG(AZQ2DRG,0))  Q:$P(^(0),"^",3)["9"
 S AZQ2PRVI=0 F K=0:0 S AZQ2PRVI=$O(^AUPNPRVT(DFN,11,AZQ2PRVI)) Q:AZQ2PRVI'=+AZQ2PRVI  D C3
 Q
C3 S AZQ2PRV=^AUPNPRVT(DFN,11,AZQ2PRVI,0)
 S AZQ2PRVE=$P(AZQ2PRV,"^",7),AZQ2PRVS=$P(AZQ2PRV,"^",6) I AZQ2PRVE]"",AZQ2PRVE<AZQ2S Q
 Q:AZQ2PRVS>AZQ2S
 S AZQ2HRN=$S($D(^AUPNPAT(DFN,41,DUZ(2),0)):$P(^(0),"^",2),1:"No HRN")
 S AZQ2HRN=$J(AZQ2HRN,6)
 S ^UTILITY($J,AZQ2HRN_"."_DFN,AZQ2S,AZQ2PDFN)=""
 Q
PRINT D ^AZQ2RXP1
QUIT2 W @IOF K ^UTILITY($J) I $D(ZTSK) K ^%ZTSK(ZTSK)
QUIT X ^%ZIS("C") K AZQ2PRVE,AZQ2PRVS,AZQ2PRVI,AZQ2PRV,AZQ2,AZQ2S,AZQ2SD,AZQ2FD,DIC,%DT,^UTILITY($J),ZTSK,IO("Q"),IO("S")
 K AZQ2CST,AZQ2DFN,AZQ2DPT,AZQ2DU,AZQ2NAME,AZQ2NDC,AZQ2BILL,AZQ2DRG,AZQ2PPDU,AZQ2QTY,AZQ2QUIT,AZQ280D,AZQ2DDFN,AZQ2DT,AZQ2FDY,AZQ2HRN,AZQ2N0,AZQ2PDFN,AZQ2PG,AZQ2PRVY,AZQ2SDY,AZQ2SIG,DFN,Y,ZTRTN,ZTDESC,ZTSAVE,AZQ2DTP
