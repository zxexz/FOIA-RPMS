BGPMUG09 ; IHS/MSC/MMT - MI measure NQF0089 ;20-Jul-2011 14:56;DU
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;Code to collect meaningful use report for diabetic retinopathy exam - communication w/provider
ENTRY ;EP
 N START,END,STRING
 N IEN,VDATE,VALUE,EXCEPT,FIRST,VIEN,RESULT
 N CNT,NUM,DIABDX,DRENC
 S START=9999999-BGPBDATE,END=9999999-BGPEDATE,VALUE=0
 S START=START_".2359"
 S (DIABDX,EXC,NUM)=0
 ;Pts must be >=18
 ;No need to check further if no age match
 Q:BGPAGEE<18
 S CNT=0
 S FIRST=END-0.1 F  S FIRST=$O(^AUPNVSIT("AA",DFN,FIRST)) Q:FIRST=""!($P(FIRST,".",1)>START)  D
 .S IEN=0 F  S IEN=$O(^AUPNVSIT("AA",DFN,FIRST,IEN)) Q:'+IEN  D
 ..;Check provider, Only visits for chosen provider
 ..Q:'$$PRV^BGPMUUT1(IEN,BGPPROV)
 ..S DRENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU ENC RETINOPATHY COMBINED")
 ..I +DRENC D VSTSTORE Q
 Q:CNT<2
 ;Next check to see if the patient is in the denominator
 S DIABDX=$$DEN(DFN,BGPBDATE,BGPEDATE)
 Q:'+DIABDX
 ;If the patient is diabetetic retinopathy, check to see if they are in the numerator
 S NUM=$$NUM(DFN,BGPBDATE,BGPEDATE,DIABDX)
 ;If not in the numerator,see if they are an exception
 I +NUM=0 S EXC=$$EXCEPT(DFN,BGPBDATE,BGPEDATE,DIABDX)
 D TOTAL(DFN,DIABDX,NUM,EXC)
 Q
VSTSTORE ;Store compliant visit into array
 S CNT=CNT+1
 S VDATE=$P($G(^AUPNVSIT(IEN,0)),U,1)
 S VIEN(CNT)=IEN_U_VDATE
 S STRING(CNT)=$$DATE^BGPMUUTL(VDATE)
 Q
TOTAL(DFN,DIABDX,NUM,EXC) ;See where this patient ends up
 N PTCNT,EXCCT,DENCT,NUMCT,NOTNUM,TOTALS,DENSTR,DXTIME
 S TOTALS=$G(^TMP("BGPMU0089",$J,BGPMUTF,"TOT"))
 S DENCT=+$G(^TMP("BGPMU0089",$J,BGPMUTF,"DEN"))
 S NUMCT=+$G(^TMP("BGPMU0089",$J,BGPMUTF,"NUM"))
 S EXCCT=+$G(^TMP("BGPMU0089",$J,BGPMUTF,"EXC"))
 S NOTNUM=+$G(^TMP("BGPMU0089",$J,BGPMUTF,"NOT"))
 S PTCNT=TOTALS
 S PTCNT=PTCNT+1
 S (DENSTR,DXTIME)=""
 S DENCT=DENCT+1 S ^TMP("BGPMU0089",$J,BGPMUTF,"DEN")=DENCT
 S DENSTR=$P(DIABDX,U,2)
 I $D(STRING(1)) S DENSTR=DENSTR_";EN:"_STRING(1)
 I $D(STRING(2)) S DENSTR=DENSTR_";EN:"_STRING(2)
 I +NUM D
 .S NUMCT=NUMCT+1 S ^TMP("BGPMU0089",$J,BGPMUTF,"NUM")=NUMCT
 .I BGPMUTF="C" S ^TMP("BGPMU0089",$J,"PAT",BGPMUTF,"NUM",PTCNT)=DFN_U_DENSTR_U_"M:"_$P(NUM,U,2)
 I +EXC D
 .S EXCCT=EXCCT+1 S ^TMP("BGPMU0089",$J,BGPMUTF,"EXC")=EXCCT
 .I BGPMUTF="C" S ^TMP("BGPMU0089",$J,"PAT",BGPMUTF,"EXC",PTCNT)=DFN_U_DENSTR_U_"Excluded"
 I +NUM=0&(EXC=0) D
 .S NOTNUM=NOTNUM+1 S ^TMP("BGPMU0089",$J,BGPMUTF,"NOT")=NOTNUM
 .I BGPMUTF="C" S ^TMP("BGPMU0089",$J,"PAT",BGPMUTF,"NOT",PTCNT)=DFN_U_DENSTR_U_"NM:"
 S ^TMP("BGPMU0089",$J,BGPMUTF,"TOT")=PTCNT
 ;Setup iCare array for patient
 S BGPICARE("MU.EP.0089.1",BGPMUTF)=1_U_+NUM_U_+EXC_U_DENSTR_";"_$P(NUM,U,2)_";"_$P(NUM,U,3)
 Q
DEN(DFN,BGPBDATE,BGPEDATE) ;look for diabetes diagnosis
 N CHKDT,DX,DXSTR,EXAM,EXMPRC,EXAMSTR,CLINPTR,CLINCODE
 S DXSTR=""
 ;Check for the patient having a DX of diabetic retinopathy prior to last visit
 S CHKDT=$P(VIEN(1),U,2),BGPBIRTH=$$DOB^AUPNPAT(DFN)
 S DX=$$LASTDX^BGPMUUT2(DFN,BGPBIRTH,CHKDT,"BGPMU DIABETIC RETINOPATHY DX")
 I +DX S DXSTR="RET:"_$$DATE^BGPMUUTL($P(DX,U,3))
 S DX=$$PLTAX^BGPMUUT1(DFN,"BGPMU DIABETIC RETINOPATHY DX","C",CHKDT)
 I +DX S DXSTR="RET:"_$$DATE^BGPMUUTL($P(DX,U,3))
 Q:DXSTR="" 0
 S (VCNT,EXAM)=""
 F  S VCNT=$O(VIEN(VCNT)) Q:(VCNT="")!(+EXAM)  D
 .;check the CLINIC on the VISIT for a match
 .S CLINPTR=$P(^AUPNVSIT($P(VIEN(VCNT),U),0),U,8)
 .S CLINCODE=$S(CLINPTR'="":$P(^DIC(40.7,CLINPTR,0),U,2),1:"")
 .I CLINCODE="A2" S EXAM=1_U_U_$P(VIEN(VCNT),U,2) Q
 .;now look for procedures on the visit
 .S EXMPRC=$$VSTCPT^BGPMUUT1(DFN,$P(VIEN(VCNT),U),"BGPMU MACULAR FUNDUS EXAM CPT")
 .I +EXMPRC S EXAM=EXMPRC Q
 .S EXMPRC=$$VSTICD0^BGPMUUT3(DFN,$P(VIEN(VCNT),U),"BGPMU MACULAR FUNDUS EXAM ICD0")
 .I +EXMPRC S EXAM=EXMPRC Q
 Q:'+EXAM 0
 S EXAMSTR="EXAM:"_$$DATE^BGPMUUTL($P(EXAM,U,3))
 Q 1_U_DXSTR_";"_EXAMSTR_U_$P(EXAM,U,3)
NUM(DFN,BGPBDATE,BGPEDATE,DIABDX) ;Look for evidence of a diabetic eye exam
 N FOUND,VCNT,EXAM,COMMCPT,EXAM14,EXAMSTR,CLINPTR,CLINCODE,DX
 S FOUND=0
 S EXAM14=$$FMADD^XLFDT($P(DIABDX,U,3),14)
 S COMMCPT=$$CPT^BGPMUUT1(DFN,BGPBDATE,EXAM14,"BGPMU MACULAR FUNDUS EXAM COMM")
 ; double check to ensure the finding code occurred after the exam date AND within 14 days
 I +COMMCPT&($P(COMMCPT,U,3)>=$P(DIABDX,U,3))&($P(COMMCPT,U,3)<=EXAM14) S FOUND=1_U_"COMM:"_$$DATE^BGPMUUTL($P(COMMCPT,U,3)) Q FOUND
 S (VCNT,EXAM)=""
 F  S VCNT=$O(VIEN(VCNT)) Q:(VCNT="")!(+EXAM)  D
 .;check the CLINIC on the VISIT for a match
 .S CLINPTR=$P(^AUPNVSIT($P(VIEN(VCNT),U),0),U,8)
 .S CLINCODE=$S(CLINPTR'="":$P(^DIC(40.7,CLINPTR,0),U,2),1:"")
 .I CLINCODE="A2" S FOUND=1_U_"COMM:"_$$DATE^BGPMUUTL($P(VIEN(VCNT),U,2)) Q
 Q FOUND
EXCEPT(DFN,BGPBDATE,BGPEDATE,DIABDX) ;See if this patient has exceptions
 N EFOUND,NMI
 S EFOUND=0
 S NMI=$$REFTAX^BGPMUUT2(DFN,81,"BGPMU MACULAR FUNDUS EXAM COMM",BGPBIRTH,BGPEDATE)
 Q:+NMI 1_U_$P(NMI,U,4)_U_$P(NMI,U,2)
 Q EFOUND