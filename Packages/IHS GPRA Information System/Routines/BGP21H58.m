BGP21H58 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,63304-0490-05 ",.02)
 ;;63304-0490-05
 ;;9002226.02101,"1197,63629-1454-01 ",.01)
 ;;63629-1454-01
 ;;9002226.02101,"1197,63629-1454-01 ",.02)
 ;;63629-1454-01
 ;;9002226.02101,"1197,63629-1559-01 ",.01)
 ;;63629-1559-01
 ;;9002226.02101,"1197,63629-1559-01 ",.02)
 ;;63629-1559-01
 ;;9002226.02101,"1197,63629-1559-02 ",.01)
 ;;63629-1559-02
 ;;9002226.02101,"1197,63629-1559-02 ",.02)
 ;;63629-1559-02
 ;;9002226.02101,"1197,63629-1560-01 ",.01)
 ;;63629-1560-01
 ;;9002226.02101,"1197,63629-1560-01 ",.02)
 ;;63629-1560-01
 ;;9002226.02101,"1197,63629-1561-01 ",.01)
 ;;63629-1561-01
 ;;9002226.02101,"1197,63629-1561-01 ",.02)
 ;;63629-1561-01
 ;;9002226.02101,"1197,63629-1561-02 ",.01)
 ;;63629-1561-02
 ;;9002226.02101,"1197,63629-1561-02 ",.02)
 ;;63629-1561-02
 ;;9002226.02101,"1197,63629-1561-03 ",.01)
 ;;63629-1561-03
 ;;9002226.02101,"1197,63629-1561-03 ",.02)
 ;;63629-1561-03
 ;;9002226.02101,"1197,63629-1561-04 ",.01)
 ;;63629-1561-04
 ;;9002226.02101,"1197,63629-1561-04 ",.02)
 ;;63629-1561-04
 ;;9002226.02101,"1197,63629-1565-01 ",.01)
 ;;63629-1565-01
 ;;9002226.02101,"1197,63629-1565-01 ",.02)
 ;;63629-1565-01
 ;;9002226.02101,"1197,63629-1565-02 ",.01)
 ;;63629-1565-02
 ;;9002226.02101,"1197,63629-1565-02 ",.02)
 ;;63629-1565-02
 ;;9002226.02101,"1197,63629-1565-03 ",.01)
 ;;63629-1565-03
 ;;9002226.02101,"1197,63629-1565-03 ",.02)
 ;;63629-1565-03
 ;;9002226.02101,"1197,63629-1566-01 ",.01)
 ;;63629-1566-01
 ;;9002226.02101,"1197,63629-1566-01 ",.02)
 ;;63629-1566-01
 ;;9002226.02101,"1197,63629-1566-02 ",.01)
 ;;63629-1566-02
 ;;9002226.02101,"1197,63629-1566-02 ",.02)
 ;;63629-1566-02
 ;;9002226.02101,"1197,63629-1566-03 ",.01)
 ;;63629-1566-03
 ;;9002226.02101,"1197,63629-1566-03 ",.02)
 ;;63629-1566-03
 ;;9002226.02101,"1197,63629-1566-04 ",.01)
 ;;63629-1566-04
 ;;9002226.02101,"1197,63629-1566-04 ",.02)
 ;;63629-1566-04
 ;;9002226.02101,"1197,63629-1566-05 ",.01)
 ;;63629-1566-05
 ;;9002226.02101,"1197,63629-1566-05 ",.02)
 ;;63629-1566-05
 ;;9002226.02101,"1197,63629-1597-01 ",.01)
 ;;63629-1597-01
 ;;9002226.02101,"1197,63629-1597-01 ",.02)
 ;;63629-1597-01
 ;;9002226.02101,"1197,63629-3052-01 ",.01)
 ;;63629-3052-01
 ;;9002226.02101,"1197,63629-3052-01 ",.02)
 ;;63629-3052-01
 ;;9002226.02101,"1197,63629-3052-02 ",.01)
 ;;63629-3052-02
 ;;9002226.02101,"1197,63629-3052-02 ",.02)
 ;;63629-3052-02
 ;;9002226.02101,"1197,63629-3564-01 ",.01)
 ;;63629-3564-01
 ;;9002226.02101,"1197,63629-3564-01 ",.02)
 ;;63629-3564-01
 ;;9002226.02101,"1197,63629-3649-01 ",.01)
 ;;63629-3649-01
 ;;9002226.02101,"1197,63629-3649-01 ",.02)
 ;;63629-3649-01
 ;;9002226.02101,"1197,63629-3678-01 ",.01)
 ;;63629-3678-01
 ;;9002226.02101,"1197,63629-3678-01 ",.02)
 ;;63629-3678-01
 ;;9002226.02101,"1197,63629-3750-01 ",.01)
 ;;63629-3750-01
 ;;9002226.02101,"1197,63629-3750-01 ",.02)
 ;;63629-3750-01
 ;;9002226.02101,"1197,63629-4073-01 ",.01)
 ;;63629-4073-01
 ;;9002226.02101,"1197,63629-4073-01 ",.02)
 ;;63629-4073-01
 ;;9002226.02101,"1197,63629-4089-01 ",.01)
 ;;63629-4089-01
 ;;9002226.02101,"1197,63629-4089-01 ",.02)
 ;;63629-4089-01
 ;;9002226.02101,"1197,63672-0044-03 ",.01)
 ;;63672-0044-03
 ;;9002226.02101,"1197,63672-0044-03 ",.02)
 ;;63672-0044-03
 ;;9002226.02101,"1197,63672-0045-03 ",.01)
 ;;63672-0045-03
 ;;9002226.02101,"1197,63672-0045-03 ",.02)
 ;;63672-0045-03
 ;;9002226.02101,"1197,63672-0046-03 ",.01)
 ;;63672-0046-03
 ;;9002226.02101,"1197,63672-0046-03 ",.02)
 ;;63672-0046-03
 ;;9002226.02101,"1197,63739-0079-01 ",.01)
 ;;63739-0079-01
 ;;9002226.02101,"1197,63739-0079-01 ",.02)
 ;;63739-0079-01
 ;;9002226.02101,"1197,63739-0079-02 ",.01)
 ;;63739-0079-02
 ;;9002226.02101,"1197,63739-0079-02 ",.02)
 ;;63739-0079-02
 ;;9002226.02101,"1197,63739-0079-03 ",.01)
 ;;63739-0079-03
 ;;9002226.02101,"1197,63739-0079-03 ",.02)
 ;;63739-0079-03
 ;;9002226.02101,"1197,63739-0079-10 ",.01)
 ;;63739-0079-10
 ;;9002226.02101,"1197,63739-0079-10 ",.02)
 ;;63739-0079-10
 ;;9002226.02101,"1197,63739-0079-15 ",.01)
 ;;63739-0079-15
 ;;9002226.02101,"1197,63739-0079-15 ",.02)
 ;;63739-0079-15
 ;;9002226.02101,"1197,63739-0080-01 ",.01)
 ;;63739-0080-01
 ;;9002226.02101,"1197,63739-0080-01 ",.02)
 ;;63739-0080-01
 ;;9002226.02101,"1197,63739-0080-02 ",.01)
 ;;63739-0080-02
 ;;9002226.02101,"1197,63739-0080-02 ",.02)
 ;;63739-0080-02
 ;;9002226.02101,"1197,63739-0080-03 ",.01)
 ;;63739-0080-03
 ;;9002226.02101,"1197,63739-0080-03 ",.02)
 ;;63739-0080-03
 ;;9002226.02101,"1197,63739-0080-10 ",.01)
 ;;63739-0080-10
 ;;9002226.02101,"1197,63739-0080-10 ",.02)
 ;;63739-0080-10
 ;;9002226.02101,"1197,63739-0080-15 ",.01)
 ;;63739-0080-15
 ;;9002226.02101,"1197,63739-0080-15 ",.02)
 ;;63739-0080-15
 ;;9002226.02101,"1197,63739-0283-10 ",.01)
 ;;63739-0283-10
 ;;9002226.02101,"1197,63739-0283-10 ",.02)
 ;;63739-0283-10
 ;;9002226.02101,"1197,63739-0283-15 ",.01)
 ;;63739-0283-15
 ;;9002226.02101,"1197,63739-0283-15 ",.02)
 ;;63739-0283-15
 ;;9002226.02101,"1197,63739-0283-31 ",.01)
 ;;63739-0283-31
 ;;9002226.02101,"1197,63739-0283-31 ",.02)
 ;;63739-0283-31
 ;;9002226.02101,"1197,63739-0284-10 ",.01)
 ;;63739-0284-10
 ;;9002226.02101,"1197,63739-0284-10 ",.02)
 ;;63739-0284-10