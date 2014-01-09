SD11STOP ;ALB/RLC- Stop Code/DSS Identifier Update 6/18/07
 ;;5.3;PIMS;**1016**;JUN 30, 2012;Build 20
 ;
 ;**  This patch is used as a Post-Init in a KIDS build to modify the
 ;**  the CLINIC STOP file [^DIC(40.7,] for FY2011 updates.
 ;
 Q
 ;
EN ;** Add/inactivate/change/reactivate DSS IDs (stop codes)
 ;**  The following code executes if file modifications exist
 ;
 N SDVAR
 D:$P($T(NEW+1),";;",2)'="QUIT" ADD
 D:$P($T(OLD+1),";;",2)'="QUIT" INACT
 D:$P($T(CHNG+1),";;",2)'="QUIT" CHANGE
 D:$P($T(CDR+1),";;",2)'="QUIT" CDRNUM
 D:$P($T(ACT+1),";;",2)'="QUIT" REACT
 D:$P($T(REST+1),";;",2)'="QUIT" RESTR
 Q
 ;
 ;
ADD ;** Add DSS IDs
 ;
 ;  SDXX is in format:
 ; STOP CODE NAME^AMIS #^RESTRICTION TYPE^REST. DATE^CDR #
 ;
 N SDX,SDXX
 S SDVAR=1
 D MES^XPDUTL("")
 D BMES^XPDUTL(">>> Adding new Clinic Stops (DSS IDs) to CLINIC STOP File (#40.7)...")
 ;
 ;** NOTE: The following line is for DSS IDs that are not yet active
 D BMES^XPDUTL(" [NOTE: These Stop Codes CANNOT be used UNTIL 10/1/2010]")
 S DIC(0)="L",DLAYGO=40.7,DIC="^DIC(40.7,"
 F SDX=1:1 K DD,DO,DA S SDXX=$P($T(NEW+SDX),";;",2) Q:SDXX="QUIT"  DO
 .S DIC("DR")="1////"_$P(SDXX,"^",2)_$S('+$P(SDXX,U,5):"",1:";4////"_$P(SDXX,"^",5))
 .S DIC("DR")=DIC("DR")_";5////"_$P(SDXX,"^",3)_";6///"_$P(SDXX,"^",4)
 .S X=$P(SDXX,"^",1)
 .I '$D(^DIC(40.7,"C",$P(SDXX,"^",2))) D FILE^DICN,MESS Q
 .I $D(^DIC(40.7,"C",$P(SDXX,"^",2))) D EDIT(SDXX),MESSEX
 K DIC,DLAYGO,X
 Q
 ;
EDIT(SDXX) ;- Edit fields w/new values if stop code record already exists
 ;
 Q:$G(SDXX)=""
 N DA,DIE,DLAYGO,DR
 S DA=+$O(^DIC(40.7,"C",+$P(SDXX,"^",2),0))
 Q:'DA
 S DIE="^DIC(40.7,",DR=".01////"_$P(SDXX,"^")_";1////"_$P(SDXX,"^",2)_";2////@"_$S('+$P(SDXX,U,5):"",1:";4////"_$P(SDXX,"^",5))_";5////"_$P(SDXX,"^",3)_";6///"_$P(SDXX,"^",4)
 D ^DIE
 Q
INACT ;** Inactivate DSS IDs
 ;
 ;  SDXX is in format:
 ; AMIS #^^INACTIVATION DATE (in FileMan format)
 ;
 N SDX,SDDA,SDXX,SDINDT,SDEXDT
 S SDVAR=1
 D MES^XPDUTL("")
 D BMES^XPDUTL(">>> Inactivating Clinic Stops (DSS IDs) in CLINIC STOP File (#40.7)...")
 D BMES^XPDUTL(" [NOTE:  These Stop Codes CANNOT be used AFTER the indicated inactivation date]")
 F SDX=1:1 K DD,DO,DA S SDXX=$P($T(OLD+SDX),";;",2) Q:SDXX="QUIT"  DO
 . I +$P(SDXX,"^",3) D
 .. S X=$P(SDXX,"^",3)
 .. ;
 .. ;- Validate date passed in
 .. S %DT="FTX"
 .. D ^%DT
 .. Q:Y<0
 .. S SDINDT=Y
 .. D DD^%DT
 .. S SDEXDT=Y
 .. S SDDA=0
 .. F  S SDDA=$O(^DIC(40.7,"C",+SDXX,SDDA)) Q:'SDDA  D
 ... I $D(^DIC(40.7,SDDA,0)) I $P(^(0),U,3)="" D
 .... S DA=SDDA,DR="2////^S X=SDINDT",DIE="^DIC(40.7,"
 .... D ^DIE,MESI(SDEXDT)
 K %,%H,%I,DR,DA,DIC,DIE,DLAYGO,X,%DT,Y
 Q
 ;
CHANGE ;** Change DSS ID names
 ;
 ;  SDXX is in format:
 ; STOP CODE NAME^AMIS #^^NEW STOP CODE NAME
 ;
 N SDX,SDXX,SDDA
 S SDVAR=1
 D MES^XPDUTL("")
 D BMES^XPDUTL(">>> Changing Clinic Stop (DSS ID) names in CLINIC STOP File (#40.7)...")
 F SDX=1:1 K DD,DO,DA S SDXX=$P($T(CHNG+SDX),";;",2) Q:SDXX="QUIT"  DO
 .S SDDA=0
 .F  S SDDA=$O(^DIC(40.7,"C",$P(SDXX,U,2),SDDA)) Q:'SDDA  D
 ..I $D(^DIC(40.7,SDDA,0)) I $P(^(0),U,3)="" D
 ...S DA=SDDA,DR=".01///"_$P(SDXX,U,4),DIE="^DIC(40.7,"
 ...D ^DIE,MESC
 K DIE,DR,DA
 Q
 ;
CDRNUM ;** Change CDR numbers
 ;
 ;  SDXX is in format:
 ; STOP CODE NAME (AMIS #) ^ AMIS # ^ OLD CDR # ^ NEW CDR #
 ;
 N SDX,SDXX,SDDA
 S SDVAR=2
 D MES^XPDUTL("")
 D BMES^XPDUTL(">>> Changing CDR numbers in CLINIC STOP File (#40.7)...")
 F SDX=1:1 K DD,DO,DA S SDXX=$P($T(CDR+SDX),";;",2) Q:SDXX="QUIT"  DO
 .S SDDA=+$O(^DIC(40.7,"C",$P(SDXX,U,2),0))
 .I $D(^DIC(40.7,SDDA,0)) DO
 ..S DA=SDDA,DR="4///"_$P(SDXX,U,4),DIE="^DIC(40.7,"
 ..D ^DIE,MESN
 K DIE,DR,DA,X
 Q
 ;
REACT ;** Reactivate DSS IDs
 ;
 ;  SDXX is in format:
 ; AMIS #^
 ;
 N SDX,SDDA,SDXX
 S SDVAR=1
 D MES^XPDUTL("")
 D BMES^XPDUTL(">>> Reactivating Clinic Stops (DSS IDs) in CLINIC STOP File (#40.7)...")
 ;Inactivation date is an uneditable field, cannot use DIE to delete so
 ;must manually set piece to null if stop code being reactivated.
 F SDX=1:1 K DD,DO,DA S SDXX=$P($T(ACT+SDX),";;",2) Q:SDXX="QUIT"  D
 .S SDDA=+$O(^DIC(40.7,"C",+SDXX,0))
 .I $P($G(^DIC(40.7,SDDA,0)),"^",3)'="" S $P(^DIC(40.7,SDDA,0),U,3)="" D MESA
 Q
 ;
RESTR ;** Change Restriction Data
 ;
 ;  SDXX is in format:
 ; STOP CODE NAME^STOP CODE NUMBER^RESTRICTION TYPE^RESTRICTION DATE
 ;
 N SDX,SDXX,SDDA
 S SDVAR=3
 D MES^XPDUTL("")
 D BMES^XPDUTL(">>> Changing Restriction Data in CLINIC STOP File (#40.7)...")
 F SDX=1:1 K DD,DO,DA S SDXX=$P($T(REST+SDX),";;",2) Q:SDXX="QUIT"  D
 .S SDDA=0
 .F  S SDDA=$O(^DIC(40.7,"C",$P(SDXX,U,2),SDDA)) Q:'SDDA  D
 ..I $D(^DIC(40.7,SDDA,0)) I $P(^(0),U,3)="" D
 ...S DA=SDDA,DR="5////"_$P(SDXX,U,3)_";6///@",DIE="^DIC(40.7,"
 ...D ^DIE,MESR
 K DIE,DR,DA,X
 Q
 ;
MESS ;** Add message
 N ECXADMSG
 I +$G(SDVAR) D HDR(SDVAR)
 D MES^XPDUTL(" ")
 S ECXADMSG="Added:       "_$P(SDXX,"^",2)_"      "_$P(SDXX,"^")
 I $P(SDXX,"^",5)'="" S ECXADMSG=ECXADMSG_" [CDR#: "_$P(SDXX,"^",5)_"]"
 D MES^XPDUTL(ECXADMSG)
 I $P(SDXX,"^",3)'="" S ECXADMSG="                      Restricted Type: "_$P(SDXX,"^",3)_"    Restricted Date: "_$P(SDXX,"^",4)
 D MES^XPDUTL(ECXADMSG)
 K SDVAR
 Q
 ;
MESSEX ;** Display message if stop code already exists
 N ECXADMSG
 I +$G(SDVAR) D HDR(SDVAR)
 D MES^XPDUTL(" ")
 S ECXADMSG="             "_$P(SDXX,"^",2)_"      "_$P(SDXX,"^")_"  already exists."
 D MES^XPDUTL(ECXADMSG)
 K SDVAR
 Q
 ;
MESI(SDEXDT) ;** Inactivate message
 ;
 ;  Parameter:
 ;   SDEXDT - Date inactivation affective (External Format)
 ;
 N SDINMSG
 I +$G(SDVAR) D HDR(SDVAR)
 I $G(SDEXDT)="" S SDEXDT="UNKNOWN"
 D MES^XPDUTL(" ")
 S SDINMSG="Inactivated:  "_+SDXX_"           "_$P($G(^DIC(40.7,SDDA,0)),"^")_" as of "_SDEXDT
 D MES^XPDUTL(SDINMSG)
 K SDVAR
 Q
 ;
MESA ;** Reactivate message
 ;
 N SDACMSG
 I +$G(SDVAR) D HDR(SDVAR)
 D MES^XPDUTL(" ")
 S SDACMSG="Reactivated:  "_+SDXX_"           "_$P($G(^DIC(40.7,SDDA,0)),"^")
 D MES^XPDUTL(SDACMSG)
 K SDVAR
 Q
 ;
MESC ;** Change message
 N SDCMSG,SDCMSG1
 I +$G(SDVAR) D HDR(SDVAR)
 D MES^XPDUTL(" ")
 S SDCMSG="Changed:      "_$P(SDXX,U,2)_"           "_$P(SDXX,U)
 S SDCMSG1="     to:      "_$P(SDXX,U,2)_"           "_$P(SDXX,U,4)
 D MES^XPDUTL(SDCMSG)
 D MES^XPDUTL(SDCMSG1)
 K SDVAR
 Q
 ;
MESN ;** Change number
 N SDNMSG,SDNMSG1
 I +$G(SDVAR) D HDR(SDVAR)
 D MES^XPDUTL(" ")
 S SDNMSG="  Changed: "_$P(SDXX,U,2)_"    "_$P(SDXX,U)
 S SDNMSG1="   : "_$P(SDXX,U,3)_" Date: "_$P(SDXX,U,5)
 D MES^XPDUTL(SDNMSG)
 D MES^XPDUTL(SDNMSG1)
 K SDVAR
 Q
MESR ;** Restricting Stop Code
 N SDNMSG,SDNMSG1
 I +$G(SDVAR) D HDR(SDVAR)
 D MES^XPDUTL(" ")
 S SDNMSG="Changed:   "_$P(SDXX,U,2)_"            "_$P(SDXX,U)_"               "_$P(SDXX,U,5)_"         "_$P(SDXX,U,6)
 S SDNMSG1="     to:                                                 "_$P(SDXX,U,3)_"         "_$P(SDXX,U,4)
 D MES^XPDUTL(SDNMSG)
 D MES^XPDUTL(SDNMSG1)
 K SDVAR
 Q
 ;
HDR(SDVAR) ;- Header
 Q:'$G(SDVAR)
 N SDHDR
 S SDHDR=$P($T(@("HDR"_SDVAR)),";;",2)
 D BMES^XPDUTL(SDHDR)
 Q
 ;
 ;
HDR1 ;;           Stop Code              Name
 ;
HDR2 ;;                CDR        Stop Code             Name
 ;
HDR3 ;;           Stop Code      Name                       Rest. Type    Date
 ;
NEW ;DSS IDs to add- ex ;;STOP CODE NAME^NUMBER^RESTRICTION TYPE^RESTRICTION DATE^CDR
 ;;PEDIATRICS^341^E
 ;;FAMILY PRACTICE^342^E
 ;;EPILEPSY ECOE^345^E
 ;;EP LAB^369^E
 ;;NC RTCV TELECARE PT LOC^644^S^10/1/2010
 ;;NC RTCV TELECARE PRV LOC^645^S^10/1/2010
 ;;NC S&F TELECARE PT LOC^646^S^10/1/2010
 ;;NC S&F TELECARE PRV LOC^647^S^10/1/2010
 ;;NC RTCV TELECARE NONVAMC^648^S^10/1/2010
 ;;OTHER ED GRP^720^S^10/1/2010
 ;;QUIT
 ;
OLD ;DSS IDs to be inactivated- ex. ;;AMIS NUMBER^^INACTIVE DATE
 ;;294^OBSERVATION BLIND REHAB^10/1/2010
 ;;640^SEND-OUT PROCS NOT FEE^10/1/2010
 ;;712^HEP C REGISTRY PATIENT^10/1/2010
 ;;QUIT
 ;
CHNG ;DSS ID name changes- example ;;STOP CODE NAME^NUMBER^^NEW NAME
 ;;HOME TELEVIDEO CARE^179^^RT CLIN VID CARE HOME
 ;;AMPUTATION FOLLOW-UP CLINIC^211^^PM&RS AMP CLINIC
 ;;WOMEN'S CLINIC^322^^COMP WOMEN'S HLTH
 ;;PROSTHETIC SUPPLY DISPENSED^423^^PROS AND SENS AIDS
 ;;GENERAL TELEHEALTH REAL TIME^690^^RT CLIN VID TH PAT SITE
 ;;GEN TELEHLTH RT SAME STA^692^^RT CLIN VD TH PRV SITE(SAMSTA)
 ;;GEN TELEHLTH RT DIFF STA^693^^RT CLIN VD TH PRV SITE(DIFSTA)
 ;;STORE & FORWARD TELEHLTH^694^^SF TH PAT SITE
 ;;STORE & FWD TELEHLTH SAME STA^695^^SF TH PRV SITE(SAMSTA)
 ;;STORE & FWD TELEHLTH DIFF STA^696^^SF TH PRV SITE(DIFSTA)
 ;;BLOOD PRESSURE CHECK^701^^BP EVAL
 ;;FEMALE SPEC CANCER SCREEN^704^^WOMENS GEN SPEC CA CARE
 ;;OTHER EDUCATION 2ND ONLY^714^^OTHER ED IND
 ;;QUIT
 ;
CDR ;CDR account change- ex. ;;STOP CODE NAME^NUMBER^CDR # (old)^CDR# (new)
 ;;QUIT
 ;
ACT ;DSS IDs to be reactivated- example ;;NUMBER^
 ;;QUIT
 ;
REST ;Change restriction - ;;STOP CODE NAME^NUMBER^REST TYPE^RES DATE^OLD
 ;;VISOR & ADVANCED BLIND REHAB^220^E^^P
 ;;VICTORS & ADVANCED LOW VISION^437^E^^P
 ;;INTERMED LOW VISION CARE^438^E^^P
 ;;QUIT