BGP24PB ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 29, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1507,674.94 ",.01)
 ;;674.94 
 ;;9002226.02101,"1507,674.94 ",.02)
 ;;674.94 
 ;;9002226.02101,"1507,675.04 ",.01)
 ;;675.04 
 ;;9002226.02101,"1507,675.04 ",.02)
 ;;675.04 
 ;;9002226.02101,"1507,675.14 ",.01)
 ;;675.14 
 ;;9002226.02101,"1507,675.14 ",.02)
 ;;675.14 
 ;;9002226.02101,"1507,675.24 ",.01)
 ;;675.24 
 ;;9002226.02101,"1507,675.24 ",.02)
 ;;675.24 
 ;;9002226.02101,"1507,675.84 ",.01)
 ;;675.84 
 ;;9002226.02101,"1507,675.84 ",.02)
 ;;675.84 
 ;;9002226.02101,"1507,675.94 ",.01)
 ;;675.94 
 ;;9002226.02101,"1507,675.94 ",.02)
 ;;675.94 
 ;;9002226.02101,"1507,676.04 ",.01)
 ;;676.04 
 ;;9002226.02101,"1507,676.04 ",.02)
 ;;676.04 
 ;;9002226.02101,"1507,676.14 ",.01)
 ;;676.14 
 ;;9002226.02101,"1507,676.14 ",.02)
 ;;676.14 
 ;;9002226.02101,"1507,676.24 ",.01)
 ;;676.24 
 ;;9002226.02101,"1507,676.24 ",.02)
 ;;676.24 
 ;;9002226.02101,"1507,676.34 ",.01)
 ;;676.34 
 ;;9002226.02101,"1507,676.34 ",.02)
 ;;676.34 
 ;;9002226.02101,"1507,676.44 ",.01)
 ;;676.44 
 ;;9002226.02101,"1507,676.44 ",.02)
 ;;676.44 
 ;;9002226.02101,"1507,676.54 ",.01)
 ;;676.54 
 ;;9002226.02101,"1507,676.54 ",.02)
 ;;676.54 
 ;;9002226.02101,"1507,676.64 ",.01)
 ;;676.64 
 ;;9002226.02101,"1507,676.64 ",.02)
 ;;676.64 
 ;;9002226.02101,"1507,676.84 ",.01)
 ;;676.84 
 ;;9002226.02101,"1507,676.84 ",.02)
 ;;676.84 
 ;;9002226.02101,"1507,676.94 ",.01)
 ;;676.94 
 ;;9002226.02101,"1507,676.94 ",.02)
 ;;676.94 