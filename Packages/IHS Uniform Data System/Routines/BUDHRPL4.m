BUDHRPL4 ;IHS/CMI/LAB - UDS TAB 1-6A;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
RACEL(R,E) ;EP
 I R=1,E=1 Q "Line 1:  Asian, Hispanic"
 I R=1,E=2 Q "Line 1:  Asian, Non-Hispanic"
 I R=2,E=1 Q "Line 2a:  Native Hawaiian, Hispanic"
 I R=2,E=2 Q "Line 2a:  Native Hawaiian, Non-Hispanic"
 I R=3,E=1 Q "Line 2b:  Other Pacific Islander, Hispanic"
 I R=3,E=2 Q "Line 2b:  Other Pacific Islander, Non-Hispanic"
 I R=4,E=1 Q "Line 3:  Black/African American, Hispanic"
 I R=4,E=2 Q "Line 3:  Black/African American, Non-Hispanic"
 I R=5,E=1 Q "Line 4:  American Indian/Alaska Native, Hispanic"
 I R=5,E=2 Q "Line 4:  American Indian/Alaska Native, Non-Hispanic"
 I R=6,E=1 Q "Line 5:  White, Hispanic"
 I R=6,E=2 Q "Line 5:  White, Non-Hispanic"
 I R=7,E=1 Q "Line 6:  More than one race, Hispanic"
 I R=7,E=2 Q "Line 6:  More than one race, Non-Hispanic"
 I R=8,E=1 Q "Line 7:  Unreported / Refused to Report, Hispanic"
 I R=8,E=2 Q "Line 7:  Unreported / Refused to Report, Non-Hispanic"
 I R=8,E=3 Q "Line 7:  Unreported / Refused to Report, Unreported / Refused to Report"
 Q "UNKNOWN"
 ;
RACE(R) ;EP
 I R="UNREP/REF" Q "7-Line 7: Unreported"
 I R="ASIAN" Q "3-Line 1: Asian"
 I R="NATIVE HAWAIIAN" Q "1-Line 2a: Native Hawaiian"
 I R="OTH PAC ISLANDER" Q "2-Line 2b: Other Pacific Islander"
 I R="BLACK" Q "4-Line 3: Black/African American"
 I R="AI/AN" Q "5-Line 4: American Indian/Alaska Native"
 I R="WHITE" Q "6-Line 5: White"
 I R="HISPANIC,WHITE" Q "6-Line 5: White"
 I R="HISPANIC,BLACK" Q "5-Line 3: Black/African American"
 Q ""
T3BR ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D T3BRH Q:BUDQUIT
 I '$D(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR")) D
 .I BUDROT="P" W !!,"No patients to report." Q
 .D S(""),S("No patients to report.")
 D T3BRL1
 I BUDROT="P",$Y>(IOSL-3) D T3BRH G:BUDQUIT T3BRLX
 I BUDROT="P" W !!,"TOTAL PATIENTS: ",BUDTOT,!
 I BUDROT="D" D S("TOTAL PATIENTS: "_BUDTOT),S("")
T3BRLX ;
 Q
T3BRL1 ;
 I BUDROT="P",$Y>(IOSL-7) D T3BRH Q:BUDQUIT
 S BUDTOT=0
 S BUDRACE="" F  S BUDRACE=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE)) Q:BUDRACE=""!(BUDQUIT)  D
 .S BUDHTH="" F  S BUDHTH=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH)) Q:BUDHTH=""!(BUDQUIT)  D T3BRL2
 Q
T3BRL2 ;
 S BUDSTOT=0
 S BUDRACEL=$$RACEL(BUDRACE,BUDHTH)
 I BUDROT="P" W !,BUDRACEL
 I BUDROT="D" D S(""),S(BUDRACEL)
 S BUDA="" F  S BUDA=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH,BUDA)) Q:BUDA=""!(BUDQUIT)  D
 .S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH,BUDA,BUDSEX)) Q:BUDSEX=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH,BUDA,BUDSEX,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH,BUDA,BUDSEX,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D T3BRH Q:BUDQUIT  W !,BUDRACEL,!
 ....S BUDTOT=BUDTOT+1,BUDSTOT=BUDSTOT+1
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,22),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)) D
 .....W ?36,$E(BUDCCOM,1,12),?51,$P(^DPT(DFN,0),U,2),?55,$$AGE^AUPNPAT(DFN,BUDCCAD)
 ....S BUDRACV=$$RACE^BUDHRPTC(DFN)
 ....I BUDROT="P" W !?2,$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3),")"  ;,?60,$E($P($$RACE^BUDHRPTC(DFN),U,3)_"-"_$P($$RACE^BUDHRPTC(DFN),U,4),1,19)
 ....S BUDHISV=$$HISP^BUDHRPTC(DFN)
 ....I BUDROT="P" W ?24,$P(BUDHISV,U,3)," (",$P(BUDHISV,U,2),")"
 ....S BUDV=0,BUDD=0 F  S BUDV=$O(^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH,BUDA,BUDSEX,BUDCCOM,DFN,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 .....S BUDD=BUDD+1
 .....S BUDI=^XTMP("BUDHRPT1",BUDJ,BUDH,"3BR",BUDRACE,BUDHTH,BUDA,BUDSEX,BUDCCOM,DFN,BUDV),BUDI=$P(BUDI,"|||",3)
 .....I BUDROT="P",$Y>(IOSL-3) D T3BRH Q:BUDQUIT  I BUDROT="P" W !,BUDRACEL,!
 .....I BUDROT="P",BUDD=1 W ?60,$S(BUDI:"YES",1:"NO")
 .....I BUDROT="P" W !?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),".")),?25,$E($$PRIMPROV^APCLV(BUDV,"E"),1,14),?42,$P(^AUPNVSIT(BUDV,0),U,7),?45,$E($$CLINIC^APCLV(BUDV,"E"),1,14),?62,$E($$LOCENC^APCLV(BUDV,"E"),1,14)
 .....I BUDROT="D" D
 ......S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD)
 ......S X=X_U_$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3)_")"_U_$P(BUDHISV,U,3)_" ("_$P(BUDHISV,U,2)_")"_U_$S(BUDI:"YES",1:"NO")
 ......S X=X_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),"."))_U_$$PRIMPROV^APCLV(BUDV,"E")_U_$P(^AUPNVSIT(BUDV,0),U,7)_U_$$CLINIC^APCLV(BUDV,"E")_U_$$LOCENC^APCLV(BUDV,"E")
 ......D S(X)
 I BUDROT="P",$Y>(IOSL-4) D T3BRH Q:BUDQUIT
 I BUDROT="P" W !!,"Sub-Total ",BUDRACEL,":  ",BUDSTOT,!
 I BUDROT="D" D S("Sub-Total "_BUDRACEL_":  "_BUDSTOT),S("")
 Q
T3BRH ;
 I BUDROT="D" D T3BRHD Q
 G:'BUDGPG T3BRH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
T3BRH1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 3B, Patients by Hispanic or Latino Identity and Race",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",BUDBEN=4:"Homeless",1:"")
 W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .W !,"List of all patients with one or more visits during the calendar year, with"
 .W !,"gender, age, Hispanic or Latino Identity, race, and visit information."
 .W !,"Age on the patient list is calculated as of June 30."
 .W !,"* (E) - denotes the value was obtained from the Ethnicity field"
 .W !,"  (R) - denotes the value was obtained from the Race field"
 .W !,"  (C) - denotes the value was obtained from the Classification/Beneficiary field"
 .W !
 W !,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?50,"SEX",?55,"AGE"
 W !,?2,"RACE*",?24,"HISPANIC OR LATINO IDENTITY*",?60,"INTERPRETER"
 W !?5,"VISIT DATE",?25,"PROV TYPE",?41,"SRV",?45,"CLINIC",?62,"LOCATION"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
T3BRHD ;
 D S(),S(),S()
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 3B, Patients by Hispanic or Latino Identity and Race")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",BUDBEN=4:"Homeless",1:"") D S(X)
 D S(" ")
 D S("List of all patients with one or more visits during the calendar year, with")
 D S("gender, age, Hispanic or Latino Identity, race, and visit information.")
 D S("Age on the patient list is calculated as of June 30.")
 D S("* (E) - denotes the value was obtained from the Ethnicity field")
 D S("  (R) - denotes the value was obtained from the Race field")
 D S("  (C) - denotes the value was obtained from the Classification/Beneficiary field")
 D S(" "),S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^RACE*^HISPANIC OR LATINO ETHNICITY^INTERPRETER^VISIT DATE^PROV TYPE^SRV^CLINIC^LOCATION")
 Q
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
