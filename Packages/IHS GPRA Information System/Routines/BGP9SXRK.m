BGP9SXRK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"493,51285-0442-02 ",.02)
 ;;51285-0442-02
 ;;9002226.02101,"493,51285-0442-05 ",.01)
 ;;51285-0442-05
 ;;9002226.02101,"493,51285-0442-05 ",.02)
 ;;51285-0442-05
 ;;9002226.02101,"493,51285-0443-02 ",.01)
 ;;51285-0443-02
 ;;9002226.02101,"493,51285-0443-02 ",.02)
 ;;51285-0443-02
 ;;9002226.02101,"493,51285-0443-05 ",.01)
 ;;51285-0443-05
 ;;9002226.02101,"493,51285-0443-05 ",.02)
 ;;51285-0443-05
 ;;9002226.02101,"493,51285-0444-02 ",.01)
 ;;51285-0444-02
 ;;9002226.02101,"493,51285-0444-02 ",.02)
 ;;51285-0444-02
 ;;9002226.02101,"493,51285-0444-05 ",.01)
 ;;51285-0444-05
 ;;9002226.02101,"493,51285-0444-05 ",.02)
 ;;51285-0444-05
 ;;9002226.02101,"493,51285-0446-02 ",.01)
 ;;51285-0446-02
 ;;9002226.02101,"493,51285-0446-02 ",.02)
 ;;51285-0446-02
 ;;9002226.02101,"493,51285-0501-02 ",.01)
 ;;51285-0501-02
 ;;9002226.02101,"493,51285-0501-02 ",.02)
 ;;51285-0501-02
 ;;9002226.02101,"493,51285-0502-02 ",.01)
 ;;51285-0502-02
 ;;9002226.02101,"493,51285-0502-02 ",.02)
 ;;51285-0502-02
 ;;9002226.02101,"493,51285-0502-04 ",.01)
 ;;51285-0502-04
 ;;9002226.02101,"493,51285-0502-04 ",.02)
 ;;51285-0502-04
 ;;9002226.02101,"493,51285-0504-02 ",.01)
 ;;51285-0504-02
 ;;9002226.02101,"493,51285-0504-02 ",.02)
 ;;51285-0504-02
 ;;9002226.02101,"493,51285-0504-04 ",.01)
 ;;51285-0504-04
 ;;9002226.02101,"493,51285-0504-04 ",.02)
 ;;51285-0504-04
 ;;9002226.02101,"493,51285-0875-02 ",.01)
 ;;51285-0875-02
 ;;9002226.02101,"493,51285-0875-02 ",.02)
 ;;51285-0875-02
 ;;9002226.02101,"493,51285-0876-02 ",.01)
 ;;51285-0876-02
 ;;9002226.02101,"493,51285-0876-02 ",.02)
 ;;51285-0876-02
 ;;9002226.02101,"493,51655-0452-25 ",.01)
 ;;51655-0452-25
 ;;9002226.02101,"493,51655-0452-25 ",.02)
 ;;51655-0452-25
 ;;9002226.02101,"493,52544-0414-01 ",.01)
 ;;52544-0414-01
 ;;9002226.02101,"493,52544-0414-01 ",.02)
 ;;52544-0414-01
 ;;9002226.02101,"493,52544-0415-01 ",.01)
 ;;52544-0415-01
 ;;9002226.02101,"493,52544-0415-01 ",.02)
 ;;52544-0415-01
 ;;9002226.02101,"493,52544-0416-01 ",.01)
 ;;52544-0416-01
 ;;9002226.02101,"493,52544-0416-01 ",.02)
 ;;52544-0416-01
 ;;9002226.02101,"493,52544-0471-08 ",.01)
 ;;52544-0471-08
 ;;9002226.02101,"493,52544-0471-08 ",.02)
 ;;52544-0471-08
 ;;9002226.02101,"493,52544-0471-23 ",.01)
 ;;52544-0471-23
 ;;9002226.02101,"493,52544-0471-23 ",.02)
 ;;52544-0471-23
 ;;9002226.02101,"493,52544-0472-08 ",.01)
 ;;52544-0472-08
 ;;9002226.02101,"493,52544-0472-08 ",.02)
 ;;52544-0472-08
 ;;9002226.02101,"493,52544-0473-08 ",.01)
 ;;52544-0473-08
 ;;9002226.02101,"493,52544-0473-08 ",.02)
 ;;52544-0473-08
 ;;9002226.02101,"493,52544-0487-01 ",.01)
 ;;52544-0487-01
 ;;9002226.02101,"493,52544-0487-01 ",.02)
 ;;52544-0487-01
 ;;9002226.02101,"493,52544-0487-05 ",.01)
 ;;52544-0487-05
 ;;9002226.02101,"493,52544-0487-05 ",.02)
 ;;52544-0487-05
 ;;9002226.02101,"493,52544-0488-01 ",.01)
 ;;52544-0488-01
 ;;9002226.02101,"493,52544-0488-01 ",.02)
 ;;52544-0488-01
 ;;9002226.02101,"493,52544-0488-05 ",.01)
 ;;52544-0488-05
 ;;9002226.02101,"493,52544-0488-05 ",.02)
 ;;52544-0488-05
 ;;9002226.02101,"493,52544-0528-01 ",.01)
 ;;52544-0528-01
 ;;9002226.02101,"493,52544-0528-01 ",.02)
 ;;52544-0528-01
 ;;9002226.02101,"493,52544-0884-08 ",.01)
 ;;52544-0884-08
 ;;9002226.02101,"493,52544-0884-08 ",.02)
 ;;52544-0884-08
 ;;9002226.02101,"493,52555-0651-01 ",.01)
 ;;52555-0651-01
 ;;9002226.02101,"493,52555-0651-01 ",.02)
 ;;52555-0651-01
 ;;9002226.02101,"493,52555-0717-01 ",.01)
 ;;52555-0717-01
 ;;9002226.02101,"493,52555-0717-01 ",.02)
 ;;52555-0717-01
 ;;9002226.02101,"493,52637-0332-10 ",.01)
 ;;52637-0332-10
 ;;9002226.02101,"493,52637-0332-10 ",.02)
 ;;52637-0332-10
 ;;9002226.02101,"493,52959-0222-00 ",.01)
 ;;52959-0222-00
 ;;9002226.02101,"493,52959-0222-00 ",.02)
 ;;52959-0222-00
 ;;9002226.02101,"493,52959-0223-00 ",.01)
 ;;52959-0223-00
 ;;9002226.02101,"493,52959-0223-00 ",.02)
 ;;52959-0223-00
 ;;9002226.02101,"493,52959-0223-30 ",.01)
 ;;52959-0223-30
 ;;9002226.02101,"493,52959-0223-30 ",.02)
 ;;52959-0223-30
 ;;9002226.02101,"493,52959-0323-00 ",.01)
 ;;52959-0323-00
 ;;9002226.02101,"493,52959-0323-00 ",.02)
 ;;52959-0323-00
 ;;9002226.02101,"493,52959-0326-10 ",.01)
 ;;52959-0326-10
 ;;9002226.02101,"493,52959-0326-10 ",.02)
 ;;52959-0326-10
 ;;9002226.02101,"493,54569-0802-01 ",.01)
 ;;54569-0802-01
 ;;9002226.02101,"493,54569-0802-01 ",.02)
 ;;54569-0802-01
 ;;9002226.02101,"493,54569-0804-00 ",.01)
 ;;54569-0804-00
 ;;9002226.02101,"493,54569-0804-00 ",.02)
 ;;54569-0804-00
 ;;9002226.02101,"493,54569-0811-01 ",.01)
 ;;54569-0811-01
 ;;9002226.02101,"493,54569-0811-01 ",.02)
 ;;54569-0811-01
 ;;9002226.02101,"493,54569-0812-00 ",.01)
 ;;54569-0812-00
 ;;9002226.02101,"493,54569-0812-00 ",.02)
 ;;54569-0812-00
 ;;9002226.02101,"493,54569-0812-01 ",.01)
 ;;54569-0812-01
 ;;9002226.02101,"493,54569-0812-01 ",.02)
 ;;54569-0812-01
 ;;9002226.02101,"493,54569-0812-02 ",.01)
 ;;54569-0812-02
 ;;9002226.02101,"493,54569-0812-02 ",.02)
 ;;54569-0812-02
 ;;9002226.02101,"493,54569-0812-05 ",.01)
 ;;54569-0812-05
 ;;9002226.02101,"493,54569-0812-05 ",.02)
 ;;54569-0812-05
 ;;9002226.02101,"493,54569-0813-00 ",.01)
 ;;54569-0813-00