BQICMUTL ;VNGT/HS/ALA-Care Mgmt Utility ; 25 Jul 2011  7:25 AM
 ;;2.3;ICARE MANAGEMENT SYSTEM;;Apr 18, 2012;Build 59
 ;
 ;
ITM(TMFRAME,BQDFN,FREF,RREF,TIEN,TAX) ;EP - Find the value
 ; Find visits for a request item
 ; Input
 ;   TMFRAME - Time frame to search data for
 ;   BQDFN   - Patient internal entry number
 ;   FREF    - File to search in
 ;   RREF    - Search file table file
 ;   TIEN    - Item to search on
 ;   TAX     - Taxonomy
 NEW GREF,ENDT,IEN,QFL,RESULT,VISIT,VSDTM,RES,DTM,ITIEN,EDT,BDT,TIEN
 S TMFRAME=$G(TMFRAME,"")
 I $G(TAX)'="" D
 . S TREF=$NA(^TMP("BQITAX",$J)) K @TREF
 . D BLD^BQITUTL(TAX,TREF)
 S GREF=$$ROOT^DILFD(FREF,"",1)
 S ENDT=$$DATE^BQIUL1(TMFRAME)
 S IEN="",QFL=0,RESULT=0
 I $G(TMFRAME)'="" D
 . S EDT=9999999-ENDT,BDT=""
 . F  S BDT=$O(@GREF@("AA",BQDFN,BDT)) Q:BDT=""!(BDT>EDT)  D  Q:QFL
 .. S IEN=""
 .. F  S IEN=$O(@GREF@("AA",BQDFN,BDT,IEN)) Q:IEN=""  D  Q:QFL
 ... S ITIEN=$$GET1^DIQ(FREF,IEN,.01,"I") I ITIEN="" Q
 ... S RES=$$GET1^DIQ(FREF,IEN,.04,"I")
 ... I $G(TIEN)'="",ITIEN'=TIEN Q
 ... I $G(TIEN)="",'$D(@TREF@(ITIEN)) Q
 ... S VISIT=$$GET1^DIQ(FREF,IEN,.03,"I") I VISIT="" Q
 ... I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 ... S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 Q:VSDTM=0
 ... S RESULT=1_U_VSDTM_U_U_VISIT_U_IEN_U_RES,QFL=1
 . ; check for refusal
 . I $O(^AUPNPREF("AA",BQDFN,RREF,""))'="" D
 .. S TIEN="" F  S TIEN=$O(@TREF@(TIEN)) Q:TIEN=""  D
 ... S EDT=9999999-ENDT,BDT=""
 ... F  S BDT=$O(^AUPNPREF("AA",BQDFN,RREF,TIEN,BDT)) Q:BDT=""!(BDT>EDT)  D
 .... S IEN="" F  S IEN=$O(^AUPNPREF("AA",BQDFN,RREF,TIEN,BDT,IEN)) Q:IEN=""  D
 ..... S DTM=$P(^AUPNPREF(IEN,0),U,3)
 ..... I $P(RESULT,U,2)'="",DTM<$P(RESULT,U,2) Q
 ..... S RESULT=1_U_DTM_U_U_U_U_U_"refusal"
 ;
 I $G(TMFRAME)="" D
 . F  S IEN=$O(@GREF@("AC",BQDFN,IEN),-1) Q:'IEN  D  Q:QFL
 .. S ITIEN=$$GET1^DIQ(FREF,IEN,.01,"I") I ITIEN="" Q
 .. I $G(TIEN)'="",ITIEN'=TIEN Q
 .. I $G(TIEN)="",'$D(@TREF@(ITIEN)) Q
 .. S RES=$$GET1^DIQ(FREF,IEN,.04,"I")
 .. S VISIT=$$GET1^DIQ(FREF,IEN,.03,"I") I VISIT="" Q
 .. I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .. S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 Q:VSDTM=0
 .. S RESULT=1_U_VSDTM_U_U_VISIT_U_IEN_U_RES,QFL=1
 . ; check for refusal
 . I $O(^AUPNPREF("AA",BQDFN,RREF,""))'="" D
 .. S TIEN="" F  S TIEN=$O(@TREF@(TIEN)) Q:TIEN=""  D
 ... ;S EDT=(9999999-DT)+.001,BDT=""
 ... S BDT="",STOP=0
 ... F  S BDT=$O(^AUPNPREF("AA",BQDFN,RREF,TIEN,BDT)) Q:BDT=""  D  Q:STOP
 .... S IEN="" F  S IEN=$O(^AUPNPREF("AA",BQDFN,RREF,TIEN,BDT,IEN)) Q:IEN=""  D  Q:STOP
 ..... S DTM=$P(^AUPNPREF(IEN,0),U,3)
 ..... I $P(RESULT,U,2)'="",DTM<$P(RESULT,U,2) Q
 ..... S RESULT=1_U_DTM_U_U_U_U_U_"refusal",STOP=1
 Q RESULT
 ;
FTAG(TGN,COLN,BQDFN) ; EP - Find the last entry for a value in Tag
 ; Input Parameters
 ;   TGN   - Tag IEN
 ;   COLN  - Column IEN
 ;   BQDFN - Patient IEN
 ;
 NEW DA,IENS,FRN,FREF,RREF,ITM,NAM,TAX
 S DA(1)=TGN,DA=COLN,IENS=$$IENS^DILF(.DA)
 S FRN=$$GET1^DIQ(90506.26,IENS,.02,"I")
 S FREF=$$PTR^BQIUL2(90506.26,.02,FRN,.02)
 S RREF=$$PTR^BQIUL2(90506.26,.02,FRN,.08)
 S ITM=$$GET1^DIQ(90506.26,IENS,.04,"E")
 ;S DIS=$$GET1^DIQ(90506.26,IENS,.05,"I")
 S NAM=$$GET1^DIQ(90506.26,IENS,.03,"E")
 S TAX=$$GET1^DIQ(90506.26,IENS,.07,"E")
 Q $$ITM^BQICMUTL("",BQDFN,FREF,RREF,ITM,TAX)
 ;
FND(CRN,COLN,BQDFN) ;EP - Find the last entry for a value in Source
 ; Input Parameters
 ;   CRN   - Care Mgmt Source IEN
 ;   COLN  - Column IEN
 ;   BQDFN - Patient IEN
 ;
 NEW DA,IENS
 S DA(1)=CRN,DA=COLN,IENS=$$IENS^DILF(.DA)
 S FRN=$$GET1^DIQ(90506.51,IENS,.02,"I")
 S FREF=$$PTR^BQIUL2(90506.51,.02,FRN,.02)
 S RREF=$$PTR^BQIUL2(90506.51,.02,FRN,.08)
 S ITM=$$GET1^DIQ(90506.51,IENS,.04,"E")
 ;S DIS=$$GET1^DIQ(90506.51,IENS,.05,"I")
 S NAM=$$GET1^DIQ(90506.51,IENS,.03,"E")
 S TAX=$$GET1^DIQ(90506.51,IENS,.07,"E")
 Q $$ITM^BQICMUTL("",BQDFN,FREF,RREF,ITM,TAX)