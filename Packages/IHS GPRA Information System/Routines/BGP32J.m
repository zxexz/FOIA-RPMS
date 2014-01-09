BGP32J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 06, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;;BGP POTASSIUM LOINC
 ;
 ; This routine loads Taxonomy BGP POTASSIUM LOINC
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
 ;;21,"12812-4 ")
 ;;1
 ;;21,"12813-2 ")
 ;;2
 ;;21,"22760-3 ")
 ;;3
 ;;21,"2823-3 ")
 ;;4
 ;;21,"2830-8 ")
 ;;5
 ;;21,"29349-8 ")
 ;;6
 ;;21,"32713-0 ")
 ;;7
 ;;21,"34548-8 ")
 ;;8
 ;;21,"39789-3 ")
 ;;9
 ;;21,"39790-1 ")
 ;;10
 ;;21,"41656-0 ")
 ;;11
 ;;21,"42569-4 ")
 ;;12
 ;;21,"51618-7 ")
 ;;13
 ;;21,"6298-4 ")
 ;;15
 ;;9002226,546,.01)
 ;;BGP POTASSIUM LOINC
 ;;9002226,546,.02)
 ;;@
 ;;9002226,546,.04)
 ;;n
 ;;9002226,546,.06)
 ;;@
 ;;9002226,546,.08)
 ;;@
 ;;9002226,546,.09)
 ;;@
 ;;9002226,546,.11)
 ;;@
 ;;9002226,546,.12)
 ;;@
 ;;9002226,546,.13)
 ;;1
 ;;9002226,546,.14)
 ;;FIHS
 ;;9002226,546,.15)
 ;;95.3
 ;;9002226,546,.16)
 ;;@
 ;;9002226,546,.17)
 ;;@
 ;;9002226,546,3101)
 ;;@
 ;;9002226.02101,"546,12812-4 ",.01)
 ;;12812-4
 ;;9002226.02101,"546,12812-4 ",.02)
 ;;12812-4
 ;;9002226.02101,"546,12813-2 ",.01)
 ;;12813-2
 ;;9002226.02101,"546,12813-2 ",.02)
 ;;12813-2
 ;;9002226.02101,"546,22760-3 ",.01)
 ;;22760-3
 ;;9002226.02101,"546,22760-3 ",.02)
 ;;22760-3
 ;;9002226.02101,"546,2823-3 ",.01)
 ;;2823-3
 ;;9002226.02101,"546,2823-3 ",.02)
 ;;2823-3
 ;;9002226.02101,"546,2830-8 ",.01)
 ;;2830-8
 ;;9002226.02101,"546,2830-8 ",.02)
 ;;2830-8
 ;;9002226.02101,"546,29349-8 ",.01)
 ;;29349-8
 ;;9002226.02101,"546,29349-8 ",.02)
 ;;29349-8
 ;;9002226.02101,"546,32713-0 ",.01)
 ;;32713-0
 ;;9002226.02101,"546,32713-0 ",.02)
 ;;32713-0
 ;;9002226.02101,"546,34548-8 ",.01)
 ;;34548-8
 ;;9002226.02101,"546,34548-8 ",.02)
 ;;34548-8
 ;;9002226.02101,"546,39789-3 ",.01)
 ;;39789-3
 ;;9002226.02101,"546,39789-3 ",.02)
 ;;39789-3
 ;;9002226.02101,"546,39790-1 ",.01)
 ;;39790-1
 ;;9002226.02101,"546,39790-1 ",.02)
 ;;39790-1
 ;;9002226.02101,"546,41656-0 ",.01)
 ;;41656-0
 ;;9002226.02101,"546,41656-0 ",.02)
 ;;41656-0
 ;;9002226.02101,"546,42569-4 ",.01)
 ;;42569-4
 ;;9002226.02101,"546,42569-4 ",.02)
 ;;42569-4
 ;;9002226.02101,"546,51618-7 ",.01)
 ;;51618-7
 ;;9002226.02101,"546,51618-7 ",.02)
 ;;51618-7
 ;;9002226.02101,"546,6298-4 ",.01)
 ;;6298-4
 ;;9002226.02101,"546,6298-4 ",.02)
 ;;6298-4
 ;
OTHER ; OTHER ROUTINES
 Q