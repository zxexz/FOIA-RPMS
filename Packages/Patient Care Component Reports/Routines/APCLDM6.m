APCLDM6 ; IHS/CMI/LAB - TOBACCO USE ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in TOBACCO1
 ;
TOBACCO ;EP
 K APCLTOB
 D TOBACCO3
 I $D(^TMP("APCL",$J,1)) D TOBCUML G X1
 D TOBACCO0
 I $D(^TMP("APCL",$J,1)) D TOBCUML G X1
 D TOBACCO1 ;check Problem file for tobacco use
 I $D(^TMP("APCL",$J,1)) D TOBCUML G X1
 D TOBACCO2 ;check POVs for tobacco use
 I $D(^TMP("APCL",$J,1)) D TOBCUML G X1
 S APCLTOB(44)="UNDOCUMENTED",^TMP("APCL",$J,1)="UNDOCUMENTED"
 D TOBCUML
X1 S:APCLER ^TMP("APCL",$J,1)="*** SCRIPT ERROR IN TOBACCO^APCLDM1.  CONTACT SITE MANAGER"
 Q
TOBCUML ;
 I APCLCUML F APCLSUB=7,42,43,44 S APCLGOT1=$S('$D(APCLTOB(APCLSUB)):0,1:1) D CUML^APCLDM1
 K APCLTOB,APCLTOBN
 Q
TOBACCO0 ;check for tobacco documented in health factors
 K APCL S APCLX=APCLPD_"^LAST HEALTH [DM AUDIT TOBACCO HLTH FACTORS" S APCLER=$$START1^APCLDF(APCLX,APCLY) G:APCLER X1 I $D(APCL(1)) D  S APCLTOBN=$O(APCLTOB("")),^TMP("APCL",$J,1)=APCLTOB(APCLTOBN)
 . I $P(APCL(1),U,3)["NON" S APCLTOB(42)="NO, DOES NOT USE TOBACCO" Q
 . I $P(APCL(1),U,3)["PREVIOUS" S APCLTOB(43)="PAST USE OF TOBACCO" Q
 . S APCLTOB(7)="YES, USES TOBACCO"
 .Q
 Q
TOBACCO3 ;lookup in health status
 S %=$O(^ATXAX("B","DM AUDIT TOBACCO HLTH FACTORS",0))
 Q:'%
 S (X,Y)=0 F  S X=$O(^AUPNHF("AA",APCLPD,X)) Q:X'=+X!(Y)  I $D(^ATXAX(%,21,"B",X)) S Y=X
 Q:'Y
 S Y=$P(^AUTTHF(Y,0),U)
 S ^TMP("APCL",$J,1)=Y
 I Y["NON" S APCLTOB(42)="NO, DOES NOT USE TOBACCO" Q
 I Y["PREVIOUS" S APCLTOB(43)="PAST USE OF TOBACCO" Q
 S APCLTOB(7)="YES, USES TOBACCO"
 Q
TOBACCO1 ;check problem file for tobacco use
 K APCL S APCLX=APCLPD_"^PROBLEMS [DM AUDIT PROBLEM SMOKING DXS" S APCLER=$$START1^APCLDF(APCLX,APCLY) G:APCLER X1 I $D(APCL(1)) D  S APCLTOBN=$O(APCLTOB("")),^TMP("APCL",$J,1)=APCLTOB(APCLTOBN)
 . ;I $P(^ICD9($P(APCL(1),U,2),0),U,1)=305.13 S APCLTOB(43)="PAST USE OF TOBACCO"_" - "_$E($P(^AUTNPOV($P(^AUPNPROB(+$P(APCL(1),U,4),0),U,5),0),U),1,30) Q  ;cmi/anch/maw 9/10/2007 orig line
 . I $P($$ICDDX^ICDCODE($P(APCL(1),U,2)),U,2)=305.13 S APCLTOB(43)="PAST USE OF TOBACCO"_" - "_$E($P(^AUTNPOV($P(^AUPNPROB(+$P(APCL(1),U,4),0),U,5),0),U),1,30) Q  ;cmi/anch/maw 9/10/2007 csv
 . S APCLTOB(7)="YES, USES TOBACCO - "_$E($P(^AUTNPOV($P(^AUPNPROB(+$P(APCL(1),U,4),0),U,5),0),U),1,30)
 .Q
 Q
TOBACCO2 ;check pov file for TOBACCO USE DOC
 K APCL S APCLX=APCLPD_"^LAST DX [DM AUDIT SMOKING RELATED DXS"_APCLDATE S APCLER=$$START1^APCLDF(APCLX,APCLY) G:APCLER X1 I $D(APCL(1)) D  S APCLTOBN=$O(APCLTOB("")),^TMP("APCL",$J,1)=APCLTOB(APCLTOBN)
 . I $P(APCL(1),U,2)=305.13 S APCLTOB(43)="PAST USE OF TOBACCO"_" - "_$E($P(^AUTNPOV($P(^AUPNVPOV(+$P(APCL(1),U,4),0),U,4),0),U),1,30) Q
 . S APCLTOB(7)="YES, USES TOBACCO"_" - "_$E($P(^AUTNPOV($P(^AUPNVPOV(+$P(APCL(1),U,4),0),U,4),0),U),1,30)
 .Q
 Q
 ;
RSTAT(R,S) ;EP - return # pts on register REG with status STAT
 I '$D(^ACM(41,"B",R)) Q ""
 I "AITUDN"'[S Q ""
 NEW %,C
 S (%,C)=0 F  S %=$O(^ACM(41,"B",R,%)) Q:%'=+%  I $P($G(^ACM(41,%,"DT")),U)=S S C=C+1
 Q C
LASTHT(P,F) ;PEP - return last ht
 I 'P Q -1
 I '$D(^AUPNVSIT("AC",P)) Q -1
 NEW %,APCLARRY,H,E
 S %=P_"^LAST MEAS HT" NEW X S E=$$START1^APCLDF(%,"APCLARRY(") S H=$P($G(APCLARRY(1)),U,2)
 I H="" Q H
 S H=$J(H,2,0)
 Q $S(F="I":H,1:(H\12)_" "_(H#12))
 ;F="I" - in inches, F="E" - feet and inches 5 5
LASTWT(P,F) ;PEP - return last wt
 I 'P Q ""
 NEW %,APCLARRY,E,W
 S %=P_"^LAST MEAS WT" NEW X S E=$$START1^APCLDF(%,"APCLARRY(") S W=$P($G(APCLARRY(1)),U,2)
 Q W
BMI(P) ;PEP - return BMI with last weight,last height
 I 'P Q -1
 NEW %,W,H,B
 S %=""
 S W=$$LASTWT(P) I W="" Q %
 S H=$$LASTHT(P,"I") I H="" Q %
 ;S W=(W/5)*2.3,H=(H*2.5),H=(H*H)/10000,%=(W/H),%=$J(%,4,1)
 S W=W*.45359,H=(H*.0254),H=(H*H),%=(W/H),%=$J(%,4,1)
 Q %