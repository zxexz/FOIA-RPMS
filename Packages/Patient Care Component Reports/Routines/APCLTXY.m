APCLTXY ; IHS/OHPRD/TMJ -CREATED BY ^ATXSTX ON JAN 09, 1997 ;
 ;;3.0;IHS PCC REPORTS;;FEB 05, 1997
 ;;DM AUDIT SMOKING RELATED DXS
 ;
 ; This routine loads Taxonomy DM AUDIT SMOKING RELATED DXS
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
 ;;21,"305.1 ")
 ;;1
 ;;21,"V15.82 ")
 ;;2
 ;;9002226,46,.01)
 ;;DM AUDIT SMOKING RELATED DXS
 ;;9002226,46,.02)
 ;;DM AUDIT SMOKING RELATED DXS
 ;;9002226,46,.04)
 ;;@
 ;;9002226,46,.06)
 ;;@
 ;;9002226,46,.08)
 ;;0
 ;;9002226,46,.09)
 ;;2930811
 ;;9002226,46,.11)
 ;;@
 ;;9002226,46,.12)
 ;;31
 ;;9002226,46,.13)
 ;;1
 ;;9002226,46,.14)
 ;;@
 ;;9002226,46,.15)
 ;;80
 ;;9002226,46,.16)
 ;;@
 ;;9002226,46,.17)
 ;;@
 ;;9002226,46,3101)
 ;;@
 ;;9002226.02101,"46,305.1 ",.01)
 ;;305.1
 ;;9002226.02101,"46,305.1 ",.02)
 ;;305.13
 ;;9002226.02101,"46,V15.82 ",.01)
 ;;V15.82
 ;;9002226.02101,"46,V15.82 ",.02)
 ;;V15.82
 ;
OTHER ; OTHER ROUTINES
 Q