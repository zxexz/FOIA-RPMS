BGP3PDLT ; IHS/CMI/LAB - print ind 1 03 Jul 2010 7:40 AM ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
 ;
I1AGE ;EP  special age tallies
 Q:BGPRTYPE'=4
 Q:BGPINDH="I"
 Q:$G(BGPSUMON)
 S BGPHD1="TOTAL ACTIVE CLINICAL 5 AND OLDER",BGPHD2="Total # AC Pts =>5"
 I '$G(BGPSUMON) D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPINDH(BGPIC,53,1,0) W:$D(^BGPINDH(BGPIC,53,2,0)) !,^BGPINDH(BGPIC,53,2,0)  D HPA^BGP3DPH
 K BGPDAC,BGPDAP,BGPDAB,BGPPAD S BGPPAD=7 S (C,D)=0 F BGPX="A","B","C","D","E","F","G","H" D I1AGE1,I1AGE2
 D I1AGEP
MALE ;
 S BGPHD1="TOTAL MALE ACTIVE CLINICAL 5 AND OLDER",BGPHD2="Total # Male AC Pts =>5"
 I '$G(BGPSUMON) D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPINDH(BGPIC,53,1,0) W:$D(^BGPINDH(BGPIC,53,2,0)) !,^BGPINDH(BGPIC,53,2,0)  D HPA^BGP3DPH
 K BGPDAC,BGPDAP,BGPDAB,BGPPAD S BGPPAD=8 S (C,D)=0 F BGPX="A","B","C","D","E","F","G","H" D I1AGE1,I1AGE2
 D I1AGEP
FEMALE ;
 S BGPHD1="TOTAL FEMALE ACTIVE CLINICAL 5 AND OLDER",BGPHD2="Total # Female AC Pts =>5"
 I '$G(BGPSUMON) D HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPINDH(BGPIC,53,1,0) W:$D(^BGPINDH(BGPIC,53,2,0)) !,^BGPINDH(BGPIC,53,2,0)  D HPA^BGP3DPH
 K BGPDAC,BGPDAP,BGPDAB,BGPPAD S BGPPAD=9 S (C,D)=0 F BGPX="A","B","C","D","E","F","G","H" D I1AGE1,I1AGE2
 D I1AGEP
 Q
I1AGE1 ;
 ;gather up all #'s
 S C=C+1
 S BGPF=156_"."_BGPPAD_".1"_BGPX S BGPPC=$O(^BGPINDHC("OR",BGPF,0))
 S BGPDF=$P(^BGPINDHC(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90550.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V^BGP3DP1C(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V^BGP3DP1C(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V^BGP3DP1C(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPINDHC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90550.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V^BGP3DP1C(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V^BGP3DP1C(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V^BGP3DP1C(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF=156_"."_BGPPAD_".2"_BGPX  S BGPPC=$O(^BGPINDHC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDHC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90550.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V^BGP3DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V^BGP3DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V^BGP3DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U,2)*100),1:"")
 Q
I1AGEP ;
 W !,"CURRENT REPORT PERIOD"
 W !,BGPHD2
 S T=23 F X=1:1:8 S V=$P(BGPDAC(X),U) W ?T,$$C(V,0,6) S T=T+7
 W !,"# w/ physical activity",!,?2,"assessment"
 S T=23 F X=1:1:8 S V=$P(BGPDAC(X),U,2) W ?T,$$C(V,0,6) S T=T+7
 W !,"% w/ physical activity",!,?2,"assessment"
 S T=22 F X=1:1:8 S V=$P(BGPDAC(X),U,3) W ?T,$J(V,6,1) S T=T+7
 W !!,"# w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=23 F X=1:1:8 S V=$P(BGPDAC(X),U,4) W ?T,$$C(V,0,6) S T=T+7
 W !,"% w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S V=$P(BGPDAC(X),U,5) W ?T,$J(V,6,1) S T=T+7
PR ; 
 I $Y>(BGPIOSL-13) D:'$G(BGPSUMON) HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPINDH(BGPIC,53,1,0) W:$D(^BGPINDH(BGPIC,53,2,0)) !,^BGPINDH(BGPIC,53,2,0) D HPA^BGP3DPH
 W !!,"PREVIOUS YEAR PERIOD"
 W !,BGPHD2
 S T=23 F X=1:1:8 S V=$P(BGPDAP(X),U) W ?T,$$C(V,0,6) S T=T+7
 W !,"# w/ physical activity",!,?2,"assessment"
 S T=23 F X=1:1:8 S V=$P(BGPDAP(X),U,2) W ?T,$$C(V,0,6) S T=T+7
 W !,"% w/ physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S V=$P(BGPDAP(X),U,3) W ?T,$J(V,6,1) S T=T+7
 W !!,"# w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=23 F X=1:1:8 S V=$P(BGPDAP(X),U,4) W ?T,$$C(V,0,6) S T=T+7
 W !,"% w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S V=$P(BGPDAP(X),U,5) W ?T,$J(V,6,1) S T=T+7
 ;percentage changes
 W !!,"CHANGE FROM PREV YR %"
 W !,"# w/ physical activity",!,?2,"assessment"
 S T=22 F X=1:1:8 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+7
 W !,"w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+7
BL ;
 D:'$G(BGPSUMON) HEADER^BGP3DPH Q:BGPQUIT  W !,^BGPINDH(BGPIC,53,1,0) W:$D(^BGPINDH(BGPIC,53,2,0)) !,^BGPINDH(BGPIC,53,2,0) D HPA^BGP3DPH
 W !!,"BASELINE REPORT PERIOD"
 W !,BGPHD2
 S T=23 F X=1:1:8 S V=$P(BGPDAB(X),U) W ?T,$$C(V,0,6) S T=T+7
 W !,"# w/ physical activity",!,?2,"assessment"
 S T=23 F X=1:1:8 S V=$P(BGPDAB(X),U,2) W ?T,$$C(V,0,6) S T=T+7
 W !,"% w/ physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S V=$P(BGPDAB(X),U,3) W ?T,$J(V,6,1) S T=T+7
 W !!,"# w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=23 F X=1:1:8 S V=$P(BGPDAB(X),U,4) W ?T,$$C(V,0,6) S T=T+7
 W !,"% w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S V=$P(BGPDAB(X),U,5) W ?T,$J(V,6,1) S T=T+7
 ;percentage changes
 W !!,"CHANGE FROM BASE YR %"
 W !,"# w/ physical activity",!,?2,"assessment"
 S T=22 F X=1:1:8 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+7
 W !,"w/ exercise educ w/",!?2,"% of physical activity",!?2,"assessment"
 S T=22 F X=1:1:8 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+7
 Q
SETN ;set numerator fields
 S BGPCYN=$$V^BGP3DP1C(1,BGPRPT,N,P)
 S BGPPRN=$$V^BGP3DP1C(2,BGPRPT,N,P)
 S BGPBLN=$$V^BGP3DP1C(3,BGPRPT,N,P)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 I T=1 Q $P($G(^BGPGPDCH(R,N)),U,P)
 I T=2 Q $P($G(^BGPGPDPH(R,N)),U,P)
 I T=3 Q $P($G(^BGPGPDBH(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPGPDCH(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPGPDPH(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPGPDBH(X,N)),U,P)
 .Q
 Q C
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X