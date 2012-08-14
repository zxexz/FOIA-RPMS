CIANBASY ;MSC/IND/DKM - Asynchronous RPC calls ;09-Jul-2008 10:39;PLS
 ;;1.1;CIA NETWORK COMPONENTS;**001007**;Sep 18, 2007
 ;;Copyright 2000-2008, Medsphere Systems Corporation
 ;=================================================================
 ; Background task for executing an asynchronous RPC
TASK N CIAD,TGT,$ET,$ES
 S $ET="D ERROR^CIANBASY",ZTREQ="@"
 K ^XTMP("CIA",CIA("UID"),"T",ZTSK)
 Q:$$S^%ZTLOAD
 S ^XTMP("CIA",CIA("UID"),"T",ZTSK)=0,TGT=$NA(^(ZTSK,0))
 S:XWBPTYPE=4 CIAD=TGT
 D DORPC^CIANBACT
 I XWBPTYPE=1 S @TGT@(0)=CIAD
 E  I XWBPTYPE>1,XWBPTYPE<4 M @TGT=CIAD S:XWBPTYPE=2 XWBWRAP=1
 E  I XWBPTYPE=4,$L(CIAD),CIAD'=TGT M @TGT=@CIAD K @CIAD
 E  I XWBPTYPE=5 S @TGT@(0)=$G(@CIAD)
 E  I XWBPTYPE="H" D
 .N X,Y,FIL,DIR
 .S X=$E($$DIRDLM^CIAUOS,3),Y=$L(CIAD,X),DIR=$P(CIAD,X,1,Y-1),FIL=$P(CIAD,X,Y)
 .I '$$FTG^%ZISH(DIR,FIL,$NA(@TGT@(0)),$QL(TGT)+1)
 .D DELETE^CIAUOS(CIAD)
 I $$S^%ZTLOAD K ^XTMP("CIA",CIA("UID"),"T",ZTSK)
 E  S ^XTMP("CIA",CIA("UID"),"T",ZTSK)=ZTSK_"^0^"_XWBWRAP
 Q
ERROR D SETERR(-1,$$EC^%ZOSV)
 D ^%ZTER,UNWIND^%ZTER
 Q
 ; Retrieve specified routine line
RTNTEXT(RTN) ;
 N TAG
 S TAG=$P(RTN,U),RTN=$P(RTN,U,2)
 Q $S('$L(RTN):$T(^@TAG),$L(TAG):$T(@TAG^@RTN),1:$T(^@RTN))
 ; Set error info to return to client
SETERR(CODE,TEXT) ;
 K ^XTMP("CIA",CIA("UID"),"T",ZTSK) M ^(ZTSK,0,0)=TEXT
 S ^XTMP("CIA",CIA("UID"),"T",ZTSK)=ZTSK_U_CODE_"^1"
 Q
 ; RPC to check for completed tasks
 ; Results[0] at the client end will contain the TaskMan ID of the
 ; completed RPC. The remainder of the Result will be the data
 ; returned by the RPC.
ASYCHK() N ZTSK,CIAD,X
 S ZTSK=0
 F  S ZTSK=+$O(^XTMP("CIA",CIA("UID"),"T",ZTSK)) Q:'ZTSK  S X=$G(^(ZTSK)),CIAD=$NA(^(ZTSK,0)) I X D  Q
 .D TCPUSE^CIANBLIS
 .W $C(2),X,$C(13),!
 .D OUT^CIANBACT(CIAD,$P(X,U,3))
 .K ^XTMP("CIA",CIA("UID"),"T",ZTSK)
 Q ZTSK
 ; RPC: Stop a task
 ; Signals to a backround task that it should stop running.  Cleans up
 ; any output generated by completed tasks.
STOP(CIAD,ZTSK) ;
 S CIAD=''$D(^XTMP("CIA",CIA("UID"),"T",ZTSK)) K:CIAD ^(ZTSK)
 L +^%ZTSK(ZTSK):0
 I  D KILL^%ZTLOAD L -^%ZTSK(ZTSK) Q
 S:$D(^%ZTSK(ZTSK)) $P(^(ZTSK,.1),U,10)=1
 Q
 ; Stop all tasks in task list
STOPALL N ZTSK
 S ZTSK=0
 F  S ZTSK=$O(^XTMP("CIA",CIA("UID"),"T",ZTSK)) Q:'ZTSK  D STOP(,ZTSK)
 K ^XTMP("CIA",CIA("UID"),"T")
 Q