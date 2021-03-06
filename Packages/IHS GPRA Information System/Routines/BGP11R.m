BGP11R ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 12, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP ALCOHOL SCREENING CPTS
 ;
 ; This routine loads Taxonomy BGP ALCOHOL SCREENING CPTS
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
 ;;21,"3016F ")
 ;;1
 ;;21,"99408 ")
 ;;2
 ;;21,"G0396 ")
 ;;3
 ;;21,"H0049 ")
 ;;4
 ;;9002226,331,.01)
 ;;BGP ALCOHOL SCREENING CPTS
 ;;9002226,331,.02)
 ;;@
 ;;9002226,331,.04)
 ;;@
 ;;9002226,331,.06)
 ;;@
 ;;9002226,331,.08)
 ;;0
 ;;9002226,331,.09)
 ;;3110412
 ;;9002226,331,.11)
 ;;@
 ;;9002226,331,.12)
 ;;455
 ;;9002226,331,.13)
 ;;1
 ;;9002226,331,.14)
 ;;@
 ;;9002226,331,.15)
 ;;81
 ;;9002226,331,.16)
 ;;@
 ;;9002226,331,.17)
 ;;@
 ;;9002226,331,3101)
 ;;@
 ;;9002226.02101,"331,3016F ",.01)
 ;;3016F 
 ;;9002226.02101,"331,3016F ",.02)
 ;;3016F 
 ;;9002226.02101,"331,99408 ",.01)
 ;;99408 
 ;;9002226.02101,"331,99408 ",.02)
 ;;99409 
 ;;9002226.02101,"331,G0396 ",.01)
 ;;G0396 
 ;;9002226.02101,"331,G0396 ",.02)
 ;;G0397 
 ;;9002226.02101,"331,H0049 ",.01)
 ;;H0049 
 ;;9002226.02101,"331,H0049 ",.02)
 ;;H0050 
 ;
OTHER ; OTHER ROUTINES
 Q
