BDMD51A ; IHS/CMI/LAB -IHS -CUMULATIVE REPORT ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2**;JUN 14, 2007
 ;
 ;
ASPIRIN ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(100)) W !!,$P(V,U)
 W !?7,"Aspirin",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"Other Anti-platelet Rx",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"Both ASA & Other Rx",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !?7,"None",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 W !?7,"Refused",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
ACE ;
 I $Y>(IOSL-6) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(110)) W !!,$P(V,U)
 W !?7,"Use in pts with overt proteinuria",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,3),$P(V,U,4))
 W !?7,"Use in pts with known hypertension",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,5),$P(V,U,6))
LIPID ;
 I $Y>(IOSL-9) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(115)) W !!,$P(V,U)
 W !?7,"Use in pts with total chol >=240",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,3),$P(V,U,4))
 W !?7,"Use in pts with LDL chol > 100",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,5),$P(V,U,6))
 W !!?7,"Of the ",$P(V,U,7)," pts taking a lipid agent:"
 W !?9,"Statin drug prescribed:",?53,$$C($P(V,U,8)),?65,$$P($P(V,U,7),$P(V,U,8))
 W !?9,"Non-statin drug prescribed:",?53,$$C($P(V,U,9)),?65,$$P($P(V,U,7),$P(V,U,9))
 W !?9,"Statin AND non-statin prescribed:",?53,$$C($P(V,U,10)),?65,$$P($P(V,U,7),$P(V,U,10))
EXAMS ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(120)) W !!,$P(V,U),?69,"(% refused)"
 W !?7,"Foot Exam - Neuro & Vasc",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3)),?71,"( ",$$P($P(V,U,2),$P(V,U,6))," )"
 W !?7,"Eye Exam - Dilated",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4)),?71,"( ",$$P($P(V,U,2),$P(V,U,7))," )"
 W !?7,"Dental Exam",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5)),?71,"( ",$$P($P(V,U,2),$P(V,U,8))," )"
 ;W !?7,"Pap Smear (Females Only)",?53,$$C($P(V,U,10)),?65,$$P($P(V,U,9),$P(V,U,10)),?71,"( ",$$P($P(V,U,9),$P(V,U,11))," )"
EDUC ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(130)) W !!,$P(V,U),?69,"(% refused)"
 W !?7,"Diet Instruction",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3)),?71,"( ",$$P($P(V,U,2),$P(V,U,7))," )"
 W !?7,"Exercise Instruction",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4)),?71,"( ",$$P($P(V,U,2),$P(V,U,8))," )"
 W !?7,"Other Diabetes Education",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5)),?71,"( ",$$P($P(V,U,2),$P(V,U,9))," )"
 W !?7,"Any of the above topics",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
IMM ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(140)) W !!,$P(V,U),?69,"(% refused)"
 W !?7,"Flu Vaccine - yearly",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3)),?71,"( ",$$P($P(V,U,2),$P(V,U,6))," )"
 W !?7,"Pneumovax - once",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4)),?71,"( ",$$P($P(V,U,2),$P(V,U,7))," )"
 W !?7,"Tetanus/Diptheria (q 10 yrs)",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5)),?71,"( ",$$P($P(V,U,2),$P(V,U,8))," )"
URIN ;
 I $Y>(IOSL-13) D HEADER Q:BDMQUIT
 W !!,"LABORATORY EXAMS",!
 S V=$G(BDMCUML(145))
 W !,"Urinalysis in the past 12 months",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !!,"Proteinuria present",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !,"Proteinuria absent",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !,"Proteinuria result unknown",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 W !,"Proteinuria test not done" S Z=$P(V,U,2)-($P(V,U,4)+$P(V,U,5)+$P(V,U,6)) W ?53,$$C(Z),?65,$$P($P(V,U,2),Z)
 W !!?7,"Of the ",$$C($P(V,U,5))," without proteinuria:"
 W !?9,"Microalbuminuria present",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,5),$P(V,U,7))
 W !?9,"Microalbuminuria absent",?53,$$C($P(V,U,8)),?65,$$P($P(V,U,5),$P(V,U,8))
 W !?9,"Microalbuminuria not tested",?53,$$C($P(V,U,9)),?65,$$P($P(V,U,5),$P(V,U,9))
CREAT ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(170)) S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,6)
 W !!,"Creatinine obtained in the past 12 months",?53,$$C(T),?65,$$P($P(V,U,2),T)
 W !?7,"Creatinine >= 2.0 mg/dl",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"Creatinine < 2.0 mg/dl",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"Unable to determine result",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 W !?7,"Creatinine not tested/unknown",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
TOTAL ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(180))
 S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,5)+$P(V,U,7)
 W !!,"Total Cholesterol obtained in the past 12 months",?53,$$C(T),?65,$$P($P(V,U,2),T)
 W !?7,"Desirable    (<200 mg/dl)",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"Borderline   (200-239 mg/dl)",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"High         (240 mg/dl or more)",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !?7,"Unable to determine result",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
 W !?7,"Not tested",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
LDL ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(190))
 S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,5)+$P(V,U,6)+$P(V,U,8)
 W !!,"LDL Cholesterol obtained in the past 12 months",?53,$$C(T),?65,$$P($P(V,U,2),T)
 W !?7,"LDL <100 mg/dl",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"LDL 100-129 mg/dl",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"LDL 130-160 mg/dl",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !?7,"LDL >160",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 W !?7,"Unable to determine result",?53,$$C($P(V,U,8)),?65,$$P($P(V,U,2),$P(V,U,8))
 W !?7,"Not tested",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
HDL ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(195))
 S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,5)+$P(V,U,6)+$P(V,U,8)
 W !!,"HDL Cholesterol obtained in the past 12 months",?53,$$C(T),?65,$$P($P(V,U,2),T)
 W !?7,"HDL <35 mg/dl",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"HDL 35-45 mg/dl",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"HDL 46-55 mg/dl",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !?7,"HDL >55",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 W !?7,"Unable to determine result",?53,$$C($P(V,U,8)),?65,$$P($P(V,U,2),$P(V,U,8))
 W !?7,"Not tested",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
TRIG ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(200))
 S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,5)+$P(V,U,6)+$P(V,U,8)
 W !!,"Triglycerides obtained in the past 12 months",?53,$$C(T),?65,$$P($P(V,U,2),T)
 W !?7,"TG <150 mg/dl",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"TG 150-199 mg/dl",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"TG 200-400 mg/dl",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !?7,"TG >400 mg/dl",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 W !?7,"Unable to determine result",?53,$$C($P(V,U,8)),?65,$$P($P(V,U,2),$P(V,U,8))
 W !?7,"Not tested",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
 ;
EKG ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(150)) W !!,$P(V,U)
 W !?7,"Performed in past 3 years",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"Performed in past 5 years",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"Ever performed",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
TBC ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(70)) W !!,$P(V,U)
 W !?7,"PPD +,INH treatment complete",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"PPD +, untreated/incomplete or tx unknown",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"PPD -, placed since DM dx",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 W !?7,"PPD -, placed before DM dx or date unknown",?53,$$C($P(V,U,6)),?65,$$P($P(V,U,2),$P(V,U,6))
 ;W !?7,"Date of DM DX Unknown",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
 W !?7,"PPD status unknown",?53,$$C($P(V,U,7)),?65,$$P($P(V,U,2),$P(V,U,7))
SELF ;
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(210)) W !!,$P(V,U)
 W !?7,"Yes",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"No",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"Refused",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
DEP ;
 I $Y>(IOSL-6) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(300)) W !!,$P(V,U)
 W !?7,"Yes",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 S Z=$P(V,U,2)-$P(V,U,3)
 W !?7,"No",?53,$$C(Z),?65,$$P($P(V,U,2),Z)
 ;screening
 I $Y>(IOSL-6) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(301)) W !!,$P(V,U)
 W !?7,"Yes",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 S Z=$P(V,U,2)-$P(V,U,3)
 W !?7,"No",?53,$$C(Z),?65,$$P($P(V,U,2),Z)
SDM ;
 Q  ;not in 2005 audit
 I $Y>(IOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(220)) W !!,$P(V,U)
 W !?7,"Yes",?53,$$C($P(V,U,3)),?65,$$P($P(V,U,2),$P(V,U,3))
 W !?7,"No",?53,$$C($P(V,U,4)),?65,$$P($P(V,U,2),$P(V,U,4))
 W !?7,"Undetermined",?53,$$C($P(V,U,5)),?65,$$P($P(V,U,2),$P(V,U,5))
 Q
EXIT ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
CALC(N,O) ;ENTRY POINT
 ;O is old
 NEW Z
 I O=0!(N=0) Q "**"
 NEW X,X2,X3
 S X=N,X2=1,X3=0 D COMMA^%DTC S N=X
 S X=O,X2=1,X3=0 D COMMA^%DTC S O=X
 S Z=(((N-O)/O)*100),Z=$FN(Z,"+,",1)
 Q Z
P(D,N) ;return %
 I 'D Q ""
 I 'N Q "  0%"
 NEW X S X=N/D,X=X*100,X=$J(X,3,0)
 Q X_"%"
C(X,X2,X3) ;
 I '$G(X2) S X2=0
 I '$G(X3) S X3=6
 D COMMA^%DTC
 Q X
HEADER ;EP
 G:'BDMPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQUIT=1 Q
HEADER1 ;
 W:$D(IOF) @IOF S BDMPG=BDMPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BDMPG,!
 W !,$$CTR("***  HEALTH STATUS OF DIABETIC PATIENTS  ***",80),!
 W $$CTR($P(^DIC(4,DUZ(2),0),U)),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BDMBDAT)_" to "_$$FMTE^XLFDT(BDMADAT) W $$CTR(X,80),!
 W !,$TR($J("",80)," ","-")
 W !!,$P(BDMCUML(10),U,2)," patients were reviewed"
 W ?55," n",?63,"Percent"
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - 
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
