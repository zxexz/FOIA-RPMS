AGEDERR2 ; IHS/SD/EFG - EDIT CHECK CALLS ; MAR 19, 2010
 ;;7.1;PATIENT REGISTRATION;**2,7,9**;AUG 25, 2005
 ;THIS RTN CONTAINS EDIT CHK SUBRTNS FOR USE IN THE EDIT
 ;CHK SYSTEM
 ;
 Q
HASELIG(DFN) ;EP - DOES THE PATIENT HAVE ELIGIBILITY AT ALL
 N X
 S X=1_U
 I '$D(^AUPNMCR("B",DFN))&'$D(^AUPNMCD("B",DFN))&'$D(^AUPNRRE("B",DFN))&'$D(^AUPNPRVT("B",DFN)) Q 0
 I $D(^AUPNMCR("B",DFN)) S X=X_"MCR"_U
 I $D(^AUPNMCD("B",DFN)) S X=X_"MCD"_U
 I $D(^AUPNRRE("B",DFN)) S X=X_"RRE"_U
 I $D(^AUPNPRVT("B",DFN)) S X=X_"PVT"_U
 Q $$ACTELIG(DFN,X)_U_X
 ;DOES THE PATIENT HAVE ACTIVE ELIGIBILITY?
 ;ELIGSTR = STRING FROM ABOVE
ACTELIG(DFN,ELIGSTR) ;EP - DOES THE PATIENT HAVE ACTIVE ELIGIBILITY?
 N AGINS,PIECE,SEL,ACTIVE,SEQ,CALL
 S SEL=0,ACTIVE=0
 F PIECE=2:1:$L(ELIGSTR) S TYPE=$P(ELIGSTR,U,PIECE) Q:TYPE=""!(ACTIVE)  D
 .S CALL="FIND"_TYPE_U_"AGINS("_DFN_")"
 .D @CALL
 .S ACTIVE=0
 .S SEQ=0
 .F  S SEQ=$O(AGINS(SEQ)) Q:SEQ=""!ACTIVE  D
 ..S ACTIVE=$$ISACTIVE^AGINS($P(AGINS(SEQ),U,5),$P(AGINS(SEQ),U,6))
 Q ACTIVE
 ;THIS TAG IS USED TO DETERMINE WHAT DATE TO USE AS THE AOB DATE
AOBCHEK(DFN) ;EP - DETERMINE AOB DATE TO CHECK FOR OVERDUE
 N AGINS,SEL,ACTIVE,SEQ,CALL,BEGDT,ENDDT,MSTRESDT,MSTREEDT,TARDT
 S SEL=0,ACTIVE=0
 S CALL="FINDPVT^AGINS("_DFN_")"
 D @CALL
 S ACTIVE=0
 S MSTRESDT=0,MSTREEDT=0
 S SEQ=0
 F  S SEQ=$O(AGINS(SEQ)) Q:SEQ=""  D
 .S BEGDT=$P(AGINS(SEQ),U,5)
 .S ENDDT=$P(AGINS(SEQ),U,6)
 .Q:'$$ISACTIVE^AGINS(BEGDT,ENDDT)
 .I BEGDT>MSTRESDT S MSTRESDT=BEGDT
 .I ENDDT>MSTREEDT S MSTREEDT=ENDDT
 S TARDT=MSTRESDT
 Q TARDT
ISDEPEND(DFN) ;EP - IF PATIENT IS LISTED AS A DEPENDENT IN THE POLICY HOLDER
 ;FILE, DISPLAY THE ERROR
 N ISDEPEND
 S ISDEPEND=0
 I '$D(^AUPNPRVT("B",DFN)) Q 0
 S REC=0
 F  S REC=$O(^AUPNPRVT(DFN,11,REC)) Q:'REC!ISDEPEND  D
 .I $P($G(^AUPNPRVT(DFN,11,REC,0)),U,5)'=25&($D(^AUPN3PPH("C",DFN))) S ISDEPEND=1 Q
 Q ISDEPEND
CURRUPD(DFN,DAYS) ;EP - HAS THE PATIENT BEEN UPDATED IN THE PAST YEAR
 N X2,X1,X
 S X2=$P($G(^AUPNPAT(DFN,0)),U,3)  ;DATE OF LAST REG. UPDATE
 I X2="" S X2=$P($G(^AUPNPAT(DFN,0)),U,2)  ;DATE ESTABLISHED
 I X2="" S X2=DT-40000
 S X1=DT
 D ^%DTC
 I X>DAYS Q 0
 Q 1
OVER65(DFN) ;EP - CHECK TO SEE IF PATIENT IS OVER 65 YEARS OLD
 Q $$AGE^AUPNPAT(DFN)>65
DECEASED(DFN) ;EP - IS THE PATIENT DECEASED?
 Q $P($G(^DPT(DFN,.35)),U)'=""
PTACTIVE(DFN) ;EP - SEE IF PATIENT IS ACTIVE IN AT LEAST ONE FACILTY
 S ACTIVE=0
 S FAC=0
 F  S FAC=$O(^AUPNPAT(DFN,41,FAC)) Q:'FAC!ACTIVE  D
 .I $P($G(^AUPNPAT(DFN,41,FAC,0)),U,5)="" S ACTIVE=1 Q
 Q ACTIVE
 ;CALLED BY SEQMAN^AGEDERR TO FIND FAC FOR EDIT CHECK # 33
FACCHK(DFN) ;EP - CALLED BY SEQMAN^AGEDERR TO FIND FAC FOR EDIT CHECK # 33
 N FAC
 S SEQREQ=0
 S FAC=0
 F  S FAC=$O(^AUPNPAT(DFN,41,FAC)) Q:'FAC!SEQREQ  D
 .I $$NEEDTOSQ^AGUTILS(DFN,FAC) S SEQREQ=1 Q
 Q SEQREQ
 ;RETURN TRUE IF ALL ADDRESS FIELDS ARE EMPTY
 ;ONLY CHECKED FOR INSURER AND EMPLOYER FILES
 ;CALLED FROM AGEDGUAR.
GUARADD(GUARINFO) ;EP
 N ALLMISS
 S ALLMISS=0
 Q:GUARINFO="" 0
 S GUARPTR=U_$P(GUARINFO,U,14)
 Q:GUARPTR[("AUPNPAT") 1  ;ALWAYS ALLOWED TO EDIT PATIENT ADDRESS
 Q:GUARPTR'[("AUTNINS")&(GUARPTR'[("AUTNEMPL")) 0
 S X=$G(@GUARPTR)
 S ALLMISS=X="" Q:ALLMISS
 S ALLMISS=($P(X,U,2)="")&($P(X,U,3)="")&($P(X,U,4)="")&($P(X,U,5)="")
 Q ALLMISS
ISMCD(INSPTR) ;EP - RETURN TRUE IF MEDICAID INSURER
 Q:INSPTR="" 0
 Q $P($G(^AUTNINS(INSPTR,2)),U)="D"
 ;ERROR CHECK # 37 DOES PATIENT HAVE INTERNET ACCESS?
WEB(DFN) ;
 Q:DFN="" 1
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 S LSTUPD=$O(^AUPNPAT(DFN,81,"B",""),-1)
 Q:LSTUPD="" 1
 S X2=LSTUPD
 S X1=DT
 D ^%DTC
 Q X>365
 ;EDIT CHK #53 - PATIENT RACE MISSING - AG*7.1*9
 ;WARNING VERSION (SEE EDIT CHECK #52 FOR ERROR VERSION)
 ;RETURNS TRUE IF MISSING
PRACE(DFN) ;EP
 N RACE
 Q:DFN="" 1
 ;
 ;Quit if Race required
 I $$RQRACE^AGEDERR4(DUZ(2)) Q 0
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 S RACE=$$GET1^DIQ(2,DFN_",",".06","I")
 I RACE]"" Q 0
 Q 1
 ;EDIT CHK #52 - PATIENT RACE MISSING - AG*7.1*9
 ;ERROR VERSION (SEE EDIT CHECK #53 FOR WARNING VERSION)
 ;RETURNS TRUE IF MISSING
PRACEE(DFN) ;EP
 N RACE
 Q:DFN="" 1
 ;
 ;Quit if Race optional
 I '$$RQRACE^AGEDERR4(DUZ(2)) Q 0
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 S RACE=$$GET1^DIQ(2,DFN_",",".06","I")
 I RACE]"" Q 0
 Q 1
 ;EDIT CHK #38 - PATIENT ETHNICITY OR METHOD OF COLLECTION MISSING - AG*7.1*7
 ;WARNING VERSION (SEE EDIT CHECK #51 FOR ERROR VERSION)
 ;RETURNS TRUE IF MISSING
PETHNIC(DFN) ;EP
 N ETHNIC,MOC
 Q:DFN="" 1
 ;
 ;Quit if Ethnicity required
 I $$RQETH^AGEDERR4(DUZ(2)) Q 0 ;AG*7.1*9
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 S ETHNIC=$O(^DPT(DFN,.06,0))
 I ETHNIC S MOC=$$GET1^DIQ(2.06,ETHNIC_","_DFN_",",".02","I") I MOC="" Q 1  ;Method of Collection
 I ETHNIC S ETHNIC=$$GET1^DIQ(2.06,ETHNIC_","_DFN_",",".01","I")
 I ETHNIC]"" Q 0  ;Ethnicity
 Q 1
 ;EDIT CHK #51 - PATIENT ETHNICITY OR METHOD OF COLLECTION MISSING - AG*7.1*9
 ;ERROR VERSION (SEE EDIT CHECK #38 FOR WARNING VERSION)
 ;RETURNS TRUE IF MISSING
PETHNICE(DFN) ;EP
 N ETHNIC,MOC
 Q:DFN="" 1
 ;
 ;Quit if Ethnicity optional
 I '$$RQETH^AGEDERR4(DUZ(2)) Q 0 ;AG*7.1*9
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 S ETHNIC=$O(^DPT(DFN,.06,0))
 I ETHNIC S MOC=$$GET1^DIQ(2.06,ETHNIC_","_DFN_",",".02","I") I MOC="" Q 1  ;Method of Collection
 I ETHNIC S ETHNIC=$$GET1^DIQ(2.06,ETHNIC_","_DFN_",",".01","I")
 I ETHNIC]"" Q 0  ;Ethnicity
 Q 1
 ;EDIT CHK #39 - PATIENT MIGRANT STATUS OR TYPE MISSING - AG*7.1*7
 ;RETURNS TRUE IF MISSING
PMIG(DFN) ;EP
 N MIG,MSTS,MTYP
 Q:DFN="" 1
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 ;Quit if not getting displayed
 I $G(AGOPT(26))'="Y" Q 0  ;AG*7.1*9
 ;
 S MIG=$$CMIG^AGED10A(DFN)
 S MSTS=$P($P(MIG,U,3),":")
 I MSTS="" Q 1           ;Error if no status
 I MSTS="N" Q 0          ;Quit if status in "NO"
 ;
 S MTYP=$P($P(MIG,U,4),":")
 I MSTS="Y",MTYP="" Q 1  ;Error if status is yes and no type
 Q 0
 ;EDIT CHK #40 - PATIENT HOMELESS STATUS OR TYPE MISSING - AG*7.1*7
 ;RETURNS TRUE IF MISSING
PHOM(DFN) ;EP
 N HOM,HSTS,HTYP
 Q:DFN="" 1
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 ;Quit if not getting displayed
 I $G(AGOPT(27))'="Y" Q 0  ;AG*7.1*9
 ;
 S HOM=$$CHOM^AGED10A(DFN)
 S HSTS=$P($P(HOM,U,3),":")
 I HSTS="" Q 1           ;Error if no status
 I HSTS="N" Q 0          ;Quit if status in "NO"
 ;
 S HTYP=$P($P(HOM,U,4),":")
 I HSTS="Y",HTYP="" Q 1  ;Error if status is yes and no type
 Q 0
 ;EDIT CHK #41 - PATIENT PRIMARY LANGUAGE MISSING - AG*7.1*7
 ;WARNING VERSION (SEE EDIT CHK #50 FOR ERROR VERSION)
 ;RETURNS TRUE IF MISSING
LPRM(DFN) ;EP
 N LNG,VAL
 Q:DFN="" 1
 ;
 ;Quit if Primary Language required
 I $$RQPRM^AGEDERR4(DUZ(2)) Q 0 ;AG*7.1*9
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 S VAL=$$CLANG^AGED10B(DFN)
 S LNG=$P($P(VAL,U,2),":",2)
 I LNG="" Q 1
 I LNG'="ENGLISH",$P($P(VAL,U,3),":")="" Q 1  ;Check Interpreter Required
 I LNG="ENGLISH"!($P(VAL,U,5)["ENGLISH"),$P($P(VAL,U,6),":")="" Q 1   ;Check English Proficiency
 Q 0
 ;EDIT CHK #50 - PATIENT PRIMARY LANGUAGE MISSING - AG*7.1*9
 ;ERROR VERSION (SEE EDIT CHK #41 FOR WARNING VERSION)
 ;RETURNS TRUE IF MISSING
LPRME(DFN) ;EP
 N LNG,VAL
 Q:DFN="" 1
 ;
 ;Quit if Primary Language optional
 I '$$RQPRM^AGEDERR4(DUZ(2)) Q 0  ;AG*7.1*9
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 S VAL=$$CLANG^AGED10B(DFN)
 S LNG=$P($P(VAL,U,2),":",2)
 I LNG="" Q 1
 I LNG'="ENGLISH",$P($P(VAL,U,3),":")="" Q 1  ;Check Interpreter Required
 I LNG="ENGLISH"!($P(VAL,U,5)["ENGLISH"),$P($P(VAL,U,6),":")="" Q 1   ;Check English Proficiency
 Q 0
 ;EDIT CHK #42 - PATIENT PREFERRED LANGUAGE MISSING - AG*7.1*7
 ;WARNING VERSION (SEE EDIT CHK #49 FOR ERROR VERSION)
 ;RETURNS TRUE IF MISSING
LPRE(DFN) ;EP
 N DEF,IEN,PRE,PRMX,FND,LNG,OLNG,ERROR
 Q:DFN="" 1
 ;
 ;Quit if Preferred Language required
 I $$RQPRF^AGEDERR4(DUZ(2)) Q 0 ;AG*7.1*9
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 ;Error if blank
 S DEF=$$CLANG^AGED10B(DFN) ;AG*7.1*9 - Changed from AGPATDFN to DFN
 S PRE=$P($P(DEF,U,4),":",2)
 I PRE="" Q 1
 ;
 ;Error if Preferred Language not in the Primary or Other Spoken Language fields
 S IEN=$P(DEF,U)              ;IEN
 S PRMX=$P($P(DEF,U,2),":",2) ;External Primary Language
 I PRMX=PRE Q 0               ;No Error if Primary equals Preferred
 ;
 D GETS^DIQ(9000001.86,IEN_","_DFN_",",".05*","E","OLNG","ERROR")
 S (FND,IEN)="" F  S IEN=$O(OLNG("9000001.8605",IEN)) Q:IEN=""  D  Q:FND=1
 . S LNG=$G(OLNG("9000001.8605",IEN,".01","E")) Q:LNG=""
 . I PRE=LNG S FND=1
 I FND="" Q 1                  ;Error if Preferred not in Other Spoken Language list either
 Q 0
 ;EDIT CHK #49 - PATIENT PREFERRED LANGUAGE MISSING - AG*7.1*9
 ;ERROR VERSION (SEE EDIT CHK #42 FOR WARNING VERSION)
 ;RETURNS TRUE IF MISSING
LPREE(DFN) ;EP
 N DEF,IEN,PRE,PRMX,FND,LNG,OLNG,ERROR
 Q:DFN="" 1
 ;
 ;Quit if Preferred Language optional
 I '$$RQPRF^AGEDERR4(DUZ(2)) Q 0  ;AG*7.1*9
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 ;Error if blank
 S DEF=$$CLANG^AGED10B(DFN) ;AG*7.1*9 - Changed from AGPATDFN to DFN
 S PRE=$P($P(DEF,U,4),":",2)
 I PRE="" Q 1
 ;
 ;Error if Preferred Language not in the Primary or Other Spoken Language fields
 S IEN=$P(DEF,U)              ;IEN
 S PRMX=$P($P(DEF,U,2),":",2) ;External Primary Language
 I PRMX=PRE Q 0               ;No Error if Primary equals Preferred
 ;
 D GETS^DIQ(9000001.86,IEN_","_DFN_",",".05*","E","OLNG","ERROR")
 S (FND,IEN)="" F  S IEN=$O(OLNG("9000001.8605",IEN)) Q:IEN=""  D  Q:FND=1
 . S LNG=$G(OLNG("9000001.8605",IEN,".01","E")) Q:LNG=""
 . I PRE=LNG S FND=1
 I FND="" Q 1                  ;Error if Preferred not in Other Spoken Language list either
 Q 0
 ;EDIT CHK #43 - PATIENT HOUSEHOLD INCOME PERIOD MISSING - AG*7.1*7
 ;RETURNS TRUE IF MISSING
HIP(DFN) ;EP
 N HIC,HIP
 Q:DFN="" 1
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 ;
 I AGOPT(22)="N" Q 0
 S HIC=$$GET1^DIQ(9000001,DFN_",",".36","E")
 I HIC'>0 Q 0
 S HIP=$$GET1^DIQ(9000001,DFN_",","8701","E")
 I HIP="" Q 1
 Q 0