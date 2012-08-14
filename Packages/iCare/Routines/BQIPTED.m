BQIPTED ;PRXM/HC/ALA-Patient Education ; 23 Feb 2007  4:55 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
EDU(DATA,DFN,DRANGE) ; EP -- BQI PATIENT EDUCATION
 ;
 ;Description - all the education that a patient has
 ;
 ;Input
 ;  DFN - Patient internal entry number
 ;
 NEW UID,II,IEN,TOPIC,VISIT,VSDTM,LEVEL,OPROV,EPROV,LENGTH,IG,COMM,PROV
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIPTED",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIPTED D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S DRANGE=$$DATE^BQIUL1($G(DRANGE))
 S @DATA@(II)="I00010EDUC_IEN^I00010VISIT_IEN^D00030VISIT_DATETIME^T00050TOPIC^I00003LENGTH^T00035PROVIDER^T00012STATUS^T00030LEVEL^T00001IG^T00100COMMENT"_$C(30)
 S IEN=""
 F  S IEN=$O(^AUPNVPED("AC",DFN,IEN),-1) Q:IEN=""  D
 . S TOPIC=$$GET1^DIQ(9000010.16,IEN_",",.01,"E") I TOPIC="" Q
 . S VISIT=$$GET1^DIQ(9000010.16,IEN_",",.03,"I") I VISIT="" Q
 . S VSDTM=$$GET1^DIQ(9000010,VISIT_",",.01,"I") I VSDTM=0 Q
 . I DRANGE'="",(VSDTM\1<DRANGE) Q
 . S LEVEL=$$GET1^DIQ(9000010.16,IEN_",",.06,"E")
 . S LENGTH=$$GET1^DIQ(9000010.16,IEN_",",.08,"E")
 . S IG=$$GET1^DIQ(9000010.16,IEN_",",.07,"I")
 . S OPROV=$$GET1^DIQ(9000010.16,IEN_",",1202,"E")
 . S COMM=$$GET1^DIQ(9000010.16,IEN_",",.11,"E")
 . S STAT=$$GET1^DIQ(9000010.16,IEN_",",.13,"E")
 . S EPROV=$$GET1^DIQ(9000010.16,IEN_",",1204,"E")
 . S PROV=$$GET1^DIQ(9000010.16,IEN_",",.05,"E")
 . S II=II+1,@DATA@(II)=IEN_U_VISIT_U_$$FMTE^BQIUL1(VSDTM)_U_TOPIC_U_LENGTH_U_PROV_U_STAT_U_LEVEL_U_IG_U_COMM_$C(30)
 ;
 ; Check for refusals
 D REF
 ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
REF ; Check for refusals
 NEW TOP,RVDT,REVDT,RFIEN,TOPIC,RSLT,ORPHY,STAT,LEVEL,IG,COMM
 S TOP=""
 F  S TOP=$O(^AUPNPREF("AA",DFN,9999999.09,TOP)) Q:TOP=""  D
 . S RVDT=""
 . F  S RVDT=$O(^AUPNPREF("AA",DFN,9999999.09,TOP,RVDT)) Q:RVDT=""  D
 .. ; Reverse the reverse date
 .. S REVDT=9999999-RVDT
 .. I DRANGE'="",(REVDT\1)<DRANGE Q
 .. S RFIEN=""
 .. F  S RFIEN=$O(^AUPNPREF("AA",DFN,9999999.09,TOP,RVDT,RFIEN)) Q:RFIEN=""  D
 ... S TOPIC=$$GET1^DIQ(9999999.09,TOP_",",.01,"E")
 ... S RSLT=$$GET1^DIQ(9000022,RFIEN_",",.07,"E")
 ... S ORPHY=$$GET1^DIQ(9000022,RFIEN_",",1204,"E")
 ... S STAT="",IG="",COMM="",LENGTH=""
 ... S II=II+1,@DATA@(II)=U_U_$$FMTE^BQIUL1(REVDT)_U_TOPIC_U_LENGTH_U_ORPHY_U_STAT_U_RSLT_U_IG_U_COMM_$C(30)
 Q