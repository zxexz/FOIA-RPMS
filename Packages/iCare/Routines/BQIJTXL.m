BQIJTXL ;GDIT/HS/ALA-CREATED BY ^ATXSTX ON AUG 14, 2012;
 ;;2.3;ICARE MANAGEMENT SYSTEM;**1**;Apr 18, 2012;Build 43
 ;;BQI HEP C QUANT TEST LOINC
 ;
 ; This routine loads Taxonomy BQI HEP C QUANT TEST LOINC
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
 ;;21,"11011-4 ")
 ;;1
 ;;21,"20416-4 ")
 ;;2
 ;;21,"20571-6 ")
 ;;3
 ;;21,"22327-1 ")
 ;;4
 ;;21,"29609-5 ")
 ;;5
 ;;21,"34703-9 ")
 ;;6
 ;;21,"34704-7 ")
 ;;7
 ;;21,"38180-6 ")
 ;;8
 ;;21,"42617-1 ")
 ;;9
 ;;21,"47252-2 ")
 ;;10
 ;;21,"49758-6 ")
 ;;11
 ;;9002226,1921,.01)
 ;;BQI HEP C QUANT TEST LOINC
 ;;9002226,1921,.02)
 ;;Quantitative Hep C
 ;;9002226,1921,.04)
 ;;@
 ;;9002226,1921,.06)
 ;;@
 ;;9002226,1921,.08)
 ;;0
 ;;9002226,1921,.09)
 ;;3110926
 ;;9002226,1921,.11)
 ;;@
 ;;9002226,1921,.12)
 ;;@
 ;;9002226,1921,.13)
 ;;1
 ;;9002226,1921,.14)
 ;;FIHS
 ;;9002226,1921,.15)
 ;;95.3
 ;;9002226,1921,.16)
 ;;@
 ;;9002226,1921,.17)
 ;;@
 ;;9002226,1921,3101)
 ;;@
 ;;9002226.02101,"1921,11011-4 ",.01)
 ;;11011-4
 ;;9002226.02101,"1921,11011-4 ",.02)
 ;;11011-4
 ;;9002226.02101,"1921,20416-4 ",.01)
 ;;20416-4
 ;;9002226.02101,"1921,20416-4 ",.02)
 ;;20416-4
 ;;9002226.02101,"1921,20571-6 ",.01)
 ;;20571-6
 ;;9002226.02101,"1921,20571-6 ",.02)
 ;;20571-6
 ;;9002226.02101,"1921,22327-1 ",.01)
 ;;22327-1
 ;;9002226.02101,"1921,22327-1 ",.02)
 ;;22327-1
 ;;9002226.02101,"1921,29609-5 ",.01)
 ;;29609-5
 ;;9002226.02101,"1921,29609-5 ",.02)
 ;;29609-5
 ;;9002226.02101,"1921,34703-9 ",.01)
 ;;34703-9
 ;;9002226.02101,"1921,34703-9 ",.02)
 ;;34703-9
 ;;9002226.02101,"1921,34704-7 ",.01)
 ;;34704-7
 ;;9002226.02101,"1921,34704-7 ",.02)
 ;;34704-7
 ;;9002226.02101,"1921,38180-6 ",.01)
 ;;38180-6
 ;;9002226.02101,"1921,38180-6 ",.02)
 ;;38180-6
 ;;9002226.02101,"1921,42617-1 ",.01)
 ;;42617-1
 ;;9002226.02101,"1921,42617-1 ",.02)
 ;;42617-1
 ;;9002226.02101,"1921,47252-2 ",.01)
 ;;47252-2
 ;;9002226.02101,"1921,47252-2 ",.02)
 ;;47252-2
 ;;9002226.02101,"1921,49758-6 ",.01)
 ;;49758-6
 ;;9002226.02101,"1921,49758-6 ",.02)
 ;;49758-6
 ;
OTHER ; OTHER ROUTINES
 Q