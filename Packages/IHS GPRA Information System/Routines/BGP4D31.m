BGP4D31 ; IHS/CMI/LAB - indicator C ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
I37 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPHOSP)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPACTUP S BGPD1=1
 I BGPACTCL S BGPD2=1
 I 'BGPD2 S BGPSTOP=1 Q
 S BGPN1=$$V2ASTH(DFN,BGP365,BGPEDATE)
 I BGPN1 S BGPHOSP=$$HOSP(DFN,BGP365,BGPEDATE) I BGPHOSP S BGPN2=1
 S BGPVALUE=$S(BGPD1:"UP",1:"")_";"_$S(BGPD2:"AC",1:"")_" "_$S(BGPN1:$$LAST(DFN,BGP365,BGPEDATE),1:"")_" "_$S(BGPHOSP:"H "_$$DATE^BGP3UTL($P(BGPHOSP,U,2)),1:"")
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
V2ASTH(P,BDATE,EDATE) ;
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP ASTHMA DXS",0))
 I 'T Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G>2)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .Q:'D
 .S G=G+1
 .Q
 I G>1 Q 1
 S EDATE1=9999999-EDATE-1
 S D=$O(^AUPNVAST("AS",P,EDATE1))
 I 'D Q ""
 I D>(9999999-BDATE) Q ""
 S LAST="",E=0 F  S E=$O(^AUPNVAST("AS",P,D,E)) Q:E'=+E  S LAST=E
 I 'LAST Q ""
 S S=^AUPNVAST("AS",P,D,LAST)
 I S>1 Q 1
 Q ""
LAST(P,BDATE,EDATE) ;last asthma dx
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP ASTHMA DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q $$DATE^BGP3UTL($P(BGPG(1),U))_" "_$P(BGPG(1),U,2)
 Q ""
HOSP(P,BDATE,EDATE) ;
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP ASTHMA DXS",0))
 I 'T Q ""
 S (X,G,H)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:$P(^AUPNVSIT(V,0),U,7)'="H"
 .S %=$$PRIMPOV^APCLV(V,"I") I $$ICD^ATXCHK(%,T,9) S G=1,H=$P($P(^AUPNVSIT(V,0),U),".")
 .Q
 Q G_"^"_H
BI() ;
 Q $S($O(^AUTTIMM(0))>100:1,1:0)
PNEU(P,BDATE,EDATE) ;EP
 K BGPG
 S ED=EDATE
 S EDATE=$$FMTE^XLFDT(EDATE)
 S BDATE=$$FMTE^XLFDT(BDATE)
 S X=P_"^LAST IMM "_$S($$BI:33,1:19)_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" Imm 33"
 S X=P_"^LAST IMM 100;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" Imm 100"
 S X=P_"^LAST IMM 109;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" Imm 109"
 K BGPG S %=P_"^LAST PROCEDURE 99.55;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" 99.55"
 K BGPG S %=P_"^LAST DX V03.82;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" V03.82"
 K BGPG S %=P_"^LAST DX V03.89;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" V03.89"
 K BGPG S %=P_"^LAST DX V06.6;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q $$DATE^BGP4UTL($P(BGPG(1),U))_" V06.6"
 S %="",E=+$$CODEN^ICPTCOD(90732),%=$$CPTI^BGPDU(P,$$FMADD^XLFDT(ED,-365),ED,E) I %]"" Q $$DATE^BGP4UTL($P(%,U,2))_" 90732"
 S %="",E=+$$CODEN^ICPTCOD(90669),%=$$CPTI^BGPDU(P,$$FMADD^XLFDT(ED,-365),ED,E) I %]"" Q $$DATE^BGP4UTL($P(%,U,2))_" 90669"
 S G=$$REFUSAL^BGP4UTL1(P,9999999.14,$O(^AUTTIMM("C",33,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 Q $$DATE^BGP4UTL($P(G,U,2))_" Refused"
 S G=$$REFUSAL^BGP4UTL1(P,9999999.14,$O(^AUTTIMM("C",100,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 Q $$DATE^BGP4UTL($P(G,U,2))_" Refused"
 S G=$$REFUSAL^BGP4UTL1(P,9999999.14,$O(^AUTTIMM("C",109,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 Q $$DATE^BGP4UTL($P(G,U,2))_" Refused"
 S (X,G)=0,Y=$O(^AUTTIMM("C",33,0)) F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G Q $$DATE^BGP4UTL($P(G,U,2))_" Refusal Imm pkg"
 S (X,G)=0,Y=$O(^AUTTIMM("C",100,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G Q $$DATE^BGP4UTL($P(G,U,2))_" Refusal Imm pkg"
 S (X,G)=0,Y=$O(^AUTTIMM("C",109,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G Q $$DATE^BGP4UTL($P(G,U,2))_" Refusal Imm pkg"
 Q ""