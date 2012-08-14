BGP8IXF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
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
 ;;9002226,360,.01)
 ;;BGP RUBELLA EVIDENCE
 ;;9002226,360,.02)
 ;;@
 ;;9002226,360,.04)
 ;;@
 ;;9002226,360,.06)
 ;;@
 ;;9002226,360,.08)
 ;;0
 ;;9002226,360,.09)
 ;;3070926
 ;;9002226,360,.11)
 ;;@
 ;;9002226,360,.12)
 ;;31
 ;;9002226,360,.13)
 ;;1
 ;;9002226,360,.14)
 ;;@
 ;;9002226,360,.15)
 ;;80
 ;;9002226,360,.16)
 ;;@
 ;;9002226,360,.17)
 ;;@
 ;;9002226,360,3101)
 ;;@
 ;;9002226.02101,"360,056.00 ",.01)
 ;;056.00 
 ;;9002226.02101,"360,056.00 ",.02)
 ;;056.9 
 ;;9002226.02101,"360,771.0 ",.01)
 ;;771.0 
 ;;9002226.02101,"360,771.0 ",.02)
 ;;771.0 
 ;
OTHER ; OTHER ROUTINES
 Q