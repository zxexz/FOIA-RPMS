TIURPTT1 ; SLC/JER - Review Documents by PATIENT & TITLE ;08-Aug-2007 19:12;MGH
 ;;1.0;TEXT INTEGRATION UTILITIES;**100,1005**;Jun 20, 1997
 ; 12/5/00 new rtn from splitting TIURPTTL
 ;IHS/ITSC/LJF 02/27/2003 changed SSN to HRCN
 ;Changed the HRCN for divisions
 ;
GATHER(TIUI,TIUPREF,CLASS,STATIFNS,EARLY,LATE,XREF) ; Find/sort records for the list
 N TIUT,TIUTP,TIUS,TIUSTAT,TIUSFLD,TIUJ,TIUQ,TIUIFN
 S TIUSFLD=$P(TIUPREF,U,3)
 S TIUSFLD=$S(TIUSFLD="P":".02",TIUSFLD="D":".01",TIUSFLD="S":".05",TIUSFLD="C":"1507",TIUSFLD="A":"1202",TIUSFLD="E":"1208",1:"1301")
 S TIUT=0 F  S TIUT=$O(TYPES(TIUT)) Q:+TIUT'>0  D
 . S TIUTP=+$P($G(TYPES(TIUT)),U,2) Q:TIUTP'>0
 . S TIUS=1 F  S TIUSTAT=$P(STATIFNS,";",TIUS) Q:'TIUSTAT  D
 . . S TIUS=TIUS+1
 . . S TIUJ=LATE F  S TIUJ=$O(^TIU(8925,XREF,TIUI,TIUTP,TIUSTAT,TIUJ)) Q:+TIUJ'>0!(+TIUJ>EARLY)  D
 . . . S TIUIFN=0
 . . . F  S TIUIFN=$O(^TIU(8925,XREF,TIUI,TIUTP,TIUSTAT,TIUJ,TIUIFN)) Q:+TIUIFN'>0  D
 . . . . ;Consider adding view check here
 . . . . I TIUTP=81,(+TYPES>1),($P(TYPES(TIUT),U,4)="NOT PICKED"),'+$$DADINTYP(TIUIFN,.TYPES) Q
 . . . . S TIUQ=$$RESOLVE^TIUR1(TIUIFN,TIUSFLD)
 . . . . S ^TMP("TIUI",$J,TIUQ,TIUJ,TIUIFN)=""
 Q
DADINTYP(TIUDA,TYPES) ; Evaluates whether addendum's parent belongs is among
 ;                 the selected types
 N TIUI,TIUDTYP,TIUY S (TIUI,TIUY)=0
 S TIUDTYP=+$G(^TIU(8925,+$P($G(^TIU(8925,+TIUDA,0)),U,6),0))
 F  S TIUI=$O(TYPES(TIUI)) Q:+TIUI'>0!+TIUY  D
 . I +$P(TYPES(TIUI),U,2)=TIUDTYP S TIUY=1
 Q TIUY
PUTLIST(TIUPREF,TIUCLASS,STATUS,SCREEN) ; Adds list elements
 ;to LM Template array
 N TIUJ,TIUQ,TIUDA,TIUPICK,TIUORDER
 N TIUEXPKD,FORGETAD,TIUSFLD
 S VALMCNT=0
 S TIUSFLD=$P(TIUPREF,U,3)
 S TIUSFLD=$S(TIUSFLD="P":".02",TIUSFLD="D":".01",TIUSFLD="S":".05",TIUSFLD="C":"1507",TIUSFLD="A":"1202",TIUSFLD="E":"1208",1:"1301")
 S TIUORDER=$S($P(TIUPREF,U,4)="D":-1,1:1)
 S TIUPICK=+$O(^ORD(101,"B","TIU ACTION SELECT LIST ELEMENT",0))
 S TIUQ="" F  S TIUQ=$O(^TMP("TIUI",$J,TIUQ)) Q:TIUQ']""  D
 . S TIUJ=0 F  S TIUJ=$O(^TMP("TIUI",$J,TIUQ,TIUJ)) Q:+TIUJ'>0  D
 . . S TIUDA=0
 . . F  S TIUDA=$O(^TMP("TIUI",$J,TIUQ,TIUJ,TIUDA)) Q:+TIUDA'>0  D
 . . . S FORGETAD=1
 . . . ; Replace ID kids/addenda in ^TMP("TIUI",$J) with
 . . . ;their parents. Don't expand parent for sake of addm:
 . . . D REPLACE^TIUR2(TIUDA,TIUQ,TIUSFLD,TIUJ,.TIUEXPKD,FORGETAD)
 D SETLIST(TIUORDER,.VALMCNT)
 S ^TMP("TIUR",$J,0)=+$G(VALMCNT)_U_STATUS("WORDS")
 S TIUJ=0,SCREEN="" F  S TIUJ=$O(SCREEN(TIUJ)) Q:+TIUJ'>0  D
 . S SCREEN=$G(SCREEN)_$S(TIUJ>1:";",1:U)_SCREEN(TIUJ)
 S ^TMP("TIUR",$J,0)=^TMP("TIUR",$J,0)_$G(SCREEN)
 S ^TMP("TIUR",$J,"CLASS")=TIUCLASS
 S ^TMP("TIUR",$J,"#")=TIUPICK_"^1:"_+$G(VALMCNT)
 I $D(VALMHDR)>9 D HDR^TIURH
 I +$G(VALMCNT)'>0 D
 . S ^TMP("TIUR",$J,1,0)="",VALMCNT=2
 . S ^TMP("TIUR",$J,2,0)="     No records found to satisfy search criteria."
 ; -- Expand to show kids that fit:
 I '$G(TIURBLD),$D(TIUEXPKD) D EXPANDKD^TIUR2(.STATUS,.TIUEXPKD)
 Q
 ;
SETLIST(TIUORDER,VALMCNT) ; Set items from ^TMP("TIUI",$J) into
 ;List Template list
 N TIUSVAL,TIUDTM,TIUDA
 S TIUSVAL=""
 F  S TIUSVAL=$O(^TMP("TIUI",$J,TIUSVAL),TIUORDER) Q:TIUSVAL=""  D
 . S TIUDTM=0
 . F  S TIUDTM=$O(^TMP("TIUI",$J,TIUSVAL,TIUDTM)) Q:'TIUDTM  D
 . . S TIUDA=0
 . . F  S TIUDA=$O(^TMP("TIUI",$J,TIUSVAL,TIUDTM,TIUDA)) Q:'TIUDA  D
 . . . D ADDELMNT(TIUDA,.VALMCNT)
 Q
 ;
ADDELMNT(DA,TIUCNT,APPEND) ; Add each element to the list
 N PT,ADT,DDT,AUT,AMD,EDT,SDT,TIULST4
 N TIUREC,TIUD0,TIUD12,TIUD13,TIUD15,TIULI,STATX,DOC
 N PREFIX,TIUGDATA
 I '$D(^TIU(8925,DA,0)) Q
 I $G(^TMP("TIUR",$J,2,0))="     No records found to satisfy search criteria." D
 . K ^TMP("TIUR",$J,2),^TMP("TIUR",$J,"IDX",2),^TMP("TIUR",$J,"IDX",1) S TIUCNT=0
 S TIUD0=$G(^TIU(8925,+DA,0)),TIUD12=$G(^TIU(8925,+DA,12))
 S TIUD13=$G(^TIU(8925,+DA,13)),TIUD15=$G(^TIU(8925,+DA,15))
 S DOC=$$PNAME^TIULC1(+TIUD0)
 I DOC="Addendum" S DOC=DOC_" to "_$$PNAME^TIULC1(+$G(^TIU(8925,+$P(TIUD0,U,6),0)))
 S PREFIX=$$PREFIX^TIULA2(DA,0)
 S PT=$$NAME^TIULS($$PTNAME^TIULC1($P(TIUD0,U,2)),"LAST,FI MI")
 S TIULI=$E(PT)
 S PT=PREFIX_PT
 ;S TIULST4=$E($P($G(^DPT(+$P(TIUD0,U,2),0)),U,9),6,9)                       ;IHS/ITSC/LJF 02/27/2003
 ;S TIULST4="("_TIULI_TIULST4_")"                                            ;IHS/ITSC/LJF 02/27/2003
 ;NEW HRCN S DFN=$P($G(^TIU(8925,+DA,0)),U,2) D PID^VADPT S TIULST4="#"_HRCN  ;IHS/ITSC/LJF 02/27/2003
 N HRCN S HRCN="" S DFN=$P(TIUD0,U,2) S HRCN=$$HRCN^TIUR2(DFN,+$G(DUZ(2)))
 I HRCN'="" S TIULST4="#"_HRCN
 I HRCN="",+$D(^XUSEC("TIU VIEWALL",DUZ)) S TIULST4="Unknown"
 I HRCN="",'+$D(^XUSEC("TIU VIEWALL",DUZ)) Q
 ;End modification
 S ADT=$$DATE^TIULS($P(TIUD0,U,7),"MM/DD/YY")
 S DDT=$$DATE^TIULS($P(TIUD0,U,8),"MM/DD/YY")
 S AMD=$$PERSNAME^TIULC1($P(TIUD12,U,8)) S:AMD="UNKNOWN" AMD=""
 S AUT=$$PERSNAME^TIULC1($P(TIUD12,U,2)) S:AUT="UNKNOWN" AUT=""
 S AMD=$$NAME^TIULS(AMD,"LAST, FI MI")
 S AUT=$$NAME^TIULS(AUT,"LAST, FI MI")
 S EDT=$$DATE^TIULS($P(TIUD13,U),"MM/DD/YY")
 S SDT=$S(+$P(TIUD15,U,7):+$P(TIUD15,U,7),+$P(TIUD0,U,5)'<7:+$P(TIUD15,U),1:"")
 S SDT=$$DATE^TIULS(SDT,"MM/DD/YY")
 S STATX=$P($G(^TIU(8925.6,+$P(TIUD0,U,5),0)),U)
 S TIUCNT=+$G(TIUCNT)+1
 S TIUREC=$$SETFLD^VALM1(TIUCNT,"","NUMBER")
 S TIUREC=$$SETFLD^VALM1(PT,TIUREC,"PATIENT NAME")
 S TIUREC=$$SETFLD^VALM1(TIULST4,TIUREC,"LAST I/LAST 4")
 S TIUREC=$$SETFLD^VALM1(DOC,TIUREC,"DOCUMENT TYPE")
 S TIUREC=$$SETFLD^VALM1(EDT,TIUREC,"REF DATE")
 S TIUREC=$$SETFLD^VALM1($$LOWER^TIULS(STATX),TIUREC,"STATUS")
 S TIUREC=$$SETFLD^VALM1(SDT,TIUREC,"SIG DATE")
 S TIUREC=$$SETFLD^VALM1(AUT,TIUREC,"AUTHOR")
 S TIUREC=$$SETFLD^VALM1(AMD,TIUREC,"COSIGNER")
 S ^TMP("TIUR",$J,TIUCNT,0)=TIUREC
 S ^TMP("TIUR",$J,"IDX",TIUCNT,TIUCNT)="" W "."
 S ^TMP("TIURIDX",$J,TIUCNT)=TIUCNT_U_DA_U_PREFIX
 S ^TMP("TIUR",$J,"IEN",DA,TIUCNT)="" ;MARGY 11/11/00
 S TIUGDATA=$$IDDATA^TIURECL1(DA,TIUD0)
 I TIUGDATA S ^TMP("TIUR",$J,"IDDATA",DA)=TIUGDATA
 S VALMCNT=TIUCNT
 I +$G(APPEND) D
 . D RESTORE^VALM10(TIUCNT)
 . D CNTRL^VALM10(TIUCNT,1,$G(VALM("RM")),IOINHI,IOINORM),HDR^TIURH
 . S VALMSG="** Item #"_TIUCNT_" Added **"
 . S $P(^TMP("TIUR",$J,0),U)=TIUCNT
 . S $P(^TMP("TIUR",$J,"#"),":",2)=TIUCNT
 . S VALMCNT=TIUCNT
 . I $D(VALMHDR)>9 D HDR^TIURH
 Q
 ;