BGP6HXE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP MMR CONTRAINDICATIONS
 ;
 ; This routine loads Taxonomy BGP MMR CONTRAINDICATIONS
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
 ;;21,"042. ")
 ;;1
 ;;21,"200.00 ")
 ;;2
 ;;21,"203.0 ")
 ;;3
 ;;21,"204.0 ")
 ;;4
 ;;21,"279.00 ")
 ;;5
 ;;21,"V08. ")
 ;;6
 ;;9002226,351,.01)
 ;;BGP MMR CONTRAINDICATIONS
 ;;9002226,351,.02)
 ;;@
 ;;9002226,351,.04)
 ;;n
 ;;9002226,351,.06)
 ;;@
 ;;9002226,351,.08)
 ;;0
 ;;9002226,351,.09)
 ;;3050225
 ;;9002226,351,.11)
 ;;@
 ;;9002226,351,.12)
 ;;31
 ;;9002226,351,.13)
 ;;1
 ;;9002226,351,.14)
 ;;@
 ;;9002226,351,.15)
 ;;80
 ;;9002226,351,.16)
 ;;@
 ;;9002226,351,.17)
 ;;@
 ;;9002226,351,3101)
 ;;@
 ;;9002226.02101,"351,042. ",.01)
 ;;042. 
 ;;9002226.02101,"351,042. ",.02)
 ;;042.9 
 ;;9002226.02101,"351,200.00 ",.01)
 ;;200.00 
 ;;9002226.02101,"351,200.00 ",.02)
 ;;202.98 
 ;;9002226.02101,"351,203.0 ",.01)
 ;;203.0 
 ;;9002226.02101,"351,203.0 ",.02)
 ;;203.81 
 ;;9002226.02101,"351,204.0 ",.01)
 ;;204.0 
 ;;9002226.02101,"351,204.0 ",.02)
 ;;208.91 
 ;;9002226.02101,"351,279.00 ",.01)
 ;;279.00 
 ;;9002226.02101,"351,279.00 ",.02)
 ;;279.9 
 ;;9002226.02101,"351,V08. ",.01)
 ;;V08. 
 ;;9002226.02101,"351,V08. ",.02)
 ;;V08. 
 ;
OTHER ; OTHER ROUTINES
 Q