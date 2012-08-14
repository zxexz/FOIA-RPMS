ABMTALLY ; IHS/SD/SDR - Monthly tally report - 8/19/2005 1:28:34 PM
 ;;2.6;IHS Third Party Billing;**1**;NOV 12, 2009
 ;
 ; IHS/SD/SDR - v2.5 p10 - IM18370
 ;   New report
 ; IHS/SD/SDR - abm*2.6*1 - HEAT3073 - fix <SUBSCR>COMPUTE+45^ABMTALLY
 ;
 ;Report to count:
 ;   Number of visits (total; with and without TPB coverage)
 ;   Number of claims (total; divided by claim status)
 ;   Number of bills (total; divided by billed amount and outstanding)
 ; User will be prompted for (this will also be the sort order):
 ;   Visit Location(s)
 ;   Clinic Type(s)
 ;   Date range
 ;OPTION: ABMD RP TALLY^VISIT/CLAIM/BILL TALLY REPORT
 K ABM,ABMY
 S ABM("RTYP")=1
 S ABM("RTYP","NM")="TALLY LISTING"
 ;
SEL D LOOP Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 S ABM("HD",0)="LISTING of TALLIED files "
 S ABM("LVL")=0
 D QUE
 Q
 ;
QUE ;
 S ZTRTN="COMPUTE^ABMTALLY"
 S ZTDESC="TALLED REPORT OF PCC/TPB/AR"
 S ZTSAVE("ABM*")=""
 K ZTSK
 ;S ABMFILE=$P($G(^DIC(4,DUZ(2),0)),U)_DT_".txt"  ;abm*2.6*1 HEAT3073
 S ABMFILE=$TR($P($G(^DIC(4,DUZ(2),0)),U)_DT_".txt"," ","_")  ;abm*2.6*1 HEAT3073
 S ABMPATH=$P($G(^ABMDPARM(DUZ(2),1,4)),U,7)
 S %ZIS("HFSNAME")=ABMPATH_ABMFILE
 S %ZIS("HFSMODE")="W"
 S %ZIS("B")="HFS"
 S %ZIS="QN"
 D ^%ZIS
 Q:POP
 S ZTIO=""  ;force taskman NOT to use IO from here. TM gets confused and sends output to tmp.hfs
 ;file is transferred via ABMPATH and ABMFILE
 D ^%ZTLOAD
 I $G(ZTSK) D
 .W !,"Task # ",ZTSK," queued."
 .W !,"File to be created:"_ABMPATH_ABMFILE
 .D ^%ZISC
 D HOME^%ZIS
 K DIR
 S DIR(0)="E"
 D ^DIR
 Q
 ;
LOOP ;
 ; Display current exclusion parameters
 S ABMY("X")="W $$SDT^ABMDUTL(X)"
 G XIT:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)
 W !!?3,"EXCLUSION PARAMETERS Currently in Effect for RESTRICTING the EXPORT to:",!?3,"======================================================================="
 W !?3,"- Visit Location.....: "
 I $D(ABMY("LOC")) D
 .S ABMI=0
 .F  S ABMI=$O(ABMY("LOC",ABMI)) Q:+ABMI=0  W !?12,$P(^DIC(4,ABMI,0),U)
 E  W "ALL"
 I $D(ABMY("DT")) W !?3,"- Date Range....:"
 I  S X=ABMY("DT",1) X ABMY("X") W "  to: " S X=ABMY("DT",2) X ABMY("X")
 W !?3,"- Clinics...:"
 I $D(ABMY("CLIN")) D
 .S ABMI=0
 .F  S ABMI=$O(ABMY("CLIN",ABMI)) Q:+ABMI=0  W !?12,$P(^DIC(40.7,ABMI,0),U)
 E  W "ALL"
PARM ;
 ; Choose additional exclusion parameters
 K DIR
 S DIR(0)="SO^1:LOCATION;2:DATE RANGE;3:CLINIC"
 S DIR("A")="Select ONE or MORE of the above EXCLUSION PARAMETERS"
 S DIR("?")="The report can be restricted to one or more of the listed parameters. A parameter can be removed by reselecting it and making a null entry."
 D ^DIR
 K DIR
 G XIT:$D(DIRUT)!$D(DIROUT)
 I Y=1!(Y=2)!(Y=3) D @($S(Y=3:"CLIN",Y=1:"LOC",1:"DT")_"^ABMTALLY") G LOOP
 Q
 ;
COMPUTE ;
 S ABM("SUBR")="ABM-TALLY"
 K ^TMP("ABM-TALLY",$J)
 ;PCC DATA
 S ABMSDT=+$G(ABMY("DT",1))  ;start date
 S ABMEDT=$S(+$G(ABMY("DT",2))'=0:+$G(ABMY("DT",2)),1:9999999)  ;end date
 S ABMVDT=ABMSDT-.01
 F  S ABMVDT=$O(^AUPNVSIT("B",ABMVDT)) Q:+ABMVDT=0!(ABMVDT>ABMEDT)  D
 .S ABMVIEN=0
 .F  S ABMVIEN=$O(^AUPNVSIT("B",ABMVDT,ABMVIEN)) Q:+ABMVIEN=0  D
 ..S ABMVL=$P($G(^AUPNVSIT(ABMVIEN,0)),U,6)
 ..S:ABMVL="" ABMVL="NO VISIT LOCATION"
 ..I $D(ABMY("LOC"))&('$D(ABMY("LOC",ABMVL))) Q  ;not selected visit location
 ..S ABMCLN=$P($G(^AUPNVSIT(ABMVIEN,0)),U,8)
 ..S:ABMCLN="" ABMCLN=99999
 ..I $D(ABMY("CLIN"))&('$D(ABMY("CLIN",ABMCLN))) Q  ;not selected clinic
 ..S ABMSCAT=$P($G(^AUPNVSIT(ABMVIEN,0)),U,7)  ;SERVICE CATEGORY
 ..S:ABMSCAT="" ABMSCAT="NO SERVICE CATEGORY"
 ..S ABMTPB=$P($G(^AUPNVSIT(ABMVIEN,0)),U,4)
 ..S ^TMP("ABM-TALLY",$J,"VTOT")=+$G(^TMP("ABM-TALLY",$J,"VTOT"))+1  ;total visits
 ..S ABMSTODT=$E(ABMVDT,1,5)  ;month and year of visit for sorting
 ..I ABMTPB=1!(ABMTPB=2)!(ABMTPB=24)!(ABMTPB=25) S ^TMP("ABM-TALLY",$J,"PCC",ABMVL,ABMCLN,ABMSCAT,ABMSTODT,"CLM")=+$G(^TMP("ABM-TALLY",$J,"PCC",ABMVL,ABMCLN,ABMSCAT,ABMSTODT,"CLM"))+1  ;clinic cnt w/clm
 ..E  S ^TMP("ABM-TALLY",$J,"PCC",ABMVL,ABMCLN,ABMSCAT,ABMSTODT,"NOCLM")=+$G(^TMP("ABM-TALLY",$J,"PCC",ABMVL,ABMCLN,ABMSCAT,ABMSTODT,"NOCLM"))+1
 ;
 ;CLAIM DATA
 S ABMCLMDT=ABMSDT-.01
 F  S ABMCLMDT=$O(^ABMDCLM(DUZ(2),"AC",ABMCLMDT)) Q:+ABMCLMDT=0!(ABMCLMDT>ABMEDT)  D
 .S ABMIEN=0
 .F  S ABMIEN=$O(^ABMDCLM(DUZ(2),"AC",ABMCLMDT,ABMIEN)) Q:+ABMIEN=0  D
 ..S ABMVL=$P($G(^ABMDCLM(DUZ(2),ABMIEN,0)),U,3)
 ..S:ABMVL="" ABMVL="NO VISIT LOCATION"  ;NO VISIT LOCATION
 ..I $D(ABMY("LOC"))&('$D(ABMY("LOC",ABMVL))) Q  ;not selected visit location
 ..S ABMCLN=$P($G(^ABMDCLM(DUZ(2),ABMIEN,0)),U,6)  ;CLINIC
 ..S:ABMCLN="" ABMCLN=99999
 ..I $D(ABMY("CLIN"))&('$D(ABMY("CLIN",ABMCLN))) Q  ;not selected clinic
 ..S ABMVTYP=$P($G(^ABMDCLM(DUZ(2),ABMIEN,0)),U,7)  ;VISIT TYPE
 ..S:ABMVTYP="" ABMVTYP="UNKNOWN"
 ..S ABMCLST=$P($G(^ABMDCLM(DUZ(2),ABMIEN,0)),U,4)      ;CLAIM STATUS
 ..S:ABMCLST="" ABMCLST="UNKNOWN"  ;abm*2.6*1 HEAT3073
 ..S ABMACTI=$P($G(^ABMDCLM(DUZ(2),ABMIEN,0)),U,8)      ;ACTIVE INSURER
 ..S:ABMACTI'="" ABMITYP=$P($G(^AUTNINS(ABMACTI,2)),U)
 ..S:ABMACTI'="" ABMACTI=$P($G(^AUTNINS(ABMACTI,0)),U)  ;
 ..I ABMACTI="" S ABMACTI="NO INSURER"
 ..I ABMITYP="" S ABMITYP="NO INS. TYPE"
 ..S ABMSTODT=$E(ABMCLMDT,1,5)  ;month and year of visit for sorting
 ..S ^TMP("ABM-TALLY",$J,"CTOT")=+$G(^TMP("ABM-TALLY",$J,"CTOT"))+1  ;total claims
 ..S ^TMP("ABM-TALLY",$J,"TPB",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMCLST,ABMITYP,ABMACTI)=+$G(^TMP("ABM-TALLY",$J,"TPB",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMCLST,ABMITYP,ABMACTI))+1
 ;now get cancelled claim data
 S ABMCLMDT=ABMSDT-.01
 S ABMCLST="X"      ;CLAIM STATUS
 F  S ABMCLMDT=$O(^ABMCCLMS(DUZ(2),"AC",ABMCLMDT)) Q:+ABMCLMDT=0!(ABMCLMDT>ABMEDT)  D
 .S ABMIEN=0
 .F  S ABMIEN=$O(^ABMCCLMS(DUZ(2),"AC",ABMCLMDT,ABMIEN)) Q:+ABMIEN=0  D
 ..S ABMVL=$P($G(^ABMCCLMS(DUZ(2),ABMIEN,0)),U,3)
 ..S:ABMVL="" ABMVL="NO VISIT LOCATION"  ;NO VISIT LOCATION
 ..I $D(ABMY("LOC"))&('$D(ABMY("LOC",ABMVL))) Q  ;not selected visit location
 ..S ABMCLN=$P($G(^ABMCCLMS(DUZ(2),ABMIEN,0)),U,6)  ;CLINIC
 ..S:ABMCLN="" ABMCLN=99999
 ..I $D(ABMY("CLIN"))&('$D(ABMY("CLIN",ABMCLN))) Q  ;not selected clinic
 ..S ABMVTYP=$P($G(^ABMCCLMS(DUZ(2),ABMIEN,0)),U,7)  ;VISIT TYPE
 ..S:ABMVTYP="" ABMVTYP="UNKNOWN"
 ..S ABMACTI=$P($G(^ABMCCLMS(DUZ(2),ABMIEN,0)),U,8)      ;ACTIVE INSURER
 ..S:ABMACTI'="" ABMITYP=$P($G(^AUTNINS(ABMACTI,2)),U)
 ..S:ABMACTI'="" ABMACTI=$P($G(^AUTNINS(ABMACTI,0)),U)
 ..I ABMACTI="" S ABMACTI="NO INSURER"
 ..I ABMITYP="" S ABMITYP="NO INS. TYPE"
 ..S ABMSTODT=$E(ABMCLMDT,1,5)  ;month and year of visit for sorting
 ..S ^TMP("ABM-TALLY",$J,"CTOT")=+$G(^TMP("ABM-TALLY",$J,"CTOT"))+1  ;total claims
 ..S ^TMP("ABM-TALLY",$J,"TPB",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMCLST,ABMITYP,ABMACTI)=+$G(^TMP("ABM-TALLY",$J,"TPB",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMCLST,ABMITYP,ABMACTI))+1
 ;
 ;BILL DATA
 S ABMBDT=ABMSDT-.01
 F  S ABMBDT=$O(^BARBL(DUZ(2),"F",ABMBDT)) Q:+ABMBDT=0!(ABMBDT>ABMEDT)  D
 .S ABMBIEN=0
 .F  S ABMBIEN=$O(^BARBL(DUZ(2),"F",ABMBDT,ABMBIEN)) Q:+ABMBIEN=0  D
 ..S ABMACCTI=$P($G(^BARBL(DUZ(2),ABMBIEN,0)),U,3)
 ..S ABMACCT=$P($G(^BARAC(DUZ(2),ABMACCTI,0)),U)
 ..I (ABMACCT'["AUTNINS")&(ABMACCT'["AUPNDPT") Q  ;only insurer/patient entries
 ..I ABMACCT[("AUTNINS") S ABMINS=$P($G(@(U_$P(ABMACCT,";",2)_+ABMACCT_",0)")),U)
 ..S:ABMINS="" ABMINS="NO INSURER"
 ..S D0=ABMACCTI,ABMITYP=$$VAL^BARVPM(8)  ;insurer type
 ..S ABMVL=$P($G(^BARBL(DUZ(2),ABMBIEN,1)),U,8)  ;visit location
 ..S:ABMVL="" ABMVL="NO VISIT LOCATION"  ;NO VISIT LOCATION
 ..I $D(ABMY("LOC"))&('$D(ABMY("LOC",ABMVL))) Q  ;not selected visit location
 ..S ABMCLN=$P($G(^BARBL(DUZ(2),ABMBIEN,1)),U,12)  ;clinic
 ..S:ABMCLN="" ABMCLN=99999
 ..I $D(ABMY("CLIN"))&('$D(ABMY("CLIN",ABMCLN))) Q  ;not selected clinic
 ..S ABMVTYP=$P($G(^BARBL(DUZ(2),ABMBIEN,1)),U,14)  ;VISIT TYPE
 ..S:ABMVTYP="" ABMVTYP="UNKNOWN"
 ..S ABMSTODT=$E(ABMBDT,1,5)  ;month and year of visit for sorting
 ..S ABMBLST=$$VAL^BAR3PINQ(ABMBIEN,"B",.04)  ;bill status
 ..Q:ABMBLST=""  ;NO BILL STATUS
 ..S ABMBILL=$P($G(^BARBL(DUZ(2),ABMBIEN,0)),U,13)  ;amount billed
 ..S ABMCURR=$P($G(^BARBL(DUZ(2),ABMBIEN,0)),U,15)  ;current bill amount
 ..S ^TMP("ABM-TALLY",$J,"BTOT")=+$G(^TMP("ABM-TALLY",$J,"BTOT"))+1  ;total bills
 ..S ^TMP("ABM-TALLY",$J,"BAR",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS)=+$G(^TMP("ABM-TALLY",$J,"BAR",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS))+1
 ..S ^TMP("ABM-TALLY",$J,"BAR-BILLED",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS)=+$G(^TMP("ABM-TALLY",$J,"BAR-BILLED",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS))+ABMBILL
 ..S ^TMP("ABM-TALLY",$J,"TBILLED")=+$G(^TMP("ABM-TALLY",$J,"TBILLED"))+ABMBILL
 ..S ^TMP("ABM-TALLY",$J,"BAR-CBILLED",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS)=+$G(^TMP("ABM-TALLY",$J,"BAR-CBILLED",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS))+ABMCURR
 ..S ^TMP("ABM-TALLY",$J,"TCBILLED")=+$G(^TMP("ABM-TALLY",$J,"TCBILLED"))+ABMCURR
 ..; now get transaction data
 ..S ABMTRIEN=0
 ..F  S ABMTRIEN=$O(^BARTR(DUZ(2),"AC",ABMBIEN,ABMTRIEN))  Q:+ABMTRIEN=0  D
 ...S (ABM(1),ABM(2),ABM(3),ABM(4))=0
 ...I +ABMTRIEN<ABMSDT!(+ABMTRIEN>ABMEDT) Q  ;outside date range
 ...D TRANS^ABMTALL2
 ...S ABMTR("ADJ CAT")=$P(ABMTR(1),U,2)           ; Adjustment Category
 ...I ",3,4,13,14,15,16,19,20,"'[(","_ABMTR("ADJ CAT")_",")&(",40,49,39,108,503,"'[(","_ABMTR("T")_",")) Q
 ...S:(ABMTR("T")=49!(ABMTR("T")=503)) ABM(1)=ABMTR("CR-DB")
 ...S:ABMTR("T")=40 ABM(2)=ABMTR("CR-DB")
 ...S:(",3,4,13,14,15,16,20,"[(","_ABMTR("ADJ CAT")_",")) ABM(3)=ABMTR("CR-DB")
 ...S:ABMTR("T")=108 ABM(3)=ABMTR("CR-DB")
 ...S:(ABMTR("T")=39!(ABMTR("ADJ CAT")=19)) ABM(4)=ABMTR("CR-DB")
 ...S ^TMP("ABM-TALLY",$J,"PAYMENT",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS)=+$G(^TMP("ABM-TALLY",$J,"PAYMENT",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS))+ABM(2)
 ...S ^TMP("ABM-TALLY",$J,"TPAY")=+$G(^TMP("ABM-TALLY",$J,"TPAY"))+ABM(2)
 ...S ^TMP("ABM-TALLY",$J,"ADJUST",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS)=+$G(^TMP("ABM-TALLY",$J,"ADJUST",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS))+ABM(3)
 ...S ^TMP("ABM-TALLY",$J,"TADJ")=+$G(^TMP("ABM-TALLY",$J,"TADJ"))+ABM(3)
 ...S ^TMP("ABM-TALLY",$J,"REFUND",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS)=+$G(^TMP("ABM-TALLY",$J,"REFUND",ABMVL,ABMCLN,ABMVTYP,ABMSTODT,ABMBLST,ABMITYP,ABMINS))+ABM(4)
 ...S ^TMP("ABM-TALLY",$J,"TREF")=+$G(^TMP("ABM-TALLY",$J,"TREF"))+ABM(4)
 D OPEN^%ZISH("ABMTALLY",ABMPATH,ABMFILE,"W")
 Q:POP
 U IO
 D OUTPUT  ;write data
 D CLOSE^%ZISH("ABMTALLY")
 K ^TMP("ABM-TALLY",$J)
 Q
OUTPUT ;
 D OUTPUT^ABMTALL2
 Q
LOC ;EP
 W ! K DIC,ABMY("LOC")
 S DIC="^BAR(90052.05,DUZ(2),"
 S DIC(0)="AEMQ"
 S DIC("A")="Select LOCATION: ALL//"
 F  D  Q:+Y<0
 .I $D(ABMY("LOC")) S DIC("A")="Select Another Location: "
 .D ^DIC
 .Q:+Y<0
 .S ABMY("LOC",+Y)=""
 I '$D(ABMY("LOC")) D
 .I $D(DUOUT) K ABMY("SORT") Q
 .W "ALL"
 K DIC
 Q
DT ;EP
 K DIR,ABMY("DT")
 Q:$D(DIRUT)
 S ABMY("DT")="E"
 S Y="DATE"
 W !!," ============ Entry of ",Y," Range =============",!
 S DIR("A")="Enter STARTING "_Y_" for the Report"
 S DIR(0)="DO^::EP"
 D ^DIR
 G DT:$D(DIRUT)
 S ABMY("DT",1)=Y
 W !
 S DIR("A")="Enter ENDING DATE for the Report"
 D ^DIR
 K DIR
 G DT:$D(DIRUT)
 S ABMY("DT",2)=Y
 I ABMY("DT",1)>ABMY("DT",2) W !!,*7,"INPUT ERROR: Start Date is Greater than than the End Date, TRY AGAIN!",!! G DT
 Q
CLIN ;SELECT CLINICS
 K ABMY("CLIN")
 S DIC="^DIC(40.7,"
 S DIC(0)="AEMQ"
 S DIC("A")="Select Clinic: ALL// "
 F  D  Q:+Y<0
 .I $D(ABMY("CLIN")) S DIC("A")="Select Another Clinic: "
 .D ^DIC
 .Q:+Y<0
 .S ABMY("CLIN",+Y)=""
 I '$D(ABMY("CLIN")) D
 .I $D(DUOUT) K ABMY("SORT") Q
 .W "ALL"
 K DIC
 Q
XIT ;
 K ABMY("I"),ABMY("X"),DIR
 Q
HDR ;
 I $D(ABMY("LOC")) S ABM("TXT")=$P(^DIC(4,ABMY("LOC"),0),U),ABM("CONJ")="at " D CHK
 Q:$G(ABMY("DT",1))=""  ;no dates
 S ABM("CONJ")="with "
 S ABM("TXT")="Edit Date" D CHK
 S ABM("CONJ")="from ",ABM("TXT")=$$SDT^ABMDUTL(ABMY("DT",1)) D CHK
 S ABM("CONJ")="to ",ABM("TXT")=$$SDT^ABMDUTL(ABMY("DT",2)) D CHK
 Q
WHD ;EP for writing Report Header
 W $$EN^ABMVDF("IOF"),!
 I $D(ABM("PRIVACY")) W ?($S($D(ABM(132)):34,1:8)),"WARNING: Confidential Patient Information, Privacy Act Applies",!
 K ABM("LINE") S $P(ABM("LINE"),"=",$S($D(ABM(132)):132,1:80))="" W ABM("LINE"),!
 W ABM("HD",0),?$S($D(ABM(132)):108,1:57) S Y=DT X ^DD("DD") W Y,"   Page ",ABM("PG")
 W:$G(ABM("HD",1))]"" !,ABM("HD",1)
 W:$G(ABM("HD",2))]"" !,ABM("HD",2)
 W !,ABM("LINE") K ABM("LINE")
 Q
CHK I ($L(ABM("HD",ABM("LVL")))+1+$L(ABM("CONJ"))+$L(ABM("TXT")))<($S($D(ABM(132)):104,1:52)+$S(ABM("LVL")>0:28,1:0)) S ABM("HD",ABM("LVL"))=ABM("HD",ABM("LVL"))_" "_ABM("CONJ")_ABM("TXT")
 E  S ABM("LVL")=ABM("LVL")+1,ABM("HD",ABM("LVL"))=ABM("CONJ")_ABM("TXT")
 Q
GETSVCAT(ABMCAT) ;EP-GET THE FULL SERVICE CATEGORY NAME
 Q $P($P(ABMCATS,ABMCAT_":",2),";")