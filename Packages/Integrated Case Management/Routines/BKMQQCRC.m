BKMQQCRC ;VNGT/HS/ALA-HIV QOC Report continued ; 12 Mar 2010  3:02 PM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 ; run mental health
 D EXAM,EDU,DXS,PSYC,AMH,MEAS
 ; MHDV  - Domestic Violence
 ; MHDEP - Depression
 ; MHANX - Anxiety
 ; MHCOG - Cognitive
 ; MHSLEEP - Sleep Disorder
 ; MHAPP - Appetite
 ; MHPTSD - Post Traumatic Stress
 ; MHPSYC - Psychosocial
 ; SSEX  - Safe Sex
 ; FPLN  - Family Planning
 ; HIVED - HIV Education
 ; 
 Q
 ;
EXAM ; Exams
 NEW TREF,EXAM
 S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S TREF="BQITAX" K @TREF
 S EXAM=34 D
 . S IEN=$O(^AUTTEXAM("C",EXAM,"")) I IEN="" Q
 . S @TREF@(IEN)="MHDV"
 S EXAM=36 D
 . S IEN=$O(^AUTTEXAM("C",EXAM,"")) I IEN="" Q
 . S @TREF@(IEN)="MHDEP"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""MH"",BKMDFN,TYP)"
 D EXM(.TOTPTS,.TREF)
 K @TREF
 Q
 ;
MEAS ; Measurements
 NEW MEAS
 S TREF="BQITAX" K @TREF
 F MEAS="PHQ2","PHQ9" D
 . S IEN=$O(^AUTTMSR("B",MEAS,"")) I IEN="" Q
 . S @TREF@(IEN)="MHDEP"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""MH"",BKMDFN,TYP)"
 D MSR(.TOTPTS,.TREF)
 K @TREF
 Q
 ;
EDU ; Education
 NEW TOP,NREF
 S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S TREF="BQITAX" K @TREF
 S NREF="ARRAY" K @NREF
 F TAX="BKM SAFE SEX ED CODES" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="SSEX"
 S NREF="ARRAY" K @NREF
 F TOP="FP-","V25.01-","V25.02-","V25.03-","V25.04-","V25.09-","V26.4-" D EDTP^BQITRUTL(.NREF,TOP)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="FPLN"
 K @NREF
 F TOP="GAD-","-GAD" D EDTP^BQITRUTL(.NREF,TOP)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHANX"
 K @NREF
 F TOP="DV-","-DV" D EDTP^BQITRUTL(.NREF,TOP)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHDV"
 K @NREF
 F TOP="HIV-","-HIV" D EDTP^BQITRUTL(.NREF,TOP)
 F TOP="042.-","042.0-","042.1-","042.2-","042.9-","043.0-","043.1-" D EDTP^BQITRUTL(.NREF,TOP)
 F TOP="043.2-","043.3-","043.9-","044.0-","044.9-","795.71-","V08.-" D EDTP^BQITRUTL(.NREF,TOP)
 F TOP="V65.44-" D EDTP^BQITRUTL(.NREF,TOP)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="HIVED"
 K @NREF
 F TOP="DEP-","-DEP","BH-","-BH","SB-","-SB","PDEP-","-PDEP" D EDTP^BQITRUTL(.NREF,TOP)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHDEP"
 ;
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""MH"",BKMDFN,TYP)"
 D EDUC(.TOTPTS,.TREF)
 K @NREF,@TREF
 Q
 ;
DXS ; Diagnoses
 NEW REVPER,TREF,NREF
 S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S NREF="ARRAY" K @NREF
 F TAX="BKM FAMILY PLANNING POV" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="FPLN"
 S NREF="ARRAY" K @NREF
 F TAX="BKM COGNITIVE DISORDERS DXS","BKM COGNITIVE ASSESS ICDS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHCOG"
 K @NREF
 F TAX="BGP MOOD DISORDERS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHDEP"
 K @NREF
 F TAX="BKM ANXIETY DXS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHANX"
 K @NREF
 F TAX="BKM SLEEP DISORDER DXS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHSLEEP"
 K @NREF
 F TAX="BKM APPETITE ASSESS DXS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHAPP"
 K @NREF
 F TAX="BGP DV DXS","BGP IPV/DV COUNSELING ICDS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHDV"
 K @NREF
 F TAX="BKM POST TX STRESS DIS DXS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHPTSD"
 K @NREF
 F TAX="BKMV HIV ED DXS" D BLD^BQITUTL(TAX,NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="HIVED"
 K @NREF
 D BLDSV^BQITUTL(80,"V79.0",NREF)
 S IEN="" F  S IEN=$O(@NREF@(IEN)) Q:IEN=""  S @TREF@(IEN)="MHDEP"
 ;
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""MH"",BKMDFN,TYP)"
 D POV(.TOTPTS,.TREF)
 K @NREF,@TREF
 Q
 ;
PSYC ;
 NEW REVPER,TREF,TAX
 S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S TREF="BQITAX" K @TREF
 F TAX="BKM PSYCHSOC ASSESS CPTS" D BLD^BQITUTL(TAX,TREF)
 S TYP="MHPSYC"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""MH"",BKMDFN,TYP)"
 D CPT(.TOTPTS,.TREF)
 K @TREF
 Q
 ;
MSR(GLB,TREF,REVPER) ;
 S REVPER=$G(REVPER,"") I REVPER="" S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S TIEN=""
 F  S TIEN=$O(@TREF@(TIEN)) Q:TIEN=""  D
 . S IEN=""
 . F  S IEN=$O(^AUPNVMSR("B",TIEN,IEN),-1) Q:IEN=""  D
 .. S PDATA=$G(^AUPNVMSR(IEN,0)) I PDATA="" Q
 .. S BKMDFN=$P(PDATA,U,2)
 .. I '$D(@GLOB@("HIVCHK",BKMDFN)) Q
 .. S VISIT=$P(PDATA,U,3) I VISIT="" Q
 .. S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 .. ;S VISIT=$$GET1^DIQ(9000010.01,IEN,.03,"I") I VISIT="" Q
 .. I $P(VDATA,U,11)=1 Q
 .. ;I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .. S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 .. ;S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 I VSDTM=0 Q
 .. I VSDTM<REVPER!(VSDTM>EDATE) Q
 .. S TYP=@TREF@(TIEN)
 .. S @GLB=$G(@GLB)+1
 Q
 ;
POV(GLB,TREF,REVPER) ;
 S REVPER=$G(REVPER,"") I REVPER="" S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S BKMDFN=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 . NEW TIEN,VDATA,PDATA,VISIT,VSDTM
 . S IEN=""
 . F  S IEN=$O(^AUPNVPOV("AC",BKMDFN,IEN),-1) Q:IEN=""  D
 .. S PDATA=$G(^AUPNVPOV(IEN,0)) I PDATA="" Q
 .. ;S TIEN=$$GET1^DIQ(9000010.07,IEN,.01,"I") I TIEN="" Q
 .. S TIEN=$P(PDATA,U,1) I TIEN="" Q
 .. I '$D(@TREF@(TIEN)) Q
 .. S VISIT=$P(PDATA,U,3) I VISIT="" Q
 .. S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 .. ;S VISIT=$$GET1^DIQ(9000010.07,IEN,.03,"I") I VISIT="" Q
 .. I $P(VDATA,U,11)=1 Q
 .. ;I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .. S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 .. ;S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 I VSDTM=0 Q
 .. I VSDTM<REVPER!(VSDTM>EDATE) Q
 .. S TYP=@TREF@(TIEN)
 .. S @GLB=$G(@GLB)+1
 Q
 ;
CPT(GLB,TREF) ;
 S BKMDFN=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 . NEW TIEN,VDATA,PDATA,VISIT,VSDTM
 . S IEN=""
 . F  S IEN=$O(^AUPNVCPT("AC",BKMDFN,IEN),-1) Q:IEN=""  D
 .. S PDATA=$G(^AUPNVCPT(IEN,0)) I PDATA="" Q
 .. ;S TIEN=$$GET1^DIQ(9000010.18,IEN,.01,"I") I TIEN="" Q
 .. S TIEN=$P(PDATA,U,1) I TIEN="" Q
 .. I '$D(@TREF@(TIEN)) Q
 .. S VISIT=$P(PDATA,U,3) I VISIT="" Q
 .. S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 .. ;S VISIT=$$GET1^DIQ(9000010.18,IEN,.03,"I") I VISIT="" Q
 .. I $P(VDATA,U,11)=1 Q
 .. ;I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .. S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 .. ;S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 I VSDTM=0 Q
 .. I VSDTM<REVPER!(VSDTM>EDATE) Q
 .. S @GLB=$G(@GLB)+1
 Q
 ;
EDUC(GLB,TREF) ; Education
 S BKMDFN=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 . NEW TIEN,VDATA,PDATA,VISIT,VSDTM
 . S IEN="",BDT=(9999999-EDATE)-.005,EDT=9999999-REVPER
 . F  S BDT=$O(^AUPNVPED("AA",BKMDFN,BDT)) Q:BDT=""!(BDT>EDT)  D
 .. F  S IEN=$O(^AUPNVPED("AA",BKMDFN,BDT,IEN),-1) Q:IEN=""  D
 ... S PDATA=$G(^AUPNVPED(IEN,0)) I PDATA="" Q
 ... ;S TIEN=$$GET1^DIQ(9000010.16,IEN,.01,"I") I TIEN="" Q
 ... S TIEN=$P(PDATA,U,1) I TIEN="" Q
 ... I '$D(@TREF@(TIEN)) Q
 ... S VISIT=$P(PDATA,U,3) I VISIT="" Q
 ... S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 ... ;S VISIT=$$GET1^DIQ(9000010.16,IEN,.03,"I") I VISIT="" Q
 ... I $P(VDATA,U,11)=1 Q
 ... ;I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 ... S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 ... ;S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 I VSDTM=0 Q
 ... I VSDTM<REVPER!(VSDTM>EDATE) Q
 ... S TYP=@TREF@(TIEN)
 ... S @GLB=$G(@GLB)+1
 . ; Refusals
 . NEW RFT,FIL,BDT,EDT,TIEN,IEN,TYP
 . S RFT=$O(^AUTTREFT("B","EDUCATION TOPICS","")) I RFT="" Q
 . S FIL=$P(^AUTTREFT(RFT,0),U,2)
 . S BDT=(9999999-EDATE)-.005,EDT=9999999-REVPER
 . S TIEN=""
 . F  S TIEN=$O(^AUPNPREF("AA",BKMDFN,FIL,TIEN)) Q:TIEN=""  D
 .. I '$D(@TREF@(TIEN)) Q
 .. F  S BDT=$O(^AUPNPREF("AA",BKMDFN,FIL,TIEN,BDT)) Q:BDT=""!(BDT>EDT)  D
 ... S IEN=""
 ... F  S IEN=$O(^AUPNPREF("AA",BKMDFN,FIL,TIEN,BDT,IEN)) Q:IEN=""  D
 .... S TYP=@TREF@(TIEN)
 .... S @GLB=$G(@GLB)+1
 Q
 ;
EXM(GLB,TREF) ;
 S BKMDFN=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 . NEW TIEN,VDATA,PDATA,VISIT,VSDTM
 . S IEN=""
 . F  S IEN=$O(^AUPNVXAM("AC",BKMDFN,IEN),-1) Q:IEN=""  D
 .. S PDATA=$G(^AUPNVXAM(IEN,0)) I PDATA="" Q
 .. ;S TIEN=$$GET1^DIQ(9000010.13,IEN,.01,"I") I TIEN="" Q
 .. S TIEN=$P(PDATA,U,1) I TIEN="" Q
 .. I '$D(@TREF@(TIEN)) Q
 .. S VISIT=$P(PDATA,U,3) I VISIT="" Q
 .. S VDATA=$G(^AUPNVSIT(VISIT,0)) I VDATA="" Q
 .. ;S VISIT=$$GET1^DIQ(9000010.13,IEN,.03,"I") I VISIT="" Q
 .. I $P(VDATA,U,11)=1 Q
 .. ;I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .. S VSDTM=$P(VDATA,U,1)\1 I VSDTM=0 Q
 .. ;S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 I VSDTM=0 Q
 .. I VSDTM<REVPER!(VSDTM>EDATE) Q
 .. S TYP=@TREF@(TIEN)
 .. S @GLB=$G(@GLB)+1
 Q
 ;
AMH ;
 NEW TREF,VC,VCIEN,REVPER,RIEN
 S REVPER=$$FMADD^XLFDT(EDATE,-365)
 S TREF="AMH" K @TREF
 F VC=14,14.1,15 S VCIEN=$O(^AMHPROB("B",VC,"")) Q:VCIEN=""  S @TREF@(VCIEN)="MHDEP"
 F VC=43,43.1,43.2,43.3,43.4 S VCIEN=$O(^AMHPROB("B",VC,"")) Q:VCIEN=""  S @TREF@(VCIEN)="MHDV"
 F VC=44,44.1,44.2,44.3,44.4 S VCIEN=$O(^AMHPROB("B",VC,"")) Q:VCIEN=""  S @TREF@(VCIEN)="MHDV"
 ;
 S DATE=REVPER-.005
 F  S DATE=$O(^AMHREC("B",DATE)) Q:DATE=""!(DATE\1>EDATE)  D
 . S RIEN=""
 . F  S RIEN=$O(^AMHREC("B",DATE,RIEN)) Q:RIEN=""  D
 .. S IEN=""
 .. F  S IEN=$O(^AMHRPRO("AD",RIEN,IEN),-1) Q:IEN=""  D
 ... S VCIEN=$P(^AMHRPRO(IEN,0),U,1)
 ... I '$D(VCODE(VCIEN)) Q
 ... S DFN=$P(^AMHRPRO(IEN,0),U,2) I DFN="" Q
 ... I '$D(@GLOB@("HIVCHK",DFN)) Q
 ... S TYP=VCODE(VCIEN)
 ... S @GLB=$G(@GLB)+1
 K VCODE
 Q