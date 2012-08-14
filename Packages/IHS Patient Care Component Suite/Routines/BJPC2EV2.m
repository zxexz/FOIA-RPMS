BJPC2EV2 ; IHS/CMI/LAB - PCC Suite v1.0 patch 1 environment check ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;
ASTHMASG ;conver v asthma severity to classification field in problem list
 D MES^XPDUTL("Converting V Asthma Severity to Problem List Classification")
 I '$O(^ATXAX("B","BGP ASTHMA DXS",0)) D MES^XPDUTL("Cannot convert....BGP ASTHMA DXS taxonomy missing") Q
 NEW BJPCP,BJPCD,BJPCE,BJPCL,BJPCS,BJPCED,BJPCV,BJPCT,BJPCF,BJPCX,BJPCDX,BGJPSS
 S BJPCP=0 F  S BJPCP=$O(^AUPNVAST("AS",BJPCP)) Q:BJPCP'=+BJPCP  D
 .S BJPCSS="" S BJPCD=0 F  S BJPCD=$O(^AUPNVAST("AS",BJPCP,BJPCD))  Q:BJPCD'=+BJPCD  D
 ..S BJPCL="",BJPCE=0 F  S BJPCE=$O(^AUPNVAST("AS",BJPCP,BJPCD,BJPCE)) Q:BJPCE'=+BJPCE  D
 ...S BJPCS=^AUPNVAST("AS",BJPCP,BJPCD,BJPCE)
 ...S S=$P($G(BJPCSS),U,1)
 ...I BJPCS'<S Q  ;already have a greater one
 ...S BJPCED=(9999999-BJPCD)
 ...S BJPCV=$P($G(^AUPNVAST(BJPCE,0)),U,3)
 ...S BJPCSS=BJPCS_U_BJPCED_U_BJPCV
 ..I BJPCSS]"" D UPDPROB
 Q
 ;
UPDPROB ;
 ;find existing asthma problem, if none add an active on
 S BJPCT=$O(^ATXAX("B","BGP ASTHMA DXS",0))
 S BJPCX=0,BJPCF=0 F  S BJPCX=$O(^AUPNPROB("AC",BJPCP,BJPCX)) Q:BJPCX'=+BJPCX  D
 .S BJPCDX=$P($G(^AUPNPROB(BJPCX,0)),U)
 .Q:BJPCDX=""
 .Q:'$$ICD^ATXCHK(BJPCDX,BJPCT,9)  ;NOT ON TAXONOMY
 .I $P(^AUPNPROB(BJPCX,0),U,15)="" S DA=BJPCX,DIE="^AUPNPROB(",DR=".15///"_$P(BJPCSS,U,1)_";.03////"_DT D ^DIE K DA,DIE,DR
 .S BJPCF=1
 Q:BJPCF  ;found one and updated it
 S BJPCDX="",BJPCDAT="",BJPCN=""
 K BJPCS
 S Y="BJPCS(",X=BJPCP_"^FIRST DX [BGP ASTHMA DXS" S E=$$START1^APCLDF(X,Y)
 I '$D(BJPCS(1)) Q  ;no asthma povs at all so quit
 S BJPCDX=$P(^AUPNVPOV(+$P(BJPCS(1),U,4),0),U)
 S BJPCN=$P(^AUPNVPOV(+$P(BJPCS(1),U,4),0),U,4)
 ;ADD PROBLEM WITH BJPCDX, BJPC
 D ADDPROB^APCDALV2("`"_BJPCDX,BJPCP,DT,"","`"_BJPCN,$P(^AUPNVSIT($P(BJPCS(1),U,5),0),U,6),DT,"A","",$P(BJPCSS,U,1),.5)
 Q