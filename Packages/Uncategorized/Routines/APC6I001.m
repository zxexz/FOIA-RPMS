APC6I001 ; ; 04-FEB-2003
 ;;2.0;IHS RPMS/PCC Data Entry;**6**;MAR 09, 1999
 F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,999) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,"DIE",76,0)
 ;;=APCD TM (TM)^2900717.0938^^9000010^^^^
 ;;^UTILITY(U,$J,"DIE",76,"%D",0)
 ;;=^^1^1^2880218^^
 ;;^UTILITY(U,$J,"DIE",76,"%D",1,0)
 ;;=PCC Data Entry - Used to modify time of visit.
 ;;^UTILITY(U,$J,"DIE",76,"DR",1,9000010)
 ;;=@3;S (APCDTY,APCDTX,APCDTDAT,APCDTND)="";W !,"Enter new time: ",$S($D(APCDTIME):APCDTIME_"//",1:"") R APCDTX:DTIME S:APCDTX="^" Y="@2" I APCDTX="",'$D(APCDTIME) S Y="@2";I APCDTX="" S APCDTX=APCDTIME;W !,"Now changing time...";
 ;;^UTILITY(U,$J,"DIE",76,"DR",1,9000010,1)
 ;;=S APCDTDAT=$P(+^AUPNVSIT(APCDVSIT,0),".",1);S Y=APCDTDAT X ^DD("DD") S APCDTDAT=Y K Y;I $E(APCDTX)="@" S Y="@1";S APCDTX="@"_APCDTX;@1;
 ;;^UTILITY(U,$J,"DIE",76,"DR",1,9000010,2)
 ;;=S APCDTND=APCDTDAT_APCDTX,X=APCDTND,%DT="EPRT" D ^%DT S APCDTY=Y K Y I APCDTY=-1 W !,APCDBEEP,"Invalid time entry, Please re-enter!" S Y="@3";.01///^S X=APCDTY;I APCDTY=-1 W !,"Invalid date for this patient",APCDBEEP S Y="@3";@2;
 ;;^UTILITY(U,$J,"DIE",76,"DR",1,9000010,3)
 ;;=K APCDTDAT,APCDTND,APCDTX,APCDTY;
 ;;^UTILITY(U,$J,"DIE",76,"ROUOLD")
 ;;=
 ;;^UTILITY(U,$J,"DIE",78,0)
 ;;=APCD VST (VST)^2970507.1017^^9000010^^^^
 ;;^UTILITY(U,$J,"DIE",78,"DR",1,9000010)
 ;;=S APCDTVST="",APCDTLOC=APCDLOC,APCDTTYP=APCDTYPE,APCDTCAT=APCDCAT;.06;S APCDLOC=X;I $P($G(APCDPARM),U,16)'="Y"!($E($P(^AUTTLOC(X,0),U,10),5,6)<50) S Y="@1";2101;@1;.07;S APCDCAT=X;.03;S APCDTYPE=X;.08;
 ;;^UTILITY(U,$J,"DIE",78,"DR",1,9000010,1)
 ;;=I $P($G(APCDPARM),U,19)'="Y" S Y="@3";.16;S:X]"" Y="@2";@3;.16///U;@2;I $P(^AUPNVSIT(DA,0),U,16)'="A" S Y="@10";.26;S Y="@11";@10;.26///@;@11;.17;.18;.22;.29;
 ;;^UTILITY(U,$J,"DIE",78,"ROUOLD")
 ;;=
 ;;^UTILITY(U,$J,"DIE",399,0)
 ;;=APCD TM (TM)^2890809.0904^^9000001^^^^
 ;;^UTILITY(U,$J,"DIE",399,"%D",0)
 ;;=^^1^1^2880218^^
 ;;^UTILITY(U,$J,"DIE",399,"%D",1,0)
 ;;=PCC Data Entry - Used to modify time of visiit.
 ;;^UTILITY(U,$J,"DIE",399,"DIAB",2,0,9000001,0)
 ;;=LOOKUP:VISIT:
 ;;^UTILITY(U,$J,"DIE",399,"DR",1,9000001)
 ;;=S APCDPAT=DA D ^APCDVLK S:APCDLOOK APCDLOOK="`"_APCDLOOK;^9000010^AUPNVSIT(^^X DR(99,1,9.2) S Y(101)=$S($D(^AUPNVSIT(D0,0)):^(0),1:"") S X=$P(Y(101),U,1) S D0=I(0,0) S X=$S(D(0)>0:D(0),1:"");K APCDTX,APCDTND,APCDTDAT,APCDTY;
 ;;^UTILITY(U,$J,"DIE",399,"DR",2,9000010)
 ;;=@3;S (APCDTY,APCDTX,APCDTND,APCDTDAT)="";R !,"Enter new time: ",APCDTX I APCDTX=""!(APCDTX="^") S Y="@2";W !,"Now changing time...",!;S APCDTDAT=$P(+^AUPNVSIT(DA,0),".",1);I $E(APCDTX)="@" S Y="@1";S APCDTX="@"_APCDTX;@1;
 ;;^UTILITY(U,$J,"DIE",399,"DR",2,9000010,1)
 ;;=S Y=APCDTDAT X ^DD("DD") S APCDTDAT=Y K Y;S APCDTND=APCDTDAT_APCDTX S X=APCDTND,%DT="ERPT" D ^%DT S APCDTY=Y K Y I APCDTY=-1 W !,APCDBEEP,"Invalid time entry, Please re-enter.",! S Y="@3";.01///^S X=APCDTY;@2;
 ;;^UTILITY(U,$J,"DIE",399,"DR",99,1,9.2)
 ;;=X $P(^DD(9000001,9999,0),U,5,99) S Y(1)=X S I(0,0)=$S($D(D0):D0,1:"") S X=Y(1) K DIC S DIC="^AUPNVSIT(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"DIE",399,"ROUOLD")
 ;;=
 ;;^UTILITY(U,$J,"DIE",401,0)
 ;;=APCD VST (VST)^2970204.0938^^9000001^^^^
 ;;^UTILITY(U,$J,"DIE",401,"DIAB",2,0,9000001,0)
 ;;=LOOKUP:VISIT:
 ;;^UTILITY(U,$J,"DIE",401,"DR",1,9000001)
 ;;=S APCDPAT=DA D ^APCDVLK S:APCDLOOK APCDLOOK="`"_APCDLOOK;^9000010^AUPNVSIT(^^X DR(99,1,9.2) S Y(101)=$S($D(^AUPNVSIT(D0,0)):^(0),1:"") S X=$P(Y(101),U,1) S D0=I(0,0) S X=$S(D(0)>0:D(0),1:"");
 ;;^UTILITY(U,$J,"DIE",401,"DR",2,9000010)
 ;;=.06;S APCDLOC=X;I X="" S Y="@1";I $P($G(APCDPARM),U,16)'="Y"!($E($P(^AUTTLOC(X,0),U,10),5,6)<50) S Y="@1";2101;@1;.03;S APCDTYPE=X;.07;S APCDCAT=X;.08;I $P($G(APCDPARM),U,19)'="Y" S Y="@3";.16;I X]"" S Y="@2";@3;.16///U;@2;
 ;;^UTILITY(U,$J,"DIE",401,"DR",2,9000010,1)
 ;;=I $P(^AUPNVSIT(DA,0),U,16)'="A" S Y="@10";.26;S Y="@11";@10;.26///@;@11;.17;.18;.19;.22;
 ;;^UTILITY(U,$J,"DIE",401,"DR",99,1,9.2)
 ;;=X $P(^DD(9000001,9999,0),U,5,99) S Y(1)=X S I(0,0)=$S($D(D0):D0,1:"") S X=Y(1) K DIC S DIC="^AUPNVSIT(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"DIE",401,"ROUOLD")
 ;;=
 ;;^UTILITY(U,$J,"DIE",521,0)
 ;;=APCD OLOC (OLOC)^2920702.1637^^9000010^^^^
 ;;^UTILITY(U,$J,"DIE",521,"DR",1,9000010)
 ;;=I $P($G(APCDPARM),U,16)'="Y" W !!,$C(7)_$C(7),"Your site parameters file does not indicate outside location can be entered!" S Y="@1";2101;@1;
 ;;^UTILITY(U,$J,"DIE",521,"ROUOLD")
 ;;=
 ;;^UTILITY(U,$J,"DIE",528,0)
 ;;=APCD OLOC (OLOC)^2920702.1651^^9000001^^^^
 ;;^UTILITY(U,$J,"DIE",528,"DIAB",2,0,9000001,0)
 ;;=LOOKUP:VISIT:
 ;;^UTILITY(U,$J,"DIE",528,"DR",1,9000001)
 ;;=S APCDPAT=DA D ^APCDVLK S:APCDLOOK APCDLOOK="`"_APCDLOOK;^9000010^AUPNVSIT(^^X DR(99,1,9.2) S Y(101)=$S($D(^AUPNVSIT(D0,0)):^(0),1:"") S X=$P(Y(101),U,1) S D0=I(0,0) S X=$S(D(0)>0:D(0),1:"");