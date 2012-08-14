BGP9PXO ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP SYSTOLIC BP CPTS
 ;
 ; This routine loads Taxonomy BGP SYSTOLIC BP CPTS
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
 ;;21,"3074F ")
 ;;1
 ;;9002226,500,.01)
 ;;BGP SYSTOLIC BP CPTS
 ;;9002226,500,.02)
 ;;@
 ;;9002226,500,.04)
 ;;n
 ;;9002226,500,.06)
 ;;@
 ;;9002226,500,.08)
 ;;0
 ;;9002226,500,.09)
 ;;3080403
 ;;9002226,500,.11)
 ;;@
 ;;9002226,500,.12)
 ;;455
 ;;9002226,500,.13)
 ;;1
 ;;9002226,500,.14)
 ;;@
 ;;9002226,500,.15)
 ;;81
 ;;9002226,500,.16)
 ;;@
 ;;9002226,500,.17)
 ;;@
 ;;9002226,500,3101)
 ;;@
 ;;9002226.02101,"500,3074F ",.01)
 ;;3074F 
 ;;9002226.02101,"500,3074F ",.02)
 ;;3077F 
 ;
OTHER ; OTHER ROUTINES
 Q