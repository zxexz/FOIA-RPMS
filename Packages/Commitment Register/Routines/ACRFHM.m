ACRFHM ;IHS/DSD/THL,AEF - QUERY ARMS/DHR FOR AMOUNTS SPENT; [ 10/27/2004   4:18 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**13**;NOV 05, 2001
 ;;
EN D EXIT
 D EN1
EXIT K ACRQUIT,ACROUT,ACR1,ACR2,ACRALL,ACR,ACRX,ACROCG,ACROBJDA,ACROBJ,ACROCC
 K ^TMP("ACRHM",$J)
 Q
EN1 ;
 D FY
 Q:$D(ACRQUIT)!$D(ACROUT)
 D LOCSSA
 Q:$D(ACRQUIT)!$D(ACROUT)
 D OBJCODE
 Q:$D(ACRQUIT)!$D(ACROUT)
 D SSALOC
 Q:$D(ACRQUIT)!$D(ACROUT)
 D ZIS
 Q
FY ;DETERMINE FISCAL YEAR
 S DIR(0)="N^1000:9999"
 S DIR("A")="In Fiscal Year "
 S DIR("B")=$S($E(DT,4,5)<10:$E(DT,1,3)+1700,1:($E(DT,1,3)+1)+1700)
 W !
 D DIR^ACRFDIC
 I Y'?4N S ACRQUIT="" Q
 Q
LOCSSA ;REPORT BY LOCATION OR SUB-SUB-ACTIVITY
 S DIR(0)="SOA^1:Location;2:Sub-Sub-Activity"
 S DIR("A",1)="How much did we spend by"
 S DIR("A")="1 - Location Code or 2 - Sub-sub-Activity: "
 S DIR("B")=1
 W !
 D DIR^ACRFDIC
 I Y<1 S ACRQUIT="" Q
 S ACR1=$S(Y=1:"LOCATION",1:"SUB-SUB-ACTIVITY")
 S ACR2=$S(Y=2:"LOCATION",1:"SUB-SUB-ACTIVITY")
 D ALL
 I ACRALL="ALL" Q
 D SPECIFIC
 Q
OBJCODE ;REPORT FOR ALL OR SELECTED OBJECT CODES
 W !!,"Do you want the report"
 D OC^ACRFSOF
 Q
SSALOC ;WITHIN LOCATION OR SUB-SUB-ACTIVITY SHOULD REPORT BE SORTED BY THE
 ;OTHER
 S DIR(0)="YOA"
 S DIR("A",1)="Within "_ACR1_" do you want"
 S DIR("A")="the report sorted by "_(ACR2)_": "
 S DIR("B")="Yes"
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 I Y=0 S ACRALL="NONE" Q
 N ACR1X,ACR2X
 S ACR1X=ACR1
 S ACR2X=ACR2
 S ACR1=ACR2X
 S ACR2=ACR1X
 D ALL
 I ACRALL="ALL" D BACK Q
 D SPECIFIC
 Q
BACK ; SWITCH CONTROL VARIABLES BACK TO THEIR ORIGINAL VALUES
 S ACR1=ACR1X
 S ACR2=ACR2X
 Q
ZIS ;SELECT PRINTER
 S (ZTRTN,ACRRTN)="PRINT^ACRFHM"
 S ZTDESC="ARMS-DHR INQUIRY"
 D ^ACRFZIS
 Q
PRINT ;EP;TO PRINT THE ARMS-DHR INQUIRY REPORT
 Q
ALL ;
 S DIR(0)="SOA^1:ALL "_ACR1_";2:SELECTED "_ACR1
 S DIR("A",1)="Do you want the report for"
 S DIR("A")="1 - ALL "_ACR1_" or 2 - SELECTED "_ACR1_": "
 S DIR("B")=1
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 I Y=1 S ACRALL="ALL" Q
 E  S ACRALL="SPECIFIC"
 Q
SPECIFIC ;SELECT THE ENTITIES FOR THE REPORT
 I $E(ACR1)="L" D LOCATION Q
 D SSA
 Q
LOCATION ;SELECT SPECIFIC LOCATIONS
 F  D L1 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
L1 S DIC="^AUTTLCOD("
 S DIC(0)="AEMQZ"
 S DIC("A")="Which LOCATION: "
 I $O(^TMP("ACRHM",$J,"LOCATION",0)) S DIC("A")="Next LOCATION: "
 W !
 D DIC^ACRFDIC
 I Y<1 S ACRQUIT="" Q
 S ^TMP("ACRHM",$J,"LOCATION",+Y)=""
 Q
SSA ;SELECT SPECIFIC SUB-SUB-ACTIVITIES
 F  D S1 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
S1 S DIC="^AUTTSSA("
 S DIC(0)="AEMQZ"
 S DIC("A")="Which SUB-SUB-ACTIVITY: "
 S:$O(^TMP("ACRHM",$J,"SUB-SUB-ACTIVITY",0)) DIC("A")="Next SUB-SUB-ACTIVITY: "
 W !
 D DIC^ACRFDIC
 I Y<1 S ACRQUIT="" Q
 S ^TMP("ACRHM",$J,"SUB-SUB-ACTIVITY",+Y)=""
 Q
IMPORT ;EP;TO IMPORT HAS DATA
 S %FN=$$ARMSDIR^ACRFSYS(1)          ; ACR*2.1*13.06 IM14144
 S ACROP="R"
 D HOST^ACRFZIS
 Q:$D(ACRQUIT)
 D ^%ZISC
 Q