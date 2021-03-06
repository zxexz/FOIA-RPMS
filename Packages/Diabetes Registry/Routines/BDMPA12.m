BDMPA12 ; IHS/CMI/LAB - 2003 DIABETES AUDIT ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**6,8**;JUN 14, 2007;Build 53
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in HYSTER,MAMMOG
 ;
SETN ;
 S N="" NEW A,G S (A,G)=0 F  S A=$O(BDM(A)) Q:A'=+A!(G)  I $P(^AUPNVLAB(+$P(BDM(A),U,4),0),U,4)]"" S G=A
 S N=$S(G:G,1:1)
 Q
TBTX(P) ;EP
 I '$G(P) Q ""
 NEW BDM,E,X
 K BDM
 S X=P_"^LAST HEALTH [DM AUDIT TB HEALTH FACTORS" S E=$$START1^APCLDF(X,"BDM(")
 I E Q ""
 I $D(BDM(1)) Q $P(BDM(1),U,3)_U_$S($P(BDM(1),U,3)["TX COMPLETE":"1 Yes",$P(BDM(1),U,3)["TX INCOMPLETE"!($P(BDM(1),U,3)["TX UNTREATED"):"2 No",1:"4 Unknown")
 N T,Y S T=$O(^ATXAX("B","DM AUDIT TB HEALTH FACTORS",0))
 I 'T Q ""
 N G S G="",X=0 F  S X=$O(^AUPNHF("AA",P,X)) Q:X'=+X!(G]"")  I $D(^ATXAX(T,21,"B",X)) S G=$P(^AUTTHF(X,0),U)
 I G]"" Q G_U_$S(G["TX COMPLETE":"1 Yes",G["TX INCOMPLETE"!(G["TX UNTREATED"):"2 No",1:"4 Unknown")
 Q ""
PAP(P,BDATE,EDATE) ; EP
 NEW X,%DT,ED,%,BDMLTX,BDMLTAX,BDMC
 S %DT="P",X=EDATE D ^%DT S ED=Y
 S %DT="P",X=BDATE D ^%DT S BD=Y
 I $$SEX^AUPNPAT(P)'="F" Q "N/A - male"
 I $$AGE^AUPNPAT(P,ED)<18 Q "N/A - under 18"
 I $$HYSTER(P,EDATE) Q "N/A - Patient had hysterectomy"
 NEW BDM S %=P_"^LAST LAB PAP SMEAR;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) Q "Yes  "_$$FMTE^XLFDT($P(BDM(1),U))
 S BDMLTX=$O(^ATXAX("B","BGP PAP LOINC CODES",0))
 S BDMLTAX=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S BDMC="",B=9999999-BD,E=9999999-ED S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BDMC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BDMC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BDMC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S Z=$P(^AUPNVLAB(X,0),U),Z=$P($G(^LAB(60,Z,0)),U) I Z="PAP SMEAR" S BDMC="Yes  "_$$FMTE^XLFDT((9999999-D)) Q
 ...I BDMLTAX,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLTAX,21,"B",$P(^AUPNVLAB(X,0),U))) S BDMC="Yes  "_$$FMTE^XLFDT((9999999-D)) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMLTX)
 ...S BDMC="Yes  "_$$FMTE^XLFDT((9999999-D)) Q
 ...Q
 I BDMC]"" Q BDMC
 K BDM S %=P_"^LAST DX V76.2;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) Q "Yes  "_$$FMTE^XLFDT($P(BDM(1),U))
 ;K BDM S %=P_"^LAST DX V72.3;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 ;I $D(BDM(1)) Q "Yes  "_$$FMTE^XLFDT($P(BDM(1),U))
 K BDM S %=P_"^LAST PROCEDURE 91.46;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) Q "Yes  "_$$FMTE^XLFDT($P(BDM(1),U))
 ;check CPT codes in year prior to date range
 S T=$O(^ATXAX("B","BGP PAP CPTS",0))
 K BDM I T S BDM(1)=$$CPT(P,,ED,T,4) I $G(BDM(1))]"" Q "Yes  "_BDM(1)
 ;check WH
 S T="PAP SMEAR",T=$O(^BWPN("B",T,0))
 I T D  I X]"" Q "Yes  "_$$FMTE^XLFDT(X)
 .S X=$$WH(P,BD,ED,T,3)
 S G=0
 S T=$O(^LAB(60,"B","PAP SMEAR",0))
 I T,$$REFUSAL^BDMPA17(P,60,T,BDATE,EDATE) Q "Refused"
 S T=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 I 'T Q "No"
 S G=0
 S X=0 F  S X=$O(^ATXLAB(T,21,X)) Q:X'=+X!(G)  I $$REFUSAL^BDMPA17(P,60,$P(^ATXLAB(T,21,X,0),U),BDATE,EDATE) S G=1
 Q $S(G:"Refused",1:"No")
CPT(P,BDATE,EDATE,T,F) ;EP return ien of CPT entry if patient had this CPT
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVCPT("AD",V))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(G)  D
 ...I $$ICD^ATXCHK($P(^AUPNVCPT(X,0),U),T,1) S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 Q ""
RAD(P,BDATE,EDATE,T,F) ;EP return if a v rad entry in date range
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVRAD("AD",V))
 ..S X=0 F  S X=$O(^AUPNVRAD("AD",V,X)) Q:X'=+X!(G)  D
 ...Q:'$D(^AUPNVRAD(X,0))
 ...S Y=$P(^AUPNVRAD(X,0),U) Q:'Y  Q:'$D(^RAMIS(71,Y,0))
 ...S Y=$P($G(^RAMIS(71,Y,0)),U,9) Q:'Y
 ...Q:'$$ICD^ATXCHK(Y,T,1)
 ...S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 Q ""
EKG(P,EDATE,F) ;EP
 I $G(F)="" S F="E"
 S %DT="P",X=EDATE D ^%DT S ED=Y
 NEW BDM,X,%,E,LEKG S LEKG="",%=P_"^LAST DIAGNOSTIC ECG SUMMARY;DURING "_$$DOB^AUPNPAT(P,"E")_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM) S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.51",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.52",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.53",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.50",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST DX 794.31",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 ;check CPT codes in year prior to date range
 S T=$O(^ATXAX("B","DM AUDIT EKG CPTS",0))
 K BDM I T S BDM(1)=$$CPT^BDMPA12(P,,ED,T,3) D
 .I BDM(1)="" K BDM Q
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM I T S BDM(1)=$$RAD^BDMPA12(P,,ED,T,3) D
 .I BDM(1)="" K BDM Q
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 Q $S(F="E":$$FMTE^XLFDT(LEKG),1:LEKG)
 ;
ALT(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT ALT TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT ALT TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"  "_$$FMTE^XLFDT($P(BDM(N),U),5)
AST(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT AST TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT AST TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"  "_$$FMTE^XLFDT($P(BDM(N),U),5)
INSULIN(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT INSULIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
SULF(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT SULFONYLUREA DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
MET(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT METFORMIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
ACAR(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT ACARBOSE DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
TROG(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT GLITAZONE DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
MAMMOG(P,BDATE,EDATE) ;  EP
 NEW X,%DT,ED,BD,G,Y,V
 S %DT="P",X=EDATE D ^%DT S ED=Y
 S %DT="P",X=BDATE D ^%DT S BD=Y
 I $$SEX^AUPNPAT(P)'="F" Q "N/A - male"
 I $$AGE^AUPNPAT(P,ED)<40 Q "N/A - under 40"
 I '$G(P) Q ""
 NEW LMAM S LMAM=""
 I $G(^AUTTSITE(1,0)),$P(^AUTTLOC($P(^AUTTSITE(1,0),U),0),U,10)="353101" S LMAM=$$MAMMOG1(P,BDATE,EDATE)
 NEW BDM
 K BDM
 S (X,Y,V)=0,G="" F  S X=$O(^AUPNVRAD("AC",P,X)) Q:X'=+X!(G]"")  D
 .S V=$P(^AUPNVRAD(X,0),U,3),V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:V>EDATE
 .Q:V<BDATE
 .S Y=$P(^AUPNVRAD(X,0),U),Y=$P($G(^RAMIS(71,Y,0)),U,9)
 .Q:Y=""
 .;S Y=$P($G(^ICPT(Y,0)),U)  ;cmi/anch/maw 9/12/2007 orig line
 .S Y=$P($$CPT^ICPTCOD(Y),U,2)  ;cmi/anch/maw 9/12/2007 csv
 .I Y=76092 S BDM(9999999-V)=""
 .I Y=76090 S BDM(9999999-V)="" Q
 .I Y=76091 S BDM(9999999-V)="" Q
 .Q
 S LMAM=$O(BDM(0)) I LMAN]"" S LMAM=9999999-LMAM
 K BDM S %=P_"^LAST DX V76.12;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LMAM>$P(BDM(1),U)
 .S LMAM=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 87.37;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LMAM>$P(BDM(1),U)
 .S LMAM=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 87.36;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LMAM>$P(BDM(1),U)
 .S LMAM=$P(BDM(1),U)
 ;check CPT codes in year prior to date range
 S T=$O(^ATXAX("B","DM AUDIT MAMMOGRAM CPTS",0))
 K BDM I T S BDM(1)=$$CPT^BDMPA12(P,,ED,T,3) D
 .I BDM(1)="" K BDM Q
 .Q:LMAM>$P(BDM(1),U)
 .S LMAM=$P(BDM(1),U)
 Q $S(LMAM]"":"Yes  "_$$FMTE^XLFDT(LMAM),1:"No")
 ;
MAMMOG1(P,BDATE,EDATE) ;for radiology 4.5+ or until qman can handle taxonomies for radiology procedures
 NEW BDMMAM,CODE,COUNT,IEN,X
 S CODE=$O(^DIC(40.7,"C",72,0)) I 'CODE Q "No    <never recorded>"
 S IEN=0 F  S IEN=$O(^RAMIS(71,IEN)) Q:'IEN  D
 . Q:$G(^RAMIS(71,IEN,"I"))  ;inactive
 . Q:'$D(^RAMIS(71,IEN,"STOP","B",CODE))  ;no mamm stop code
 . S COUNT=$G(COUNT)+1,BDMMAM(COUNT)=$P(^RAMIS(71,IEN,0),U)
 ;
 ; -- use data fetcher to find mammogram dates
 NEW BDMY,BDMSAV,BDMX,BDMNAM
 S (BDMSAV,BDMX)=0 F  S BDMX=$O(BDMMAM(BDMX)) Q:'BDMX  D
 . S %=P_"^LAST RAD "_BDMMAM(BDMX)_";DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDMY(")
 . ; save latest date and procedure name
 . I $G(BDMY(1)),$P(BDMY(1),U)>BDMSAV S BDMSAV=$P(BDMY(1),U),BDMNAM=BDMMAM(BDMX)
 ;
 ; -- return results
 I BDMSAV'=0 Q BDMSAV
 ;
 Q ""
TXNAME(V) ;EP
 I $G(V)="" Q ""
 S V=$$TXNAMES(V)
 Q $E(V,1,16)
TXNAMES(Y) ;
 I Y=1 Q "DIET"
 I Y=2 Q "INSULIN"
 I Y=3 Q "SULFONYLUREA"
 I Y=4 Q "METFORMIN (GLUCOPHAGE)"
 I Y=5 Q "ACARBOSE OR MIGLITOL"
 I Y=6 Q "GLITAZONE"
 I Y=9 Q "UNKNOWN/REFUSED"
 I Y=23 Q "INSULIN+S'UREA"
 I Y=24 Q "INSULIN+MET"
 I Y=25 Q "INSULIN+ACAR"
 I Y=26 Q "INSULIN+GLITAZONE"
 I Y=34 Q "S'UREA+MET"
 I Y=35 Q "S'UREA+ACAR"
 I Y=36 Q "S'UREA+GLITAZONE"
 I Y=45 Q "MET+ACAR"
 I Y=46 Q "MET+GLITAZONE"
 I Y=56 Q "ACAR+GLITAZONE"
 I Y=234 Q "INS+S'UREA+MET"
 I Y=235 Q "INS+S'UREA+ACAR"
 I Y=236 Q "INS+S'UREA+GLIT"
 I Y=245 Q "INS+MET+ACAR"
 I Y=246 Q "INS+MET+GLITAZONE"
 I Y=256 Q "INS+ACAR+GLITAZONE"
 I Y=345 Q "S'UREA+MET+ACAR"
 I Y=346 Q "S'UREA+MET+GLIT"
 I Y=356 Q "S'UREA+ACAR+GLIT"
 I Y=456 Q "MET+ACAR+GLIT"
 Q ""
 ;
HYSTER(P,EDATE) ;EP 
 I '$G(P) Q ""
 ;S (F,S)=0 F  S F=$O(^AUPNVPRC("AC",P,F)) Q:F'=+F!(S)  S C=$P(^ICD0(+^AUPNVPRC(F,0),0),U) D  ;cmi/anch/maw 9/12/2007 orig line
 S (F,S)=0 F  S F=$O(^AUPNVPRC("AC",P,F)) Q:F'=+F!(S)  S C=$P($$ICDOP^BDMUTL(+^AUPNVPRC(F,0),,,"I"),U,2) D  ;cmi/anch/maw 9/12/2007 csv
 .S G=0 S:(C=68.4)!(C=68.5)!(C=68.6)!(C=68.7)!(C=68.9) G=1
 .Q:G=0
 .S D=$P(^AUPNVPRC(F,0),U,6) I D="" S D=$P($P(^AUPNVSIT($P(^AUPNVPRC(F,0),U,3),0),U),".")
 .I D>EDATE Q
 .S S=1
 I S=1 Q 1
 S T="HYSTERECTOMY",T=$O(^BWPN("B",T,0))
 I T D  I X]"" Q 1
 .S X=$$WH(P,$$DOB^AUPNPAT(P),EDATE,T,2)
 S T=$O(^ATXAX("B","BGP HYSTERECTOMY CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT(P,$P(^DPT(P,0),U,3),EDATE,T,3)
 Q ""
WH(P,BDATE,EDATE,T,F) ;EP
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through procedures in a date range for this patient, check proc type
 NEW D,X,Y,G,V
 S (G,V)=0 F  S V=$O(^BWPCD("C",P,V)) Q:V=""!(G)  D
 .Q:'$D(^BWPCD(V,0))
 .I $P(^BWPCD(V,0),U,4)'=T Q
 .S D=$P(^BWPCD(V,0),U,12)
 .Q:D<BDATE
 .Q:D>EDATE
 .S G=V
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S D=$P(^BWPCD(G,0),U,12) Q D
 I F=4 S D=$P(^BWPCD(G,0),U,12) Q $$FMTE^XLFDT(D)
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
