APSPCCLQ ; IHS/DSD/ENM - PHARMACY-PCC QUEUE CONTROL ;01-Mar-2006 19:08;SM
 ;;7.0;IHS PHARMACY MODIFICATIONS;;09/03/97
 Q:'$D(APSRX)
 S ^APSPCCLQ(APSRX,ZTSK)=""
LOOP I $D(^APSPCCLQ(APSRX)),$O(^APSPCCLQ(APSRX,0))'=ZTSK H 2 G LOOP
 Q
 ;
K ;EP - KILL VAR
 Q:'$D(APSRX)
 K ^APSPCCLQ(APSRX,ZTSK)
 Q