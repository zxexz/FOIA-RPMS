ABPAAR1D ;PRINT UTILIZATION REPORT; [ 04/10/91  1:50 PM ]
 ;;1.4;AO PVT-INS TRACKING;*0*;IHS-OKC/KJR;JULY 25, 1991
 W !!,"<<< NOT AN ENTRY POINT - ACCESS DENIED >>>",!! Q
COMMA D COMMA^%DTC Q
 ;
HEAD K ABPA("HD") S ABPA("HD",1)="R E P O R T   O F   P R I V A T E   "
 S ABPA("HD",1)=ABPA("HD",1)_"I N S U R A N C E   U T I L I Z A T I O N"
 S ABPA("HD",2)="for the period "_$E(BDT,4,5)_"/"_$E(BDT,6,7)_"/"_$E(BDT,2,3)_" to "_$E(EDT,4,5)_"/"_$E(EDT,6,7)_"/"_$E(EDT,2,3)
 D ^ABPAARHD Q
 ;
FC S FC=0 F T=1:1:15 S @("T"_T)=0
 S TABLST="32^39^47^57^66^74^93^103^112^120^82^39^105^66^112"
 S WDLST="6^6^12^6^6^12^12^6^6^12^5^6^6^6^6"
NXTFC S FC=$O(^%ZTSK(ZTSK,"SITE",FC)) G SUM:FC="" S DATA=^%ZTSK(ZTSK,FC)
 I ($P(DATA,"^",7)=0)&($P(DATA,"^",10)=0) G NXTFC
 D:$Y>55 HEAD W !,FC
 F P=1:1:15 S @("P"_P)=$P(DATA,"^",P),@("T"_P)=@("T"_P)+@("P"_P)
 F P=1:1:6,11,7:1:10,12,14,13,15 D
 .S TAB=$P(TABLST,"^",P),TAB="?"_TAB,WD=$P(WDLST,"^",P)
 .S X=@("P"_P) D COMMA F I=1:1:12 Q:$E(X,I)'=" "
 .S X=$E(X,I,12) I (P'=3)&(P'=6)&(P'=7)&(P'=10) S X=$P(X,".")
 .W:P=12 ! W @TAB,$J(X,WD)
 W ! F I=1:1:132 W "-"
 G NXTFC
 ;
SUM W !?5,"S U B - T O T A L"
 F T=1:1:6,11,7:1:10,12,14,13,15 D
 .S TAB=$P(TABLST,"^",T),TAB="?"_TAB,WD=$P(WDLST,"^",T)
 .S X=@("T"_T) D COMMA F I=1:1:12 Q:$E(X,I)'=" "
 .S X=$E(X,I,12)
 .I (T'=3)&(T'=6)&(T'=7)&(T'=10) S X=$P(X,".")
 .W:T=12 ! W @TAB,$J(X,WD)
UNPROC W !!?73,"Plus   U N D I S T R I B U T E D   T O T A L"
 S X=ABPA("UPAMT") D COMMA^%DTC W ?120,X,!?120 F I=1:1:12 W "-"
COLLECT W !?74,"C O L L E C T I O N S   F O R   P E R I O D"
 S X=T10+ABPA("UPAMT") D COMMA^%DTC W ?120,X
REFUNDS W !!?99,"Less R E F U N D S"
 S X=ABPA("REF") D COMMA^%DTC W ?120,X
ADJUST W !!?89,"Less   A D J U S T M E N T S" S X=ABPA("TRAN")
 D COMMA^%DTC W ?120,X,!?120 F I=1:1:12 W "-"
TOTAL W !?86,"T O T A L   F O R   P E R I O D"
 S X=T10+(ABPA("UPAMT"))-(ABPA("REF"))-(ABPA("TRAN"))
 D COMMA^%DTC W ?120,X
 D ^%AUCLS I $D(A("PRINT",10))=1 W @(A("PRINT",10))
 X ^%ZIS("C") S IOP=$I D ^%ZIS K IOP
ZEND K BDT,DATA,EDT,FC,HD,IPT,OPT,CLT,SITENAME,X,A,PDT,ABPAPG,ABPA,PART2
 F I=1:1:11 K @("P"_I),@("T"_I)
 K I Q
 ;
START S IOP=ABPA("IO") D ^%ZIS
 D ^ABPAPRT I $D(A("PRINT",16))=1 W @(A("PRINT",16))
 S ABPAPG=0,ZTSK=ABPA("TASK"),PART2=0 D HEAD G FC