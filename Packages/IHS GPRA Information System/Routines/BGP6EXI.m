BGP6EXI ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP HEDIS RETINAL SCREENING
 ;
 ; This routine loads Taxonomy BGP HEDIS RETINAL SCREENING
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
 ;;21,"67101 ")
 ;;1
 ;;21,"67105 ")
 ;;2
 ;;21,"67107 ")
 ;;3
 ;;21,"67141 ")
 ;;4
 ;;21,"67145 ")
 ;;5
 ;;21,"67208 ")
 ;;6
 ;;21,"67218 ")
 ;;7
 ;;21,"67227 ")
 ;;8
 ;;21,"92002 ")
 ;;9
 ;;21,"92225 ")
 ;;10
 ;;21,"92287 ")
 ;;11
 ;;9002226,414,.01)
 ;;BGP HEDIS RETINAL SCREENING
 ;;9002226,414,.02)
 ;;@
 ;;9002226,414,.04)
 ;;n
 ;;9002226,414,.06)
 ;;@
 ;;9002226,414,.08)
 ;;0
 ;;9002226,414,.09)
 ;;3050424
 ;;9002226,414,.11)
 ;;@
 ;;9002226,414,.12)
 ;;455
 ;;9002226,414,.13)
 ;;1
 ;;9002226,414,.14)
 ;;@
 ;;9002226,414,.15)
 ;;81
 ;;9002226,414,.16)
 ;;@
 ;;9002226,414,.17)
 ;;@
 ;;9002226,414,3101)
 ;;@
 ;;9002226.02101,"414,67101 ",.01)
 ;;67101 
 ;;9002226.02101,"414,67101 ",.02)
 ;;67101 
 ;;9002226.02101,"414,67105 ",.01)
 ;;67105 
 ;;9002226.02101,"414,67105 ",.02)
 ;;67105 
 ;;9002226.02101,"414,67107 ",.01)
 ;;67107 
 ;;9002226.02101,"414,67107 ",.02)
 ;;67112 
 ;;9002226.02101,"414,67141 ",.01)
 ;;67141 
 ;;9002226.02101,"414,67141 ",.02)
 ;;67141 
 ;;9002226.02101,"414,67145 ",.01)
 ;;67145 
 ;;9002226.02101,"414,67145 ",.02)
 ;;67145 
 ;;9002226.02101,"414,67208 ",.01)
 ;;67208 
 ;;9002226.02101,"414,67208 ",.02)
 ;;67210 
 ;;9002226.02101,"414,67218 ",.01)
 ;;67218 
 ;;9002226.02101,"414,67218 ",.02)
 ;;67218 
 ;;9002226.02101,"414,67227 ",.01)
 ;;67227 
 ;;9002226.02101,"414,67227 ",.02)
 ;;67228 
 ;;9002226.02101,"414,92002 ",.01)
 ;;92002 
 ;;9002226.02101,"414,92002 ",.02)
 ;;92019 
 ;;9002226.02101,"414,92225 ",.01)
 ;;92225 
 ;;9002226.02101,"414,92225 ",.02)
 ;;92260 
 ;;9002226.02101,"414,92287 ",.01)
 ;;92287 
 ;;9002226.02101,"414,92287 ",.02)
 ;;92287 
 ;
OTHER ; OTHER ROUTINES
 Q