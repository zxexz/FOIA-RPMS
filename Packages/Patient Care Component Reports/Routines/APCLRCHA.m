APCLRCHA ; IHS/CMI/LAB - RECODE ICD 9 DIAGNOSIS CODE TO CHA RECODE ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;input variable - APCLIPTR contains the ICD 9 DX pointer value
 ;output variable - APCLCODE contains the CHA recode pointer value
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning
 ;
 Q:'$G(APCLIPTR)
 ;S (APCLX,APCLICD)=$P(^ICD9(APCLIPTR,0),U),APCLCODE=""  ;cmi/anch/maw 9/10/2007 orig line
 S (APCLX,APCLICD)=$P($$ICDDX^ICDCODE(APCLIPTR),U,2),APCLCODE=""  ;cmi/anch/maw 9/10/2007 csv
 S APCLICD=$P(APCLICD,".")_$P(APCLICD,".",2)_" "
 I $E(APCLX)="V" S APCLX=(9_$E(APCLX,2,9999)-.000001),APCLX="V"_$E(APCLX,2,9999),APCLX=$P(APCLX,".")_$P(APCLX,".",2)_" " G HIGH
 I $E(APCLX)="0" S APCLX=(9_$E(APCLX,2,9999)-.000001),APCLX="0"_$E(APCLX,2,9999),APCLX=$P(APCLX,".")_$P(APCLX,".",2)_" " G HIGH
 I $E(APCLX)="." S APCLX=(9_$E(APCLX,2,9999)-.000001),APCLX="."_$E(APCLX,2,9999),APCLX=$P(APCLX,".")_$P(APCLX,".",2)_" " G HIGH
 S APCLX=APCLX-.000001
 S APCLX=($P(APCLX,".")_$P(APCLX,".",2))_" "
HIGH S APCLHIGH=$O(^AUTTCHA("AH",APCLX)) I APCLHIGH="" Q
 S APCLDA1=$O(^AUTTCHA("AH",APCLHIGH,""))
 S APCLDA2=$O(^AUTTCHA("AH",APCLHIGH,APCLDA1,""))
 S APCLLOW=$P(^AUTTCHA(APCLDA1,11,APCLDA2,0),U)_" "
 I APCLLOW]APCLICD Q
 S APCLCODE=APCLDA1
 Q