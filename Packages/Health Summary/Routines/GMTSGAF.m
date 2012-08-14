GMTSGAF ; SLC/KER - MH Gbl Assessment Funct (GAF)    ; 6/20/05 1:44pm
 ;;2.7;Health Summary;**35,44,49,74**;Oct 20, 1995
 ;                  
 ; External References
 ;   DBIA 10035  ^DPT(
 ;   DBIA 10003  ^%DT
 ;   DBIA 10088  DEM^VADPT
 ;   DBIA 10103  $$FMADD^XLFDT
 ;   DBIA 10103  $$FMTE^XLFDT
 ;   DBIA 10103  $$NOW^XLFDT
 ;   DBIA  2896  GAFHX^YSGAFAPI
 ;                     
 Q
EN ; Global Assessment Functioning Score
 N MAX S MAX=$S(+($G(GMTSNDM))>0:+($G(GMTSNDM)),1:9999999)
 S:+($G(GMTSBEG))'>2700101 GMTSBEG=$$FMADD^XLFDT($P($$NOW^XLFDT,".",1),-1095,0,0,1),GMTSEND=$$FMADD^XLFDT($P($$NOW^XLFDT,".",1),1,0,0,1),GMTS2=9999999-GMTSBEG,GMTS1=9999999-GMTSEND
 S:'$L($P(GMTSBEG,".",2)) GMTSBEG=$$FMADD^XLFDT(GMTSBEG,0,0,0,1)
 S:+($G(GMTSEND))'>2700101!(+($G(GMTSEND))>+($$FMADD^XLFDT($P($$NOW^XLFDT,".",1),+1,0,0,2))) GMTSEND=$$FMADD^XLFDT($P($$NOW^XLFDT,".",1),1,0,0,1),GMTS1=9999999-GMTSEND
 S:'$L($P(GMTSEND,".",2)) GMTSEND=$$FMADD^XLFDT(GMTSEND,0,0,0,1)
 S:+($G(GMTSEND))>0&(+($G(GMTS1))=0) GMTS1=9999999-GMTSEND S:+($G(GMTSBEG))>0&(+($G(GMTS2))=0) GMTS2=9999999-GMTSBEG
 S GMTSLO=+($G(GMTSLO)) S:GMTSLO=0 GMTSLO=3 S GMTSLPG=+($G(GMTSLPG)),GMTSDTM=$G(GMTSDTM) S:'$L(GMTSDTM) GMTSDTM=$$DTM
 S:'$D(GMTSTITL)!('$L($G(GMTSTITL))) GMTSTITL="GLOBAL ASSESSMENT FUNCTIONING"
 S DFN=+($G(DFN)) Q:'$L($P($G(^DPT(DFN,0)),"^",1))
 N %,%DT,%H,%I,%T,%X,I,N,VA,VADM,VAERR,X,Y,YS,YSGAF
 N GMTSBAR,GMTSCNT,GMTSCOM,GMTSCORE,GMTSCS,GMTSCW,GMTSDATE,GMTSDT
 N GMTSGAF,GMTSGAF1,GMTSGAF2,GMTSGAF3,GMTSGAFN,GMTSI,GMTSJ,GMTSLEN,GMTSPROV,GMTSRV
 S GMTSGAF1=$$EXT(+($G(GMTS1))),GMTSGAF2=$$ITM(+($G(GMTS2))),GMTSGAF3=$$TOM
 S GMTSGAFN=+($G(MAX)) S:GMTSGAFN=0 GMTSGAFN=10
 S GMTSCW(0)=+($G(IOM)) S:GMTSCW(0)=0 GMTSCW(0)=80
 S GMTSCW(1)=5,GMTSCW(2)=10,GMTSCW(3)=20,GMTSCW(4)=GMTSCW(0)-(GMTSCW(1)+GMTSCW(2)+GMTSCW(3)+8)
 S GMTSCW("L")=(GMTSCW(1)+GMTSCW(2)+GMTSCW(3)+GMTSCW(4)+6)
 S GMTSCS(1)=1,GMTSCS(2)=GMTSCS(1)+GMTSCW(1)+2,GMTSCS(3)=GMTSCS(2)+GMTSCW(2)+2,GMTSCS(4)=GMTSCS(3)+GMTSCW(3)+2
 S YS("DFN")=DFN,YS("BEGIN")=$S($L(GMTSGAF2):GMTSGAF2,1:GMTSGAF3)
 S YS("END")=$S($L(GMTSGAF1):GMTSGAF1,1:"01/01/1970"),YS("LIMIT")=GMTSGAFN
 D GET Q:'$D(^TMP($J,"GMTSGAF",DFN))  D OUT Q
OUT ; Output
 N GMTSI,GMTSJ,GMTSCORE,GMTSDATE,GMTSPROV,GMTSCOM S DFN=+($G(DFN)) Q:DFN=0  D HDR S GMTSI=0 F  S GMTSI=$O(^TMP($J,"GMTSGAF",DFN,GMTSI)) Q:+GMTSI=0  D
 . S GMTSJ=$G(^TMP($J,"GMTSGAF",DFN,GMTSI))
 . S GMTSCORE=$P(GMTSJ,"^",1),GMTSDATE=$P(GMTSJ,"^",2),GMTSPROV=$P(GMTSJ,"^",3),GMTSCOM=$P(GMTSJ,"^",4) S:GMTSCORE=""&(GMTSDATE["----")&($L(GMTSCOM)) GMTSCORE=">>" D LINE
 K ^TMP($J,"GMTSGAF",DFN) Q
LINE ; Output One Line
 D CKP^GMTSUP Q:$D(GMTSQIT)  D:GMTSNPG=1 HDR W ?GMTSCS(1),$J($E(GMTSCORE,1,3),3),?GMTSCS(2),GMTSDATE,?GMTSCS(3),$E(GMTSPROV,1,GMTSCW(3)),?GMTSCS(4),GMTSCOM,! Q
HDR ; Header
 N GMTSI S GMTSI="",$P(GMTSI,"-",+($G(GMTSCW("L"))))="-"
 D CKP^GMTSUP Q:$D(GMTSQIT)  G:GMTSNPG=1 HDR W ?GMTSCS(1)," GAF ",?GMTSCS(2),"Date",!
 D CKP^GMTSUP Q:$D(GMTSQIT)  G:GMTSNPG=1 HDR W ?GMTSCS(1),"Score",?GMTSCS(2),"Determined",?GMTSCS(3),"Determined by",?GMTSCS(4),"Graph/Comment",!
 D CKP^GMTSUP Q:$D(GMTSQIT)  G:GMTSNPG=1 HDR W ?GMTSCS(1),GMTSI,!
 Q
GET ; Get and Format Data
 N %DT,X,Y,GMTSGPH,GMTSCORE,GMTSDT,GMTSDATE,GMTSPROV,GMTSCOM S DFN=+($G(DFN)),GMTSGPH=0 K ^TMP($J,"GMTSGAF",DFN),YSGAF D GAFHX^YSGAFAPI(.YSGAF,.YS),SPC
 I +($P($G(YSGAF("DEC")),".",1))>0 D
 . S GMTSDT=+($P($G(YSGAF("DEC")),".",1)),GMTSCOM="Deceased ("_$$FMTE^XLFDT(GMTSDT,"5ZD")_")" D SD(GMTSDT,DFN,"","","",GMTSCOM)
 I +($P($G(YSGAF("DUE")),".",1))>0 D
 . S GMTSDT=+($P($G(YSGAF("DUE")),".",1)) Q:GMTSDT>$$TOD  S GMTSCOM="Due since "_$$FMTE^XLFDT(GMTSDT,"5ZD") D SD(GMTSDT,DFN,"","","",GMTSCOM)
 N I S I=1 F  S I=$O(YSGAF(I)) Q:+I=0  D
 . S GMTSDT=$P(YSGAF(I),"^",1),GMTSDATE=$P(GMTSDT,".",1),GMTSDATE=$$FMTE^XLFDT(GMTSDATE,"5ZD")
 . Q:+($G(YSGAF("DEC")))>0&(+GMTSDATE>+($G(YSGAF("DEC"))))
 . S GMTSCORE=$P(YSGAF(I),"^",5),GMTSPROV=$P(YSGAF(I),"^",7)
 . S GMTSCOM=+($P($G(YSGAF("ERR",I)),".",1)) S:+GMTSCOM=0 GMTSCOM=""
 . S:+GMTSCOM>0 GMTSCOM="Entered in error ("_$$FMTE^XLFDT(GMTSCOM,"5ZD")_")"
 . S:GMTSCOM="" GMTSCOM=$$B(GMTSCORE,31)
 . D:'$D(YSGAF("ERR",I)) SD(GMTSDT,DFN,GMTSCORE,GMTSDATE,GMTSPROV,GMTSCOM)
 Q
SPC ; Get Special Case (Deceased, Due, Entered-in-Error)
 N GMTSI S YSGAF("P")=$P($G(^DPT(+($G(DFN)),0)),"^",1)
 S GMTSI=$$DEC(+($G(DFN))) S:+GMTSI>0 YSGAF("DEC")=GMTSI I +GMTSI=0 S GMTSI=$$DUE S:+GMTSI>0 YSGAF("DUE")=GMTSI
 K:+($G(YSGAF("DEC")))>0 YSGAF("DUE") S GMTSI=$$ERR S:+GMTSI>0 YSGAF("ERR")=GMTSI
 Q
SD(GMTSI,DFN,GMTSCORE,GMTSDATE,GMTSPROV,GMTSCOM) ; Save Data
 N GMTSIG S (GMTSCORE,GMTSIG)=$G(GMTSCORE),GMTSCORE=$$GAF(GMTSCORE),DFN=+($G(DFN))
 S GMTSIG=100-(+($G(GMTSIG)))
 S GMTSI=+($G(GMTSI)),GMTSI=9999999.999999-GMTSI
 S GMTSPROV=$G(GMTSPROV),GMTSDATE=$G(GMTSDATE)
 S GMTSIG=GMTSI_GMTSIG_GMTSPROV_GMTSDATE
 S:GMTSDATE="" GMTSDATE="--/--/----"
 S ^TMP($J,"GMTSGAF",DFN,GMTSIG)=GMTSCORE_"^"_GMTSDATE_"^"_GMTSPROV_"^"_$G(GMTSCOM)
 Q
ERR(X) ; Entered in Error
 N GMTSCNT,GMTSI,GMTSGAF,GMTSJ,GMTSDATE S (GMTSCNT,GMTSI)=0,GMTSDATE="" F  S GMTSI=$O(YSGAF(GMTSI)) Q:+GMTSI=0  D
 . S GMTSGAF=$P(YSGAF(GMTSI),"^",8) Q:GMTSGAF'["entered in error"
 . S YSGAF("ERR")="" F GMTSJ=1:1:$L(GMTSGAF," ") D
 .. S:$P(GMTSGAF," ",GMTSJ)["@"&(GMTSJ>2) GMTSDATE=$P(GMTSGAF," ",GMTSJ-1,GMTSJ) S:$L(GMTSDATE) GMTSDATE=$$ETF(GMTSDATE)
 . S:$L(GMTSDATE) YSGAF("ERR",GMTSI)=GMTSDATE,GMTSCNT=GMTSCNT+1
 S X=GMTSCNT Q X
DUE(X) ; GAF Score Due Date
 S:'$D(YSGAF(2)) YSGAF(1)="[NO DATA]" N GMTSI,GMTSJ,GMTSDATE S (GMTSI,GMTSJ,GMTSDATE)=0
 F  S GMTSI=$O(YSGAF(GMTSI)) Q:+GMTSI=0  S GMTSJ=$P(YSGAF(GMTSI),"^",1) S:GMTSJ>GMTSDATE GMTSDATE=GMTSJ
 S GMTSDATE=$S(GMTSDATE>0:$$FMADD^XLFDT(GMTSDATE,90,0,0,0),1:"") S X=GMTSDATE Q X
ITM(X) ; convert inverse internal date to internal date to external date
 N SAVX  ;  temp scratch variable to hold value of X
 S X=+($G(X)),X=9999999-X  ; produce an internal date
 S SAVX=X
 S X=$$FMTE^XLFDT(X,"5ZD") D ^%DT I Y=-1 D  ; if not valid date, default to 3 years ago
 . S X1=$$NOW^XLFDT,X2=-1095 D C^%DTC S SAVX=X
 S X=SAVX
 S X=$$FMTE^XLFDT(X,"5ZD")    ; produce external format
 Q X
EXT(X) ; convert inverse internal date to internal date, add one day, then to external date
 N SAVX  ;  temp scratch variable to hold value of X
 S X=+($G(X)),X=9999999-X  ; produce an internal date
 S SAVX=X
 S X=$$FMTE^XLFDT(X,"5ZD") D ^%DT I Y=-1 S SAVX=$$NOW^XLFDT ; if not valid date, set to NOW
 S X=SAVX
 S X=$$FMADD^XLFDT(X,1,0,0,0) ; add one day so any GAF data entered today will appear on output
 S X=$$FMTE^XLFDT(X,"5ZD")    ; output in external format
 Q X
ETF(X) ; External to Fileman format
 N %DT,Y S X=$G(X),%DT="PST" D ^%DT S X=Y S:+X'>0 X="" Q X
TOM(X) ; Tomorrow
 S X=$$FMTE^XLFDT($$FMADD^XLFDT($$NOW^XLFDT,1,0,0,0),"5ZD") Q X
TOD(X) ; Today
 S X=$$NOW^XLFDT Q X
DEC(X) ; Deceased Date
 N %,%H,%I,%X,%T,VA,VADM,VAERR,DFN S DFN=+($G(X)) Q:DFN=0 "" Q:'$D(^DPT(+DFN,0)) ""
 D DEM^VADPT S X=+$G(VADM(6)) S:X=0 X="" Q X
B(X,Y) ; Graph Bar
 N GMTSGAF,GMTSCHAR,GMTSCW,GMTSLEN,GMTSI,GMTSBAR S GMTSGAF=$G(X),GMTSCW=+($G(Y)) Q:GMTSCW=0 ""
 S GMTSCHAR="#" F  Q:$E(GMTSGAF,1)'="0"  S GMTSGAF=$E(GMTSGAF,2,$L(GMTSGAF))
 S GMTSGAF=+GMTSGAF Q:GMTSGAF=0 ""
 I GMTSGAF>99 S GMTSBAR="",$P(GMTSBAR,GMTSCHAR,GMTSCW)=GMTSCHAR
 I GMTSGAF'>99 S GMTSI=GMTSCW/100,GMTSLEN=GMTSI*GMTSGAF,GMTSLEN=$FN(GMTSLEN,"",0),GMTSBAR="",$P(GMTSBAR,GMTSCHAR,GMTSLEN)=GMTSCHAR
 S X=GMTSBAR Q X
GAF(X) ; 2 Digit GAF Score
 S X=$E($G(X),1,3) Q:X=""!(X="---") "" S X=+X Q:X=0 "  0" S:$L(X)=1 X="  "_X S:$L(X)=2 X=" "_X Q X
DTM(X) ; Current Date and Time (External)
 S X=$$NOW^XLFDT D REGDTM4^GMTSU Q X