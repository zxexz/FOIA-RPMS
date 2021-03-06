BGP7D3C ; IHS/CMI/LAB - VARIOUS UTILS
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
FIRSTPDX(P,BDATE,EDATE) ;EP
 NEW BGPG,G,Y,X,T,E,BGPR
 K BGPG
 S Y="BGPG("
 S BDATE=$G(BDATE)
 I BDATE="" S BDATE=$P(^DPT(P,0),U,3)
 S BGPR=""
 S X=P_"^FIRST DX [BGP PREGNANCY DIAGNOSES 2;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPR=$P(BGPG(1),U)
 K BGPG
 S BGPG=$$FIRSTPRC^BGP7UTL1(P,"BGP PREGNANCY ICD PROCEDURES",BDATE,EDATE)
 I BGPG]"",$P(BGPG,U,3)<BGPR S BGPR=$P(BGPG,U,3)
 S X=$$FIRSTCPT^BGP7UTL1(P,"BGP PREGNANCY CPT CODES",BDATE,EDATE)
 I X,$P(X,U,1)<BGPR S BGPR=$P(X,U,1)
 Q BGPR
LASTVD(P,BDATE,EDATE) ;EP
 I '$D(^AUPNVSIT("AC",P)) Q ""
 NEW VISIT
 S A="VISIT(",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(VISIT(1)) Q ""
 S (X,G)=0 F  S X=$O(VISIT(X)) Q:X'=+X!(G)  S V=$P(VISIT(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S G=1
 .Q
 Q G
