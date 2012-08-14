OCXOZ0F ;SLC/RJS,CLA - Order Check Scan ;JUN 15,2011 at 12:58
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
 ; ***************************************************************
 ; ** Warning: This routine is automatically generated by the   **
 ; ** Rule Compiler (^OCXOCMP) and ANY changes to this routine  **
 ; ** will be lost the next time the rule compiler executes.    **
 ; ***************************************************************
 ;
 Q
 ;
CHK478 ; Look through the current environment for valid Event/Elements for this patient.
 ;  Called from CHK472+19^OCXOZ0E.
 ;
 Q:$G(OCXOERR)
 ;
 ;    Local CHK478 Variables
 ; OCXDF(37) ---> Data Field: PATIENT IEN (NUMERIC)
 ; OCXDF(147) --> Data Field: PATIENT LOCATION (FREE TEXT)
 ;
 ;      Local Extrinsic Functions
 ; FILE(DFN,131, ----> FILE DATA IN PATIENT ACTIVE DATA FILE  (Event/Element: GREATER THAN LAB THRESHOLD)
 ; PATLOC( ----------> PATIENT LOCATION
 ;
 S OCXDF(147)=$P($$PATLOC(OCXDF(37)),"^",2),OCXOERR=$$FILE(DFN,131,"12,37,96,113,147,152") Q:OCXOERR 
 Q
 ;
CHK485 ; Look through the current environment for valid Event/Elements for this patient.
 ;  Called from CHK472+20^OCXOZ0E.
 ;
 Q:$G(OCXOERR)
 ;
 ;    Local CHK485 Variables
 ; OCXDF(37) ---> Data Field: PATIENT IEN (NUMERIC)
 ; OCXDF(147) --> Data Field: PATIENT LOCATION (FREE TEXT)
 ;
 ;      Local Extrinsic Functions
 ; FILE(DFN,132, ----> FILE DATA IN PATIENT ACTIVE DATA FILE  (Event/Element: LESS THAN LAB THRESHOLD)
 ; PATLOC( ----------> PATIENT LOCATION
 ;
 S OCXDF(147)=$P($$PATLOC(OCXDF(37)),"^",2),OCXOERR=$$FILE(DFN,132,"12,37,96,113,147,152") Q:OCXOERR 
 Q
 ;
CHK491 ; Look through the current environment for valid Event/Elements for this patient.
 ;  Called from CHK455+17^OCXOZ0E.
 ;
 Q:$G(OCXOERR)
 ;
 ;    Local CHK491 Variables
 ; OCXDF(37) ---> Data Field: PATIENT IEN (NUMERIC)
 ; OCXDF(58) ---> Data Field: ABNORMAL RENAL BIOCHEM RESULTS (FREE TEXT)
 ;
 ;      Local Extrinsic Functions
 ; ABREN( -----------> DETERMINE IF RENAL LAB RESULTS ARE ABNORMAL HIGH OR LOW
 ; FILE(DFN,133, ----> FILE DATA IN PATIENT ACTIVE DATA FILE  (Event/Element: NO CREAT RESULTS W/IN X DAYS)
 ;
 S OCXDF(58)=$P($$ABREN(OCXDF(37)),"^",2),OCXOERR=$$FILE(DFN,133,"58,154") Q:OCXOERR 
 Q
 ;
CHK498 ; Look through the current environment for valid Event/Elements for this patient.
 ;  Called from CHK196+15^OCXOZ09.
 ;
 Q:$G(OCXOERR)
 ;
 ;    Local CHK498 Variables
 ; OCXDF(37) ---> Data Field: PATIENT IEN (NUMERIC)
 ; OCXDF(156) --> Data Field: ALLERGY ASSESSMENT (BOOLEAN)
 ; OCXDF(159) --> Data Field: ALLERGIES UNASSESSIBLE (BOOLEAN)
 ;
 ;      Local Extrinsic Functions
 ; ALRGY( -----------> ALLERGY ASSESSMENT
 ; ALUNASS( ---------> ALLERGIES UNASSESSIBLE
 ; FILE(DFN,136, ----> FILE DATA IN PATIENT ACTIVE DATA FILE  (Event/Element: NO ALLERGY ASSESSMENT)
 ; FILE(DFN,140, ----> FILE DATA IN PATIENT ACTIVE DATA FILE  (Event/Element: ALLERGIES UNASSESSIBLE)
 ;
 S OCXDF(156)=$$ALRGY(OCXDF(37)) I $L(OCXDF(156)),'(OCXDF(156)) S OCXOERR=$$FILE(DFN,136,"") Q:OCXOERR 
 S OCXDF(159)=$$ALUNASS(OCXDF(37)) I $L(OCXDF(159)),'(OCXDF(159)) S OCXOERR=$$FILE(DFN,140,"") Q:OCXOERR 
 Q
 ;
CHK506 ; Look through the current environment for valid Event/Elements for this patient.
 ;  Called from CHK363+15^OCXOZ0C.
 ;
 Q:$G(OCXOERR)
 ;
 ;    Local CHK506 Variables
 ; OCXDF(37) ---> Data Field: PATIENT IEN (NUMERIC)
 ; OCXDF(74) ---> Data Field: VA DRUG CLASS (FREE TEXT)
 ; OCXDF(158) --> Data Field: DUPLICATE OPIOID MEDICATIONS TEXT (FREE TEXT)
 ;
 ;      Local Extrinsic Functions
 ; LIST( ------------> IN LIST OPERATOR
 ; OPIOID( ----------> OPIOID MEDICATIONS
 ;
 I $$LIST(OCXDF(74),"OPIOID ANALGESICS,OPIOID ANTAGONIST ANALGESICS") S OCXDF(37)=$G(DFN) I $L(OCXDF(37)) S OCXDF(158)=$P($$OPIOID(OCXDF(37)),"^",2) D CHK510
 Q
 ;
CHK510 ; Look through the current environment for valid Event/Elements for this patient.
 ;  Called from CHK506+14.
 ;
 Q:$G(OCXOERR)
 ;
 ;      Local Extrinsic Functions
 ; FILE(DFN,139, ----> FILE DATA IN PATIENT ACTIVE DATA FILE  (Event/Element: OPIOID MED ORDER)
 ;
 S OCXOERR=$$FILE(DFN,139,"158") Q:OCXOERR 
 Q
 ;
EL24 ; Examine every rule that involves Element #24 [HL7 LAB TEST RESULTS CRITICAL]
 ;  Called from SCAN+9^OCXOZ01.
 ;
 Q:$G(OCXOERR)
 ;
 D R3R1A^OCXOZ0I   ; Check Relation #1 in Rule #3 'CRITICAL LAB RESULTS'
 Q
 ;
EL105 ; Examine every rule that involves Element #105 [HL7 LAB ORDER RESULTS CRITICAL]
 ;  Called from SCAN+9^OCXOZ01.
 ;
 Q:$G(OCXOERR)
 ;
 D R3R2A^OCXOZ0I   ; Check Relation #2 in Rule #3 'CRITICAL LAB RESULTS'
 Q
 ;
EL44 ; Examine every rule that involves Element #44 [ORDER FLAGGED]
 ;  Called from SCAN+9^OCXOZ01.
 ;
 Q:$G(OCXOERR)
 ;
 D R5R1A^OCXOZ0J   ; Check Relation #1 in Rule #5 'ORDER FLAGGED FOR CLARIFICATION'
 Q
 ;
EL134 ; Examine every rule that involves Element #134 [ORDER UNFLAGGED]
 ;  Called from SCAN+9^OCXOZ01.
 ;
 Q:$G(OCXOERR)
 ;
 D R5R2A^OCXOZ0J   ; Check Relation #2 in Rule #5 'ORDER FLAGGED FOR CLARIFICATION'
 Q
 ;
ABREN(DFN) ;  Compiler Function: DETERMINE IF RENAL LAB RESULTS ARE ABNORMAL HIGH OR LOW
 ;
 N OCXFLAG,OCXVAL,OCXLIST,OCXTEST,UNAV,OCXTLIST,OCXTERM,OCXSLIST,OCXSPEC
 S (OCXLIST,OCXTLIST)="",UNAV="0^<Unavailable>"
 S OCXSLIST="" Q:'$$TERMLKUP("SERUM SPECIMEN",.OCXSLIST) UNAV
 F OCXTERM="SERUM CREATININE","SERUM UREA NITROGEN" D  Q:($L(OCXLIST)>130)
 .Q:'$$TERMLKUP(OCXTERM,.OCXTLIST)
 .S OCXTEST=0 F  S OCXTEST=$O(OCXTLIST(OCXTEST)) Q:'OCXTEST  D  Q:($L(OCXLIST)>130)
 ..S OCXSPEC=0 F  S OCXSPEC=$O(OCXSLIST(OCXSPEC)) Q:'OCXSPEC  D  Q:($L(OCXLIST)>130)
 ...S OCXVAL=$$LOCL^ORQQLR1(DFN,OCXTEST,OCXSPEC),OCXFLAG=$P(OCXVAL,U,5)
 ...I $L(OCXVAL),((OCXFLAG["H")!(OCXFLAG["L")) D 
 ....N OCXY S OCXY=""
 ....S OCXY=$P(OCXVAL,U,2)_": "_$P(OCXVAL,U,3)_" "_$P(OCXVAL,U,4)
 ....S OCXY=OCXY_" "_$S($L(OCXFLAG):"["_OCXFLAG_"]",1:"")
 ....S OCXY=OCXY_" "_$$FMTE^XLFDT($P(OCXVAL,U,7),"2P")
 ....S:$L(OCXLIST) OCXLIST=OCXLIST_" " S OCXLIST=OCXLIST_OCXY
 Q:'$L(OCXLIST) UNAV  Q 1_U_OCXLIST
 ;  
 ;
ALRGY(ORPT)   ; determine if pt has an allergy assessment
 ; rtn 0 if no allergy assessment, 1 if allergy assessment or NKA
 N ORALRGY
 D EN1^GMRAOR1(ORPT,"ORALRGY")
 Q:$G(ORALRGY)="" 0
 Q 1
 ;
ALUNASS(ORPT)   ; determine if pt was unable to be assessed
 ; rtn 0 if unable to assessment, 1 otherwise
 N ORALASS 
 S ORALASS=$$UNASS^GMRAOR1(ORPT)
 Q:ORALASS=0 0
 Q 1
 ;
FILE(DFN,OCXELE,OCXDFL) ;     This Local Extrinsic Function logs a validated event/element.
 ;
 N OCXTIMN,OCXTIML,OCXTIMT1,OCXTIMT2,OCXDATA,OCXPC,OCXPC,OCXVAL,OCXSUB,OCXDFI
 S DFN=+$G(DFN),OCXELE=+$G(OCXELE)
 ;
 Q:'DFN 1 Q:'OCXELE 1 K OCXDATA
 ;
 S OCXDATA(DFN,OCXELE)=1
 F OCXPC=1:1:$L(OCXDFL,",") S OCXDFI=$P(OCXDFL,",",OCXPC) I OCXDFI D
 .S OCXVAL=$G(OCXDF(+OCXDFI)),OCXDATA(DFN,OCXELE,+OCXDFI)=OCXVAL
 ;
 M ^TMP("OCXCHK",$J,DFN)=OCXDATA(DFN)
 ;
 Q 0
 ;
LIST(DATA,LIST) ;   IS THE DATA FIELD IN THE LIST
 ;
 S:'($E(LIST,1)=",") LIST=","_LIST S:'($E(LIST,$L(LIST))=",") LIST=LIST_"," S DATA=","_DATA_","
 Q (LIST[DATA)
 ;
OPIOID(ORPT) ;determine if pat is receiving opioid med
 ; rtn 1^opioid drug 1, opioid drug 2, opioid drug3, ...
 N ORDG,ORTN,ORNUM,ORDI,ORDCLAS,ORDERS,ORTEXT,DUP,DUPI,DUPJ,DUPLEN
 S ORDG=0,ORTN=0,DUPI=0,DUPLEN=20
 K ^TMP("ORR",$J)
 S ORDG=$O(^ORD(100.98,"B","RX",ORDG))
 D EN^ORQ1(ORPT_";DPT(",ORDG,2,"","","",0,0)
 N J,HOR,SEQ,X S J=1,HOR=0,SEQ=0
 S HOR=$O(^TMP("ORR",$J,HOR)) Q:+HOR<1 ORTN
 F  S SEQ=$O(^TMP("ORR",$J,HOR,SEQ)) Q:+SEQ<1  D
 .S X=^TMP("ORR",$J,HOR,SEQ)
 .S ORNUM=+$P(X,";")
 .Q:ORNUM=+$G(ORIFN)  ;quit if dup med order # = current order #
 .S ORDI=$$VALUE^ORCSAVE2(ORNUM,"DRUG")
 .I +$G(ORDI)>0 D
 ..S ORDCLAS=$P(^PSDRUG(ORDI,0),U,2)  ;va drug class
 ..I ($G(ORDCLAS)="CN101")!($G(ORDCLAS)="CN102") D  ;opioid classes
 ...S ORTEXT=$$FULLTEXT^ORQOR1(ORNUM)
 ...S ORTEXT=$P(ORTEXT,U)_" ["_$P(ORTEXT,U,2)_"]"
 ...S DUPI=DUPI+1,DUP(DUPI)=" ["_DUPI_"] "_ORTEXT
 ...S ORTN=1
 I DUPI>0 D
 .S DUPLEN=$P(215/DUPI,".")
 .F DUPJ=1:1:DUPI D
 ..I DUPJ=1 S ORDERS=$E(DUP(DUPJ),1,DUPLEN)
 ..E  S ORDERS=ORDERS_", "_$E(DUP(DUPJ),1,DUPLEN)
 K ^TMP("ORR",$J)
 Q ORTN_U_$G(ORDERS)
 ;
PATLOC(DFN) ;  Compiler Function: PATIENT LOCATION
 ;
 N OCXP1,OCXP2
 S OCXP1=$G(^TMP("OCXSWAP",$J,"OCXODATA","PV1",2))
 S OCXP2=$P($G(^TMP("OCXSWAP",$J,"OCXODATA","PV1",3)),"^",1)
 I OCXP2 D
 .S OCXP2=$P($G(^SC(+OCXP2,0)),"^",1,2)
 .I $L($P(OCXP2,"^",2)) S OCXP2=$P(OCXP2,"^",2)
 .E  S OCXP2=$P(OCXP2,"^",1)
 .S:'$L(OCXP2) OCXP2="NO LOC"
 I $L(OCXP1),$L(OCXP2) Q OCXP1_"^"_OCXP2
 ;
 S OCXP2=$G(^DPT(+$G(DFN),.1))
 I $L(OCXP2) Q "I^"_OCXP2
 Q "O^OUTPT"
 ;
TERMLKUP(OCXTERM,OCXLIST) ;
 Q $$TERM^OCXOZ01(OCXTERM,.OCXLIST)
 ;