BGP20A ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED GB DXS
 ;
 ; This routine loads Taxonomy BGP PED GB DXS
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
 ;;21,"574.00 ")
 ;;1
 ;;9002226,1612,.01)
 ;;BGP PED GB DXS
 ;;9002226,1612,.02)
 ;;@
 ;;9002226,1612,.04)
 ;;@
 ;;9002226,1612,.06)
 ;;@
 ;;9002226,1612,.08)
 ;;0
 ;;9002226,1612,.09)
 ;;3120219
 ;;9002226,1612,.11)
 ;;@
 ;;9002226,1612,.12)
 ;;31
 ;;9002226,1612,.13)
 ;;1
 ;;9002226,1612,.14)
 ;;@
 ;;9002226,1612,.15)
 ;;80
 ;;9002226,1612,.16)
 ;;@
 ;;9002226,1612,.17)
 ;;@
 ;;9002226,1612,3101)
 ;;@
 ;;9002226.02101,"1612,574.00 ",.01)
 ;;574.00 
 ;;9002226.02101,"1612,574.00 ",.02)
 ;;575.9 
 ;
OTHER ; OTHER ROUTINES
 Q