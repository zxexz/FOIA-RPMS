APCLP28H ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JUL 28, 2011 ;
 ;;3.0;IHS PCC REPORTS;**28**;FEB 05, 1997
 ;;SURVEILLANCE ENCEPHALOPATHY
 ;
 ; This routine loads Taxonomy SURVEILLANCE ENCEPHALOPATHY
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
 ;;21,"348.3 ")
 ;;1
 ;;9002226,1225,.01)
 ;;SURVEILLANCE ENCEPHALOPATHY
 ;;9002226,1225,.02)
 ;;@
 ;;9002226,1225,.04)
 ;;@
 ;;9002226,1225,.06)
 ;;@
 ;;9002226,1225,.08)
 ;;0
 ;;9002226,1225,.09)
 ;;3110728
 ;;9002226,1225,.11)
 ;;@
 ;;9002226,1225,.12)
 ;;31
 ;;9002226,1225,.13)
 ;;1
 ;;9002226,1225,.14)
 ;;@
 ;;9002226,1225,.15)
 ;;80
 ;;9002226,1225,.16)
 ;;@
 ;;9002226,1225,.17)
 ;;@
 ;;9002226,1225,3101)
 ;;@
 ;;9002226.02101,"1225,348.3 ",.01)
 ;;348.3 
 ;;9002226.02101,"1225,348.3 ",.02)
 ;;348.39 
 ;
OTHER ; OTHER ROUTINES
 Q