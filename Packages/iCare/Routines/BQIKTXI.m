BQIKTXI ;GDIT/HS/ALA-CREATED BY ^ATXSTX ON AUG 14, 2012;
 ;;2.3;ICARE MANAGEMENT SYSTEM;**1**;Apr 18, 2012;Build 43
 ;;BQI MENINGITIS QUAL TEST LOINC
 ;
 ; This routine loads Taxonomy BQI MENINGITIS QUAL TEST LOINC
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
 ;;21,"16134-9 ")
 ;;1
 ;;21,"19133-8 ")
 ;;2
 ;;21,"19134-6 ")
 ;;3
 ;;21,"49671-1 ")
 ;;4
 ;;21,"6494-9 ")
 ;;5
 ;;21,"6498-0 ")
 ;;6
 ;;21,"6500-3 ")
 ;;7
 ;;21,"6505-2 ")
 ;;8
 ;;21,"6507-8 ")
 ;;9
 ;;9002226,1944,.01)
 ;;BQI MENINGITIS QUAL TEST LOINC
 ;;9002226,1944,.02)
 ;;Qualitative Lab LOINCs
 ;;9002226,1944,.04)
 ;;@
 ;;9002226,1944,.06)
 ;;@
 ;;9002226,1944,.08)
 ;;0
 ;;9002226,1944,.09)
 ;;3110926
 ;;9002226,1944,.11)
 ;;@
 ;;9002226,1944,.12)
 ;;@
 ;;9002226,1944,.13)
 ;;1
 ;;9002226,1944,.14)
 ;;FIHS
 ;;9002226,1944,.15)
 ;;95.3
 ;;9002226,1944,.16)
 ;;@
 ;;9002226,1944,.17)
 ;;@
 ;;9002226,1944,3101)
 ;;@
 ;;9002226.02101,"1944,16134-9 ",.01)
 ;;16134-9
 ;;9002226.02101,"1944,16134-9 ",.02)
 ;;16134-9
 ;;9002226.02101,"1944,19133-8 ",.01)
 ;;19133-8
 ;;9002226.02101,"1944,19133-8 ",.02)
 ;;19133-8
 ;;9002226.02101,"1944,19134-6 ",.01)
 ;;19134-6
 ;;9002226.02101,"1944,19134-6 ",.02)
 ;;19134-6
 ;;9002226.02101,"1944,49671-1 ",.01)
 ;;49671-1
 ;;9002226.02101,"1944,49671-1 ",.02)
 ;;49671-1
 ;;9002226.02101,"1944,6494-9 ",.01)
 ;;6494-9
 ;;9002226.02101,"1944,6494-9 ",.02)
 ;;6494-9
 ;;9002226.02101,"1944,6498-0 ",.01)
 ;;6498-0
 ;;9002226.02101,"1944,6498-0 ",.02)
 ;;6498-0
 ;;9002226.02101,"1944,6500-3 ",.01)
 ;;6500-3
 ;;9002226.02101,"1944,6500-3 ",.02)
 ;;6500-3
 ;;9002226.02101,"1944,6505-2 ",.01)
 ;;6505-2
 ;;9002226.02101,"1944,6505-2 ",.02)
 ;;6505-2
 ;;9002226.02101,"1944,6507-8 ",.01)
 ;;6507-8
 ;;9002226.02101,"1944,6507-8 ",.02)
 ;;6507-8
 ;
OTHER ; OTHER ROUTINES
 Q