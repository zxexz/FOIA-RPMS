BQICATXD ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON MAR 29, 2011;
 ;;2.1;ICARE MANAGEMENT SYSTEM;**1**;Feb 07, 2011;Build 5
 ;;SURVEILLANCE ADV EVENTS LIVE
 ;
 ; This routine loads Taxonomy SURVEILLANCE ADV EVENTS LIVE
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
 ;;21,"488.1 ")
 ;;1
 ;;21,"493.00 ")
 ;;2
 ;;21,"493.90 ")
 ;;3
 ;;21,"786.07 ")
 ;;4
 ;;9002226,1035,.01)
 ;;SURVEILLANCE ADV EVENTS LIVE
 ;;9002226,1035,.02)
 ;;@
 ;;9002226,1035,.04)
 ;;@
 ;;9002226,1035,.06)
 ;;@
 ;;9002226,1035,.08)
 ;;0
 ;;9002226,1035,.09)
 ;;3100819
 ;;9002226,1035,.11)
 ;;@
 ;;9002226,1035,.12)
 ;;31
 ;;9002226,1035,.13)
 ;;1
 ;;9002226,1035,.14)
 ;;@
 ;;9002226,1035,.15)
 ;;80
 ;;9002226,1035,.16)
 ;;@
 ;;9002226,1035,.17)
 ;;@
 ;;9002226,1035,3101)
 ;;@
 ;;9002226.02101,"1035,488.1 ",.01)
 ;;488.1 
 ;;9002226.02101,"1035,488.1 ",.02)
 ;;488.19 
 ;;9002226.02101,"1035,493.00 ",.01)
 ;;493.00 
 ;;9002226.02101,"1035,493.00 ",.02)
 ;;493.02 
 ;;9002226.02101,"1035,493.90 ",.01)
 ;;493.90 
 ;;9002226.02101,"1035,493.90 ",.02)
 ;;493.92 
 ;;9002226.02101,"1035,786.07 ",.01)
 ;;786.07 
 ;;9002226.02101,"1035,786.07 ",.02)
 ;;786.07 
 ;
OTHER ; OTHER ROUTINES
 Q