BGP21N3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1203,54868-3709-00 ",.01)
 ;;54868-3709-00
 ;;9002226.02101,"1203,54868-3709-00 ",.02)
 ;;54868-3709-00
 ;;9002226.02101,"1203,54868-3739-00 ",.01)
 ;;54868-3739-00
 ;;9002226.02101,"1203,54868-3739-00 ",.02)
 ;;54868-3739-00
 ;;9002226.02101,"1203,54868-5646-00 ",.01)
 ;;54868-5646-00
 ;;9002226.02101,"1203,54868-5646-00 ",.02)
 ;;54868-5646-00
 ;;9002226.02101,"1203,54868-5646-01 ",.01)
 ;;54868-5646-01
 ;;9002226.02101,"1203,54868-5646-01 ",.02)
 ;;54868-5646-01
 ;;9002226.02101,"1203,54868-5646-02 ",.01)
 ;;54868-5646-02
 ;;9002226.02101,"1203,54868-5646-02 ",.02)
 ;;54868-5646-02
 ;;9002226.02101,"1203,54868-5689-00 ",.01)
 ;;54868-5689-00
 ;;9002226.02101,"1203,54868-5689-00 ",.02)
 ;;54868-5689-00
 ;;9002226.02101,"1203,54868-6050-00 ",.01)
 ;;54868-6050-00
 ;;9002226.02101,"1203,54868-6050-00 ",.02)
 ;;54868-6050-00
 ;;9002226.02101,"1203,54868-6050-01 ",.01)
 ;;54868-6050-01
 ;;9002226.02101,"1203,54868-6050-01 ",.02)
 ;;54868-6050-01
 ;;9002226.02101,"1203,54868-6051-00 ",.01)
 ;;54868-6051-00
 ;;9002226.02101,"1203,54868-6051-00 ",.02)
 ;;54868-6051-00
 ;;9002226.02101,"1203,55045-1486-05 ",.01)
 ;;55045-1486-05
 ;;9002226.02101,"1203,55045-1486-05 ",.02)
 ;;55045-1486-05
 ;;9002226.02101,"1203,55045-2390-05 ",.01)
 ;;55045-2390-05
 ;;9002226.02101,"1203,55045-2390-05 ",.02)
 ;;55045-2390-05
 ;;9002226.02101,"1203,55045-3494-01 ",.01)
 ;;55045-3494-01
 ;;9002226.02101,"1203,55045-3494-01 ",.02)
 ;;55045-3494-01
 ;;9002226.02101,"1203,55887-0812-18 ",.01)
 ;;55887-0812-18
 ;;9002226.02101,"1203,55887-0812-18 ",.02)
 ;;55887-0812-18
 ;;9002226.02101,"1203,57866-0051-01 ",.01)
 ;;57866-0051-01
 ;;9002226.02101,"1203,57866-0051-01 ",.02)
 ;;57866-0051-01
 ;;9002226.02101,"1203,58016-6099-01 ",.01)
 ;;58016-6099-01
 ;;9002226.02101,"1203,58016-6099-01 ",.02)
 ;;58016-6099-01
 ;;9002226.02101,"1203,58016-6569-01 ",.01)
 ;;58016-6569-01
 ;;9002226.02101,"1203,58016-6569-01 ",.02)
 ;;58016-6569-01
 ;;9002226.02101,"1203,59310-0579-20 ",.01)
 ;;59310-0579-20
 ;;9002226.02101,"1203,59310-0579-20 ",.02)
 ;;59310-0579-20
 ;;9002226.02101,"1203,59930-1560-01 ",.01)
 ;;59930-1560-01
 ;;9002226.02101,"1203,59930-1560-01 ",.02)
 ;;59930-1560-01
 ;;9002226.02101,"1203,59930-1560-02 ",.01)
 ;;59930-1560-02
 ;;9002226.02101,"1203,59930-1560-02 ",.02)
 ;;59930-1560-02
 ;;9002226.02101,"1203,62037-0794-44 ",.01)
 ;;62037-0794-44
 ;;9002226.02101,"1203,62037-0794-44 ",.02)
 ;;62037-0794-44
 ;;9002226.02101,"1203,63402-0510-01 ",.01)
 ;;63402-0510-01
 ;;9002226.02101,"1203,63402-0510-01 ",.02)
 ;;63402-0510-01
 ;;9002226.02101,"1203,66116-0664-17 ",.01)
 ;;66116-0664-17
 ;;9002226.02101,"1203,66116-0664-17 ",.02)
 ;;66116-0664-17
 ;;9002226.02101,"1203,66267-0995-17 ",.01)
 ;;66267-0995-17
 ;;9002226.02101,"1203,66267-0995-17 ",.02)
 ;;66267-0995-17
 ;;9002226.02101,"1203,68115-0769-17 ",.01)
 ;;68115-0769-17
 ;;9002226.02101,"1203,68115-0769-17 ",.02)
 ;;68115-0769-17
 ;;9002226.02101,"1203,68115-0995-17 ",.01)
 ;;68115-0995-17
 ;;9002226.02101,"1203,68115-0995-17 ",.02)
 ;;68115-0995-17
 ;;9002226.02101,"1203,68258-3037-01 ",.01)
 ;;68258-3037-01
 ;;9002226.02101,"1203,68258-3037-01 ",.02)
 ;;68258-3037-01
 ;;9002226.02101,"1203,68258-3037-06 ",.01)
 ;;68258-3037-06
 ;;9002226.02101,"1203,68258-3037-06 ",.02)
 ;;68258-3037-06
 ;;9002226.02101,"1203,68258-8974-06 ",.01)
 ;;68258-8974-06
 ;;9002226.02101,"1203,68258-8974-06 ",.02)
 ;;68258-8974-06