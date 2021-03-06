BGP1D87 ; IHS/CMI/LAB - measure calc ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
IHFL ;EP - heart failure/LVS
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 I 'BGPACTCL S BGPSTOP=1 Q  ;must be active clinical
 ;I BGPAGEB<18 S BGPSTOP=1 Q  ;18 and older
 S BGPHHF=$$HFADM(DFN,BGPBDATE,BGPEDATE)
 I 'BGPHHF S BGPSTOP=1 Q  ;no hosp stay for heart failure
 S BGPAD=$P(BGPHHF,U,2)
 I $$AGE^AUPNPAT(DFN,BGPAD)<18 S BGPSTOP=1 Q  ;less than 18 on admission date
 S BGPD1=1
 S BGPDD=$P(BGPHHF,U,4)
 S BGPNV=$$LSV(DFN,$$FMADD^XLFDT(BGPDD,-365),BGPDD,BGPAD)
 S BGPN1=+BGPNV
 S BGPVALUE=$S(BGPD1:"AC",1:"")_"|||"_"Admission: "_$$DATE^BGP1UTL($P(BGPHHF,U,2))_" LVS: "_$S(BGPN1:$P(BGPNV,U,3)_" "_$P(BGPNV,U,4)_" "_$P(BGPNV,U,5),1:"NOT DOCUMENTED")
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPAD,BGPDD,BGPNV,BGPHHF
 Q
HFADM(P,BDATE,EDATE) ;
 ;look for any H with HF discharge dx
 K ^TMP($J,"A"),G
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q 0  ;no HOSP
 S T=$O(^ATXAX("B","BGP HEART FAILURE DXS",0))
 S (BGPX,G,M,D,E)=0 F  S BGPX=$O(^TMP($J,"A",BGPX)) Q:BGPX'=+BGPX  S V=$P(^TMP($J,"A",BGPX),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:$P(^AUPNVSIT(V,0),U,7)'="H"
 .;Q:$P(^AUPNVSIT(V,0),U,6)'=DUZ(2)
 .;Q:"CV"[$P(^AUPNVSIT(V,0),U,3)
 .S H=$O(^AUPNVINP("AD",V,0)) D  Q:'B
 ..S B=0
 ..I 'H Q
 ..Q:$P($P(^AUPNVINP(H,0),U),".")>EDATE
 ..Q:$$AMA^BGP1D72(H)  ;ama
 ..Q:$$TRANS^BGP1D72(H)  ;transferred
 ..Q:$$EXPIRED^BGP1D72(H)  ;died
 ..S B=1
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .I D D
 ..;skip the hospital admission if there is a dx of V66.7
 ..S (A,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(A)  I $D(^AUPNVPOV(Y,0)) S %=$$VAL^XBDIQ1(9000010.07,Y,.01) I %="V66.7" S A=1
 ..Q:A
 ..;skip if there was a LVAD/heart transplant procedure adm date to discharge date
 ..S A=$$LASTPRC^BGP1UTL1(P,"BGP CRS LVAD/HEART TRANS PROC",$P($P(^AUPNVSIT(V,0),U),"."),$P($P(^AUPNVINP(H,0),U),"."))
 ..I A Q  ;has procedure type
 ..S G=G+1,G($P($P(^AUPNVSIT(V,0),U),"."))=V ;got one visit
 I 'G Q G
 S D=$O(G(0)),V=G(D),H=$O(^AUPNVINP("AD",V,0))
 Q 1_U_$O(G(0))_U_V_U_$S(H:$P($P(^AUPNVINP(H,0),U),"."),1:"")_U_H
 ;
LSV(P,BDATE,EDATE,ADMDATE) ;
 NEW BGPG
 S BGPG=""
 S BGPG=$$CEFMEAS(P,BDATE,EDATE)
 I BGPG Q BGPG
 S BGPG=$$LASTPRC^BGP1UTL1(P,"BGP CMS EJECTION FRACTION PROC",BDATE,EDATE)
 I BGPG Q 1_"^"_$P(BGPG,U,3)_"^"_$$DATE^BGP1UTL($P(BGPG,U,3))_"^"_"Procedure: "_$P(BGPG,U,2)_"^^"_9000010.08_"^"_$P(BGPG,U,5)_"^"_$P(^AUPNVPRC($P(BGPG,U,5),0),U,3)
 S BGPG=$$CPT^BGP1DU(P,BDATE,EDATE,$O(^ATXAX("B","BGP CMS EJECTION FRACTION CPTS",0)),6)
 I BGPG Q 1_"^"_$P(BGPG,U,2)_"^"_$$DATE^BGP1UTL($P(BGPG,U,2))_"^"_"CPT: "_$P(BGPG,U,3)_"^^"_9000010.18_"^"_$P(BGPG,U,4)_"^"_$P(^AUPNVCPT($P(BGPG,U,4),0),U,3)
 S BGPG=$$RCIS^BGP1UTL2(P,ADMDATE,EDATE,"CARDIOVASCULAR DISORDERS","EVALUATION AND/OR MANAGEMENT;NON-SURGICAL PROCEDURES;DIAGNOSTIC IMAGING")
 I BGPG Q BGPG
 S BGPG=$$LASTPRC^BGP1UTL1(P,"BGP CMS ECHOCARDIOGRAM PROCS",BDATE,EDATE)
 I BGPG Q 1_"^"_$P(BGPG,U,3)_"^"_$$DATE^BGP1UTL($P(BGPG,U,3))_"^"_"Procedure: "_$P(BGPG,U,2)_"^^"_9000010.08_"^"_$P(BGPG,U,5)_"^"_$P(^AUPNVPRC($P(BGPG,U,5),0),U,3)
 S BGPG=$$LASTPRC^BGP1UTL1(P,"BGP CMS NUCLEAR MEDICINE PROCS",BDATE,EDATE)
 I BGPG Q 1_"^"_$P(BGPG,U,3)_"^"_$$DATE^BGP1UTL($P(BGPG,U,3))_"^"_"Procedure: "_$P(BGPG,U,2)_"^^"_9000010.08_"^"_$P(BGPG,U,5)_"^"_$P(^AUPNVPRC($P(BGPG,U,5),0),U,3)
 S BGPG=$$LASTPRC^BGP1UTL1(P,"BGP CMS CARDIAC CATH/LV PROCS",BDATE,EDATE)
 I BGPG Q 1_"^"_$P(BGPG,U,3)_"^"_$$DATE^BGP1UTL($P(BGPG,U,3))_"^"_"Procedure: "_$P(BGPG,U,2)_"^^"_9000010.08_"^"_$P(BGPG,U,5)_"^"_$P(^AUPNVPRC($P(BGPG,U,5),0),U,3)
 Q BGPG
 ;
CEFMEAS(P,BDATE,EDATE) ;
 NEW %,X,Y,BGPX,E
 K BGPX
 S %="",Y="BGPX("
 S X=P_"^LAST MEAS CEF;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I $D(BGPX(1)) Q 1_"^"_$P(BGPX(1),U)_"^"_$$DATE^BGP1UTL($P(BGPX(1),U))_"^"_"CEF Measurement"_"^"_$P(BGPX(1),U,2)_"^"_9000010.01_"^"_+$P(BGPX(1),U,4)_"^"_$P(BGPX(1),U,5)
 Q ""
