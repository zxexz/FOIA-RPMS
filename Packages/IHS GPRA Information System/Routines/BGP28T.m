BGP28T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED CRP DXS
 ;
 ; This routine loads Taxonomy BGP PED CRP DXS
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
 ;;21,"464.4 ")
 ;;1
 ;;9002226,1580,.01)
 ;;BGP PED CRP DXS
 ;;9002226,1580,.02)
 ;;@
 ;;9002226,1580,.04)
 ;;@
 ;;9002226,1580,.06)
 ;;@
 ;;9002226,1580,.08)
 ;;0
 ;;9002226,1580,.09)
 ;;3120219
 ;;9002226,1580,.11)
 ;;@
 ;;9002226,1580,.12)
 ;;31
 ;;9002226,1580,.13)
 ;;1
 ;;9002226,1580,.14)
 ;;@
 ;;9002226,1580,.15)
 ;;80
 ;;9002226,1580,.16)
 ;;@
 ;;9002226,1580,.17)
 ;;@
 ;;9002226,1580,3101)
 ;;@
 ;;9002226.02101,"1580,464.4 ",.01)
 ;;464.4 
 ;;9002226.02101,"1580,464.4 ",.02)
 ;;464.4 
 ;
OTHER ; OTHER ROUTINES
 Q