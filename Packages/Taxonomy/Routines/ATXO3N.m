ATXO3N ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BTPW D&C PROC
 ;
 ; This routine loads Taxonomy BTPW D&C PROC
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
 ;;21,"0UDB7ZX ")
 ;;3
 ;;21,"0UDB7ZZ ")
 ;;4
 ;;21,"0UDB8ZX ")
 ;;5
 ;;21,"0UDB8ZZ ")
 ;;6
 ;;21,"10D17ZZ ")
 ;;7
 ;;21,"10D18ZZ ")
 ;;8
 ;;21,"69.02 ")
 ;;1
 ;;21,"69.09 ")
 ;;2
 ;;9002226,1401,.01)
 ;;BTPW D&C PROC
 ;;9002226,1401,.02)
 ;;@
 ;;9002226,1401,.04)
 ;;n
 ;;9002226,1401,.06)
 ;;@
 ;;9002226,1401,.08)
 ;;@
 ;;9002226,1401,.09)
 ;;3131112
 ;;9002226,1401,.11)
 ;;@
 ;;9002226,1401,.12)
 ;;255
 ;;9002226,1401,.13)
 ;;1
 ;;9002226,1401,.14)
 ;;@
 ;;9002226,1401,.15)
 ;;80.1
 ;;9002226,1401,.16)
 ;;@
 ;;9002226,1401,.17)
 ;;@
 ;;9002226,1401,3101)
 ;;@
 ;;9002226.02101,"1401,0UDB7ZX ",.01)
 ;;0UDB7ZX 
 ;;9002226.02101,"1401,0UDB7ZX ",.02)
 ;;0UDB7ZX 
 ;;9002226.02101,"1401,0UDB7ZX ",.03)
 ;;31
 ;;9002226.02101,"1401,0UDB7ZZ ",.01)
 ;;0UDB7ZZ 
 ;;9002226.02101,"1401,0UDB7ZZ ",.02)
 ;;0UDB7ZZ 
 ;;9002226.02101,"1401,0UDB7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1401,0UDB8ZX ",.01)
 ;;0UDB8ZX 
 ;;9002226.02101,"1401,0UDB8ZX ",.02)
 ;;0UDB8ZX 
 ;;9002226.02101,"1401,0UDB8ZX ",.03)
 ;;31
 ;;9002226.02101,"1401,0UDB8ZZ ",.01)
 ;;0UDB8ZZ 
 ;;9002226.02101,"1401,0UDB8ZZ ",.02)
 ;;0UDB8ZZ 
 ;;9002226.02101,"1401,0UDB8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1401,10D17ZZ ",.01)
 ;;10D17ZZ 
 ;;9002226.02101,"1401,10D17ZZ ",.02)
 ;;10D17ZZ 
 ;;9002226.02101,"1401,10D17ZZ ",.03)
 ;;31
 ;;9002226.02101,"1401,10D18ZZ ",.01)
 ;;10D18ZZ 
 ;;9002226.02101,"1401,10D18ZZ ",.02)
 ;;10D18ZZ 
 ;;9002226.02101,"1401,10D18ZZ ",.03)
 ;;31
 ;;9002226.02101,"1401,69.02 ",.01)
 ;;69.02 
 ;;9002226.02101,"1401,69.02 ",.02)
 ;;69.02 
 ;;9002226.02101,"1401,69.02 ",.03)
 ;;2
 ;;9002226.02101,"1401,69.09 ",.01)
 ;;69.09 
 ;;9002226.02101,"1401,69.09 ",.02)
 ;;69.09 
 ;;9002226.02101,"1401,69.09 ",.03)
 ;;2
 ;
OTHER ; OTHER ROUTINES
 Q
