SDWLRSRS ;;IOFO BAY PINES/OG/WAIT LIST STAT REPORT - SORT  ; Compiled September 22, 2005 10:32:25
 ;;5.3;scheduling;**415,469,446,1015**;AUG 13 1993;Build 21
 ;
 ; Original routine SDWLRSR exceeded SACC maximum size of 10000.
 ; This new routine added to do the Sort portion of the report.
 ;
 ;
SORT(SDWLBD,SDWLED,SDWLINS,SDWL) ;SORT AND CALCULATE STAT REPORT ;SD*5.3*415
 N SDWLAD,SDWLC,SDWLCC,SDWLD,SDWLDA,SDWLDFDT,SDWLDFN,SDWLDIS,SDWLDP,SDWLER,SDWLERR,SDWLFLD,SDWLFLG,SDWLINSN,SDWLNC,SDWLNN,SDWLNR,SDWLOFDT
 N SDWLOK1,SDWLOK3,SDWLPR,SDWLPRI,SDWLRDT,SDWLRE,SDWLSA,SDWLTR,SDWLTYNM,SDWLTYP,SDWLTYPN,SDWLX,SDWLX1,SDWLY1,SDWLCL  ;SD*5.3*446
 K ^TMP("SDWLRSR1",$J),^TMP("SDWLRSR2",$J) S (SDWLERR,SDWLPR,SDWLC,SDWLD,SDWLNC,SDWLSA,SDWLCC,SDWLNN,SDWLER,SDWLTR,SDWLCL,SDWLAD,SDWLRE,SDWLNR)=0  ;SD*5.3*446
 S SDWLDA=0 F  S SDWLDA=$O(^SDWL(409.3,SDWLDA)) Q:SDWLDA=""  D
 .I $D(DUOUT) Q
 .S SDWLX=$G(^SDWL(409.3,SDWLDA,0)) Q:SDWLX=""  S SDWLINSN=+$P(SDWLX,U,3) I 'SDWLINSN Q
 .S SDWLPRI=$P(SDWLX,U,11) I SDWLPRI="" S SDWLPRI="U"
 .S SDWLDFN=+SDWLX I 'SDWLDFN Q
 .S SDWLTYP=$P(SDWLX,U,5),SDWLTYPN=$S(SDWLTYP=1:$P(SDWLX,U,6),SDWLTYP=2:$P(SDWLX,U,7),SDWLTYP=3:$P(SDWLX,U,8),SDWLTYP=4:$P(SDWLX,U,9),1:"")
 .I SDWLTYPN="" Q
 .S SDWLFLD=$S(SDWLTYP=1:5,SDWLTYP=2:6,SDWLTYP=3:7,SDWLTYP=4:8)
 .S SDWLTYNM=$$EXTERNAL^DILFD(409.3,SDWLFLD,,SDWLTYPN) I SDWLTYNM="" S SDWLTYNM="UNKNOWN"
 .I 'SDWLINSN Q
 .I $D(SDWL("INS")) D
 ..;CHECK FOR SPECIFIC INSTITUTIONAL SORT
 ..S SDWLINS=$P(SDWLX,U,3),SDWLERR=0 I SDWLINS'="ALL",'$D(SDWL("INS",SDWLINS)) S SDWLERR=1 Q
 ..S SDWLPRI=$P(SDWLX,U,11) I SDWLPRI="" S SDWLPRI="N"
 .I SDWLERR Q
 .;CHECK DATE RANGE
 .S SDWLOFDT=$P(SDWLX,U,2),SDWLOK1=1 I SDWLOFDT>SDWLBD!(SDWLOFDT=SDWLBD) D
 ..I SDWLOFDT<SDWLED!(SDWLOFDT=SDWLED) S SDWLOK1=0
 .S SDWLX1=$P(^DIC(4,+$P(SDWLX,U,3),0),U,1),SDWLY1=SDWLTYP
 .S:'$D(^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"AD")) ^("AD")=0
 .S:'$D(^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"AD")) ^("AD")=0
 .I 'SDWLOK1 D S1
 .S:'$D(^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"NR")) ^("NR")=0
 .S:'$D(^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"NR")) ^("NR")=0
 .S SDWLDFDT=0,SDWLOK3=1 I $D(^SDWL(409.3,SDWLDA,"DIS")) S SDWLDFDT=$P(^("DIS"),U,1),SDWLOK3=0 I SDWLDFDT<SDWLBD!(SDWLDFDT>SDWLED) S SDWLOK3=1
 .S:'$D(^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"CL")) ^("CL")=0
 .S:'$D(^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"CL")) ^("CL")=0
 .I 'SDWLOK3 D S3
 .S SDWLTYP=$P(SDWLX,U,5)
 .S:'$D(^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"PR")) ^("PR")=0
 .S:'$D(^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"PR")) ^("PR")=0
 .S SDWLFLG=0
 .I SDWLOFDT'>SDWLBD D
 ..I SDWLOFDT=SDWLBD Q
 ..I $P(SDWLX,U,17)["O" S SDWLFLG=1
 ..I $D(^SDWL(409.3,SDWLDA,"DIS")) D
 ...I 'SDWLFLG,($P($G(^SDWL(409.3,SDWLDA,"DIS")),U,1)>SDWLBD)!($P($G(^SDWL(409.3,SDWLDA,"DIS")),U,1)=SDWLBD) S SDWLFLG=1
 ..I SDWLFLG D
 ...S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"PR")=^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"PR")+1
 ...S ^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"PR")=^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"PR")+1
 .I $P(SDWLX,U,14) D
 ..S SDWLRDT=$P(SDWLX,U,14)
 ..Q:SDWLRDT<SDWLBD  Q:SDWLRDT>SDWLED  D
 ...S:'$D(^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"NR")) ^("NR")=0
 ...S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"NR")=^("NR")+1
 ...S:'$D(^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"NR")) ^("NR")=0
 ...S ^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"NR")=^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"NR")+1
 .D S2
 .I $$S^%ZTLOAD S DUOUT=""
 Q
S1 ;ORIGINATING DATE MEETS CRITERIA
 ;
 S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"AD")=^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"AD")+1
 S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"AD")=^("AD")+1
 Q
S2 ;DO NOT REMOVE DATE MEETS CRITERIA
 ;
 N X1,X2,X3,X4
 S X1=^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"PR"),X2=$G(^("AD")),X3=$G(^("CL")) S X4=X1+X2-X3
 S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"RR")=($G(^("PR"))+($G(^("AD"))))-$G(^("CL"))
 S ^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"NR")=^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"NR")+1
 Q
S3 S SDWLDIS=^SDWL(409.3,SDWLDA,"DIS")  D
 .N X
 .S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"CL")=^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,"CL")+1
 .S ^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"CL")=^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,"CL")+1
 .S SDWLDP=$P(SDWLDIS,U,3),X="SDWL"_SDWLDP,@X=@X+1 S:'$D(^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,X)) ^(X)=0
 .S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,X)=^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,X)+1
 .S:'$D(^TMP("SDWLRSR2",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,X)) ^(X)=0
 .S ^TMP("SDWLRSR1",$J,SDWLX1,SDWLY1,SDWLTYPN,SDWLTYNM,SDWLPRI,SDWLDFN,X)=^(X)+1
 Q