BGP3DSI ; IHS/CMI/LAB - DISPLAY IND LISTS ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;; ;
EP ;EP - CALLED FROM OPTION
 D EN
 Q
EOJ ;EP
 K BGPTIND,BGPHIGH,BGPANS,BGPC,BGPGANS,BGPGC,BGPGI,BGPI,BGPX
 Q
 ;; ;
EN ;EP -- main entry point for APCH HMR DISPLAY
 D EN^VALM("BGP 03 INDICATOR SELECTION")
 D CLEAR^VALM1
 D FULL^VALM1
 W:$D(IOF) @IOF
 D EOJ
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)="IHS Clinical Performance Indicators"
 S VALMHDR(2)="* indicates the indicator has been selected"
 Q
 ;
INIT ; -- init variables and list array
 K BGPTIND S BGPHIGH=""
 ;S T="INDSL" F J=1:1 S X=$T(@T+J),X=$P(X,";;",2) Q:X="END"  S BGPTIND(J,0)=J_")",$E(BGPTIND(J,0),5)=X,BGPTIND("IDX",J,J)="" I $D(BGPIND(J)) S BGPTIND(J,0)="*"_BGPTIND(J,0)
 ;S (X,C)=0 F  S X=$O(^BGPIND(X)) Q:X'=+X  S C=C+1,BGPTIND(C,0)=C_")",$E(BGPTIND(C,0),5)=$P(^BGPIND(X,0),U,4),BGPTIND("IDX",C,C)=X I $D(BGPIND(X)) S BGPTIND(C,0)="*"_BGPTIND(C,0)
 S (X,Y,Z,C)=0 F  S X=$O(^BGPIND("AO",2003,X)) Q:X'=+X  S Y=$O(^BGPIND("AO",2003,X,Y)) Q:Y'=+Y  D
 .S C=C+1,BGPTIND(C,0)=C_")",$E(BGPTIND(C,0),5)=$P(^BGPIND(Y,0),U,4),BGPTIND(C,C)=Y I $D(BGPIND(Y)) S BGPTIND(C,0)="*"_BGPTIND(C,0)
 .Q
 S (VALMCNT,BGPHIGH)=C
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
 ;
BACK ;go back to listman
 D TERM^VALM0
 S VALMBCK="R"
 D INIT
 D HDR
 K DIR
 K X,Y,Z,I
 Q
 ;
ADD ;EP - add an item to the selected list - called from a protocol
 W ! S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which item(s)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G ADDX
 I $D(DIRUT) W !,"No items selected." G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPANS=Y,BGPC="" F BGPI=1:1 S BGPC=$P(BGPANS,",",BGPI) Q:BGPC=""  S BGPIND(BGPTIND(BGPC,BGPC))=""
ADDX ;
 D BACK
 Q
ADDALL ;
 F X=1:1:BGPHIGH S BGPIND(X)=""
 D BACK
 Q
 ;
REM ;
 W ! S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which item(s)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G ADDX
 I $D(DIRUT) W !,"No items selected." G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPANS=Y,BGPC="" F BGPI=1:1 S BGPC=$P(BGPANS,",",BGPI) Q:BGPC=""  K BGPIND(BGPTIND(BGPC,BGPC))
REMX ;
 D BACK
 Q