BGP3CU4 ; IHS/CMI/LAB - calc CMS measures 26 Sep 2004 11:28 AM 04 May 2010 2:38 PM 05 Dec 2009 5:23 PM 18 Nov 2010 6:46 AM ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
EXCLCOMP(P,ADMD,DSCHD,BGPY) ;EP
 NEW X,BGPC
 S BGPC=0
 ;
 ;HIV/AIDS dxs
 S X=$$HIV(P,$$DOB^AUPNPAT(P),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)="HIV/AIDS: ["_$P(X,U,2)_"]  "_$$DATE^BGP3UTL($P(X,U,3))
 ;
 ;Systemic Chemotherapy
 S X=$$SYSCHEMO(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Systemic Immunotherapy 
 S X=$$SYSIMMUN(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Leukemia
 S X=$$LEUKEMIA(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Lymphoma
 S X=$$LYMPHOMA(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Radiation Therapy
 S X=$$RADTHER(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;chronic dialysis
 S X=$$CHRDIAL(P,$$FMADD^XLFDT(ADMD,-30),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,2,99)
 ;
 Q
COMP(P,ADMD,DSCHD,BGPY) ;EP
 NEW X,BGPC
 S BGPC=0
 ;
 ;HIV/AIDS dxs
 S X=$$HIV(P,$$DOB^AUPNPAT(P),DSCHD)
 I X S BGPC=BGPC+1,BGPY(BGPC)="HIV/AIDS: ["_$P(X,U,2)_"]  "_$$DATE^BGP3UTL($P(X,U,3))
 ;
 ;Systemic Chemotherapy
 S X=$$SYSCHEMO(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Systemic Immunotherapy 
 S X=$$SYSIMMUN(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Leukemia
 S X=$$LEUKEMIA(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Lymphoma
 S X=$$LYMPHOMA(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 ;Radiation Therapy
 S X=$$RADTHER(P,$$FMADD^XLFDT(ADMD,-90),ADMD)
 I X S BGPC=BGPC+1,BGPY(BGPC)=$P(X,U,6)
 ;
 Q
HIV(P,BDATE,EDATE) ;EP
 NEW X
 S X=$$LASTDX^BGP3UTL1(P,"BGP HIV/AIDS DXS",BDATE,EDATE)
 I X Q 1_U_$P(X,U,2)_"  "_$$DATE^BGP3UTL($P(X,U,3))
 Q ""
 ;
SYSCHEMO(P,BDATE,EDATE) ;EP
 NEW X
 ;
 S X=$$LASTDXI^BGP3UTL1(P,"V58.11",BDATE,EDATE)
 I X S $P(X,U,6)="SYSTEMIC CHEMOTHERAPY: [V58.11]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 S X=$$LASTPRCI^BGP3UTL1(P,"99.25",BDATE,EDATE)
 I X S $P(X,U,6)="SYSTEMIC CHEMOTHERAPY: [99.25]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 NEW BGPG,I,D,G,C
 K BGPG
 S G=""
 D GETMEDS^BGP3UTL2(P,BDATE,EDATE,"","","","",.BGPG)
 S T=$O(^ATXAX("B","BGP CMS SYSTEMIC CHEMO MEDS",0))
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S I=+$P(BGPG(X),U,4)
 .S D=$P($G(^AUPNVMED(I,0)),U)
 .Q:'D
 .S C=$P($G(^PSDRUG(D,0)),U,2)
 .I C["AN" S G=1_"^^^^^SYSTEMIC CHEMOTHERAPY: "_$P(^PSDRUG(D,0),U)_"  CLASS: "_$P(^PSDRUG(D,0),U,2) Q
 .I $D(^ATXAX(T,21,"B",D)) S G=1_"^^^^^SYSTEMIC CHEMOTHERAPY: "_$P(^PSDRUG(D,0),U)_"  CLASS: "_$P(^PSDRUG(D,0),U,2) Q
 I G Q G
 Q ""
 ;
SYSIMMUN(P,BDATE,EDATE) ;EP
 NEW X
 ;
 S X=$$LASTDXI^BGP3UTL1(P,"V58.12",BDATE,EDATE)
 I X S $P(X,U,6)="SYSTEMIC IMMUNOSUPPRESSIVE THERAPY: [V58.12]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 S X=$$LASTPRCI^BGP3UTL1(P,"00.15",BDATE,EDATE)
 I X S $P(X,U,6)="SYSTEMIC IMMUNOSUPPRESSIVE THERAPY: [00.15]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 S X=$$LASTPRCI^BGP3UTL1(P,"99.28",BDATE,EDATE)
 I X S $P(X,U,6)="SYSTEMIC IMMUNOSUPPRESSIVE THERAPY: [99.28]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 NEW BGPG,I,D,G,C
 K BGPG
 S G=""
 D GETMEDS^BGP3UTL2(P,BDATE,EDATE,"","","","",.BGPG)
 S T=$O(^ATXAX("B","BGP CMS IMMUNOSUPPRESSIVE MEDS",0))
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S I=+$P(BGPG(X),U,4)
 .S D=$P($G(^AUPNVMED(I,0)),U)
 .Q:'D
 .S C=$P($G(^PSDRUG(D,0)),U,2)
 .I C["AN" S G=1_"^^^^^IMMUNOSUPPRESSIVE MED: "_$P(^PSDRUG(D,0),U)_"  CLASS: "_$P(^PSDRUG(D,0),U,2) Q
 .I $D(^ATXAX(T,21,"B",D)) S G=1_"^^^^^IMMUNOSUPPRESSIVE MED: "_$P(^PSDRUG(D,0),U)_"  CLASS: "_$P(^PSDRUG(D,0),U,2) Q
 I G Q G
 Q ""
 ;
LEUKEMIA(P,BDATE,EDATE) ;EP
 NEW X
 S X=$$LASTDX^BGP3UTL1(P,"BGP CMS LEUKEMIA DXS",BDATE,EDATE)
 I X S $P(X,U,6)="LEUKEMIA  ["_$P(X,U,2)_"]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 Q ""
 ;
LYMPHOMA(P,BDATE,EDATE) ;EP
 NEW X
 S X=$$LASTDX^BGP3UTL1(P,"BGP CMS LYMPHOMA DXS",BDATE,EDATE)
 I X S $P(X,U,6)="LYMPHOMA  ["_$P(X,U,2)_"]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 Q ""
 ;
RADTHER(P,BDATE,EDATE) ;EP
 NEW X
 ;
 S X=$$LASTDXI^BGP3UTL1(P,"V58.0",BDATE,EDATE)
 I X S $P(X,U,6)="RADIATION THERAPY: [V58.0]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 S X=$$LASTPRC^BGP3UTL1(P,"BGP CMS RADIATION THER DXS",BDATE,EDATE)
 I X S $P(X,U,6)="RADIATION THERAPY: ["_$P(X,U,2)_"]  "_$$DATE^BGP3UTL($P(X,U,3)) Q X
 ;
 Q ""
 ;
PRIORHOS(P,BDATE,EDATE,VSIT) ;EP
 NEW X,D,G,V
 S G=""
 S X=0 F  S X=$O(^AUPNVINP("AC",P,X)) Q:X'=+X  D
 .S D=$P($P($G(^AUPNVINP(X,0)),U),".")
 .Q:D<BDATE
 .Q:D>EDATE
 .S V=$P(^AUPNVINP(X,0),U,3)
 .Q:V=VSIT
 .Q:$P($G(^AUPNVSIT(X,0)),U,3)="C"
 .Q:$$TRANS^BGP3CU(X)
 .S G=1_U_"Prior Hospital Stay: "_$$DATE^BGP3UTL($P($P(^AUPNVSIT(V,0),U),"."))_"-"_$$DATE^BGP3UTL(D)
 .Q
 Q G
 ;
HOS2DAYS(P,BDATE,EDATE) ;EP
 NEW X,D,G,V,C,Y,E
 S C=0,E=0
 S G=""
 S X=0 F  S X=$O(^AUPNVINP("AC",P,X)) Q:X'=+X  D
 .S D=$P($P($G(^AUPNVINP(X,0)),U),".")
 .Q:D<BDATE
 .Q:D>EDATE
 .S V=$P(^AUPNVINP(X,0),U,3)
 .;Q:$P($G(^AUPNVSIT(X,0)),U,3)="C"
 .;Q:$$TRANS^BGP3CU(X)
 .S C=C+$$LOS^APCLV(V),E=E+1,Y(E)=$$DATE^BGP3UTL($P($P(^AUPNVSIT(V,0),U),"."))_"-"_$$DATE^BGP3UTL(D)
 .Q
 I C>1 D  Q G
 .S G=1_U_"Hospitalized for "_C_" days: " S V=0 F  S V=$O(Y(V)) Q:V'=+V  S $P(G,U,3)=$P(G,U,3)_Y(V)_"; "
 Q ""
 ;
NURSHOME(P,BDATE,EDATE) ;EP
 NEW X,D,G,V,BGPG,Z,B
 S G=""
 K BGPG
 S A="BGPG(",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(BGPG(1)) Q ""
 S (X,G)=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  S V=$P(BGPG(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:$P(^AUPNVSIT(V,0),U,7)'="R"
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S G=1_U_"Nursing Home Visit: "_$$DATE^BGP3UTL($P($P(^AUPNVSIT(V,0),U),"."))
 .Q
 Q G
 ;
CHRDIAL(P,BDATE,EDATE) ;EP
 NEW G,X,D,V,Z,B,Q,T,T1
 S G=""
 NEW X,D,G,V,BGPG,Z,B,R
 S G=""
 K BGPG
 S A="BGPG(",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(BGPG(1)) Q ""
 S T=$O(^ATXAX("B","BGP CMS CHRONIC DIALYSIS DXS",0))
 S T1=$O(^ATXAX("B","BGP CMS CHRONIC DIALYSIS CPTS",0))
 S (X,G)=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  S V=$P(BGPG(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .S Z=0,Q="" F  S Z=$O(^AUPNVPOV("AD",V,Z)) Q:Z'=+Z!(Q)  D
 ..Q:'$D(^AUPNVPOV(Z,0))
 ..Q:'$$ICD^ATXCHK($P(^AUPNVPOV(Z,0),U),T,9)
 ..S Q=1_U_"DX: "_$$VAL^XBDIQ1(9000010.07,Z,.01)_" "_$$VAL^XBDIQ1(9000010.07,Z,.04)
 .Q:'Q
 .S Z=0,R="" F  S Z=$O(^AUPNVCPT("AD",V,Z)) Q:Z'=+Z!(R)  D
 ..Q:'$D(^AUPNVCPT(Z,0))
 ..Q:'$$ICD^ATXCHK($P(^AUPNVCPT(Z,0),U),T1,1)
 ..S R=1_U_"CPT: "_$$VAL^XBDIQ1(9000010.18,Z,.01)
 ..Q
 .Q:'R
 .S G=1_U_$P(Q,U,2)_" ; "_$P(R,U,2)_" "_$$DATE^BGP3UTL($$VD^APCLV(V))
 .Q
 Q G
 ;
WOUNDCAR(P,BDATE,EDATE) ;EP
 NEW G,X,D,V,Z,B,Q,T,T1,K
 S G=""
 NEW X,D,G,V,BGPG,Z,B,R
 S G=""
 K BGPG
 S A="BGPG(",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(BGPG(1)) Q ""
 S T=$O(^ATXAX("B","BGP CMS WOUND CARE DXS",0))
 S (X,G)=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  S V=$P(BGPG(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .S K=0
 .I $$CLINIC^APCLV(V)=11 S K=1
 .I $P(^AUPNVSIT(V,0),U,6)=$P($G(^BGPSITE(DUZ(2),0)),U,2) S K=1
 .Q:'K  ;not a home visit
 .S Z=0,Q="" F  S Z=$O(^AUPNVPOV("AD",V,Z)) Q:Z'=+Z!(Q)  D
 ..Q:'$D(^AUPNVPOV(Z,0))
 ..Q:'$$ICD^ATXCHK($P(^AUPNVPOV(Z,0),U),T,9)
 ..S G=1_U_"HOME WOUND CARE DX: "_$$VAL^XBDIQ1(9000010.07,Z,.01)_" "_$$VAL^XBDIQ1(9000010.07,Z,.04)
 .Q
 Q G
 ;
PSEUDO(H) ;EP
 NEW X,Y,Z,A,B,C,T,V
 S G=""
 I $G(H)="" Q ""
 I '$D(^AUPNVINP(H,0)) Q ""
 ;S T=$O(^ATXAX("B","BGP CMS BRONCHIECTASIS DXS",0))
 ;S X=$P(^AUPNVINP(H,0),U,12)
 I $$VAL^XBDIQ1(9000010.02,H,.12)="496." Q 1_U_"Bronchiectasis: Admitting DX: ["_$$VAL^XBDIQ1(9000010.02,H,.12)_"]"
 S V=$P(^AUPNVINP(H,0),U,3)
 S X=0 F  S X=$O(^AUPNVPOV("AD",V,X)) Q:X'=+X!(G)  D
 .Q:'$D(^AUPNVPOV(X,0))
 .Q:$P(^AUPNVPOV(X,0),U,12)="P"
 .I $$VAL^XBDIQ1(9000010.02,X,.01)'="496." Q
 .S G=1_U_"Bronchiectasis DX: "_$$VAL^XBDIQ1(9000010.07,X,.01)_" "_$$VAL^XBDIQ1(9000010.07,X,.04)
 .Q
 Q G
COPD(P,EDATE) ;EP
 ;now check for COPD ever
 S X=$$LASTDX^BGP3UTL1(P,"BGP COPD DXS",$$DOB^AUPNPAT(P),EDATE)
 I X Q 1_U_"COPD DX: "_$P(X,U,2)_"  "_$$DATE^BGP3UTL($P(X,U,3))_"  "_$$VAL^XBDIQ1(9000010.07,$P(X,U,5),.04)
 Q ""
 ;
FLUVAX(P,BDATE,EDATE,BGPDD,BGPY) ;EP
 NEW BGPG,BGPX,BGPC,X,Y,Z,A,B,C,R,C1,T
 S BGPC=0
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .S Y=$P($G(^AUPNVIMM(X,0)),U)
 .Q:'Y
 .S C=$P($G(^AUTTIMM(Y,0)),U,3)
 .I C'=88,C'=15,C'=16,C'=111 Q
 .S D=$P(^AUPNVIMM(X,0),U,3)
 .S D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="Immunization CVX: "_C_"  "_$$DATE^BGP3UTL($P($P(^AUPNVSIT($P(^AUPNVIMM(X,0),U,3),0),U),"."))
 K BGPG S %=P_"^ALL PROCEDURE 99.52;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .Q:'$D(^AUPNVPRC(Y,0))
 .S Y=$P(^AUPNVPRC(Y,0),U,1)
 .Q:'Y
 .S D=$P(BGPG(X),U)
 .S BGPC=BGPC+1,BGPY(BGPC)="Procedure 99.52:   "_$$DATE^BGP3UTL(D)
 .Q
 K BGPG S %=P_"^ALL DX [BGP FLU IZ DXS;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .Q:'$D(^AUPNVPOV(Y,0))
 .S Y=$P(^AUPNVPOV(Y,0),U,1)
 .Q:'Y
 .S D=$P(BGPG(X),U)
 .S BGPC=BGPC+1,BGPY(BGPC)="Diagnosis "_$P(BGPG(X),U,2)_":  "_$$DATE^BGP3UTL(D)
 .Q
 ;now check for cpts
 S T=$O(^ATXAX("B","BGP CPT FLU",0))
 S X=0 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S C1=$$VAL^XBDIQ1(9000010.18,X,.01)
 .S C=$P(^AUPNVCPT(X,0),U)
 .I '$$ICD^ATXCHK(C,T,1) Q  ;not a flu cpt
 .S D=$P(^AUPNVCPT(X,0),U,3)
 .S D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="CPT: "_C1_"  "_$$DATE^BGP3UTL(D)
 .Q
 ;tran codes
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S C1=$$VAL^XBDIQ1(9000010.33,X,.07)
 .S C=$P(^AUPNVTC(X,0),U,7)
 .I '$$ICD^ATXCHK(C,T,1) Q  ;not a flu cpt
 .S D=$P(^AUPNVTC(X,0),U,3)
 .S D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="Tran code: "_C1_"  "_$$DATE^BGP3UTL(D)
 .Q
 ;Refusals?
 K BGPI F X=88,15,16,111 S Y=$O(^AUTTIMM("C",X,0)) I Y S BGPI(Y)=""
 S X=0 F  S X=$O(^AUPNPREF("AA",P,9999999.14,X)) Q:X'=+X  D
 .Q:'$D(BGPI(X))
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,9999999.14,X,D)) Q:D'=+D  D
 ..S I=0 F  S I=$O(^AUPNPREF("AA",P,9999999.14,X,D,I)) Q:I'=+I  D
 ...Q:"NR"'[$P(^AUPNPREF(I,0),U,7)
 ...Q:(9999999-D)<BDATE
 ...Q:(9999999-D)>EDATE
 ...S BGPC=BGPC+1,BGPY(BGPC)="REFUSAL: "_$$VAL^XBDIQ1(9000022,I,.07)_" - "_$$VAL^XBDIQ1(9000022,I,.04)_"   "_$$DATE^BGP3UTL($P(^AUPNPREF(I,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,I,1101)
 ..Q
 .Q
 S (X,G)=0,Y=$O(^AUTTIMM("C",88,0)) F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="REFUSAL: Immunization Package CVX 88 "_$$DATE^BGP3UTL(D)
 S (X,G)=0,Y=$O(^AUTTIMM("C",15,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="REFUSAL: Immunization Package CVX 15 "_$$DATE^BGP3UTL(D)
 S (X,G)=0,Y=$O(^AUTTIMM("C",16,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="REFUSAL: Immunization Package CVX 16 "_$$DATE^BGP3UTL(D)
 S (X,G)=0,Y=$O(^AUTTIMM("C",111,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:D<BDATE
 .Q:D>EDATE
 .S BGPC=BGPC+1,BGPY(BGPC)="REFUSAL: Immunization Package CVX 111 "_$$DATE^BGP3UTL(D)
 ;Contraindication new in 8.0
 F BGPZ=15,16,88,111 S X=$$FLCONT^BGP3D37(P,BGPZ,$$DOB^AUPNPAT(DFN),EDATE) Q:X]""
 I X]"" S BGPC=BGPC+1,BGPY(BGPC)="NMI: "_$$DATE^BGP3UTL($P(X,U))_" "_$P(X,U,2)
 ;now check for bone marrow Contraindication
 S X=$$LASTDXI^BGP3UTL1(P,"357.0",$$FMADD^XLFDT(BGPDD,-365),BGPDD)
 I X S BGPC=BGPC+1,BGPY(BGPC)="Bone Marrow Contraindication: ["_$P(X,U,2)_"] "_$$DATE^BGP3UTL($P(X,U,3))
 S X=$$LASTPRC^BGP3UTL1(P,"BGP CMS BONE MARROW PROC",$$FMADD^XLFDT(BGPDD,-365),BGPDD)
 I X S BGPC=BGPC+1,BGPY(BGPC)="Bone Marrow Contraindication: ["_$P(X,U,2)_"] "_$$DATE^BGP3UTL($P(X,U,3))
 S X=$$CPT^BGP3DU(P,$$FMADD^XLFDT(BGPDD,-365),BGPDD,$O(^ATXAX("B","BGP CMS BONE MARROW CPT",0)),6)
 I X S BGPC=BGPC+1,BGPY(BGPC)="Bone Marrow Contraindication: ["_$P(X,U,3)_"] "_$$DATE^BGP3UTL($P(X,U,2))
 Q