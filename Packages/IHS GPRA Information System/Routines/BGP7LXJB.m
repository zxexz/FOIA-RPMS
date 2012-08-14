BGP7LXJB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 29, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"627,00115-3200-01 ",.02)
 ;;00115-3200-01
 ;;9002226.02101,"627,00115-3200-03 ",.01)
 ;;00115-3200-03
 ;;9002226.02101,"627,00115-3200-03 ",.02)
 ;;00115-3200-03
 ;;9002226.02101,"627,00115-3220-01 ",.01)
 ;;00115-3220-01
 ;;9002226.02101,"627,00115-3220-01 ",.02)
 ;;00115-3220-01
 ;;9002226.02101,"627,00115-3220-03 ",.01)
 ;;00115-3220-03
 ;;9002226.02101,"627,00115-3220-03 ",.02)
 ;;00115-3220-03
 ;;9002226.02101,"627,00115-4308-01 ",.01)
 ;;00115-4308-01
 ;;9002226.02101,"627,00115-4308-01 ",.02)
 ;;00115-4308-01
 ;;9002226.02101,"627,00115-4308-03 ",.01)
 ;;00115-4308-03
 ;;9002226.02101,"627,00115-4308-03 ",.02)
 ;;00115-4308-03
 ;;9002226.02101,"627,00143-1227-01 ",.01)
 ;;00143-1227-01
 ;;9002226.02101,"627,00143-1227-01 ",.02)
 ;;00143-1227-01
 ;;9002226.02101,"627,00143-1227-10 ",.01)
 ;;00143-1227-10
 ;;9002226.02101,"627,00143-1227-10 ",.02)
 ;;00143-1227-10
 ;;9002226.02101,"627,00143-3126-01 ",.01)
 ;;00143-3126-01
 ;;9002226.02101,"627,00143-3126-01 ",.02)
 ;;00143-3126-01
 ;;9002226.02101,"627,00143-3126-10 ",.01)
 ;;00143-3126-10
 ;;9002226.02101,"627,00143-3126-10 ",.02)
 ;;00143-3126-10
 ;;9002226.02101,"627,00182-0519-01 ",.01)
 ;;00182-0519-01
 ;;9002226.02101,"627,00182-0519-01 ",.02)
 ;;00182-0519-01
 ;;9002226.02101,"627,00182-0519-10 ",.01)
 ;;00182-0519-10
 ;;9002226.02101,"627,00182-0519-10 ",.02)
 ;;00182-0519-10
 ;;9002226.02101,"627,00182-0708-63 ",.01)
 ;;00182-0708-63
 ;;9002226.02101,"627,00182-0708-63 ",.02)
 ;;00182-0708-63
 ;;9002226.02101,"627,00182-1578-10 ",.01)
 ;;00182-1578-10
 ;;9002226.02101,"627,00182-1578-10 ",.02)
 ;;00182-1578-10
 ;;9002226.02101,"627,00182-1578-89 ",.01)
 ;;00182-1578-89
 ;;9002226.02101,"627,00182-1578-89 ",.02)
 ;;00182-1578-89
 ;;9002226.02101,"627,00182-1579-01 ",.01)
 ;;00182-1579-01
 ;;9002226.02101,"627,00182-1579-01 ",.02)
 ;;00182-1579-01
 ;;9002226.02101,"627,00182-1858-01 ",.01)
 ;;00182-1858-01
 ;;9002226.02101,"627,00182-1858-01 ",.02)
 ;;00182-1858-01
 ;;9002226.02101,"627,00223-0795-01 ",.01)
 ;;00223-0795-01
 ;;9002226.02101,"627,00223-0795-01 ",.02)
 ;;00223-0795-01
 ;;9002226.02101,"627,00223-0795-02 ",.01)
 ;;00223-0795-02
 ;;9002226.02101,"627,00223-0795-02 ",.02)
 ;;00223-0795-02
 ;;9002226.02101,"627,00223-2128-00 ",.01)
 ;;00223-2128-00
 ;;9002226.02101,"627,00223-2128-00 ",.02)
 ;;00223-2128-00
 ;;9002226.02101,"627,00223-2128-05 ",.01)
 ;;00223-2128-05
 ;;9002226.02101,"627,00223-2128-05 ",.02)
 ;;00223-2128-05
 ;;9002226.02101,"627,00223-2130-05 ",.01)
 ;;00223-2130-05
 ;;9002226.02101,"627,00223-2130-05 ",.02)
 ;;00223-2130-05
 ;;9002226.02101,"627,00223-2131-05 ",.01)
 ;;00223-2131-05
 ;;9002226.02101,"627,00223-2131-05 ",.02)
 ;;00223-2131-05
 ;;9002226.02101,"627,00223-7430-10 ",.01)
 ;;00223-7430-10
 ;;9002226.02101,"627,00223-7430-10 ",.02)
 ;;00223-7430-10
 ;;9002226.02101,"627,00247-0188-00 ",.01)
 ;;00247-0188-00
 ;;9002226.02101,"627,00247-0188-00 ",.02)
 ;;00247-0188-00
 ;;9002226.02101,"627,00247-0188-02 ",.01)
 ;;00247-0188-02
 ;;9002226.02101,"627,00247-0188-02 ",.02)
 ;;00247-0188-02
 ;;9002226.02101,"627,00247-0188-03 ",.01)
 ;;00247-0188-03
 ;;9002226.02101,"627,00247-0188-03 ",.02)
 ;;00247-0188-03
 ;;9002226.02101,"627,00247-0188-04 ",.01)
 ;;00247-0188-04
 ;;9002226.02101,"627,00247-0188-04 ",.02)
 ;;00247-0188-04
 ;;9002226.02101,"627,00247-0188-06 ",.01)
 ;;00247-0188-06
 ;;9002226.02101,"627,00247-0188-06 ",.02)
 ;;00247-0188-06
 ;;9002226.02101,"627,00247-0188-10 ",.01)
 ;;00247-0188-10
 ;;9002226.02101,"627,00247-0188-10 ",.02)
 ;;00247-0188-10
 ;;9002226.02101,"627,00247-0188-12 ",.01)
 ;;00247-0188-12
 ;;9002226.02101,"627,00247-0188-12 ",.02)
 ;;00247-0188-12
 ;;9002226.02101,"627,00247-0188-14 ",.01)
 ;;00247-0188-14
 ;;9002226.02101,"627,00247-0188-14 ",.02)
 ;;00247-0188-14
 ;;9002226.02101,"627,00247-0188-15 ",.01)
 ;;00247-0188-15
 ;;9002226.02101,"627,00247-0188-15 ",.02)
 ;;00247-0188-15
 ;;9002226.02101,"627,00247-0188-20 ",.01)
 ;;00247-0188-20
 ;;9002226.02101,"627,00247-0188-20 ",.02)
 ;;00247-0188-20
 ;;9002226.02101,"627,00247-0188-24 ",.01)
 ;;00247-0188-24
 ;;9002226.02101,"627,00247-0188-24 ",.02)
 ;;00247-0188-24
 ;;9002226.02101,"627,00247-0188-30 ",.01)
 ;;00247-0188-30
 ;;9002226.02101,"627,00247-0188-30 ",.02)
 ;;00247-0188-30
 ;;9002226.02101,"627,00247-0188-40 ",.01)
 ;;00247-0188-40
 ;;9002226.02101,"627,00247-0188-40 ",.02)
 ;;00247-0188-40
 ;;9002226.02101,"627,00302-7100-01 ",.01)
 ;;00302-7100-01
 ;;9002226.02101,"627,00302-7100-01 ",.02)
 ;;00302-7100-01
 ;;9002226.02101,"627,00302-7104-01 ",.01)
 ;;00302-7104-01
 ;;9002226.02101,"627,00302-7104-01 ",.02)
 ;;00302-7104-01
 ;;9002226.02101,"627,00302-7104-10 ",.01)
 ;;00302-7104-10
 ;;9002226.02101,"627,00302-7104-10 ",.02)
 ;;00302-7104-10
 ;;9002226.02101,"627,00302-7106-01 ",.01)
 ;;00302-7106-01
 ;;9002226.02101,"627,00302-7106-01 ",.02)
 ;;00302-7106-01
 ;;9002226.02101,"627,00314-0299-70 ",.01)
 ;;00314-0299-70
 ;;9002226.02101,"627,00314-0299-70 ",.02)
 ;;00314-0299-70
 ;;9002226.02101,"627,00349-8268-01 ",.01)
 ;;00349-8268-01
 ;;9002226.02101,"627,00349-8268-01 ",.02)
 ;;00349-8268-01
 ;;9002226.02101,"627,00349-8268-10 ",.01)
 ;;00349-8268-10
 ;;9002226.02101,"627,00349-8268-10 ",.02)
 ;;00349-8268-10
 ;;9002226.02101,"627,00349-8269-01 ",.01)
 ;;00349-8269-01
 ;;9002226.02101,"627,00349-8269-01 ",.02)
 ;;00349-8269-01
 ;;9002226.02101,"627,00349-8269-10 ",.01)
 ;;00349-8269-10
 ;;9002226.02101,"627,00349-8269-10 ",.02)
 ;;00349-8269-10
 ;;9002226.02101,"627,00349-8270-01 ",.01)
 ;;00349-8270-01
 ;;9002226.02101,"627,00349-8270-01 ",.02)
 ;;00349-8270-01
 ;;9002226.02101,"627,00349-8270-10 ",.01)
 ;;00349-8270-10
 ;;9002226.02101,"627,00349-8270-10 ",.02)
 ;;00349-8270-10
 ;;9002226.02101,"627,00349-8360-01 ",.01)
 ;;00349-8360-01
 ;;9002226.02101,"627,00349-8360-01 ",.02)
 ;;00349-8360-01
 ;;9002226.02101,"627,00349-8360-10 ",.01)
 ;;00349-8360-10
 ;;9002226.02101,"627,00349-8360-10 ",.02)
 ;;00349-8360-10
 ;;9002226.02101,"627,00349-8361-01 ",.01)
 ;;00349-8361-01
 ;;9002226.02101,"627,00349-8361-01 ",.02)
 ;;00349-8361-01
 ;;9002226.02101,"627,00349-8361-10 ",.01)
 ;;00349-8361-10
 ;;9002226.02101,"627,00349-8361-10 ",.02)
 ;;00349-8361-10
 ;;9002226.02101,"627,00349-8362-01 ",.01)
 ;;00349-8362-01
 ;;9002226.02101,"627,00349-8362-01 ",.02)
 ;;00349-8362-01
 ;;9002226.02101,"627,00349-8362-10 ",.01)
 ;;00349-8362-10
 ;;9002226.02101,"627,00349-8362-10 ",.02)
 ;;00349-8362-10
 ;;9002226.02101,"627,00378-1610-01 ",.01)
 ;;00378-1610-01
 ;;9002226.02101,"627,00378-1610-01 ",.02)
 ;;00378-1610-01
 ;;9002226.02101,"627,00378-1610-05 ",.01)
 ;;00378-1610-05
 ;;9002226.02101,"627,00378-1610-05 ",.02)
 ;;00378-1610-05
 ;;9002226.02101,"627,00378-1620-01 ",.01)
 ;;00378-1620-01
 ;;9002226.02101,"627,00378-1620-01 ",.02)
 ;;00378-1620-01
 ;;9002226.02101,"627,00378-1620-05 ",.01)
 ;;00378-1620-05
 ;;9002226.02101,"627,00378-1620-05 ",.02)
 ;;00378-1620-05
 ;;9002226.02101,"627,00405-4328-01 ",.01)
 ;;00405-4328-01
 ;;9002226.02101,"627,00405-4328-01 ",.02)
 ;;00405-4328-01
 ;;9002226.02101,"627,00405-4328-03 ",.01)
 ;;00405-4328-03
 ;;9002226.02101,"627,00405-4328-03 ",.02)
 ;;00405-4328-03
 ;;9002226.02101,"627,00463-1104-10 ",.01)
 ;;00463-1104-10
 ;;9002226.02101,"627,00463-1104-10 ",.02)
 ;;00463-1104-10
 ;;9002226.02101,"627,00472-1450-94 ",.01)
 ;;00472-1450-94
 ;;9002226.02101,"627,00472-1450-94 ",.02)
 ;;00472-1450-94
 ;;9002226.02101,"627,00527-0586-01 ",.01)
 ;;00527-0586-01
 ;;9002226.02101,"627,00527-0586-01 ",.02)
 ;;00527-0586-01
 ;;9002226.02101,"627,00527-0586-05 ",.01)
 ;;00527-0586-05
 ;;9002226.02101,"627,00527-0586-05 ",.02)
 ;;00527-0586-05
 ;;9002226.02101,"627,00527-0586-10 ",.01)
 ;;00527-0586-10
 ;;9002226.02101,"627,00527-0586-10 ",.02)
 ;;00527-0586-10
 ;;9002226.02101,"627,00527-1282-01 ",.01)
 ;;00527-1282-01
 ;;9002226.02101,"627,00527-1282-01 ",.02)
 ;;00527-1282-01
 ;;9002226.02101,"627,00527-1282-05 ",.01)
 ;;00527-1282-05
 ;;9002226.02101,"627,00527-1282-05 ",.02)
 ;;00527-1282-05
 ;;9002226.02101,"627,00527-1282-10 ",.01)
 ;;00527-1282-10
 ;;9002226.02101,"627,00527-1282-10 ",.02)
 ;;00527-1282-10
 ;;9002226.02101,"627,00536-3801-11 ",.01)
 ;;00536-3801-11
 ;;9002226.02101,"627,00536-3801-11 ",.02)
 ;;00536-3801-11
 ;;9002226.02101,"627,00556-0352-01 ",.01)
 ;;00556-0352-01
 ;;9002226.02101,"627,00556-0352-01 ",.02)
 ;;00556-0352-01
 ;;9002226.02101,"627,00556-0352-10 ",.01)
 ;;00556-0352-10
 ;;9002226.02101,"627,00556-0352-10 ",.02)
 ;;00556-0352-10
 ;;9002226.02101,"627,00556-0353-01 ",.01)
 ;;00556-0353-01
 ;;9002226.02101,"627,00556-0353-01 ",.02)
 ;;00556-0353-01
 ;;9002226.02101,"627,00556-0353-10 ",.01)
 ;;00556-0353-10
 ;;9002226.02101,"627,00556-0353-10 ",.02)
 ;;00556-0353-10
 ;;9002226.02101,"627,00556-0354-01 ",.01)
 ;;00556-0354-01
 ;;9002226.02101,"627,00556-0354-01 ",.02)
 ;;00556-0354-01
 ;;9002226.02101,"627,00556-0354-10 ",.01)
 ;;00556-0354-10
 ;;9002226.02101,"627,00556-0354-10 ",.02)
 ;;00556-0354-10
 ;;9002226.02101,"627,00591-0794-01 ",.01)
 ;;00591-0794-01
 ;;9002226.02101,"627,00591-0794-01 ",.02)
 ;;00591-0794-01
 ;;9002226.02101,"627,00591-0794-10 ",.01)
 ;;00591-0794-10
 ;;9002226.02101,"627,00591-0794-10 ",.02)
 ;;00591-0794-10
 ;;9002226.02101,"627,00591-0795-01 ",.01)
 ;;00591-0795-01
 ;;9002226.02101,"627,00591-0795-01 ",.02)
 ;;00591-0795-01
 ;;9002226.02101,"627,00591-0795-10 ",.01)
 ;;00591-0795-10
 ;;9002226.02101,"627,00591-0795-10 ",.02)
 ;;00591-0795-10
 ;;9002226.02101,"627,00591-5542-01 ",.01)
 ;;00591-5542-01
 ;;9002226.02101,"627,00591-5542-01 ",.02)
 ;;00591-5542-01
 ;;9002226.02101,"627,00591-5542-04 ",.01)
 ;;00591-5542-04
 ;;9002226.02101,"627,00591-5542-04 ",.02)
 ;;00591-5542-04
 ;;9002226.02101,"627,00591-5566-01 ",.01)
 ;;00591-5566-01
 ;;9002226.02101,"627,00591-5566-01 ",.02)
 ;;00591-5566-01
 ;;9002226.02101,"627,00591-5566-04 ",.01)
 ;;00591-5566-04
 ;;9002226.02101,"627,00591-5566-04 ",.02)
 ;;00591-5566-04
 ;;9002226.02101,"627,00591-5568-01 ",.01)
 ;;00591-5568-01
 ;;9002226.02101,"627,00591-5568-01 ",.02)
 ;;00591-5568-01
 ;;9002226.02101,"627,00591-5568-04 ",.01)
 ;;00591-5568-04
 ;;9002226.02101,"627,00591-5568-04 ",.02)
 ;;00591-5568-04
 ;;9002226.02101,"627,00603-1161-58 ",.01)
 ;;00603-1161-58
 ;;9002226.02101,"627,00603-1161-58 ",.02)
 ;;00603-1161-58
 ;;9002226.02101,"627,00603-3265-21 ",.01)
 ;;00603-3265-21
 ;;9002226.02101,"627,00603-3265-21 ",.02)
 ;;00603-3265-21
 ;;9002226.02101,"627,00603-3265-32 ",.01)
 ;;00603-3265-32
 ;;9002226.02101,"627,00603-3265-32 ",.02)
 ;;00603-3265-32
 ;;9002226.02101,"627,00603-3266-21 ",.01)
 ;;00603-3266-21
 ;;9002226.02101,"627,00603-3266-21 ",.02)
 ;;00603-3266-21
 ;;9002226.02101,"627,00615-0327-01 ",.01)
 ;;00615-0327-01
 ;;9002226.02101,"627,00615-0327-01 ",.02)
 ;;00615-0327-01
 ;;9002226.02101,"627,00615-0327-10 ",.01)
 ;;00615-0327-10
 ;;9002226.02101,"627,00615-0327-10 ",.02)
 ;;00615-0327-10
 ;;9002226.02101,"627,00615-1516-10 ",.01)
 ;;00615-1516-10
 ;;9002226.02101,"627,00615-1516-10 ",.02)
 ;;00615-1516-10
 ;;9002226.02101,"627,00615-2504-29 ",.01)
 ;;00615-2504-29
 ;;9002226.02101,"627,00615-2504-29 ",.02)
 ;;00615-2504-29
 ;;9002226.02101,"627,00615-2504-65 ",.01)
 ;;00615-2504-65
 ;;9002226.02101,"627,00615-2504-65 ",.02)
 ;;00615-2504-65
 ;;9002226.02101,"627,00615-2504-88 ",.01)
 ;;00615-2504-88
 ;;9002226.02101,"627,00615-2504-88 ",.02)
 ;;00615-2504-88
 ;;9002226.02101,"627,00615-2506-29 ",.01)
 ;;00615-2506-29
 ;;9002226.02101,"627,00615-2506-29 ",.02)
 ;;00615-2506-29
 ;;9002226.02101,"627,00615-2506-65 ",.01)
 ;;00615-2506-65
 ;;9002226.02101,"627,00615-2506-65 ",.02)
 ;;00615-2506-65
 ;;9002226.02101,"627,00615-2506-88 ",.01)
 ;;00615-2506-88
 ;;9002226.02101,"627,00615-2506-88 ",.02)
 ;;00615-2506-88
 ;;9002226.02101,"627,00615-2507-29 ",.01)
 ;;00615-2507-29
 ;;9002226.02101,"627,00615-2507-29 ",.02)
 ;;00615-2507-29
 ;;9002226.02101,"627,00615-2507-65 ",.01)
 ;;00615-2507-65
 ;;9002226.02101,"627,00615-2507-65 ",.02)
 ;;00615-2507-65
 ;;9002226.02101,"627,00615-2507-88 ",.01)
 ;;00615-2507-88
 ;;9002226.02101,"627,00615-2507-88 ",.02)
 ;;00615-2507-88
 ;;9002226.02101,"627,00675-4017-07 ",.01)
 ;;00675-4017-07
 ;;9002226.02101,"627,00675-4017-07 ",.02)
 ;;00675-4017-07
 ;;9002226.02101,"627,00675-4017-10 ",.01)
 ;;00675-4017-10
 ;;9002226.02101,"627,00675-4017-10 ",.02)
 ;;00675-4017-10
 ;;9002226.02101,"627,00675-4019-07 ",.01)
 ;;00675-4019-07
 ;;9002226.02101,"627,00675-4019-07 ",.02)
 ;;00675-4019-07
 ;;9002226.02101,"627,00675-4019-10 ",.01)
 ;;00675-4019-10
 ;;9002226.02101,"627,00675-4019-10 ",.02)
 ;;00675-4019-10
 ;;9002226.02101,"627,00675-4019-12 ",.01)
 ;;00675-4019-12
 ;;9002226.02101,"627,00675-4019-12 ",.02)
 ;;00675-4019-12
 ;;9002226.02101,"627,00675-4020-07 ",.01)
 ;;00675-4020-07
 ;;9002226.02101,"627,00675-4020-07 ",.02)
 ;;00675-4020-07
 ;;9002226.02101,"627,00675-4020-10 ",.01)
 ;;00675-4020-10
 ;;9002226.02101,"627,00675-4020-10 ",.02)
 ;;00675-4020-10
 ;;9002226.02101,"627,00675-4020-12 ",.01)
 ;;00675-4020-12
 ;;9002226.02101,"627,00675-4020-12 ",.02)
 ;;00675-4020-12
 ;;9002226.02101,"627,00677-0341-01 ",.01)
 ;;00677-0341-01
 ;;9002226.02101,"627,00677-0341-01 ",.02)
 ;;00677-0341-01
 ;;9002226.02101,"627,00677-0498-01 ",.01)
 ;;00677-0498-01
 ;;9002226.02101,"627,00677-0498-01 ",.02)
 ;;00677-0498-01
 ;;9002226.02101,"627,00686-0112-09 ",.01)
 ;;00686-0112-09