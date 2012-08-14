PSJHL4 ;BIR/RLW-DECODE HL7 /MESSSAGE FROM OE/RR ;16 Mar 99 / 4:55 PM
 ;;5.0; INPATIENT MEDICATIONS ;**1,12,27,34,40,42,55,47,50,56,58,98,85,105,107**;16 DEC 97
 ;
 ; Reference to $$EN^PSOHLNEW is supported by DBIA# 2188.
 ; Reference to ^PS(50.7 is supported by DBIA# 2180.
 ; Reference to ^%ZOSF is supported by DBIA# 10096.
 ; Reference to ^VA(200 is supported by DBIA# 10060.
 ; Reference to ^DIK is supported by DBIA# 10013.
 ; Reference to ^XLFDT is supported by DBIA# 10103.
 ;
EN(PSJMSG) ; start here
 K ^TMP("PSJNVO",$J)
 N ADCNT,SOLCNT,OCCNT
 N ACKDATE,ADDITIVE,ADMINSTR,APPL,COMMENT,PSJHLDFN,DISPENSE,DOSE,DURATION,II,INSTR,J,JJ,JJJ,K,LOGIN,NEWORDER,NURSEACK,OBXFL,OCNARR,OCPROV,OCRSN,ORDER,PRIORITY,PSITEM,ORDCON,PROCOM,PSJORDER,PSREASON
 N LOC,PROVIDER,PSPR,PSOC,PTR,QQ,REQST,ROUTE,RXON,RXORDER,SCHEDULE,SEGMENT,SOLUTION,STPDT,STRENGTH,TEXT,CLERK,INFRT,IVTYP,SCHTYP,PREON,NOO,ROC,FREQ,CLASS,PSJHLMTN,UNIT,UNITS,QFLG,VOLUME,TVOLUME,PSGP
 N PSJASTP,FLDATE,FLCMNT,PSJFLAG,PSJYN
 S (ADCNT,SOLCNT,OCCNT,II,TVOLUME)="",(OBXFL,QFLG)=0,PSJHLMTN="ORR" F  S II=$O(PSJMSG(II)) Q:'II  D DECODE Q:QFLG  D @FIELD(0) Q:$G(CLASS)="O"  Q:QFLG
 I ($G(CLASS)'="I")!(QFLG) G END
 I ($G(PSOC)="NW")!($G(PSOC)="XO") N DIK,DA S DIK="^PS(53.1,",DA=NEWORDER D EN1^DIK L -^PS(53.1,NEWORDER)
 I ($G(PSOC)="NW")!($G(PSOC)="XO") D EN1^PSJHL2(PSJHLDFN,$S(PSOC="NW":"OK",1:"XR"),NEWORDER_"P")
END ;
 K ^TMP("PSJNVO",$J)
 Q
 ;
DECODE ;break segment down into fields
 K FIELD
 S SEGMENT=$G(PSJMSG(II))
 S J=0
 F  Q:$G(SEGMENT)=""  D
 .;get fields from segment
 .I SEGMENT["|" S FIELD(J)=$P(SEGMENT,"|"),SEGMENT=$E(SEGMENT,$L(FIELD(J))+2,$L(SEGMENT)),J=J+1 Q
 .I SEGMENT'["|" S FIELD(J)=SEGMENT,SEGMENT="" Q
 Q
 ;
MSH ;
 S PSOC=FIELD(8)
 Q
 ;
PID ;
 S PSJHLDFN=FIELD(3)
 Q
 ;
PV1 ;
 N A
 S CLASS=FIELD(2),LOC=FIELD(3)
 I "IO"'[CLASS S PSREASON="Invalid patient class" Q
 ;N II K PSJNVA S II="" F  S II=$O(PSJMSG(II)) Q:'II  D  Q:CLASS="O"
 N QQ K PSJNVA S QQ=II F  S QQ=$O(PSJMSG(QQ)) Q:'QQ  D  Q:$G(PSJNVA)
 .S X=$G(PSJMSG(QQ))
 .I $P(X,"|")="ZRN" S PSJNVA=1,CLASS="O" D EN^PSOHLNEW(.PSJMSG)
 .;I $P(X,"|")="ZRN" S PSJNVA=1 D EN^PSOHLNEW(.PSJMSG)
 ; OBR check - enable outpatient flagging from backdoor
 I $G(PSJNVA) K PSJNVA Q
 I CLASS="O" N QQ S QQ=II F  S QQ=$O(PSJMSG(QQ)) Q:'QQ  I $P(PSJMSG(QQ),"|")="OBR" D  Q:$P(PSJMSG(QQ),"|")="OBR"
 .S RXON=$P(PSJMSG(QQ),"|",4) I RXON]"" S RXON=$P(RXON,"^") I "ABNPUV"[$E(RXON,$L(RXON)) S CLASS="I"
 I CLASS="O" N QQ S QQ=II F  S QQ=$O(PSJMSG(QQ)) Q:'QQ  I $P(PSJMSG(QQ),"|")="ORC" D  Q:$P(PSJMSG(QQ),"|")="ORC"
 .S RXON=$P(PSJMSG(QQ),"|",4) I RXON]"" S RXON=$P(RXON,"^") I "ABNPUV"[$E(RXON,$L(RXON)) S CLASS="I"
 I CLASS="O" N CHK,QQ S QQ=II F  S QQ=$O(PSJMSG(QQ)) Q:'QQ  I $P(PSJMSG(QQ),"|")="RXO" D  Q:$P(PSJMSG(QQ),"|")="RXO"
 .S CHK=$P(PSJMSG(QQ),"|",2),CHK=$S($P(CHK,"^",5)="IV":"IV",1:$P(CHK,"^",4))
 .I CHK="IV" S CLASS="I" Q
 .I 'CHK S PSREASON="Missing or Invalid Orderable Item",CLASS="I" Q
 .I $P($G(^PS(50.7,CHK,0)),"^",3)=1 S CLASS="I" Q
 D:CLASS="O" EN^PSOHLNEW(.PSJMSG)
 Q
 ;
ORC ;
 S PSOC=FIELD(1)
 S ORDER=FIELD(2)
 I $G(PSREASON)]"" D ERROR^PSJHL9 Q
 S PSJORDER=$P(FIELD(2),"^"),RXON=$P(FIELD(3),"^"),RXORDER=$S((RXON["N")!(RXON["P"):"^PS(53.1,"_+RXON_",",RXON["V":"^PS(55,"_PSJHLDFN_",""IV"","_+RXON_",",1:"^PS(55,"_PSJHLDFN_",5,"_+RXON_",")
 I PSOC="NA" D ASSIGN^PSJHL5 Q
 S CLERK=+$G(FIELD(10))
 S PROVIDER=+$G(FIELD(12)) D:PSOC="NW"
 .I PROVIDER=0 S PSREASON="Invalid Provider" D ERROR^PSJHL9 Q 
 .I PROVIDER>0 S PSPR=$G(^VA(200,+PROVIDER,"PS")) I '$D(PSPR)!'(PSPR)!$S($P(PSPR,"^",4)="":0,1:$P(PSPR,"^",4)'>DT) S PSREASON="Invalid Provider" D ERROR^PSJHL9 Q
 S UNITS=$P(FIELD(7),"^"),INSTR=$P(FIELD(7),"^",8)
 S:UNITS["&" DOSE=$P(UNITS,"&"),UNIT=$P(UNITS,"&",2),UNITS=$P(UNITS,"&",3)
 S SCHEDULE=$P(FIELD(7),"^",2),PRIORITY=$P(FIELD(7),"^",6) S:SCHEDULE["PRN" SCHTYP="P"
 S DURATION=$P(FIELD(7),"^",3),REQST=$P(FIELD(7),"^",4) S:REQST'="" REQST=+$E(+$$HL7TFM^XLFDT(REQST),1,12) S REQST=$$DATE2^PSJUTL2(REQST)
 S PRIORITY=$S($G(PRIORITY)]"":PRIORITY,1:"R")
 I $E(SCHEDULE,1)=" " S PSREASON="Invalid Schedule" D ERROR^PSJHL9 Q
 S NURSEACK=$G(FIELD(11))
 S LOGIN=$G(FIELD(15)) S:LOGIN'="" LOGIN=+$E(+$$HL7TFM^XLFDT(FIELD(15)),1,12) S LOGIN=$$DATE2^PSJUTL2(LOGIN)
 S:$G(NURSEACK)]"" ACKDATE=LOGIN
 S ORDCON=$P($G(FIELD(16)),U) I ORDCON="A" S PSJASTP=$G(FIELD(9)) S:$G(PSJASTP)'="" PSJASTP=+$E(+$$HL7TFM^XLFDT(PSJASTP),1,12) S PSJASTP=$$DATE2^PSJUTL2(PSJASTP)
 I (PSOC="CA")!(PSOC="DC") D CANCEL^PSJHL6 Q
 I PSOC="HD" D HOLD^PSJHL6 Q
 I PSOC="RL" D UNHOLD^PSJHL6 Q
 I PSOC="ZV" D NURSEACK^PSJHL5 Q
 I PSOC="SS" D STATUS^PSJHL5 Q
 I PSOC="Z@" N X S X="PSJHL8" X ^%ZOSF("TEST") I  D PURGE^PSJHL8 Q
 I PSOC="DE" S QFLG=1 Q
 Q
OBR ; This segment is used to pass flagging information from CPRS.
 S ORDER=FIELD(2)
 S PSJORDER=$P(FIELD(2),"^"),RXON=$P(FIELD(3),"^"),RXORDER=$S((RXON["N")!(RXON["P"):"^PS(53.1,"_+RXON_",",RXON["V":"^PS(55,"_PSJHLDFN_",""IV"","_+RXON_",",1:"^PS(55,"_PSJHLDFN_",5,"_+RXON_",")
 S PSJFLAG=FIELD(4)
 S FLDATE=$G(FIELD(7)) S:FLDATE'="" FLDATE=+$E(+$$HL7TFM^XLFDT(FIELD(7)),1,12) S FLDATE=$$DATE2^PSJUTL2(FLDATE)
 S CLERK=+$G(FIELD(16))
 S PSJYN=$G(FIELD(24))
 S FLCMNT=$G(FIELD(13))
 I PSOC="ORU" D FLAG^PSJHL5
 Q
RXC ; IV order
 D RXC^PSJHL4A
 Q
 ;
RXO ;
 D RXO^PSJHL4A
 Q
 ;
RXR ;
 S ROUTE=$P(FIELD(1),"^",4)
 Q
 ;
OBX ;
 D OBX^PSJHL4A
 Q
 ;
NTE ;
 D NTE^PSJHL4A
 Q
 ;
ZRX ;
 D ZRX^PSJHL4A
 Q
 ;
ZSC ;Service Connected - Not Used by Inpatient
 Q
 ;
ZRN ;Non-VA Med (Herbal/OTC)
 S CLASS="O" D EN^PSOHLNEW(.PSJMSG)
 Q
DG1 ;Billing Awareness - Not used by Inpatient
 Q