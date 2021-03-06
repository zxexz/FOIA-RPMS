BGP8DP14 ; IHS/CMI/LAB - print ind 19 AGE DIST ;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
 ;
I1AGE ;EP  special age tallies
 Q:$G(BGPSUMON)
 Q:BGPRTYPE=9
 Q:BGPRTYPE=7
 S BGPHD1="ACTIVE CLINICAL PATIENTS 65+ w/ no hospice",BGPHD2="AC Patients 65+ w/ no hospice"
 D:'$G(BGPSUMON) HEADER^BGP8DPH Q:BGPQUIT  W !,^BGPINDR(BGPIC,53,1,0) W:$D(^BGPINDR(BGPIC,53,2,0)) !,^BGPINDR(BGPIC,53,2,0)  D H10^BGP8DPH
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G)=0 F BGPA="A","B","C" D I1AGE1,I1AGE2
 D I1AGEP
 Q
I1AGE1 ;
 ;gather up all #'s
 S C=C+1
 S BGPF="295.4.1"_BGPA S BGPPC=$O(^BGPINDRC("OR",BGPF,0))
 S BGPDF=$P(^BGPINDRC(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90560.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V^BGP8DP1C(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V^BGP8DP1C(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V^BGP8DP1C(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPINDRC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90560.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V^BGP8DP1C(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V^BGP8DP1C(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V^BGP8DP1C(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF="295.5.1"_BGPA S BGPPC=$O(^BGPINDRC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDRC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90560.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V^BGP8DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,1):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V^BGP8DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,1):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V^BGP8DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,1):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U)*100),1:"")
 Q
I1AGE3 ;
 S E=E+1
 S BGPF=BGPX_"1C" S BGPPC=$O(^BGPINDRC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDRC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90560.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,6)=$$V^BGP8DP1C(1,BGPRPT,N,P),$P(BGPDAC(E),U,7)=$S($P(BGPDAC(E),U,1):($P(BGPDAC(E),U,6)/$P(BGPDAC(E),U)*100),1:"")
 S $P(BGPDAP(E),U,6)=$$V^BGP8DP1C(2,BGPRPT,N,P),$P(BGPDAP(E),U,7)=$S($P(BGPDAP(E),U,1):($P(BGPDAP(E),U,6)/$P(BGPDAP(E),U)*100),1:"")
 S $P(BGPDAB(E),U,6)=$$V^BGP8DP1C(3,BGPRPT,N,P),$P(BGPDAB(E),U,7)=$S($P(BGPDAB(E),U,1):($P(BGPDAB(E),U,6)/$P(BGPDAB(E),U)*100),1:"")
 Q
I1AGEP ;
 W !,"CURRENT REPORT PERIOD"
 W !,BGPHD2
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !!,"# w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Exposure to 1+",!?2,"1 High-Risk Med"
 S T=32 F X=1:1:3 S V=$P(BGPDAC(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=32 F X=1:1:3 S V=$P(BGPDAC(X),U,5) W ?T,$J(V,6,1) S T=T+12
PR ; 
 ;D:'$G(BGPSUMON) HEADER^BGP8DPH
 ;Q:BGPQUIT
 ;W !,^BGPINDR(BGPIC,53,1,0) W:$D(^BGPINDR(BGPIC,53,2,0)) !,^BGPINDR(BGPIC,53,2,0) D H4^BGP8DPH
 W !!,"PREVIOUS YEAR PERIOD"
 W !,BGPHD2
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !!,"# w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=32 F X=1:1:3 S V=$P(BGPDAP(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=32 F X=1:1:3 S V=$P(BGPDAP(X),U,5) W ?T,$J(V,6,1) S T=T+12
 ;percentage changes
 W !!,"CHANGE FROM PREV YR %"
 W !,"# w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
BL ;
 D:'$G(BGPSUMON) HEADER^BGP8DPH Q:BGPQUIT  W !,^BGPINDR(BGPIC,53,1,0) W:$D(^BGPINDR(BGPIC,53,2,0)) !,^BGPINDR(BGPIC,53,2,0) D H10^BGP8DPH
 W !,"BASELINE REPORT PERIOD"
 W !,BGPHD2
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !!,"# w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=32 F X=1:1:3 S V=$P(BGPDAB(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=32 F X=1:1:3 S V=$P(BGPDAB(X),U,5) W ?T,$J(V,6,1) S T=T+12
 ;percentage changes
 W !!,"CHANGE FROM BASE YR %"
 W !,"# w/ Exposure to 1+",!?2,"High-Risk Med"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# w/ Exposure to Multiple",!?2,"High-Risk Meds"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
