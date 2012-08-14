SROPCEX ;BIR/ADM-Cross Reference Logic  ; [ 11/24/98   8:02 AM ]
 ;;3.0; Surgery ;**58,62,69,86**;24 Jun 93
 Q
APCE ; set logic for APCE cross reference
 N SRCASE,SRDIV,SRCLINIC,SRPDATE,SRQ,SRSITE,SRSR,SRWC,SRX,SRY S SRQ=0 S:$D(SRTN) SRCASE=SRTN I '$D(SRCASE) S SRCASE=$S($G(DA(1)):DA(1),1:DA)
 Q:$D(^SRF("APCE",SRCASE))!($P($G(^SRF(SRCASE,30)),"^"))!'$P(^SRF(SRCASE,"OP"),"^",2)!'$P($G(^SRF(SRCASE,34)),"^",2)
 S SRSR="",SRDIV=$P($G(^SRF(SRCASE,8)),"^") I SRDIV D  Q:SRQ
 .S SRSITE=$O(^SRO(133,"B",SRDIV,0)),SRWC=$P(^SRO(133,SRSITE,0),"^",15),SRSR=$P(^SRO(133,SRSITE,0),"^",19)
 .S SRPDATE=$P(^SRO(133,SRSITE,0),"^",17) I SRPDATE,$P(^SRF(SRCASE,0),"^",9)<SRPDATE S SRQ=1 Q
 .I $P(^SRO(133,SRSITE,0),"^",16),'$P(^SRF(SRCASE,0),"^",20) S SRQ=1 Q
 .Q:SRWC="A"  I "N"[SRWC S SRQ=1 Q
 .I $P(^SRF(SRCASE,0),"^",12)'=SRWC S SRQ=1 Q
 S (SRX,SRY)=0 F  S SRX=$O(^SRF(SRCASE,13,SRX)) Q:'SRX  I '$P($G(^SRF(SRCASE,13,SRX,2)),"^") S SRY=1 Q
 Q:SRY  S SRX=0 F  S SRX=$O(^SRF(SRCASE,15,SRX)) Q:'SRX  I '$P(^SRF(SRCASE,15,SRX,0),"^",3) S SRY=1 Q
 Q:SRY  S SRCLINIC=$P(^SRF(SRCASE,0),"^",21)
 S SRX=$G(^SRF(SRCASE,"NON")) I $P(SRX,"^")="Y" Q:'$P(SRX,"^",4)!'$P(SRX,"^",5)!'$P(SRX,"^",6)!(SRSR'=0&'$P(SRX,"^",7))  S:SRCLINIC="" SRCLINIC=$P(SRX,"^",2) Q:SRCLINIC=""  Q:'$$CLINIC^SROUTL(SRCLINIC,SRCASE)  G SET
 S:SRCLINIC="" SRCLINIC=$P(^SRO(137.45,$P(^SRF(SRCASE,0),"^",4),0),"^",5) I SRCLINIC="",$P(^SRF(SRCASE,0),"^",2) S SRCLINIC=$P(^SRS($P(^SRF(SRCASE,0),"^",2),0),"^")
 Q:SRCLINIC=""  I '$$CLINIC^SROUTL(SRCLINIC,SRCASE) Q
 S SRX=$G(^SRF(SRCASE,.2)) Q:'$P(SRX,"^",10)!'$P(SRX,"^",12)
 S SRX=$G(^SRF(SRCASE,.1)) Q:'$P(SRX,"^",4)  I SRSR'=0,'$P(SRX,"^",13) Q
SET S SRZ=$P(^SRF(SRCASE,0),"^",15) I SRZ S ^SRF("APCE",SRCASE)=SRZ Q
 S ^SRF("APCE",SRCASE)=""
 Q
KAPCE ; kill logic for APCE cross reference
 N SRCASE,SRDIV,SRSITE,SRWC S:$G(SRTN) SRCASE=SRTN I '$G(SRCASE) S SRCASE=$S($G(DA(1)):DA(1),1:DA)
 I '$P(^SRF(SRCASE,0),"^",15) K ^SRF("APCE",SRCASE),SRFLD Q
 I SRFLD=.011 S SRDIV=$P($G(^SRF(SRCASE,8)),"^") I SRDIV S SRSITE=$O(^SRO(133,"B",SRDIV,0)),SRWC=$P(^SRO(133,SRSITE,0),"^",15) I SRWC="A" K SRFLD Q
 S ^SRF("APCE",SRCASE)=$P(^SRF(SRCASE,0),"^",15) K SRFLD
 Q