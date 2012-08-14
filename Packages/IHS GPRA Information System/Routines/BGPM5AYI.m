BGPM5AYI ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 31, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU IUD CPT
 ;
 ; This routine loads Taxonomy BGPMU IUD CPT
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
 ;;21,"58301 ")
 ;;2
 ;;21,"58400 ")
 ;;1
 ;;9002226,1021,.01)
 ;;BGPMU IUD CPT
 ;;9002226,1021,.02)
 ;;CPT FOR IUD
 ;;9002226,1021,.04)
 ;;@
 ;;9002226,1021,.06)
 ;;@
 ;;9002226,1021,.08)
 ;;@
 ;;9002226,1021,.09)
 ;;3110824
 ;;9002226,1021,.11)
 ;;@
 ;;9002226,1021,.12)
 ;;@
 ;;9002226,1021,.13)
 ;;@
 ;;9002226,1021,.14)
 ;;@
 ;;9002226,1021,.15)
 ;;81
 ;;9002226,1021,.16)
 ;;1
 ;;9002226,1021,.17)
 ;;@
 ;;9002226,1021,3101)
 ;;@
 ;;9002226.02101,"1021,58301 ",.01)
 ;;58301
 ;;9002226.02101,"1021,58301 ",.02)
 ;;58301
 ;;9002226.02101,"1021,58400 ",.01)
 ;;58400
 ;;9002226.02101,"1021,58400 ",.02)
 ;;58400
 ;
OTHER ; OTHER ROUTINES
 Q