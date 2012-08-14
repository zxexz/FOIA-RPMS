BEHOENPR ;IHS/CIA/MGH - Summary Report for Selected Encounter ;20-Mar-2007 13:48;DKM
 ;;1.1;BEH COMPONENTS;**005001**;Mar 20, 2007
 ;=================================================================
RESULTS(BEHVSIT,DFN,ORLIST,BEHQUIT) ;EP - Get the results of lab and radiolgy tests
 N BEHOR,STAT,TYPE,BEHONE,BEHARRAY,BEHTYP,BEHORD
 S BEHONE=0,CNT=0
 S BEHOR="" F  S BEHOR=$O(^TMP("ORR",$J,ORLIST,BEHOR)) Q:BEHOR=""  D
 .S BEHDATA=$G(^TMP("ORR",$J,ORLIST,BEHOR))
 .S ORDER=$P($P(BEHDATA,U,1),";",1)
 .S TYPE=$P(BEHDATA,U,2),STAT=$P(BEHDATA,U,6)
 .Q:STAT'="COMPLETE"&(STAT'="SCHEDULED")
 .I BEHONE=0 S NAME="RESULTS" D HDR^BEHOENPV(NAME,1) S BEHONE=1
 .I TYPE="CH"!(TYPE="MI")!(TYPE="LAB") S BEHARRAY("LAB",ORDER)=""
 .I TYPE="RAD" S BEHARRAY("RAD",ORDER)=""
 S BEHTYP="" F  S BEHTYP=$O(BEHARRAY(BEHTYP)) Q:BEHTYP=""  D
 .I BEHTYP="LAB" D LAB(DFN)
 .I BEHTYP="RAD" D XRAY(DFN)
 Q
LAB(DFN) ;Return results of lab tests
 N NAME,BENORD
 S NAME="Lab Results"
 D HDR^BEHOENPV(NAME,1)
 S BEHORD="" F  S BEHORD=$O(BEHARRAY(BEHTYP,BEHORD)) Q:BEHORD=""  D
 .D EXPND(DFN,BEHORD,BEHORD)
 Q
XRAY(DFN) ;Return Imagng results
 N NAME
 S NAME="Imaging results"
 D HDR^BEHOENPV(NAME,1)
 S BEHORD="" F  S BEHORD=$O(BEHARRAY(BEHTYP,BEHORD)) Q:BEHORD=""  D
 .D EXPND(DFN,BEHORD,BEHORD)
 Q
EXPND(DFN,ORID,ID) ; Return results of order identified by ID
 K ^TMP("ORXPND",$J)
 N ORESULTS,ORVP,LCNT,BEHRES,BEHDATA
 S ORESULTS=1,LCNT=0,ORVP=DFN_";DPT("
 D ORDERS^ORCXPND1
 K ^TMP("ORXPND",$J,"VIDEO")
 S BEHRES="" F  S BEHRES=$O(^TMP("ORXPND",$J,BEHRES)) Q:BEHRES=""  D
 .S BEHDATA=$G(^TMP("ORXPND",$J,BEHRES,0))
 .S LINE=LINE+1
 .I LINE>(IOSL-3) D HDR^BEHOENPV(NAME,1)
 .W !,BEHDATA
 Q