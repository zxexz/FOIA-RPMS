BGPM5AID ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU ARRHYTHMIA DX
 ;
 ; This routine loads Taxonomy BGPMU ARRHYTHMIA DX
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
 ;;21,"427.81 ")
 ;;1
 ;;21,"427.89 ")
 ;;2
 ;;9002226,886,.01)
 ;;BGPMU ARRHYTHMIA DX
 ;;9002226,886,.02)
 ;;Arrhythmia ICD9 codes
 ;;9002226,886,.04)
 ;;n
 ;;9002226,886,.06)
 ;;@
 ;;9002226,886,.08)
 ;;@
 ;;9002226,886,.09)
 ;;3110714
 ;;9002226,886,.11)
 ;;@
 ;;9002226,886,.12)
 ;;@
 ;;9002226,886,.13)
 ;;@
 ;;9002226,886,.14)
 ;;@
 ;;9002226,886,.15)
 ;;80
 ;;9002226,886,.16)
 ;;1
 ;;9002226,886,.17)
 ;;@
 ;;9002226,886,3101)
 ;;@
 ;;9002226.02101,"886,427.81 ",.01)
 ;;427.81
 ;;9002226.02101,"886,427.81 ",.02)
 ;;427.81
 ;;9002226.02101,"886,427.89 ",.01)
 ;;427.89
 ;;9002226.02101,"886,427.89 ",.02)
 ;;427.89
 ;
OTHER ; OTHER ROUTINES
 Q