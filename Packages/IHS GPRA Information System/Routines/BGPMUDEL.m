BGPMUDEL ; IHS/MSC/MGH - MU Delimited output ;02-Mar-2011 14:38;DU
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
 ;
PRINT1 ;EP
 N BGPGDEV,BGPDEVOR,BGPIC
 S BGPGDEV=1
 D HEADER
 S BGPDEVOR=0 F  S BGPDEVOR=$O(^BGPMUIND(BGPMUYF,"ADO",BGPDEVOR)) Q:BGPDEVOR'=+BGPDEVOR!(BGPQUIT)  D
 .S BGPIC=$O(^BGPMUIND(BGPMUYF,"ADO",BGPDEVOR,0)) Q:BGPIC=""
 .I $D(BGPIND(BGPIC)) D PRINT2
 .Q:BGPQUIT
 K BGPGDEV
PRINTSUM ; Print summary page of all measure calculations
 D ^BGPMUPPS
 Q
 ;
SAVEDEL ;EP
 ;If screen selected do screen
 N X,C
 I BGPDELT="S" D SCREEN,EXIT Q
 ;call xbgsave to create output file
 S XBGL="BGPDATA"
 L +^BGPDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^TMP($J,"SUMMARYDEL")
 K ^BGPDATA($J) ;global for saving
 S X=0 F  S X=$O(^TMP($J,"BGPDEL",X)) Q:X'=+X  I ^TMP($J,"BGPDEL",X)'="ENDCOVERPAGE" S ^BGPDATA($J,X)=^TMP($J,"BGPDEL",X)
 I '$D(BGPGUI) D
 .S XBFLT=1,XBFN=BGPDELF_".txt",XBMED="F",XBTLE="MEANINGFUL USE 2011 DELIMITED OUTPUT",XBQ="N",XBF=0
 .D ^XBGSAVE
 .K XBFLT,XBFN,XBMED,XBTLE,XBE,XBF,X
 I $D(BGPGUI) D
 .S (C,X)=0 F  S X=$O(^BGPDATA($J,X)) Q:X'=+X  S C=C+1,^BGPGUIT(BGPGIEN,12,C,0)=^BGPDATA($J,X)
 .S ^BGPGUIT(BGPGIEN,12,0)="^90378.0812^"_C_"^"_C_"^"_DT
 L -^BGPDATA
 K ^BGPDATA($J) ;export global
 D EXIT
 Q
SCREEN ;
 S X=0 F  S X=$O(^TMP($J,"BGPDEL",X)) Q:X'=+X  W:^TMP($J,"BGPDEL",X)'="ENDCOVERPAGE" !,^TMP($J,"BGPDEL",X)
 Q
PRINT3 ;
 Q
PRINT2 ;
 N X,BGPZ,BGPNODE
 S BGPGPG=0
 ;quit if no delimited output routine defined
 I '$D(^BGPMUIND(BGPMUYF,BGPIC,4)) S X="Delimited file output not currently supported for this measure" D S(X,1,1) Q
 S X=$P(^BGPMUIND(BGPMUYF,BGPIC,0),U,3) D S(X,2,1)
 ;Print out the description node if there is data in it
 S BGPNODE=12 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 .S X="Measure Summary:" D S(X,2,1)
 .S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ..S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 ;Print out the population node if there is data in it
 S BGPNODE=13 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 .S X="Population:" D S(X,1,1)
 .S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ..S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 S X="Logic:" D S(X,2,1)
 ;Print out the denominator node if there is data in it
 S BGPNODE=14 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 .S X="Denominator Logic:" D S(X,2,1)
 .S X="" D S(X,1,1)
 .S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ..S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 I $G(BGPMUT)'="H" D
 .;Print out the numerator node if there is data in it
 .S BGPNODE=15 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 ..S X="Numerator Logic:" D S(X,2,1)
 ..S X="" D S(X,1,1)
 ..S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ...S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 .;Print out the logic node if there is data in it
 .S BGPNODE=16 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 ..S X="Exclusion Logic:" D S(X,2,1)
 ..S X="" D S(X,1,1)
 ..S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ))  Q:'BGPZ  D
 ...S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 I $G(BGPMUT)="H" D
 .;Print out the logic node if there is data in it
 .S BGPNODE=16 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 ..S X="Denominator Exclusion Logic:" D S(X,2,1)
 ..S X="" D S(X,1,1)
 ..S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ))  Q:'BGPZ  D
 ...S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 .;Print out the numerator node if there is data in it
 .S BGPNODE=15 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 ..S X="Numerator Logic:" D S(X,2,1)
 ..S X="" D S(X,1,1)
 ..S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ...S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 ;Print out the Performance node if there is data in it
 S BGPNODE=17 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 .S X="Performance:" D S(X,2,1)
 .S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ..S X=^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0) D S(X,1,1)
 ;Print out the source node if there is data in it
 S BGPNODE=18 I $D(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE))=10 D
 .S X="Measure Source:"
 .S BGPZ=0 F  S BGPZ=$O(^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ)) Q:'BGPZ  D
 ..S X=X_" "_^BGPMUIND(BGPMUYF,BGPIC,BGPNODE,BGPZ,0)
 .D S(X,2,1)
CALC X ^BGPMUIND(BGPMUYF,BGPIC,4)
 Q
HEADER ;DELIMITED HEADER
 S Y="Cover Page" D S(Y,1,1)
 S Y="*** IHS Stage 1 Meaningful Use ***" D S(Y,2,1)
 S Y="*** "_$S($G(BGPMUT)'="H":"Eligible Professional (EP)",1:"Hospital")_" Clinical Quality Measures Report ***" D S(Y,1,1)
 S Y="CRS 2011, Version 11.1 Patch 1" D S(Y,1,1)
 S Y="Date Report Run: "_$$FMTE^XLFDT(DT) D S(Y,1,1)
 S Y="Site where Run: "_$P(^DIC(4,DUZ(2),0),U) D S(Y,1,1)
 S Y="Report Generated by: "_$P($G(^VA(200,DUZ,0)),U,1) D S(Y,1,1)
 S Y="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D S(Y,1,1)
 S Y="Previous Period: "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D S(Y,1,1)
 S Y="Baseline Period: "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D S(Y,1,1)
 S Y="" D S(Y,1,1)
 I $G(BGPMUT)'="H" S Y="Measures: Stage 1 Meaningful Use Eligible Professional (EP) "_$S(BGPINDT="C":"Core Measures",BGPINDT="A":"Alternate Core",BGPINDT="M":"Menu Set Measures",1:"Selected Measures") D S(Y,1,1)
 I $G(BGPMUT)="H" D
 .S Y="Measures: Stage 1 Meaningful Use Eligible Hospital (EH) and" D S(Y,1,1)
 .S Y="Critical Access Hospital (CAH) Clinical Quality Measures" D S(Y,1,1)
 I $G(BGPMUT)="P" S Y="Population: "_$S(BGPBEN=1:"AI/AN Only",BGPBEN=2:"Non-AI/AN",BGPBEN=3:"All Patients",1:"") D S(Y,2,1)
 I $G(BGPMUT)'="H" D
 .S Y="Eligible Professional (EP): "_$P(^VA(200,BGPPROV,0),U) D S(Y,2,1)
 I $G(BGPMUT)="H" D
 .S Y="Population: "_$S(BGPBEN=1:"AI/AN Only",BGPBEN=2:"Non-AI/AN",BGPBEN=3:"All Patients",1:"")
 .D S(Y,2,1)
 .S Y="Eligible Hospital: "_$$LOC^BGPMUEH()_", "_$$GET1^DIQ(4,DUZ(2)_",",1.03)_", "_$$GET1^DIQ(4,DUZ(2)_",",.02)
 .D S(Y,1,1)
 D ENDTIME
 I $G(BGPMUT)'="H" D
 .S Y="Warning:  The Meaningful Use reports do not verify that the EP selected for" D S(Y,2,1)
 .S Y="the reports meets the CMS EHR Incentive Program eligibility criteria.  The" D S(Y,1,1)
 .S Y="EP must make that determination." D S(Y,1,1)
 I $G(BGPMUT)'="H" D
 .S Y="This report includes the EP "_$S(BGPINDT="C":"core",BGPINDT="A":"alternate",BGPINDT="M":"menu set",1:"selected")_" clinical quality measures for" D S(Y,2,1)
 .S Y="Stage 1 Meaningful Use." D S(Y,1,1)
 I $G(BGPMUT)="H" D
 .S Y="This report includes the eligible hospital and critical access hospital" D S(Y,2,1)
 .S Y="clinical quality measures for Stage 1 Meaningful Use." D S(Y,1,1)
 I $G(BGPMUT)'="H" D
 .S Y="For the first Meaningful Use payment year, the reporting period is any" D S(Y,2,1)
 .S Y="consecutive 90-days during a calendar year (Jan 1- Dec 31).  For all" D S(Y,1,1)
 .S Y="subsequent years, the reporting period is the entire calendar year." D S(Y,1,1)
 I $G(BGPMUT)="H" D
 .S Y="For the first Meaningful Use payment year, the reporting period is any" D S(Y,2,1)
 .S Y="consecutive 90-days during a federal fiscal year (Oct 1 - Sep 30).  For all" D S(Y,1,1)
 .S Y="subsequent years, the reporting period is the entire federal fiscal year." D S(Y,1,1)
 ;
 S Y="The report will provide a description of the measure, and explanations for" D S(Y,2,1)
 S Y="the denominator(s), numerator(s) and exclusions (if applicable)" D S(Y,1,1)
 S Y="and the measure logic." D S(Y,1,1)
 S Y="The measure results are contained in tabular form with the following column" D S(Y,2,1)
 S Y="headings:" D S(Y,1,1)
 S Y="REPORT %  PREV YR %    CHG FROM  BASE %  CHG" D S(Y,1,1)
 S Y="PERIOD    PERIOD       PREV YR   YR      BASE %" D S(Y,1,1)
 I $G(BGPMUT)'="H" D
 .S Y="When a report is run for a 90-day period, the PREV YR PERIOD is the same 90-day" D S(Y,2,1)
 .S Y="period for the previous calendar year and the BASE YR is the same 90-day period" D S(Y,1,1)
 .S Y="for the base calendar year selected.  For example, a report run with Apr 1, 2010" D S(Y,1,1)
 .S Y="through Jun 30, 2010 as the REPORT PERIOD and a base year of 2008 will include" D S(Y,1,1)
 .S Y="data from Apr 1, 2009 through Jun 30, 2009 in the PREV YR PERIOD and Apr 1, 2008" D S(Y,1,1)
 .S Y="through Jun 30, 2008 in the BASE YR." D S(Y,1,1)
 I $G(BGPMUT)="H" D
 .S Y="When a report is run for a 90-day period, the PREV YR PERIOD is the same 90-day" D S(Y,2,1)
 .S Y="period for the previous fiscal year and the BASE YR is the same 90-day" D S(Y,1,1)
 .S Y="period for the base fiscal year selected.  For example, a report run" D S(Y,1,1)
 .S Y="with Apr 1, 2010 through Jun 30, 2010 as the REPORT PERIOD and a base year of" D S(Y,1,1)
 .S Y="2008 will include data from Apr 1, 2009 through Jun 30, 2009 in the PREV YR" D S(Y,1,1)
 .S Y="PERIOD and Apr 1, 2008 through Jun 30, 2008 in the BASE YR." D S(Y,1,1)
 Q
EXIT ;
 K ^TMP($J)
 Q
ENDTIME ;
 I $D(BGPET) S BGPTS=(86400*($P(BGPET,",")-$P(BGPBT,",")))+($P(BGPET,",",2)-$P(BGPBT,",",2)),BGPHR=$P(BGPTS/3600,".") S:BGPHR="" BGPHR=0 D
 .S BGPTS=BGPTS-(BGPHR*3600),BGPM=$P(BGPTS/60,".") S:BGPM="" BGPM=0 S BGPTS=BGPTS-(BGPM*60),BGPS=BGPTS S X="RUN TIME (H.M.S): "_BGPHR_"."_BGPM_"."_BGPS D S(X,2,1)
 Q
CTR(X,Y) ;EP - Center
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return user
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
S(Y,F,P) ;EP set up array
 I '$G(F) S F=0
 NEW %,Z
 S Z=""
 S %=$P($G(^TMP($J,"BGPDEL",0)),U)
 F Z=1:1:F S %=%+1 S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X