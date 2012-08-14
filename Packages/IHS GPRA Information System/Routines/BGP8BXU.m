BGP8BXU ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP CMS CABG PROCEDURES
 ;
 ; This routine loads Taxonomy BGP CMS CABG PROCEDURES
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
 ;;21,"36.10 ")
 ;;1
 ;;9002226,312,.01)
 ;;BGP CMS CABG PROCEDURES
 ;;9002226,312,.02)
 ;;@
 ;;9002226,312,.04)
 ;;@
 ;;9002226,312,.06)
 ;;@
 ;;9002226,312,.08)
 ;;0
 ;;9002226,312,.09)
 ;;3070604
 ;;9002226,312,.11)
 ;;@
 ;;9002226,312,.12)
 ;;255
 ;;9002226,312,.13)
 ;;1
 ;;9002226,312,.14)
 ;;@
 ;;9002226,312,.15)
 ;;80.1
 ;;9002226,312,.16)
 ;;@
 ;;9002226,312,.17)
 ;;@
 ;;9002226,312,3101)
 ;;@
 ;;9002226.02101,"312,36.10 ",.01)
 ;;36.10 
 ;;9002226.02101,"312,36.10 ",.02)
 ;;36.19 
 ;
OTHER ; OTHER ROUTINES
 Q