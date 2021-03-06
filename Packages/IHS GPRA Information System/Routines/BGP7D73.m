BGP7D73 ; IHS/CMI/LAB - measure 31 ;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
 ;
ID ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 S BGPVALUE=""
 I BGPACTUP,BGPAGEB>22 S BGPD1=1
 I BGPACTCL,BGPACTUP,BGPAGEB>22 S BGPD2=1
 I BGPACTCL,$$CHD^BGP7D729(DFN,BGP365,BGPEDATE) S BGPIHD=1,BGPD3=1
 I '(BGPD1+BGPD2+BGPD3) S BGPSTOP=1 Q
CHEL ;EP - called from elder care
 S BGPVALUE=$$CHOL(DFN,$$FMADD^XLFDT(BGPEDATE,-(5*365)),BGPEDATE)
 I $P(BGPVALUE,U,1)]"" S BGPN1=1
 S R=$P(BGPVALUE,U,3),R=+R I R,R>239 S BGPN2=1
 S BGPLDL=$$LDL^BGP7D2(DFN,$$FMADD^XLFDT(BGPEDATE,-(5*365)),BGPEDATE) ;date^value
 I $P(BGPLDL,U)=1 S BGPN3=1
 I $P(BGPLDL,U,3)]"" D
 .S V=$P(BGPLDL,U,3)
 .I V["CPT" S:V["3048F" BGPN4=1 S:V["G9271" BGPN4=1 Q
 .S V=+V
 .I 'V Q
 .I V]"",+V'>99 S BGPN4=1
 .I +V>99,+V<131 S BGPN5=1
 .I +V>130,+V<161 S BGPN6=1
 .I +V>160 S BGPN7=1
 S V=$S(BGPD1:"UP",1:"")_$S(BGPD2:",AC",1:"")_$S(BGPD3:",CHD",1:"")_"|||"
 I BGPVALUE]"" S V=V_"CHOL: "_$$DATE^BGP7UTL($P(BGPVALUE,U,2))_" "_$P(BGPVALUE,U,3)
 I $P(BGPLDL,U) S V=V_$S(BGPVALUE]"":"; ",1:"") S V=V_"LDL: "_$$DATE^BGP7UTL($P(BGPLDL,U,2))_" "_$P(BGPLDL,U,3)
 S BGPVALUE=V
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPLDL
 Q
CHOL(P,BDATE,EDATE,NORES) ;EP
 K BGPG,BGPT,BGPC
 S BGPC=0
 S NORES=$G(NORES)
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP TOTAL CHOLESTEROL LOINC",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT CHOLESTEROL TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPT(D,BGPC)=$P(^AUPNVLAB(X,0),U,4) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...S BGPC=BGPC+1,BGPT(D,BGPC)=R
 ...Q
 ; now got though and set return value of done 1 or 0^VALUE^date
 S D=0,G="" F  S D=$O(BGPT(D)) Q:D'=+D!(G]"")  D
 .S C=0 F  S C=$O(BGPT(D,C)) Q:C'=+C!(G]"")  D
 ..S X=BGPT(D,C)
 ..I $E(X)'=+$E(X) Q
 ..S G=(9999999-D)_U_X
 ..Q
 I 'NORES,G]"" Q 1_U_G  ;IF WANT A RESULT AND THERE IS ONE QUIT
 S E=+$$CODEN^ICPTCOD(82465),%=$$CPTI^BGP7DU(P,BDATE,EDATE,E) I %]"" Q 1_U_$P(%,U,2)_"^CPT 82465"
 S E=+$$CODEN^ICPTCOD(82465),%=$$TRANI^BGP7DU(P,BDATE,EDATE,E) I %]"" Q 1_U_$P(%,U,2)_"^TRAN 82465"
 Q ""
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
