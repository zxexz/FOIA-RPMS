DGPT70DX ;ALB/MTC -  DXLS Edit Checks for 701 ; 13 NOV 92
 ;;5.3;Registration;;Aug 13, 1993
 ;
 ;
EN ;-- check dxls 
 S DGPTDDXE=$P(DGPTDDXE," ",1)
 S DGPTERC=0
NOE ;
 I $E(DGPTDDXE,1)="E" S DGPTERC=750 Q
 I $E(DGPTDDXE,1)="V" S DGPTERC=0 D DIAGV G:DGPTERC EXIT D SET G:DGPTERC EXIT G GENDR
 Q:"VE"[$E(DGPTDDXE,1)
NUM ;
 S J1=$L(DGPTDDXE) F J=1:1:3 S DGPTDIA1=$E(DGPTDDXE,1,J)_"."_$E(DGPTDDXE,J+1,J1)_" " I $D(^ICD9("AB",DGPTDIA1)) D SET G:'DGPTERC GENDR
 S DGPTERC=715 G EXIT
SET ;
 S J=$O(^ICD9("AB",DGPTDIA1,0)) I J="" S DGPTERC=715 Q
 I '$D(^ICD9(J,0)) S DGPTERC=715 Q
 I ($P(^ICD9(J,0),U,9)=1)&($E(DGPTDDS,1,7)>$P(^(0),U,11)) S DGPTERC=715 Q
 Q
GENDR ;
 G:$P(^ICD9(J,0),U,10)']"" DDXE
 I $P(^ICD9(J,0),U,10)'=DGPTGEN S DGPTERC=751 G EXIT
DDXE ;
 S ICDDX(1)=J
 S DGPTDDXE=$P(DGPTDIA1," ",1)
EXIT ;
 K J,J1,DGPTDIA1
 Q
DIAGV ;
 S DGPTDIA1=$E(DGPTDDXE,1,3)_"."_$E(DGPTDDXE,4,$L(DGPTDDXE))_" "
 I '$D(^ICD9("AB",DGPTDIA1)) S DGPTERC=715
 Q