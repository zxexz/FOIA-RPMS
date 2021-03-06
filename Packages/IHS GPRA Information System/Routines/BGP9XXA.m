BGP9XXA ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP BE CPTS
 ;
 ; This routine loads Taxonomy BGP BE CPTS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"74280 ")
 ;;1
 ;;21,"G0106 ")
 ;;2
 ;;21,"G0120 ")
 ;;3
 ;;9002226,447,.01)
 ;;BGP BE CPTS
 ;;9002226,447,.02)
 ;;@
 ;;9002226,447,.04)
 ;;n
 ;;9002226,447,.06)
 ;;@
 ;;9002226,447,.08)
 ;;0
 ;;9002226,447,.09)
 ;;3080519
 ;;9002226,447,.11)
 ;;@
 ;;9002226,447,.12)
 ;;455
 ;;9002226,447,.13)
 ;;1
 ;;9002226,447,.14)
 ;;@
 ;;9002226,447,.15)
 ;;81
 ;;9002226,447,.16)
 ;;@
 ;;9002226,447,.17)
 ;;@
 ;;9002226,447,3101)
 ;;@
 ;;9002226.02101,"447,74280 ",.01)
 ;;74280 
 ;;9002226.02101,"447,74280 ",.02)
 ;;74280 
 ;;9002226.02101,"447,G0106 ",.01)
 ;;G0106 
 ;;9002226.02101,"447,G0106 ",.02)
 ;;G0106 
 ;;9002226.02101,"447,G0120 ",.01)
 ;;G0120 
 ;;9002226.02101,"447,G0120 ",.02)
 ;;G0120 
 ;
OTHER ; OTHER ROUTINES
 Q
