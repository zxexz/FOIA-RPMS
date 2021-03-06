BGP9PXF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP RUBELLA EVIDENCE
 ;
 ; This routine loads Taxonomy BGP RUBELLA EVIDENCE
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
 ;;21,"056.00 ")
 ;;1
 ;;21,"771.0 ")
 ;;2
 ;;9002226,434,.01)
 ;;BGP RUBELLA EVIDENCE
 ;;9002226,434,.02)
 ;;@
 ;;9002226,434,.04)
 ;;n
 ;;9002226,434,.06)
 ;;@
 ;;9002226,434,.08)
 ;;0
 ;;9002226,434,.09)
 ;;3070926
 ;;9002226,434,.11)
 ;;@
 ;;9002226,434,.12)
 ;;31
 ;;9002226,434,.13)
 ;;1
 ;;9002226,434,.14)
 ;;@
 ;;9002226,434,.15)
 ;;80
 ;;9002226,434,.16)
 ;;@
 ;;9002226,434,.17)
 ;;@
 ;;9002226,434,3101)
 ;;@
 ;;9002226.02101,"434,056.00 ",.01)
 ;;056.00 
 ;;9002226.02101,"434,056.00 ",.02)
 ;;056.9 
 ;;9002226.02101,"434,771.0 ",.01)
 ;;771.0 
 ;;9002226.02101,"434,771.0 ",.02)
 ;;771.0 
 ;
OTHER ; OTHER ROUTINES
 Q
