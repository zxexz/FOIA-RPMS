BGP21L22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,23490-0167-03 ",.01)
 ;;23490-0167-03
 ;;9002226.02101,"1201,23490-0167-03 ",.02)
 ;;23490-0167-03
 ;;9002226.02101,"1201,23490-5838-02 ",.01)
 ;;23490-5838-02
 ;;9002226.02101,"1201,23490-5838-02 ",.02)
 ;;23490-5838-02
 ;;9002226.02101,"1201,23490-5838-06 ",.01)
 ;;23490-5838-06
 ;;9002226.02101,"1201,23490-5838-06 ",.02)
 ;;23490-5838-06
 ;;9002226.02101,"1201,23490-5838-09 ",.01)
 ;;23490-5838-09
 ;;9002226.02101,"1201,23490-5838-09 ",.02)
 ;;23490-5838-09
 ;;9002226.02101,"1201,23490-5839-00 ",.01)
 ;;23490-5839-00
 ;;9002226.02101,"1201,23490-5839-00 ",.02)
 ;;23490-5839-00
 ;;9002226.02101,"1201,23490-5839-01 ",.01)
 ;;23490-5839-01
 ;;9002226.02101,"1201,23490-5839-01 ",.02)
 ;;23490-5839-01
 ;;9002226.02101,"1201,23490-5840-01 ",.01)
 ;;23490-5840-01
 ;;9002226.02101,"1201,23490-5840-01 ",.02)
 ;;23490-5840-01
 ;;9002226.02101,"1201,23490-5840-02 ",.01)
 ;;23490-5840-02
 ;;9002226.02101,"1201,23490-5840-02 ",.02)
 ;;23490-5840-02
 ;;9002226.02101,"1201,23490-9350-03 ",.01)
 ;;23490-9350-03
 ;;9002226.02101,"1201,23490-9350-03 ",.02)
 ;;23490-9350-03
 ;;9002226.02101,"1201,23490-9350-06 ",.01)
 ;;23490-9350-06
 ;;9002226.02101,"1201,23490-9350-06 ",.02)
 ;;23490-9350-06
 ;;9002226.02101,"1201,23490-9350-09 ",.01)
 ;;23490-9350-09
 ;;9002226.02101,"1201,23490-9350-09 ",.02)
 ;;23490-9350-09
 ;;9002226.02101,"1201,23490-9351-03 ",.01)
 ;;23490-9351-03
 ;;9002226.02101,"1201,23490-9351-03 ",.02)
 ;;23490-9351-03
 ;;9002226.02101,"1201,23490-9351-06 ",.01)
 ;;23490-9351-06
 ;;9002226.02101,"1201,23490-9351-06 ",.02)
 ;;23490-9351-06
 ;;9002226.02101,"1201,23490-9351-09 ",.01)
 ;;23490-9351-09
 ;;9002226.02101,"1201,23490-9351-09 ",.02)
 ;;23490-9351-09
 ;;9002226.02101,"1201,23490-9352-03 ",.01)
 ;;23490-9352-03
 ;;9002226.02101,"1201,23490-9352-03 ",.02)
 ;;23490-9352-03
 ;;9002226.02101,"1201,23490-9352-06 ",.01)
 ;;23490-9352-06
 ;;9002226.02101,"1201,23490-9352-06 ",.02)
 ;;23490-9352-06
 ;;9002226.02101,"1201,23490-9352-09 ",.01)
 ;;23490-9352-09
 ;;9002226.02101,"1201,23490-9352-09 ",.02)
 ;;23490-9352-09
 ;;9002226.02101,"1201,23490-9353-03 ",.01)
 ;;23490-9353-03
 ;;9002226.02101,"1201,23490-9353-03 ",.02)
 ;;23490-9353-03
 ;;9002226.02101,"1201,23490-9353-06 ",.01)
 ;;23490-9353-06
 ;;9002226.02101,"1201,23490-9353-06 ",.02)
 ;;23490-9353-06
 ;;9002226.02101,"1201,23490-9353-09 ",.01)
 ;;23490-9353-09
 ;;9002226.02101,"1201,23490-9353-09 ",.02)
 ;;23490-9353-09
 ;;9002226.02101,"1201,23490-9354-03 ",.01)
 ;;23490-9354-03
 ;;9002226.02101,"1201,23490-9354-03 ",.02)
 ;;23490-9354-03
 ;;9002226.02101,"1201,23490-9354-06 ",.01)
 ;;23490-9354-06
 ;;9002226.02101,"1201,23490-9354-06 ",.02)
 ;;23490-9354-06
 ;;9002226.02101,"1201,23490-9354-09 ",.01)
 ;;23490-9354-09
 ;;9002226.02101,"1201,23490-9354-09 ",.02)
 ;;23490-9354-09
 ;;9002226.02101,"1201,23490-9355-03 ",.01)
 ;;23490-9355-03
 ;;9002226.02101,"1201,23490-9355-03 ",.02)
 ;;23490-9355-03
 ;;9002226.02101,"1201,23490-9355-06 ",.01)
 ;;23490-9355-06
 ;;9002226.02101,"1201,23490-9355-06 ",.02)
 ;;23490-9355-06
 ;;9002226.02101,"1201,23490-9355-09 ",.01)
 ;;23490-9355-09
 ;;9002226.02101,"1201,23490-9355-09 ",.02)
 ;;23490-9355-09
 ;;9002226.02101,"1201,23490-9356-03 ",.01)
 ;;23490-9356-03
 ;;9002226.02101,"1201,23490-9356-03 ",.02)
 ;;23490-9356-03
 ;;9002226.02101,"1201,23490-9356-06 ",.01)
 ;;23490-9356-06
 ;;9002226.02101,"1201,23490-9356-06 ",.02)
 ;;23490-9356-06
 ;;9002226.02101,"1201,23490-9356-09 ",.01)
 ;;23490-9356-09
 ;;9002226.02101,"1201,23490-9356-09 ",.02)
 ;;23490-9356-09
 ;;9002226.02101,"1201,23490-9357-03 ",.01)
 ;;23490-9357-03
 ;;9002226.02101,"1201,23490-9357-03 ",.02)
 ;;23490-9357-03
 ;;9002226.02101,"1201,23490-9357-06 ",.01)
 ;;23490-9357-06
 ;;9002226.02101,"1201,23490-9357-06 ",.02)
 ;;23490-9357-06
 ;;9002226.02101,"1201,23490-9357-09 ",.01)
 ;;23490-9357-09
 ;;9002226.02101,"1201,23490-9357-09 ",.02)
 ;;23490-9357-09
 ;;9002226.02101,"1201,23490-9926-01 ",.01)
 ;;23490-9926-01
 ;;9002226.02101,"1201,23490-9926-01 ",.02)
 ;;23490-9926-01
 ;;9002226.02101,"1201,24658-0210-10 ",.01)
 ;;24658-0210-10
 ;;9002226.02101,"1201,24658-0210-10 ",.02)
 ;;24658-0210-10
 ;;9002226.02101,"1201,24658-0210-30 ",.01)
 ;;24658-0210-30
 ;;9002226.02101,"1201,24658-0210-30 ",.02)
 ;;24658-0210-30
 ;;9002226.02101,"1201,24658-0210-45 ",.01)
 ;;24658-0210-45
 ;;9002226.02101,"1201,24658-0210-45 ",.02)
 ;;24658-0210-45
 ;;9002226.02101,"1201,24658-0210-90 ",.01)
 ;;24658-0210-90
 ;;9002226.02101,"1201,24658-0210-90 ",.02)
 ;;24658-0210-90
 ;;9002226.02101,"1201,24658-0211-10 ",.01)
 ;;24658-0211-10
 ;;9002226.02101,"1201,24658-0211-10 ",.02)
 ;;24658-0211-10
 ;;9002226.02101,"1201,24658-0211-30 ",.01)
 ;;24658-0211-30
 ;;9002226.02101,"1201,24658-0211-30 ",.02)
 ;;24658-0211-30
 ;;9002226.02101,"1201,24658-0211-45 ",.01)
 ;;24658-0211-45
 ;;9002226.02101,"1201,24658-0211-45 ",.02)
 ;;24658-0211-45
 ;;9002226.02101,"1201,24658-0211-90 ",.01)
 ;;24658-0211-90
 ;;9002226.02101,"1201,24658-0211-90 ",.02)
 ;;24658-0211-90
 ;;9002226.02101,"1201,24658-0212-10 ",.01)
 ;;24658-0212-10
 ;;9002226.02101,"1201,24658-0212-10 ",.02)
 ;;24658-0212-10
 ;;9002226.02101,"1201,24658-0212-30 ",.01)
 ;;24658-0212-30