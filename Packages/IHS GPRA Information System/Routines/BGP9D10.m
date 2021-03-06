BGP9D10 ; IHS/CMI/LAB - calc measures ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
PROC ;EP
 S BGPBT=$H
 D JRNL^BGP9UTL
 S BGPJ=$J,BGPH=$H
 ;calculate 3 years before end of each time frame
 S BGP3YE=$$FMADD^XLFDT(BGPED,-1096)
 S BGPP3YE=$$FMADD^XLFDT(BGPPED,-1096)
 S BGPB3YE=$$FMADD^XLFDT(BGPBED,-1096)
 ;process each patient
 S DFN=0 F  S DFN=$O(^DIBT(BGPSEAT,1,DFN)) Q:DFN'=+DFN  D
 .D PROCCY,PROCPY,PROCBY
 S BGPET=$H
 Q
 ;
BQI(DFN,BQIGREF) ;PEP - iCare EP
 ;Description
 ;  Entry point called by the iCare module, returns GPRA data by global reference
 ;    DFN     = Patient internal entry number
 ;    BQIGREF = Global reference to store data
 ;
PROCCY ;current time period
 K ^TMP($J)
 S (BGPACTUP,BGPACTCL,BGPDM1,BGPDM2,BGPDMD1,BGPDMD2,BGPDMD3,BGPDMD4,BGPDMD5,BGPIHD,BGPHTN)=""
 Q:'$D(^DPT(DFN,0))
 Q:$P(^DPT(DFN,0),U,2)=""
 Q:"FM"'[$P(^DPT(DFN,0),U,2)
 S BGPEDATE=BGPED,BGPTIME=1,BGPBDATE=BGPBD,BGPGBL="^BGPGPDCN("
 S BGP365=BGPBDATE
 S BGPACTUP=1
 S BGPACTCL=1
 S BGPAGEB=$$AGE^AUPNPAT(DFN,BGPBDATE)
 S BGPAGEE=$$AGE^AUPNPAT(DFN,BGPEDATE)
 S BGPSEX=$P(^DPT(DFN,0),U,2)
 S BGPDM1=$$DM(DFN,,BGPEDATE) ;dm diagnosis ever?
 S BGPDM2=$$DM(DFN,BGP365,BGPEDATE) ;dm diagnosis in past year
 I BGPDM1 D  ;set up 4 dm demoninators
 .S BGPFDMD=$$FIRSTDM(DFN,BGPEDATE) ;1 OR 0 FIRST DX BEFORE BEG
 .S BGP2V=$$V2(DFN,BGP365,BGPEDATE)
 .S BGP2DMV=$$V2DM(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)
 .S BGP1DMV=$$V1DM(DFN,BGP365,BGPEDATE)
 .S BGPDMD1=0 I BGPFDMD S BGPDMD1=1
 .S BGPDMD2=0 I BGPFDMD,BGP2V,BGP2DMV,BGPACTCL S BGPDMD2=1
 .S BGPDMD3=0 I BGPFDMD,BGPAGEB>19,BGP2DMV,BGP1DMV,$$CREAT(DFN,BGPEDATE) S BGPDMD3=1
 .S BGPDMD5=0 I BGPFDMD,BGP2DMV,BGP1DMV,$$CREAT(DFN,BGPEDATE) S BGPDMD5=1
 D CALCIND
 K ^TMP($J,"A")
 Q
PROCPY ;
 S (BGPACTUP,BGPACTCL,BGPDM1,BGPDM2,BGPDMD1,BGPDMD2,BGPDMD3,BGPDMD4,BGPDMD5,BGPIHD)=""
 Q:'$D(^DPT(DFN,0))
 Q:$P(^DPT(DFN,0),U,2)=""
 Q:"FM"'[$P(^DPT(DFN,0),U,2)
 S BGPEDATE=BGPPED,BGPTIME=2,BGPBDATE=BGPPBD,BGPGBL="^BGPGPDPN("
 S BGP365=BGPBDATE
 S BGPACTUP=1
 S BGPACTCL=1
 S BGPAGEB=$$AGE^AUPNPAT(DFN,BGPBDATE)
 S BGPAGEE=$$AGE^AUPNPAT(DFN,BGPEDATE)
 S BGPSEX=$P(^DPT(DFN,0),U,2)
 ;I $$V2IHD^BGP3D9(DFN,BGP365,BGPEDATE),$$FIRSTIHD^BGP3D9(DFN,BGPEDATE) S BGPIHD=1
 S BGPDM1=$$DM(DFN,,BGPEDATE) ;dm diagnosis ever?
 S BGPDM2=$$DM(DFN,BGP365,BGPEDATE) ;dm diagnosis in past year
 I BGPDM1 D  ;set up 4 dm demoninators
 .S BGPFDMD=$$FIRSTDM(DFN,BGPEDATE) ;1 OR 0 FIRST DX BEFORE BEG
 .S BGP2V=$$V2(DFN,BGP365,BGPEDATE)
 .S BGP2DMV=$$V2DM(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)
 .S BGP1DMV=$$V1DM(DFN,BGP365,BGPEDATE)
 .S BGPDMD1=0 I BGPFDMD S BGPDMD1=1
 .S BGPDMD2=0 I BGPFDMD,BGP2V,BGP2DMV,BGPACTCL S BGPDMD2=1
 .S BGPDMD3=0 I BGPFDMD,BGPAGEB>19,BGP2DMV,BGP1DMV,$$CREAT(DFN,BGPEDATE) S BGPDMD3=1
 .S BGPDMD5=0 I BGPFDMD,BGP2DMV,BGP1DMV,$$CREAT(DFN,BGPEDATE) S BGPDMD5=1
 D CALCIND
 K ^TMP($J,"A")
 Q
PROCBY ;
 S (BGPACTUP,BGPACTCL,BGPDM1,BGPDM2,BGPDMD1,BGPDMD2,BGPDMD3,BGPDMD4,BGPDMD5,BGPIHD)=""
 Q:'$D(^DPT(DFN,0))
 Q:$P(^DPT(DFN,0),U,2)=""
 Q:"FM"'[$P(^DPT(DFN,0),U,2)
 S BGPEDATE=BGPBED,BGPTIME=3,BGPBDATE=BGPBBD,BGPGBL="^BGPGPDBN("
 S BGP365=BGPBDATE
 S BGPACTUP=1
 S BGPACTCL=1
 S BGPAGEB=$$AGE^AUPNPAT(DFN,BGPBDATE)
 S BGPAGEE=$$AGE^AUPNPAT(DFN,BGPEDATE)
 S BGPSEX=$P(^DPT(DFN,0),U,2)
 S BGPDM1=$$DM(DFN,,BGPEDATE) ;dm diagnosis ever?
 S BGPDM2=$$DM(DFN,BGP365,BGPEDATE) ;dm diagnosis in past year
 I BGPDM1 D  ;set up 4 dm demoninators
 .S BGPFDMD=$$FIRSTDM(DFN,BGPEDATE) ;1 OR 0 FIRST DX BEFORE BEG
 .S BGP2V=$$V2(DFN,BGP365,BGPEDATE)
 .S BGP2DMV=$$V2DM(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)
 .S BGP1DMV=$$V1DM(DFN,BGP365,BGPEDATE)
 .S BGPDMD1=0 I BGPFDMD S BGPDMD1=1
 .S BGPDMD2=0 I BGPFDMD,BGP2V,BGP2DMV,BGPACTCL S BGPDMD2=1
 .S BGPDMD3=0 I BGPFDMD,BGPAGEB>19,BGP2DMV,BGP1DMV,$$CREAT(DFN,BGPEDATE) S BGPDMD3=1
 .S BGPDMD5=0 I BGPFDMD,BGP2DMV,BGP1DMV,$$CREAT(DFN,BGPEDATE) S BGPDMD5=1
 D CALCIND
 K ^TMP($J,"A")
 Q
CALCIND ;
 D CALCIND^BGP9DCI
 Q
CREAT(P,EDATE) ;get all creatines all must be <5
 K BGPG
 S %=P_"^ALL LAB [DM AUDIT CREATININE TAX;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 S X=0,E=1 F  S X=$O(BGPG(X)) Q:X'=+X  S R=$P(BGPG(X),U,2) I +R>5,+R<15 S E=""
 I E="" Q E
 S T=$O(^ATXAX("B","BGP CREATININE LOINC CODES",0))
 I 'T Q E
 S X=0 F  S X=$O(^AUPNVLAB("AC",P,X)) Q:X'=+X!(E="")  I $P($G(^AUPNVLAB(X,11)),U,13)]"" D
 .Q:'$D(^AUPNVLAB(X,0))
 .S V=$P(^AUPNVLAB(X,0),U,3),V=$P($G(^AUPNVSIT(V,0)),U,1),V=$P(V,".")
 .Q:V>EDATE
 .S J=$P(^AUPNVLAB(X,11),U,13)
 .Q:'$$LOINC(J,T)
 .Q:$P(^AUPNVLAB(X,0),U,4)=""
 .S R=$P(^AUPNVLAB(X,0),U,4)
 .I +R>5,+R<15 S E=""
 Q E
V1DM(P,D,EDATE) ;
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 S PC=$O(^ATXAX("B","BGP PRIMARY CARE CLINICS",0))
 I 'PC Q ""
 ;I 'PP Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(D)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","SURVEILLANCE DIABETES",0))
 I 'T Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G>2)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:'$D(^AUPNVPRV("AD",V))
 .;Q:$P(^AUPNVSIT(V,0),U,6)'=DUZ(2) ;PER TERRY
 .Q:'$D(^AUPNVPOV("AD",V))
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .Q:'D
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .S Y=$$PRIMPROV^APCLV(V,"F")
 .Q:'Y
 .;Q:'$D(^ATXAX(PP,21,"B",Y))
 .Q:$P($G(^DIC(7,Y,9999999)),U,3)'="Y"
 .S Y=$$CLINIC^APCLV(V,"I")
 .Q:'Y
 .Q:'$D(^ATXAX(PC,21,"B",Y))
 .S G=G+1
 .Q
 Q $S(G<1:"",1:1)
 ;
V2(P,BDATE,EDATE) ;
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G>2)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .S G=G+1
 .Q
 Q $S(G<2:"",1:1)
 ;
V2DM(P,BDATE,EDATE) ;
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","SURVEILLANCE DIABETES",0))
 I 'T Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G>2)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .Q:'D
 .S G=G+1
 .Q
 Q $S(G<2:"",1:1)
 ;
DM(P,BDATE,EDATE) ;EP is patient diabetic 1 or 0
 I $G(BDATE)="" S BDATE=$$DOB^AUPNPAT(P)
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [SURVEILLANCE DIABETES;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1  ;has a dx
 Q 0
 ;
FIRSTDM(P,EDATE) ;
 I $G(P)="" Q ""
 K BGPG
 S Y="BGPG("
 S X=P_"^FIRST DX [SURVEILLANCE DIABETES" S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) Q ""
 S X=$$FMDIFF^XLFDT(EDATE,$P(BGPG(1),U))
 Q $S(X>365:1,1:"")
 ;
LASTVD(P,BDATE,EDATE) ;
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .S G=1
 .Q
 Q G
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
