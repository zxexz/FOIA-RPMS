BQIIPEMP ;VNGT/HS/ALA-Empanelled Patients ; 06 May 2011  1:38 PM
 ;;2.3;ICARE MANAGEMENT SYSTEM;;Apr 18, 2012;Build 59
 ;
 ;
EN(BQDATE) ;EP
 NEW BQMON,BQDTE,BEGDT,EDAY,ENDT,PYR,CYR,ID,FAC,BQITOTP,BQITOTR,DFN,BD,ED
 NEW BQGOTA,F,QFL,X,Y,CRST
 S QFL=0
 S CRST=$P($G(^BQI(90508,1,11)),U,2) S:CRST="" CRST=1
 S CRST="0"_CRST
 ;
 I $G(BQDATE)'="" D
 . S BEGDT=$E(BQDATE,1,5)_"01",CYR=$E(BQDATE,1,3),BQMON=$E(BQDATE,4,5)
 . I $L(BQMON)=1 S BQMON="0"_BQMON
 . S EDAY="31^"_($$LEAP^XLFDT2(CYR)+28)_"^31^30^31^30^31^31^30^31^30^31"
 . S ENDT=$E(BQDATE,1,5)_$P(EDAY,U,+BQMON)
 ;
 I $G(BQDATE)="" D  Q:QFL
 . I $E(DT,6,7)'=CRST S QFL=1 Q
 . S BQMON=$E(DT,4,5)-1,CYR=$E(DT,1,3),PYR=CYR-1
 . S BQDTE=$P($T(BQM+BQMON),";;",2)
 . I $L(BQMON)=1 S BQMON="0"_BQMON
 . S BEGDT=@($P(BQDTE,U,2))_$P(BQDTE,U,1)_"01"
 . S EDAY="31^"_($$LEAP^XLFDT2(CYR)+28)_"^31^30^31^30^31^31^30^31^30^31"
 . S ENDT=@($P(BQDTE,U,2))_$P(BQDTE,U,1)_$P(EDAY,U,+$P(BQDTE,U,1))
 . S BQDATE=$S(BQMON="01":PYR,1:CYR)_BQMON_"00"
 ;
 S ID="IPC_PEMP"
 S FAC=$$HME^BQIGPUTL()
 ;
 S BGDT=$$FMADD^XLFDT(ENDT,1),BGDT=($E(BGDT,1,3)-3)_$E(BGDT,4,7)
 ; BQITOTP = Total active patients ; BQITOTR = Total active patients empanelled
 S BQITOTP=0,BQITOTR=0
 ;
 S DFN=0
 F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 . I $G(^AUPNPAT(DFN,0))="" Q
 . I $G(^DPT(DFN,0))="" Q
 . ; If patient merged to a different IEN
 . I $P(^DPT(DFN,0),U,19)'="" Q
 . ; if a demo patient
 . I $$DEMO^APCLUTL(DFN,"E") Q
 . ; if deceased
 . I $D(^DPT(DFN,.35)),$P(^(.35),U)]"",$P(^(.35),U)'>ENDT Q
 . ; if no HRN for this facility
 . I $G(^AUPNPAT(DFN,41,FAC,0))="" Q
 . ; if HRN marked inactive
 . ;I $P($G(^AUPNPAT(DFN,41,FAC,0)),U,3)'="",$P($G(^AUPNPAT(DFN,41,FAC,0)),U,3)'>ENDT Q
 . ;
 . S BD=(9999999-ENDT)-.0001,ED=9999999-BGDT,BQGOTA=0
 . F  S BD=$O(^AUPNVSIT("AA",DFN,BD)) Q:BD=""!(BD\1>ED)  D
 .. S VISIT=""
 .. F  S VISIT=$O(^AUPNVSIT("AA",DFN,BD,VISIT)) Q:VISIT=""  D
 ... I $G(^AUPNVSIT(VISIT,0))="" Q
 ... I $P(^AUPNVSIT(VISIT,0),U,11) Q
 ... I BQGOTA=1 Q
 ... Q:'$P(^AUPNVSIT(VISIT,0),U,9)
 ... Q:"DXECTI"[$P(^AUPNVSIT(VISIT,0),U,7)
 ... S CL=$$CLINIC^APCLV(VISIT,"C") I CL=11!(CL=68)!(CL=51)!(CL=52) Q
 ... Q:'$D(^AUPNVPOV("AD",VISIT))
 ... Q:$$PRIMPROV^APCLV(VISIT,"I")=""
 ... S F=$P(^AUPNVSIT(VISIT,0),U,6) I F="" Q
 ... I F'=FAC Q
 ... S BQGOTA=1
 ... S BQITOTP=BQITOTP+1 ; Denominator
 ... I $P(^AUPNPAT(DFN,0),U,14) S BQITOTR=BQITOTR+1 ; Numerator
 ;
 D STORF^BQIIPUTL(FAC,ID,BQDATE,BQITOTP,BQITOTR)
 Q
 ;
BQM ;
 ;;12^PYR
 ;;01^CYR
 ;;02^CYR
 ;;03^CYR
 ;;04^CYR
 ;;05^CYR
 ;;06^CYR
 ;;07^CYR
 ;;08^CYR
 ;;09^CYR
 ;;10^CYR
 ;;11^CYR