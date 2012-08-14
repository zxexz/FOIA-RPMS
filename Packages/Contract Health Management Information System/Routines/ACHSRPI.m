ACHSRPI ; IHS/ITSC/PMF - SET PRIVATE INS/RATE QUOT VARS FOR UNIVERSAL FORM  [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
PVT ;
 Q:DFN=""
 S (DA,N)=0
 G MCR:'$D(^AUPNPRVT(DFN,11))
PVT1 ;
 F  S DA=$O(^AUPNPRVT(DFN,11,DA)) G:'DA MCR D
 . S N=N+1,ACHSINS=$G(^AUPNPRVT(DFN,11,DA,0))
 . S I(N,1)=$P(ACHSINS,U,4),I(N,2)=$P(ACHSINS,U),I(N,5)=$P(ACHSINS,U,2),I(N,6)=$P(ACHSINS,U,3),I(N,7)=$P(ACHSINS,U,6),I(N,8)=$P(ACHSINS,U,7)
 . S ACHSINS1=$P($G(^AUTNINS(I(N,2),0)),U),I(N,2)=$P(ACHSINS1,U),I(N,3)=$P(ACHSINS1,U,2)
 . I $P(ACHSINS1,U,4),$D(^DIC(5,$P(ACHSINS1,U,4),0)) S X=$P(^(0),U,2),I(N,4)=$P(ACHSINS1,U,3)_", "_X_"  "_$P(ACHSINS1,U,5)
 . I I(N,6)'="" S I(N,6)=$P($G(^AUTTPIC(I(N,6),0)),U)
 . ;
 . ;IF THIS IS NOT PRIMARY INS. AND POLICY END DATE IS NOT LESS THAN
 . ;AUTHORIZED FROM DATE OR POLICY END DATE IS NULL SET THIS AS
 . ;PRIMARY INSURANCE
 . I (ACHSIPRM="N"),((I(N,8)'<ACHSFDT)!(I(N,8)="")) S ACHSIPRM="Y",I("P",N)="" Q
 . S I(N,7)=$$FMTE^XLFDT(I(N,7))
 . S I(N,8)=$$FMTE^XLFDT(I(N,8))
 . S I("B",N)=$E(I(N,2),1,(38-$L(I(N,5))))_" "_I(N,5)_"^EFF:"_I(N,7)_" "_I(N,8)
 . K I(N)
 .Q
MCR ;
 S N=N+1
 G MCD:'$D(^AUPNMCR("B",DFN))
 S ACHSMR=N
 S ACHSMDFN=0,ACHSMDFN=$O(^AUPNMCR("B",DFN,ACHSMDFN)),ACHSINS=$G(^AUPNMCR(ACHSMDFN,0))
 G:$P(ACHSINS,U,3)="" MCD   ;SKIP IF MEDICARE # NULL
 S I(N,5)=$P(ACHSINS,U,3)   ;
 ;IF SUFFIX NOT NULL ADD TO MEDICARE # 
 S:$P(ACHSINS,U,4)'="" I(N,5)=I(N,5)_$P($G(^AUTTMCS($P(ACHSINS,U,4),0)),U)
 ;GET NAME OF INSURED
 S I(N,1)=$S($D(^AUPNMCR(ACHSMDFN,21)):$P(^(21),U),'$D(^(21)):$P($G(^DPT(DFN,0)),U))
 S ACHSGL="^AUPNMCR"
 D SET
MCD ;
 G RRE:'$D(^AUPNMCD("B",DFN))
 S ACHSMDFN=0,ACHSMR=N,ACHSMDFN=$O(^AUPNMCD("B",DFN,ACHSMDFN))
 G:ACHSMDFN="" RRE
 S ACHSINS=$G(^AUPNMCD(ACHSMDFN,0))
 S I(N,5)=$P(ACHSINS,U,3)  ;MEDICAID #
 S I(N,1)=$P(ACHSINS,U,5)  ;NAME OF INSURED
 S ACHSGL="^AUPNMCD"
 D SET     ;
RRE ;
 G END:'$D(^AUPNRRE("B",DFN))
 S ACHSMDFN=0,ACHSMR=N,ACHSMDFN=$O(^AUPNRRE("B",DFN,ACHSMDFN))
 G:ACHSMDFN="" END
 S ACHSINS=$G(^AUPNRRE(ACHSMDFN,0)),I(N,5)=$P(ACHSINS,U,3),I(N,1)=$P(ACHSINS,U,5),ACHSGL="^AUPNRRE"
 D SET
END ;
 K ACHSMDFN,DA,ACHSGL,ACHSINS,ACHSINS1,ACHSMR
 Q
 ;
 ;FOR EACH MEDICARE, MEDICAID AND RAILROAD INSURANCE ENTRY
SET ;
 S:$P(ACHSINS,U,2)'="" I(N,2)=$P($G(^AUTNINS($P(ACHSINS,U,2),0)),U)
 S DA=0
 ;FOR EACH MEDICARE, MEDICAID OR RAILROAD INSURER ENTRY
 F  S DA=$O(@ACHSGL@(ACHSMDFN,11,DA)) Q:'DA  D  S N=N+1
 . ;12/27/00  PMF  changing to remove naked ref
 . S COVTEMP=@ACHSGL@(ACHSMDFN,11,DA,0)
 . S I(N,6)=$P(COVTEMP,U,3)  ;COVERAGE TYPE
 . S I(N,7)=$P(COVTEMP,U)         ;POLICY FROM DATE
 . S I(N,8)=$P(COVTEMP,U,2)       ;POLICY TO DATE
 . K COVTEMP
 . ;
 . I ACHSIPRM="N" S ACHSIPRM="Y",I("P",N)="" Q
 . S I(N,7)=$$FMTE^XLFDT(I(N,7))
 . S I(N,8)=$$FMTE^XLFDT(I(N,8))
 . ;
 . S I("B",N)=$E(I(ACHSMR,2),1,(37-$L(I(ACHSMR,5))-$L(I(N,6))))_" "_I(ACHSMR,5)_" "_I(N,6)_"^EFF:"_I(N,7)_" "_I(N,8)
 . K:N'=ACHSMR I(N)
 .Q
 Q
 ;