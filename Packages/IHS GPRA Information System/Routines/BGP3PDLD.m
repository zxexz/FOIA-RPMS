BGP3PDLD ; IHS/CMI/LAB - IHS gpra print ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
S(Y,F,P) ;EP set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
DEVSUM ;EP
 I BGPRTYPE'=1 Q  ;national gpra only
 Q:$G(BGPCPPL)
 I $G(BGPNPL) Q  ;not on lists
 S BGPQUIT="",BGPGPG=0
 S BGPSUMP=1
 D:'$G(BGPSUMON) H1
 D S("GPRA DEVELOPMENTAL MEASURES",1,1)
 D S("---------------------------",1,1)
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL DEVEL",BGPC)) Q:BGPC'=+BGPC  D
 .S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,0))
 ..Q:$P($G(^BGPINDHC(BGPPC,22)),U,13)  ;part measures only
 ..S X=""
 ..I $P(^BGPINDHC(BGPPC,0),U,4)["014.A"!($P(^BGPINDHC(BGPPC,0),U,4)["023.")!($P(^BGPINDHC(BGPPC,0),U,4)["016")!($P($G(^BGPINDHC(BGPPC,19)),U,13)) D  I 1
 ...S X=" "_$P(^BGPINDHC(BGPPC,22),U,4)
 ...I $P(^BGPINDHC(BGPPC,22),U,7)]"" D S(X,1,1) S X=" "_$P(^BGPINDHC(BGPPC,22),U,7)
 ...I $P(^BGPINDHC(BGPPC,22),U,12)]"" D S(X,1,1) S X=" "_$P(^BGPINDHC(BGPPC,22),U,12)
 ...S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U)
 ...S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,2)
 ...S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,3)
 ...S $P(X,U,5)=$P(^BGPINDHC(BGPPC,22),U,2),$P(X,U,6)=$P(^BGPINDHC(BGPPC,22),U,3)
 ...D S(X,1,1)
 ..E  D
 ...S X=" "_$P(^BGPINDHC(BGPPC,22),U,4)
 ...I $P(^BGPINDHC(BGPPC,22),U,7)]"" D S(X,1,1) S X=" "_$P(^BGPINDHC(BGPPC,22),U,7)
 ...I $P(^BGPINDHC(BGPPC,22),U,12)]"" D S(X,1,1) S X=" "_$P(^BGPINDHC(BGPPC,22),U,12)
 ...S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U)_"%"
 ...S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,2)_"%"
 ...S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,3)_"%"
 ...S $P(X,U,5)=$TR($P(^BGPINDHC(BGPPC,22),U,2),"$","^"),$P(X,U,6)=$P(^BGPINDHC(BGPPC,22),U,3)
 ...D S(X,1,1)
 ...S X="" I $P(^BGPINDHC(BGPPC,22),U,9)]""!($P(^BGPINDHC(BGPPC,22),U,10)]"")!($P(^BGPINDHC(BGPPC,22),U,11)]"") S $P(X,U,5)=$TR($P(^BGPINDHC(BGPPC,22),U,10),"$","^") D
 ....S $P(X,U,6)=$P(^BGPINDHC(BGPPC,22),U,11)
 ...I X]"" D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="* Not GPRA Developmental measure but included to show percentage of" D S(X,1,1)
 D S("refusals with respect to GPRA Developmental measure.",1,1)
 D PART
 Q
 ;
H1 ;
 S X=" " D S(X,2,1)
 S X="GPRA DEVELOPMENTAL & PART MEASURES CLINICAL PERFORMANCE SUMMARY" D S(X,3,1)
 I $G(BGPAREAA) S X="",$P(X,U,2)=" Area",$P(X,U,3)=" Area",$P(X,U,4)=" Area",$P(X,U,5)="Nat'l" D S(X,1,1)
 I '$G(BGPAREAA) S X="",$P(X,U,2)=" Site",$P(X,U,3)=" Site",$P(X,U,4)=" Site",$P(X,U,5)="Nat'l" D S(X,1,1)
 S X="",$P(X,U,2)="Current",$P(X,U,3)="Previous",$P(X,U,4)="Baseline",$P(X,U,5)="2012" D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
PART ;
SUMMARY ;
 I BGPRTYPE'=1 Q  ;national gpra only
 Q:$G(BGPCPPL)
 I $G(BGPNPL) Q  ;not on lists
 S BGPQUIT="",BGPGPG=0
 S BGPSUMP=1,BGPNON=0
 D:'$G(BGPSUMON) H1P
 D S("PART MEASURE",1,1)
 D S("------------",1,1)
 S P1=$S($G(BGPNGR09):14,1:14)  ;1:14 TO 1:8 IF NEEDED
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL DEVEL",BGPC)) Q:BGPC'=+BGPC  D
 .;S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .;S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,0))
 ..Q:'$P($G(^BGPINDHC(BGPPC,22)),U,13)
 ..S X=""
 ..I $P(^BGPINDHC(BGPPC,0),U,4)["014.A"!($P(^BGPINDHC(BGPPC,0),U,4)["023.")!($P(^BGPINDHC(BGPPC,0),U,4)["016")!($P($G(^BGPINDHC(BGPPC,19)),U,13)) D  I 1
 ...S X=$P(^BGPINDHC(BGPPC,22),U,4)
 ...I $P(^BGPINDHC(BGPPC,22),U,7)]"" D S(X,1,1) S X=$P(^BGPINDHC(BGPPC,22),U,7)
 ...I $P(^BGPINDHC(BGPPC,22),U,12)]"" D S(X,1,1) S X=$P(^BGPINDHC(BGPPC,22),U,12)
 ...S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U)
 ...S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,2)
 ...S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,3)
 ...S $P(X,U,5)=$P(^BGPINDHC(BGPPC,22),U,P1)
 ...S $P(X,U,6)=$P(^BGPINDHC(BGPPC,22),U,2),$P(X,U,7)=$P(^BGPINDHC(BGPPC,22),U,3)
 ...D S(X,1,1)
 ..E  D
 ...S X=$P(^BGPINDHC(BGPPC,22),U,4)
 ...I $P(^BGPINDHC(BGPPC,22),U,7)]"" D S(X,1,1) S X=$P(^BGPINDHC(BGPPC,22),U,7)
 ...I $P(^BGPINDHC(BGPPC,22),U,12)]"" D S(X,1,1) S X=$P(^BGPINDHC(BGPPC,22),U,12)
 ...S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U)_"%"
 ...S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,2)_"%"
 ...S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DEVEL",BGPC,BGPO,BGPPC),U,3)_"%"
 ...S $P(X,U,5)=$TR($P(^BGPINDHC(BGPPC,22),U,P1),"$","^")
 ...S $P(X,U,6)=$TR($P(^BGPINDHC(BGPPC,22),U,2),"$","^"),$P(X,U,7)=$P(^BGPINDHC(BGPPC,22),U,3)
 ...D S(X,1,1)
 ...S X="" I $P(^BGPINDHC(BGPPC,22),U,9)]""!($P(^BGPINDHC(BGPPC,22),U,10)]"")!($P(^BGPINDHC(BGPPC,22),U,11)]"") S $P(X,U,5)=$TR($P(^BGPINDHC(BGPPC,22),U,9),"$","^"),$P(X,U,6)=$TR($P(^BGPINDHC(BGPPC,22),U,10),"$","^") D
 ....S $P(X,U,7)=$P(^BGPINDHC(BGPPC,22),U,11)
 ...I X]"" D S(X,1,1)
 S X=" " D S(X,1,1)
 ;I $G(BGPNGR09) D
 ;.S X=" * PART 2014 target represented here is a preliminary target since it will be" D S(X,2,1)
 ;.S X="adjusted for FY 2013 actual results and FY 2014 appropriations." D S(X,1,1)
 S X=$S($G(BGPNGR09):"*",1:"*")_" Federally Administered Activities measure.  National 2012 rate is for federal" D S(X,1,1)
 S X="sites only." D S(X,1,1)
 D S(" ",1,1)
 Q
 ;
H1P ;
 S X=" " D S(X,2,1)
 S X="GPRA DEVELOPMENTAL & PART MEASURES CLINICAL PERFORMANCE SUMMARY" D S(X,3,1)
 I $G(BGPAREAA) S X="",$P(X,U,2)=" Area",$P(X,U,3)=" Area",$P(X,U,4)=" Area",$P(X,U,5)=$S($G(BGPNGR09):"PART10",1:"PART09"),$P(X,U,6)="Nat'l",$P(X,U,7)="2013" D S(X,1,1)
 I '$G(BGPAREAA) S X="",$P(X,U,2)=" Site",$P(X,U,3)=" Site",$P(X,U,4)=" Site",$P(X,U,5)=$S($G(BGPNGR09):"PART10",1:"PART09"),$P(X,U,6)="Nat'l",$P(X,U,7)="2013" D S(X,1,1)
 S X="",$P(X,U,2)="Current",$P(X,U,3)="Previous",$P(X,U,4)="Baseline",$P(X,U,5)="Target"_$S($G(BGPNGR09):"",1:""),$P(X,U,6)="2012",$P(X,U,7)="Target" D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
H2 ;
 S X=" " D S(X,2,1)
 S X="GPRA DEVELOPMENTAL & PART MEASURES CLINICAL PERFORMANCE DETAIL" D S(X,2,1)
 S X="",$P(X,U,2)=" Site",$P(X,U,3)=" Site",$P(X,U,4)=" Site",$P(X,U,5)="Area",$P(X,U,6)="Nat'l" D S(X,1,1)
 S X="",$P(X,U,2)="Current",$P(X,U,3)="Previous",$P(X,U,4)="Baseline",$P(X,U,5)="Current",$P(X,U,6)="2012" D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
SDP ;EP
 I BGPRTYPE'=1 Q  ;national gpra only
 I '$G(BGPAREAA) Q  ;area only
 S BGPQUIT="",BGPGPG=0
 S BGPSUMP=1
 S X=" " D S(X,2,1)
 D HEADER^BGP3PDL
 D H2
 D S("GRPA DEVELOPMENTAL MEASURES",1,1)
 D S("---------------------------",1,1)
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC)) Q:BGPC'=+BGPC  D
 .S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,0))
 ..Q:$P($G(^BGPINDHC(BGPPC,22)),U,13)  ;NON-part measures only
 ..S X=" " D S(X,1,1)
 ..S XX=" "_$P(^BGPINDHC(BGPPC,22),U,4)
 ..I $P(^BGPINDHC(BGPPC,22),U,7)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDHC(BGPPC,22),U,7)
 ..I $P(^BGPINDHC(BGPPC,22),U,12)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDHC(BGPPC,22),U,12)
 ..S F=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,0))
 ..S F=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,F),U,4)
 ..S $P(XX,U,5)=F_$S($P(^BGPINDHC(BGPPC,0),U,4)["014.A"!($P(^BGPINDHC(BGPPC,0),U,4)["023.")!($P(^BGPINDHC(BGPPC,0),U,4)="016.A.1")!($P($G(^BGPINDHC(BGPPC,19)),U,13)):"",1:"%")
 ..S $P(XX,U,6)=$P(^BGPINDHC(BGPPC,22),U,2) ;,$P(XX,U,7)=$P(^BGPINDHC(BGPPC,22),U,3)
 ..S BGPSN=0,BGPCNT=0 F  S BGPSN=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN  S BGPCNT=BGPCNT+1 D
 ...S BGPSASU=$P(^BGPGPDCH(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)),BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCH(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ...I $P(^BGPINDHC(BGPPC,0),U,4)["014.A"!($P(^BGPINDHC(BGPPC,0),U,4)["023.")!($P(^BGPINDHC(BGPPC,0),U,4)["016")!($P($G(^BGPINDHC(BGPPC,19)),U,13)) D  I 1
 ....S X="",$P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U)
 ....S $P(X,U,3)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2)
 ....S $P(X,U,4)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3)
 ....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,4)
 ...E  D
 ....S $P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U)_"%"
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2)_"%"
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3)_"%"
 ....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,4)_"%"
 ....;S $P(X,U,5)=$P(^BGPINDHC(BGPPC,22),U,2),$P(X,U,6)=$P(^BGPINDHC(BGPPC,22),U,3)
 ...I BGPCNT=1 D S(XX,1,1) D
 ....;S Y="" I $P(^BGPINDHC(BGPPC,22),U,9)]""!($P(^BGPINDHC(BGPPC,22),U,10)]"") S $P(Y,U,6)=$TR($P(^BGPINDHC(BGPPC,22),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDHC(BGPPC,22),U,10),"$","^")
 ....S Y="" I $P(^BGPINDHC(BGPPC,22),U,9)]""!($P(^BGPINDHC(BGPPC,22),U,10)]"")!($P(^BGPINDHC(BGPPC,22),U,11)]"") S $P(Y,U,6)=$TR($P(^BGPINDHC(BGPPC,22),U,9),"$","^") D
 .....S $P(Y,U,8)=$P(^BGPINDHC(BGPPC,22),U,11)
 ....I Y]"" D S(Y,1,1)
 ...D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="* Not GPRA Developmental measure but included to show percentage of" D S(X,1,1)
 D S("refusals with respect to GPRA Developmental measure.",1,1)
 D S(" ",1,1)
 D PARTSDP
 Q
PARTSDP ;
 D H2P
 S P1=$S($G(BGPNGR09):8,1:8)
 D S("PART MEASURE",1,1)
 D S("------------",1,1)
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC)) Q:BGPC'=+BGPC  D
 .;S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .;S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,0))
 ..Q:'$P($G(^BGPINDHC(BGPPC,22)),U,13)  ;part only
 ..S X=" " D S(X,1,1)
 ..S XX=" "_$P(^BGPINDHC(BGPPC,22),U,4)
 ..I $P(^BGPINDHC(BGPPC,22),U,7)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDHC(BGPPC,22),U,7)
 ..I $P(^BGPINDHC(BGPPC,22),U,12)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDHC(BGPPC,22),U,12)
 ..S F=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,0))
 ..S F=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,F),U,4)
 ..S $P(XX,U,5)=F_$S($P(^BGPINDHC(BGPPC,0),U,4)["014.A"!($P(^BGPINDHC(BGPPC,0),U,4)["023.")!($P(^BGPINDHC(BGPPC,0),U,4)="016.A.1")!($P($G(^BGPINDHC(BGPPC,19)),U,13)):"",1:"%")
 ..S $P(XX,U,6)=$P(^BGPINDHC(BGPPC,22),U,P1),$P(XX,U,7)=$P(^BGPINDHC(BGPPC,22),U,2),$P(XX,U,8)=$P(^BGPINDHC(BGPPC,22),U,3)
 ..S BGPSN=0,BGPCNT=0 F  S BGPSN=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN  S BGPCNT=BGPCNT+1 D
 ...S BGPSASU=$P(^BGPGPDCH(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)),BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCH(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ...I $P(^BGPINDHC(BGPPC,0),U,4)["014.A"!($P(^BGPINDHC(BGPPC,0),U,4)["023.")!($P(^BGPINDHC(BGPPC,0),U,4)["016")!($P($G(^BGPINDHC(BGPPC,19)),U,13)) D  I 1
 ....S X="",$P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U)
 ....S $P(X,U,3)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2)
 ....S $P(X,U,4)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3)
 ....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,4)
 ...E  D
 ....S $P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U)_"%"
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2)_"%"
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3)_"%"
 ....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,4)_"%"
 ....;S $P(X,U,5)=$P(^BGPINDHC(BGPPC,22),U,2),$P(X,U,6)=$P(^BGPINDHC(BGPPC,22),U,3)
 ...I BGPCNT=1 D S(XX,1,1) D
 ....;S Y="" I $P(^BGPINDHC(BGPPC,22),U,9)]""!($P(^BGPINDHC(BGPPC,22),U,10)]"") S $P(Y,U,6)=$TR($P(^BGPINDHC(BGPPC,22),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDHC(BGPPC,22),U,10),"$","^")
 ....S Y="" I $P(^BGPINDHC(BGPPC,22),U,9)]""!($P(^BGPINDHC(BGPPC,22),U,10)]"")!($P(^BGPINDHC(BGPPC,22),U,11)]"") S $P(Y,U,6)=$TR($P(^BGPINDHC(BGPPC,22),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDHC(BGPPC,22),U,10),"$","^") D
 .....S $P(Y,U,8)=$P(^BGPINDHC(BGPPC,22),U,11)
 ....I Y]"" D S(Y,1,1)
 ...D S(X,1,1)
 S X=" " D S(X,1,1)
 D FOOTER
 Q
FOOTER ;
 D S(" ",1,1)
 ;I $G(BGPNGR09) D
 ;.S X=" * PART 2014 target represented here is a preliminary target since it will be" D S(X,2,1)
 ;.S X="adjusted for FY 2013 actual results and FY 2014 appropriations." D S(X,1,1)
 S X=$S($G(BGPNGR09):"*",1:"*")_" Federally Administered Activities measure.  National 2012 rate is for federal" D S(X,1,1)
 S X="sites only." D S(X,1,1)
 D S(" ",1,1)
 Q
H2P ;
 S X=" " D S(X,2,1)
 S X="GPRA DEVELOPMENTAL & PART MEASURES CLINICAL PERFORMANCE DETAIL" D S(X,2,1)
 S X="",$P(X,U,2)=" Site",$P(X,U,3)=" Site",$P(X,U,4)=" Site",$P(X,U,5)="Area",$P(X,U,6)=$S($G(BGPNGR09):"PART10",1:"PART09"),$P(X,U,7)="Nat'l",$P(X,U,8)="2013" D S(X,1,1)
 S X="",$P(X,U,2)="Current",$P(X,U,3)="Previous",$P(X,U,4)="Baseline",$P(X,U,5)="Current",$P(X,U,6)="Target"_$S($G(BGPNGR09):"",1:""),$P(X,U,7)="2012",$P(X,U,8)="Target" D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q