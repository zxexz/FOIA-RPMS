ATXTXA ;IHS/OHPRD/TMJ-CREATED BY ^ATXSTX ON FEB 04, 1997;
 ;;5.0;TAXONOMY;;FEB 04, 1997
 ;;SURVEILLANCE DIABETES
 ;
 ; This routine loads Taxonomy SURVEILLANCE DIABETES
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
 ;;21,"250.00 ")
 ;;1
 ;;9002226,164,.01)
 ;;SURVEILLANCE DIABETES
 ;;9002226,164,.02)
 ;;DM SURV - USED BY HLTH SUMM
 ;;9002226,164,.04)
 ;;n
 ;;9002226,164,.06)
 ;;2600101
 ;;9002226,164,.08)
 ;;1
 ;;9002226,164,.09)
 ;;2970204.114529
 ;;9002226,164,.11)
 ;;@
 ;;9002226,164,.12)
 ;;31
 ;;9002226,164,.13)
 ;;1
 ;;9002226,164,.14)
 ;;BA
 ;;9002226,164,.15)
 ;;80
 ;;9002226,164,.16)
 ;;1
 ;;9002226,164,.17)
 ;;@
 ;;9002226,164,3101)
 ;;@
 ;;9002226.02101,"164,250.00 ",.01)
 ;;250.00
 ;;9002226.02101,"164,250.00 ",.02)
 ;;250.93
 ;
OTHER ; OTHER ROUTINES
 Q