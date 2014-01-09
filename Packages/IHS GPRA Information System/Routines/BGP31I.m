BGP31I ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 27, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;;BGP TOTAL COLECTOMY PROCS
 ;
 ; This routine loads Taxonomy BGP TOTAL COLECTOMY PROCS
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
 ;;21,"45.8 ")
 ;;1
 ;;9002226,553,.01)
 ;;BGP TOTAL COLECTOMY PROCS
 ;;9002226,553,.02)
 ;;@
 ;;9002226,553,.04)
 ;;@
 ;;9002226,553,.06)
 ;;@
 ;;9002226,553,.08)
 ;;0
 ;;9002226,553,.09)
 ;;3120827
 ;;9002226,553,.11)
 ;;@
 ;;9002226,553,.12)
 ;;255
 ;;9002226,553,.13)
 ;;1
 ;;9002226,553,.14)
 ;;@
 ;;9002226,553,.15)
 ;;80.1
 ;;9002226,553,.16)
 ;;@
 ;;9002226,553,.17)
 ;;@
 ;;9002226,553,3101)
 ;;@
 ;;9002226.02101,"553,45.8 ",.01)
 ;;45.8 
 ;;9002226.02101,"553,45.8 ",.02)
 ;;45.83 
 ;
OTHER ; OTHER ROUTINES
 Q