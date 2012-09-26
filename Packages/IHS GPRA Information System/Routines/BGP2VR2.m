BGP2VR2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"731,58016-0622-08 ",.02)
 ;;58016-0622-08
 ;;9002226.02101,"731,58016-0622-12 ",.01)
 ;;58016-0622-12
 ;;9002226.02101,"731,58016-0622-12 ",.02)
 ;;58016-0622-12
 ;;9002226.02101,"731,58016-0622-15 ",.01)
 ;;58016-0622-15
 ;;9002226.02101,"731,58016-0622-15 ",.02)
 ;;58016-0622-15
 ;;9002226.02101,"731,58016-0622-20 ",.01)
 ;;58016-0622-20
 ;;9002226.02101,"731,58016-0622-20 ",.02)
 ;;58016-0622-20
 ;;9002226.02101,"731,58016-0622-30 ",.01)
 ;;58016-0622-30
 ;;9002226.02101,"731,58016-0622-30 ",.02)
 ;;58016-0622-30
 ;;9002226.02101,"731,58016-0622-50 ",.01)
 ;;58016-0622-50
 ;;9002226.02101,"731,58016-0622-50 ",.02)
 ;;58016-0622-50
 ;;9002226.02101,"731,58016-0622-60 ",.01)
 ;;58016-0622-60
 ;;9002226.02101,"731,58016-0622-60 ",.02)
 ;;58016-0622-60
 ;;9002226.02101,"731,58016-0622-90 ",.01)
 ;;58016-0622-90
 ;;9002226.02101,"731,58016-0622-90 ",.02)
 ;;58016-0622-90
 ;;9002226.02101,"731,58864-0796-20 ",.01)
 ;;58864-0796-20
 ;;9002226.02101,"731,58864-0796-20 ",.02)
 ;;58864-0796-20
 ;;9002226.02101,"731,58864-0797-30 ",.01)
 ;;58864-0797-30
 ;;9002226.02101,"731,58864-0797-30 ",.02)
 ;;58864-0797-30
 ;;9002226.02101,"731,61392-0353-34 ",.01)
 ;;61392-0353-34
 ;;9002226.02101,"731,61392-0353-34 ",.02)
 ;;61392-0353-34
 ;;9002226.02101,"731,61392-0353-36 ",.01)
 ;;61392-0353-36
 ;;9002226.02101,"731,61392-0353-36 ",.02)
 ;;61392-0353-36
 ;;9002226.02101,"731,61392-0353-45 ",.01)
 ;;61392-0353-45
 ;;9002226.02101,"731,61392-0353-45 ",.02)
 ;;61392-0353-45
 ;;9002226.02101,"731,61392-0353-54 ",.01)
 ;;61392-0353-54
 ;;9002226.02101,"731,61392-0353-54 ",.02)
 ;;61392-0353-54
 ;;9002226.02101,"731,61392-0353-56 ",.01)
 ;;61392-0353-56
 ;;9002226.02101,"731,61392-0353-56 ",.02)
 ;;61392-0353-56
 ;;9002226.02101,"731,61392-0353-91 ",.01)
 ;;61392-0353-91
 ;;9002226.02101,"731,61392-0353-91 ",.02)
 ;;61392-0353-91
 ;;9002226.02101,"731,61392-0356-15 ",.01)
 ;;61392-0356-15
 ;;9002226.02101,"731,61392-0356-15 ",.02)
 ;;61392-0356-15
 ;;9002226.02101,"731,61392-0356-45 ",.01)
 ;;61392-0356-45
 ;;9002226.02101,"731,61392-0356-45 ",.02)
 ;;61392-0356-45
 ;;9002226.02101,"731,61392-0356-56 ",.01)
 ;;61392-0356-56
 ;;9002226.02101,"731,61392-0356-56 ",.02)
 ;;61392-0356-56
 ;;9002226.02101,"731,63629-1558-01 ",.01)
 ;;63629-1558-01
 ;;9002226.02101,"731,63629-1558-01 ",.02)
 ;;63629-1558-01
 ;;9002226.02101,"731,63629-1558-02 ",.01)
 ;;63629-1558-02
 ;;9002226.02101,"731,63629-1558-02 ",.02)
 ;;63629-1558-02
 ;;9002226.02101,"731,63629-1558-03 ",.01)
 ;;63629-1558-03
 ;;9002226.02101,"731,63629-1558-03 ",.02)
 ;;63629-1558-03
 ;;9002226.02101,"731,63629-1558-04 ",.01)
 ;;63629-1558-04
 ;;9002226.02101,"731,63629-1558-04 ",.02)
 ;;63629-1558-04
 ;;9002226.02101,"731,63874-0338-01 ",.01)
 ;;63874-0338-01
 ;;9002226.02101,"731,63874-0338-01 ",.02)
 ;;63874-0338-01
 ;;9002226.02101,"731,63874-0338-03 ",.01)
 ;;63874-0338-03
 ;;9002226.02101,"731,63874-0338-03 ",.02)
 ;;63874-0338-03
 ;;9002226.02101,"731,63874-0338-08 ",.01)
 ;;63874-0338-08
 ;;9002226.02101,"731,63874-0338-08 ",.02)
 ;;63874-0338-08
 ;;9002226.02101,"731,63874-0338-10 ",.01)
 ;;63874-0338-10
 ;;9002226.02101,"731,63874-0338-10 ",.02)
 ;;63874-0338-10
 ;;9002226.02101,"731,63874-0338-12 ",.01)
 ;;63874-0338-12
 ;;9002226.02101,"731,63874-0338-12 ",.02)
 ;;63874-0338-12
 ;;9002226.02101,"731,63874-0338-15 ",.01)
 ;;63874-0338-15
 ;;9002226.02101,"731,63874-0338-15 ",.02)
 ;;63874-0338-15
 ;;9002226.02101,"731,63874-0338-20 ",.01)
 ;;63874-0338-20
 ;;9002226.02101,"731,63874-0338-20 ",.02)
 ;;63874-0338-20
 ;;9002226.02101,"731,63874-0338-30 ",.01)
 ;;63874-0338-30
 ;;9002226.02101,"731,63874-0338-30 ",.02)
 ;;63874-0338-30
 ;;9002226.02101,"731,63874-0338-50 ",.01)
 ;;63874-0338-50
 ;;9002226.02101,"731,63874-0338-50 ",.02)
 ;;63874-0338-50
 ;;9002226.02101,"731,63874-0338-60 ",.01)
 ;;63874-0338-60
 ;;9002226.02101,"731,63874-0338-60 ",.02)
 ;;63874-0338-60
 ;;9002226.02101,"731,63874-0338-90 ",.01)
 ;;63874-0338-90
 ;;9002226.02101,"731,63874-0338-90 ",.02)
 ;;63874-0338-90
 ;;9002226.02101,"731,68115-0255-30 ",.01)
 ;;68115-0255-30
 ;;9002226.02101,"731,68115-0255-30 ",.02)
 ;;68115-0255-30
 ;;9002226.02101,"731,68115-0472-60 ",.01)
 ;;68115-0472-60
 ;;9002226.02101,"731,68115-0472-60 ",.02)
 ;;68115-0472-60