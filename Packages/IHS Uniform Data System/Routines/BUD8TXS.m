BUD8TXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 11, 2008 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD CPT NORMAL SYSTOLIC
 ;
 ; This routine loads Taxonomy BUD CPT NORMAL SYSTOLIC
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
 ;;21,"3074F ")
 ;;1
 ;;9002226,816,.01)
 ;;BUD CPT NORMAL SYSTOLIC
 ;;9002226,816,.02)
 ;;@
 ;;9002226,816,.04)
 ;;@
 ;;9002226,816,.06)
 ;;@
 ;;9002226,816,.08)
 ;;@
 ;;9002226,816,.09)
 ;;3081202
 ;;9002226,816,.11)
 ;;@
 ;;9002226,816,.12)
 ;;455
 ;;9002226,816,.13)
 ;;1
 ;;9002226,816,.14)
 ;;@
 ;;9002226,816,.15)
 ;;81
 ;;9002226,816,.16)
 ;;@
 ;;9002226,816,.17)
 ;;@
 ;;9002226,816,3101)
 ;;@
 ;;9002226.02101,"816,3074F ",.01)
 ;;3074F 
 ;;9002226.02101,"816,3074F ",.02)
 ;;3075F 
 ;
OTHER ; OTHER ROUTINES
 Q