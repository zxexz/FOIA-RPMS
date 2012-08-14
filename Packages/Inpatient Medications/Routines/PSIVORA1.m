PSIVORA1 ;BIR/MLM-UTILITIES FOR IV FLUIDS - OE/RR INTERFACE (CONT) ;05 FEB 97 / 1:30 PM
 ;;5.0; INPATIENT MEDICATIONS ;**58**;16 DEC 97
 ;
 ; Reference to ^PS(51.2 is supported by DBIA 2178.
 ; Reference to ^PS(55 is supported by DBIA 2191.
 ; Reference to ^PS(52.6 is supported by DBIA 1231.
 ; Reference to ^PS(52.7 is supported by DBIA 2173.
 ; Reference to ^VA(200 is supported by DBIA 10060.
 ; Reference to NOW^%DTC is supported by DBIA 10000.
 ;
LOCKERR ; Display msg. if lock is unsuccessful.
 W $C(7),!!,"This order is being edited by another user." S OREND=1
 Q
 ;
EDIT ; Edit an existing order.
 I ORSTS=3 W !,$C(7),"Order must be removed from HOLD before editing." S OREND=1 Q
 I ORSTS=7 W !,$C(7),"Expired orders cannot be edited." S OREND=1 Q
 D NEWENT^PSIVORFE S ON=ORPK S:ON["V" ON55=+ON D @$S(ON["V":"GT55^PSIVORFB",1:"GT531^PSIVORFA("_DFN_","""_ON_""")") F X=2,3,9,11,"IVRM" S P(X)=""
 S P("RES")=$S(ORSTS=11:P("RES"),1:"E")
 I "EN"[P("RES") S (PSIVOK,EDIT)="57^58^59^1^66"
 E  D REDIT
 N DONE S PSJORNP=+P(6) K ON55 D ENED^PSIVORV1,GTFLDS^PSIVORFE I $G(DONE) S OREND=1 Q
 I PSJORSTS=11 W !,"...updating order..." D UPD100^PSIVORFA,PUT531^PSIVORFA Q
 D NOW^%DTC S P("LOG")=+$E(%,1,12),P("CLRK")=DUZ_U_$P($G(^VA(200,DUZ,0)),U)
 W !,"...creating new order..." S P(17)="U",P("OLDON")=$S(PSJORSTS=5:+ON_"P",1:+ON_"V") D ENGNN^PSGOETO S ON=DA D SET^PSIVORFE D PUT531^PSIVORFA
 I P("OLDON")["V",$D(^PS(55,DFN,"IV",+P("OLDON"),2)) S $P(^(2),U,6)=ON_"U",$P(^(2),U,9)="E" Q
 I P("OLDON")'["V",$D(^PS(53.1,+P("OLDON"),0)) S $P(^(0),U,26,27)=ON_"U"_U_"E"
 Q
 ;
RENEW ;Renew order through OE/RR.
 I $S(ORSTS=6:0,ORSTS=7:0,1:1) W !,$C(7),"Only ACTIVE OR EXPIRED orders may be RENEWED." S OREND=1 Q
 S ON=ORPK D GT55^PSIVORFB,REDIT
 K ON55 S P(17)="U",P("OLDON")=ON F X=2,3,"IVRM","MR" S P(X)=""
 D ENED^PSIVORV1,NEWENT^PSIVORFE,EDIT^PSIVEDT W !,"...creating new order..." D ENGNN^PSGOETO S ON=DA_"P",P("RES")="R",P("FRES")="" D SET^PSIVORFE D PUT531^PSIVORFA
 S $P(^PS(55,DFN,"IV",+P("OLDON"),2),U,6)=ON,$P(^(2),U,9)="R"
 S P("NEWON")=ON,(ON,ON55)=P("OLDON"),P("FRES")="R",P("RES")="" K ORETURN D RUPTXT^PSIVOREN(DFN,ON)
 Q
 ;
REDIT ; Set edit string for OE/RR renew.
 S X=$G(^VA(200,+DUZ,"PS")),EDIT=$S('X:"1^",'$P(X,U,4):"",$P(X,U,4)<DT:"1^",1:"")_66,PSIVOK=EDIT S:$P(EDIT,U)'=1 P(6)=DUZ_U_$P($G(^VA(200,DUZ,0)),U)
 Q
 ;
FLUIDQO ; Process IV Fluid quick order.
 N PSIVAC,PSIVOK,EDIT,DRG,ND,PSJQOD,P,PSJORNP,PSJORL S PSIVAC="ON",PSJORNP=$G(ORNP) D PS^PSIVOREN Q:PSJORPF
 D SETUP^PSIVORFE S P("MR")="IV"_U_$O(^PS(51.2,"C","IV",0)),DFN=+ORVP
 F DRG("SC")=3,4 S DRG("TYP")=$S(DRG("SC")=3:"AD",1:"SOL"),DRG(DRG("TYP"),0)=0 I $D(^PS(57.1,PSJQO,DRG("SC"))) F PSJQOD=0:0 S PSJQOD=$O(^PS(57.1,PSJQO,DRG("SC"),PSJQOD)) Q:'PSJQOD  D
 .S ND=$G(^PS(57.1,PSJQO,DRG("SC"),PSJQOD,0)),DRG(1)=+ND,DRG(3)=$P(ND,U,2)
 .S ND=$G(^PS($S(DRG("SC")=3:52.6,1:52.7),DRG(1),0)),DRG(2)=$P(ND,U),DRG(5)=$P(ND,U,13),DRG(6)=$P(ND,U,11)
 .S DRG(DRG("TYP"),0)=DRG(DRG("TYP"),0)+1,DRG(DRG("TYP"),DRG(DRG("TYP"),0))=DRG(1)_U_DRG(2)_U_DRG(3)_U_U_$P(ND,U,13)_U_$P(ND,U,11)
 S PSIVUP=+$$GTPCI^PSIVUTL
 ;K ^PS(53.45,PSIVUP,4) I $O(^PS(57.1,PSJQO,2,0)) S %X="^PS(57.1,"_+PSJQO_",2,",%Y="^PS(53.45,"_PSIVUP_",4," D %XY^%RCR
 S X=$G(^PS(57.1,+PSJQO,1)),P(8)=$P(X,U,5),PSGPCP=$P(X,U,6),(EDIT,PSIVOK)=$S(('PSGPCP&(P(8)="")):"59^66",P(8)="":"59",'PSGPCP:"66",1:"")
 S PSJORL=ORL,ORSTS=11 I EDIT'="" D ENED^PSIVORV1,EDIT^PSIVEDT Q:DONE
 K DA,DIC,ON,P("OLDON") W !!,"...transcribing this order..." D ENGNN^PSGOETO S ON=DA D NEWENT^PSIVORFE,SET^PSIVORFE D PUT531^PSIVORFA L -^PS(53.1,+ON) W !
 Q
 ;
DONE ; Kill variables and exit
 K AD,C,DO,DFN,DRG,I,NN,P,PSGP,PSJACNWP,PSIVAC,PSIVE,PSIVLOG,PSIVREA,PSIVUP,PSIVX,PSJIVORF,PSJORL,PSJORPF,PSJORNP,PSJORSTS,SOL,SPSOL,UL80 D ENIVKV^PSGSETU
 Q