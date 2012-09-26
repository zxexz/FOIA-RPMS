BGP2WO ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 28, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP CREATINE KINASE LOINC
 ;
 ; This routine loads Taxonomy BGP CREATINE KINASE LOINC
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
 ;;21,"12187-1 ")
 ;;4
 ;;21,"12189-7 ")
 ;;5
 ;;21,"13969-1 ")
 ;;6
 ;;21,"15048-2 ")
 ;;7
 ;;21,"15049-0 ")
 ;;8
 ;;21,"20569-0 ")
 ;;9
 ;;21,"2152-7 ")
 ;;10
 ;;21,"2154-3 ")
 ;;11
 ;;21,"2155-0 ")
 ;;12
 ;;21,"2157-6 ")
 ;;1
 ;;21,"2158-4 ")
 ;;13
 ;;21,"24335-2 ")
 ;;2
 ;;21,"32673-6 ")
 ;;14
 ;;21,"33547-1 ")
 ;;15
 ;;21,"38482-6 ")
 ;;16
 ;;21,"49129-0 ")
 ;;17
 ;;21,"49136-5 ")
 ;;18
 ;;21,"49551-5 ")
 ;;19
 ;;21,"50756-6 ")
 ;;3
 ;;21,"50757-4 ")
 ;;20
 ;;21,"9642-0 ")
 ;;21
 ;;21,"9643-8 ")
 ;;22
 ;;9002226,721,.01)
 ;;BGP CREATINE KINASE LOINC
 ;;9002226,721,.02)
 ;;CREATINE KINASE LOINC
 ;;9002226,721,.04)
 ;;n
 ;;9002226,721,.06)
 ;;@
 ;;9002226,721,.08)
 ;;@
 ;;9002226,721,.09)
 ;;@
 ;;9002226,721,.11)
 ;;@
 ;;9002226,721,.12)
 ;;@
 ;;9002226,721,.13)
 ;;1
 ;;9002226,721,.14)
 ;;FIHS
 ;;9002226,721,.15)
 ;;95.3
 ;;9002226,721,.16)
 ;;@
 ;;9002226,721,.17)
 ;;@
 ;;9002226,721,3101)
 ;;@
 ;;9002226.02101,"721,12187-1 ",.01)
 ;;12187-1
 ;;9002226.02101,"721,12187-1 ",.02)
 ;;12187-1
 ;;9002226.02101,"721,12189-7 ",.01)
 ;;12189-7
 ;;9002226.02101,"721,12189-7 ",.02)
 ;;12189-7
 ;;9002226.02101,"721,13969-1 ",.01)
 ;;13969-1
 ;;9002226.02101,"721,13969-1 ",.02)
 ;;13969-1
 ;;9002226.02101,"721,15048-2 ",.01)
 ;;15048-2
 ;;9002226.02101,"721,15048-2 ",.02)
 ;;15048-2
 ;;9002226.02101,"721,15049-0 ",.01)
 ;;15049-0
 ;;9002226.02101,"721,15049-0 ",.02)
 ;;15049-0
 ;;9002226.02101,"721,20569-0 ",.01)
 ;;20569-0
 ;;9002226.02101,"721,20569-0 ",.02)
 ;;20569-0
 ;;9002226.02101,"721,2152-7 ",.01)
 ;;2152-7
 ;;9002226.02101,"721,2152-7 ",.02)
 ;;2152-7
 ;;9002226.02101,"721,2154-3 ",.01)
 ;;2154-3
 ;;9002226.02101,"721,2154-3 ",.02)
 ;;2154-3
 ;;9002226.02101,"721,2155-0 ",.01)
 ;;2155-0
 ;;9002226.02101,"721,2155-0 ",.02)
 ;;2155-0
 ;;9002226.02101,"721,2157-6 ",.01)
 ;;2157-6
 ;;9002226.02101,"721,2157-6 ",.02)
 ;;2157-6
 ;;9002226.02101,"721,2158-4 ",.01)
 ;;2158-4
 ;;9002226.02101,"721,2158-4 ",.02)
 ;;2158-4
 ;;9002226.02101,"721,24335-2 ",.01)
 ;;24335-2
 ;;9002226.02101,"721,24335-2 ",.02)
 ;;24335-2
 ;;9002226.02101,"721,32673-6 ",.01)
 ;;32673-6
 ;;9002226.02101,"721,32673-6 ",.02)
 ;;32673-6
 ;;9002226.02101,"721,33547-1 ",.01)
 ;;33547-1
 ;;9002226.02101,"721,33547-1 ",.02)
 ;;33547-1
 ;;9002226.02101,"721,38482-6 ",.01)
 ;;38482-6
 ;;9002226.02101,"721,38482-6 ",.02)
 ;;38482-6
 ;;9002226.02101,"721,49129-0 ",.01)
 ;;49129-0
 ;;9002226.02101,"721,49129-0 ",.02)
 ;;49129-0
 ;;9002226.02101,"721,49136-5 ",.01)
 ;;49136-5
 ;;9002226.02101,"721,49136-5 ",.02)
 ;;49136-5
 ;;9002226.02101,"721,49551-5 ",.01)
 ;;49551-5
 ;;9002226.02101,"721,49551-5 ",.02)
 ;;49551-5
 ;;9002226.02101,"721,50756-6 ",.01)
 ;;50756-6
 ;;9002226.02101,"721,50756-6 ",.02)
 ;;50756-6
 ;;9002226.02101,"721,50757-4 ",.01)
 ;;50757-4
 ;;9002226.02101,"721,50757-4 ",.02)
 ;;50757-4
 ;;9002226.02101,"721,9642-0 ",.01)
 ;;9642-0
 ;;9002226.02101,"721,9642-0 ",.02)
 ;;9642-0
 ;;9002226.02101,"721,9643-8 ",.01)
 ;;9643-8
 ;;9002226.02101,"721,9643-8 ",.02)
 ;;9643-8
 ;
OTHER ; OTHER ROUTINES
 Q