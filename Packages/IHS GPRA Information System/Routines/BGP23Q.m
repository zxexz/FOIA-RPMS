BGP23Q ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED OCD DXS
 ;
 ; This routine loads Taxonomy BGP PED OCD DXS
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
 ;;21,"300.3 ")
 ;;1
 ;;9002226,1654,.01)
 ;;BGP PED OCD DXS
 ;;9002226,1654,.02)
 ;;@
 ;;9002226,1654,.04)
 ;;@
 ;;9002226,1654,.06)
 ;;@
 ;;9002226,1654,.08)
 ;;0
 ;;9002226,1654,.09)
 ;;3120219
 ;;9002226,1654,.11)
 ;;@
 ;;9002226,1654,.12)
 ;;31
 ;;9002226,1654,.13)
 ;;1
 ;;9002226,1654,.14)
 ;;@
 ;;9002226,1654,.15)
 ;;80
 ;;9002226,1654,.16)
 ;;@
 ;;9002226,1654,.17)
 ;;@
 ;;9002226,1654,3101)
 ;;@
 ;;9002226.02101,"1654,300.3 ",.01)
 ;;300.3 
 ;;9002226.02101,"1654,300.3 ",.02)
 ;;300.3 
 ;
OTHER ; OTHER ROUTINES
 Q
