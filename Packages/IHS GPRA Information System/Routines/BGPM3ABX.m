BGPM3ABX ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"775,70030041687 ",.01)
 ;;70030041687
 ;;9002226.02101,"775,70030041687 ",.02)
 ;;70030041687
 ;;9002226.02101,"775,70030046768 ",.01)
 ;;70030046768
 ;;9002226.02101,"775,70030046768 ",.02)
 ;;70030046768
 ;;9002226.02101,"775,70030064278 ",.01)
 ;;70030064278
 ;;9002226.02101,"775,70030064278 ",.02)
 ;;70030064278