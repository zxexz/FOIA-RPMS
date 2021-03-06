BGP6ELHH ; IHS/CMI/LAB - cover page for ELDER 25 Jun 2010 10:20 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
 S X="Cover Page" D S(X,1,1)
 S X=" " D S(X,1,1)
 I $G(BGPAREAA) G AREACP
 S X="*** IHS 2016 Elder Care Report ***" D S(X,1,1)
 S X=$$RPTVER^BGP6BAN D S(X,1,1)
 S X="Date Report Run: "_$$FMTE^XLFDT(DT) D S(X,1,1)
 S X="Site where Run: "_$P(^DIC(4,DUZ(2),0),U) D S(X,1,1)
 S X="Report Generated by: "_$$USR D S(X,1,1)
 S X="Reporting Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) S X=X D S(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) S X=X D S(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) S X=X D S(X,1,1)
 S X=" " D S(X,1,1)
 I BGPZZ="A" S X="Measures: Elder Care Performance Measures" D S(X,1,1)
 I BGPZZ="S" S X="Measures: Selected Elder Care Performance Measures (User Defined)" D S(X,1,1)
 S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D S(X,1,1)
 S X=" " D S(X,1,1)
 D ENDTIME
 D ELDERHDR
 S X=" " D S(X,1,1)
 I $G(BGPEXPT) D
 .S X="A file will be created called BG161"_$P(^AUTTLOC(DUZ(2),0),U,10)_".EL"_BGPRPT_"." D S(X,1,1) S X="It will reside in the public/export directory.  This file should be sent to your Area Office." D S(X,1,1)
 I BGPROT'="P",'$D(BGPGUI) D
 .S X="A delimited output file called "_BGPDELF D S(X,1,1) S X="has been placed in the "_$$GETDEDIR^BGP6UTL2()_" directory for your use in Excel or some other software package." D
 ..D S(X,1,1) S X="See your site manager to access this file." D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="Community Taxonomy Name: "_$P(^ATXAX(BGPTAXI,0),U) D S(X,1,1)
 S X="The following communities are included in this report:" D S(X,1,1) D
 .S BGPZZ="",N=0,Y="" F  S BGPZZ=$O(BGPTAX(BGPZZ)) Q:BGPZZ=""  S N=N+1,Y=Y_$S(N=1:"",1:";")_BGPZZ
 .S BGPZZ=0,C=0 F BGPZZ=1:3:N D
 ..S X=$E($P(Y,";",BGPZZ),1,20),$P(X,U,2)=$E($P(Y,";",(BGPZZ+1)),1,20),$P(X,U,3)=$E($P(Y,";",(BGPZZ+2)),1,20) D S(X,1,1)
 ..Q
 S X=" " D S(X,1,1)
 S X=" " D S(X,1,1)
 K BGPX,BGPQUIT
 Q
ELDERHDR ;
 S X=" " D S(X,1,1)
 ;Q:$G(BGPSEAT)
 S BGPNODEP=22
 S BGPX=$O(^BGPCTRL("B",2016,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D S(X,1,1)
 .Q
 Q
ENDTIME ;
 I $D(BGPET) S BGPTS=(86400*($P(BGPET,",")-$P(BGPBT,",")))+($P(BGPET,",",2)-$P(BGPBT,",",2)),BGPHR=$P(BGPTS/3600,".") S:BGPHR="" BGPHR=0 D
 .S BGPTS=BGPTS-(BGPHR*3600),BGPM=$P(BGPTS/60,".") S:BGPM="" BGPM=0 S BGPTS=BGPTS-(BGPM*60),BGPS=BGPTS S X="RUN TIME (H.M.S): "_BGPHR_"."_BGPM_"."_BGPS D S(X,1,1)
 Q
AREACP ;EP - area cover page
 S X="*** IHS 2016 Elder Care Report ***" D S(X,1,1)
 S X="AREA AGGREGATE" D S(X,1,1)
 S X=$$RPTVER^BGP6BAN D S(X,1,1)
 S X="Date Report Run:  "_$$FMTE^XLFDT(DT) D S(X,1,1)
 S X="Site where Run:  "_$$VAL^XBDIQ1(9999999.06,DUZ(2),.04) D S(X,1,1)
 S X="Report Generated by: "_$$USR D S(X,1,1)
 S X="Reporting Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D S(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D S(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="Measures: Elder Care Performance Measures" D S(X,1,1)
 I BGPRTYPE'=1 S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D S(X,1,1)
 S X=" " D S(X,1,1)
 D ENDTIME
 S X=" " D S(X,1,1)
 D ELDHDRA
 S X=" " D S(X,1,1)
 I BGPROT'="P",'$D(BGPGUI) D
 .S X="A delimited output file called "_BGPDELF D S(X,1,1) S X="has been placed in the "_$$GETDEDIR^BGP6UTL2()_" directory for your use in Excel or some" D S(X,1,1) D
 ..S X="other software package.  See your site manager to access this file." D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="Report includes data from the following facilities:" D S(X,1,1)
 NEW BGPX
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPELDCM(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPELDCM(BGPX,0),U,17):"*",1:"")_X D S(X,1,1)
 .Q
 S X=" " D S(X,1,1)
 S X="The following communities are included in this report:" D S(X,1,1)
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPELDCM(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPELDCM(BGPX,0),U,17):"*",1:"")_X D S(X,1,1)
 .;S X="Communities: " D S(X,1,1) 
 .S X="Community Taxonomy Name: "_$P(^BGPELDCM(BGPX,0),U,18) D S(X,1,1)
 .;W !?5,"Communities: " 
 .S X=0,N=0,Y="",Z="" F  S X=$O(^BGPELDCM(BGPX,9999,X)) Q:X'=+X  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P(^BGPELDCM(BGPX,9999,X,0),U)
 .S X=0,C=0 F X=1:3:N S Z=$E($P(Y,";",X),1,20),$P(Z,U,2)=$E($P(Y,";",(X+1)),1,20),$P(Z,U,3)=$E($P(Y,";",(X+2)),1,20) D S(Z,1,1)
 .S X=" " D S(X,1,1)
 .Q
 S X=" " D S(X,1,1)
 Q
S(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
 ;;
ELDHDRA ;EP
 S BGPX=$O(^BGPCTRL("B",2016,0))
 S BGPNODEP=89 D 2
 ;D W^BGP6DP("",0,1,BGPPTYPE)
 S BGPTEXT="UP" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .D S(BGPT,1,1)
 Q
2 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .D S(^BGPCTRL(BGPX,BGPNODEP,BGPY,0),1,1)
 .Q
 Q
 ;
 ;;
UP ;;
 ;;
 ;;USER POPULATION:
 ;;1. Definitions 1-3 above.
 ;;2. Must have been seen at least once in the 3 years prior to the end of
 ;;the Report period, regardless of the clinic type.
 ;;QUIT
 ;
