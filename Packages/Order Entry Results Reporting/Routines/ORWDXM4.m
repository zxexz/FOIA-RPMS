ORWDXM4 ; SLC/KCM - Order Dialogs, Menus;10:42 AM  6 Sep 1998
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**10,85**;Dec 17, 1997
 ;
SETUP ; -- setup dialog (continued from ORWDXM1)
 ;    if xfer med order, setup ORDIALOG differently
 I ORWMODE,$$ISMED(ORIT),$$CHGSTS(ORCAT,ORIT) D MEDXFER Q
 ;    get base dialog (based on display group) & location of responses
 I ORWMODE D
 . S ORDG=$P(^OR(100,+ORIT,0),U,11),ORDIALOG=+$P(^(0),U,5)
 . S RSPREF="^OR(100,"_+ORIT_",4.5)"
 E  D
 . N X0 S X0=$G(^ORD(101.41,ORIT,0))
 . S ORDIALOG=$S($P(X0,U,4)="D":ORIT,1:0)
 . S ORDG=$P(X0,U,5) Q:'ORDG
 . I 'ORDIALOG S ORDIALOG=+$$DEFDLG^ORWDXQ(ORDG)
 . S RSPREF="^ORD(101.41,"_ORIT_",6)"
 ;    setup the ORDIALOG array
 D GETDLG^ORCD(ORDIALOG)
 D GETORDER^ORCD(RSPREF)
 Q
MEDXFER ; -- setup ORDIALOG for a med that is transferred (from SETUP)
 ;
 ; use ORWDPS3 if OR*3*94 installed
 I ORWP94 G MEDXFER^ORWDPS3
 ;
 N UDLG,FDLG,ODLG,DLG,OI K ^TMP("PS",$J)
 S UDLG=$O(^ORD(101.41,"AB","PSJ OR PAT OE",0))
 S FDLG=$O(^ORD(101.41,"AB","PSJI OR PAT FLUID OE",0))
 S ODLG=$O(^ORD(101.41,"AB","PSO OERR",0))
 S DLG=$P($G(^OR(100,+ORIT,0)),U,5)
 S ORDIALOG=$S(+DLG=UDLG:ODLG,+DLG=ODLG:UDLG,+DLG=FDLG:FDLG,1:0)
 I 'ORDIALOG D SETERR(ORIT,"Incomplete Order Record") Q
 S ORDG=+$P(^ORD(101.41,ORDIALOG,0),U,5)
 D GETDLG^ORCD(ORDIALOG)
 D GETORDER^ORCD("^OR(100,"_+ORIT_",4.5)")
 S OI=$$VAL^ORCD("MEDICATION")
 I '$$MEDOK(OI,ORCAT) D SETERR(ORIT,"This may not be ordered as an "_$S(ORCAT="I":"in",1:"out")_"patient drug.") Q
 I $G(^ORD(101.43,OI,.1)),(^(.1)<$$NOW^XLFDT) D SETERR(ORIT,"This may no longer be ordered.") Q
 K ORDIALOG($$PTR("DISPENSE DRUG"),1)
 K ORDIALOG($$PTR("WORD PROCESSING 1"),1)
 I ORDIALOG=ODLG D IN2OUT  ; could call  IN^ORCMED except for writes
 I ORDIALOG=UDLG D OUT2IN  ; could call OUT^ORCMED except for writes
 Q
IN2OUT ; -- make inpatient responses into outpatient
 N I,DDRUG,PKGID,DOSE
 S DOSE=$G(ORDIALOG($$PTR("INSTRUCTIONS"),1))
 F I="INSTRUCTIONS","UNITS/DOSE","FREE TEXT","DISPENSE DRUG" K ORDIALOG($$PTR(I),1)
 S PKGID=$G(^OR(100,+ORIT,4))_";"_$P(^(0),U,12)
 D OEL^PSOORRL(+ORVP,PKGID) S DDRUG=$G(^TMP("PS",$J,"DD",1,0))
 I $P(DDRUG,U,3) S ORDIALOG($$PTR("DISPENSE DRUG"),1)=$P(DDRUG,U,3)
 ;    keep instructions if IV med, otherwise use units returned
 I $P($G(^ORD(101.43,OI,"PS")),U)=2 S ORDIALOG($$PTR("INSTRUCTIONS"),1)=DOSE
 E  S:$P(DDRUG,U,2) ORDIALOG($$PTR("INSTRUCTIONS"),1)=$P(DDRUG,U,2)
 ;    change orderable item if new orderable item returned
 I $P(DDRUG,U,4),$P(DDRUG,U,4)'=+$P($G(^ORD(101.43,OI,0)),U,2) D
 . S OI=+$O(^ORD(101.43,"ID",+$P(DDRUG,U,4)_";99PSP",0))
 . S:OI ORDIALOG($$PTR("ORDERABLE ITEM"),1)=OI
 Q
OUT2IN ; make outpatient responses into inpatient
 N ORP,ORI,PROMPT,PKGID,DDRUG,ONE
 D CHANGED^ORCDPS("XFR") ; Kill extra values not in inpt dialog
 S PKGID=$G(^OR(100,+ORIT,4))_";"_$P(^(0),U,12)
 D OEL^PSOORRL(+ORVP,PKGID) S DDRUG=$G(^TMP("PS",$J,"DD",1,0))
 S:$P(DDRUG,U,3) ORDIALOG($$PTR("DISPENSE DRUG"),1)=$P(DDRUG,U,3)
 I $P(DDRUG,U,4),$P(DDRUG,U,4)'=+$P($G(^ORD(101.43,+OI,0)),U,2) D
 . S OI=+$O(^ORD(101.43,"ID",+$P(DDRUG,U,4)_";99PSP",0))
 . S:OI ORDIALOG($$PTR("ORDERABLE ITEM"),1)=OI
 S ONE=$O(ORDIALOG($$PTR("INSTRUCTIONS"),0)) ; first inst
 F ORP="ROUTE","SCHEDULE" D
 . S ORI=0,PROMPT=$$PTR(ORP)
 . F  S ORI=$O(ORDIALOG(PROMPT,ORI)) Q:ORI'>0  I ORDIALOG(PROMPT,ORI)=""!(ORI>ONE) K ORDIALOG(PROMPT,ORI)
 Q
PTR(NAME) ; -- Returns pointer to OR GTX NAME (copied from ORCMED)
 Q +$O(^ORD(101.41,"AB",$E("OR GTX "_NAME,1,63),0))
 ;
MEDOK(OI,CAT)   ; return 1 if med may be ordered for this patient category
 N P S P=$S(CAT="I":1,1:2)
 Q $P($G(^ORD(101.43,+OI,"PS")),U,P)
 ;
CHGSTS(ECAT,IFN)        ; return 1 if out to in or in to out
 N OCAT
 S OCAT=$P($G(^OR(100,+IFN,0)),U,12)
 Q OCAT'=ECAT
 ;
ISMED(IFN)      ; return 1 if this is a pharmacy order
 N PKG S PKG=$P($G(^OR(100,+IFN,0)),U,14)
 Q $$NMSP^ORCD(PKG)="PS"
SETERR(ID,X)       ; sets LST to rejection with error message
 D GETTXT^ORWORR(.LST,ID)
 S LST(0)="8^0",LST(.5)=X,LST(.6)=""
 Q
  