BGP33J58 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,55045-1207-04 ",.01)
 ;;55045-1207-04
 ;;9002226.02101,"734,55045-1207-04 ",.02)
 ;;55045-1207-04
 ;;9002226.02101,"734,55045-1207-05 ",.01)
 ;;55045-1207-05
 ;;9002226.02101,"734,55045-1207-05 ",.02)
 ;;55045-1207-05
 ;;9002226.02101,"734,55045-1207-06 ",.01)
 ;;55045-1207-06
 ;;9002226.02101,"734,55045-1207-06 ",.02)
 ;;55045-1207-06
 ;;9002226.02101,"734,55045-1207-07 ",.01)
 ;;55045-1207-07
 ;;9002226.02101,"734,55045-1207-07 ",.02)
 ;;55045-1207-07
 ;;9002226.02101,"734,55045-1207-08 ",.01)
 ;;55045-1207-08
 ;;9002226.02101,"734,55045-1207-08 ",.02)
 ;;55045-1207-08
 ;;9002226.02101,"734,55045-1210-00 ",.01)
 ;;55045-1210-00
 ;;9002226.02101,"734,55045-1210-00 ",.02)
 ;;55045-1210-00
 ;;9002226.02101,"734,55045-1210-01 ",.01)
 ;;55045-1210-01
 ;;9002226.02101,"734,55045-1210-01 ",.02)
 ;;55045-1210-01
 ;;9002226.02101,"734,55045-1210-03 ",.01)
 ;;55045-1210-03
 ;;9002226.02101,"734,55045-1210-03 ",.02)
 ;;55045-1210-03
 ;;9002226.02101,"734,55045-1210-05 ",.01)
 ;;55045-1210-05
 ;;9002226.02101,"734,55045-1210-05 ",.02)
 ;;55045-1210-05
 ;;9002226.02101,"734,55045-1210-06 ",.01)
 ;;55045-1210-06
 ;;9002226.02101,"734,55045-1210-06 ",.02)
 ;;55045-1210-06
 ;;9002226.02101,"734,55045-1210-07 ",.01)
 ;;55045-1210-07
 ;;9002226.02101,"734,55045-1210-07 ",.02)
 ;;55045-1210-07
 ;;9002226.02101,"734,55045-1210-08 ",.01)
 ;;55045-1210-08
 ;;9002226.02101,"734,55045-1210-08 ",.02)
 ;;55045-1210-08
 ;;9002226.02101,"734,55045-1210-09 ",.01)
 ;;55045-1210-09
 ;;9002226.02101,"734,55045-1210-09 ",.02)
 ;;55045-1210-09
 ;;9002226.02101,"734,55045-1227-00 ",.01)
 ;;55045-1227-00
 ;;9002226.02101,"734,55045-1227-00 ",.02)
 ;;55045-1227-00
 ;;9002226.02101,"734,55045-1227-01 ",.01)
 ;;55045-1227-01
 ;;9002226.02101,"734,55045-1227-01 ",.02)
 ;;55045-1227-01
 ;;9002226.02101,"734,55045-1227-02 ",.01)
 ;;55045-1227-02
 ;;9002226.02101,"734,55045-1227-02 ",.02)
 ;;55045-1227-02
 ;;9002226.02101,"734,55045-1227-03 ",.01)
 ;;55045-1227-03
 ;;9002226.02101,"734,55045-1227-03 ",.02)
 ;;55045-1227-03
 ;;9002226.02101,"734,55045-1227-04 ",.01)
 ;;55045-1227-04
 ;;9002226.02101,"734,55045-1227-04 ",.02)
 ;;55045-1227-04
 ;;9002226.02101,"734,55045-1227-06 ",.01)
 ;;55045-1227-06
 ;;9002226.02101,"734,55045-1227-06 ",.02)
 ;;55045-1227-06
 ;;9002226.02101,"734,55045-1227-07 ",.01)
 ;;55045-1227-07
 ;;9002226.02101,"734,55045-1227-07 ",.02)
 ;;55045-1227-07
 ;;9002226.02101,"734,55045-1227-08 ",.01)
 ;;55045-1227-08
 ;;9002226.02101,"734,55045-1227-08 ",.02)
 ;;55045-1227-08
 ;;9002226.02101,"734,55045-1227-09 ",.01)
 ;;55045-1227-09
 ;;9002226.02101,"734,55045-1227-09 ",.02)
 ;;55045-1227-09
 ;;9002226.02101,"734,55045-1247-01 ",.01)
 ;;55045-1247-01
 ;;9002226.02101,"734,55045-1247-01 ",.02)
 ;;55045-1247-01
 ;;9002226.02101,"734,55045-1258-07 ",.01)
 ;;55045-1258-07
 ;;9002226.02101,"734,55045-1258-07 ",.02)
 ;;55045-1258-07
 ;;9002226.02101,"734,55045-1262-09 ",.01)
 ;;55045-1262-09
 ;;9002226.02101,"734,55045-1262-09 ",.02)
 ;;55045-1262-09
 ;;9002226.02101,"734,55045-1270-03 ",.01)
 ;;55045-1270-03
 ;;9002226.02101,"734,55045-1270-03 ",.02)
 ;;55045-1270-03
 ;;9002226.02101,"734,55045-1270-04 ",.01)
 ;;55045-1270-04
 ;;9002226.02101,"734,55045-1270-04 ",.02)
 ;;55045-1270-04
 ;;9002226.02101,"734,55045-1270-05 ",.01)
 ;;55045-1270-05
 ;;9002226.02101,"734,55045-1270-05 ",.02)
 ;;55045-1270-05
 ;;9002226.02101,"734,55045-1270-06 ",.01)
 ;;55045-1270-06
 ;;9002226.02101,"734,55045-1270-06 ",.02)
 ;;55045-1270-06
 ;;9002226.02101,"734,55045-1270-08 ",.01)
 ;;55045-1270-08
 ;;9002226.02101,"734,55045-1270-08 ",.02)
 ;;55045-1270-08
 ;;9002226.02101,"734,55045-1270-09 ",.01)
 ;;55045-1270-09
 ;;9002226.02101,"734,55045-1270-09 ",.02)
 ;;55045-1270-09
 ;;9002226.02101,"734,55045-1322-00 ",.01)
 ;;55045-1322-00
 ;;9002226.02101,"734,55045-1322-00 ",.02)
 ;;55045-1322-00
 ;;9002226.02101,"734,55045-1322-01 ",.01)
 ;;55045-1322-01
 ;;9002226.02101,"734,55045-1322-01 ",.02)
 ;;55045-1322-01
 ;;9002226.02101,"734,55045-1322-02 ",.01)
 ;;55045-1322-02
 ;;9002226.02101,"734,55045-1322-02 ",.02)
 ;;55045-1322-02
 ;;9002226.02101,"734,55045-1322-03 ",.01)
 ;;55045-1322-03
 ;;9002226.02101,"734,55045-1322-03 ",.02)
 ;;55045-1322-03
 ;;9002226.02101,"734,55045-1322-04 ",.01)
 ;;55045-1322-04
 ;;9002226.02101,"734,55045-1322-04 ",.02)
 ;;55045-1322-04
 ;;9002226.02101,"734,55045-1322-05 ",.01)
 ;;55045-1322-05
 ;;9002226.02101,"734,55045-1322-05 ",.02)
 ;;55045-1322-05
 ;;9002226.02101,"734,55045-1322-06 ",.01)
 ;;55045-1322-06
 ;;9002226.02101,"734,55045-1322-06 ",.02)
 ;;55045-1322-06
 ;;9002226.02101,"734,55045-1322-07 ",.01)
 ;;55045-1322-07
 ;;9002226.02101,"734,55045-1322-07 ",.02)
 ;;55045-1322-07
 ;;9002226.02101,"734,55045-1322-08 ",.01)
 ;;55045-1322-08
 ;;9002226.02101,"734,55045-1322-08 ",.02)
 ;;55045-1322-08
 ;;9002226.02101,"734,55045-1322-09 ",.01)
 ;;55045-1322-09
 ;;9002226.02101,"734,55045-1322-09 ",.02)
 ;;55045-1322-09
 ;;9002226.02101,"734,55045-1345-03 ",.01)
 ;;55045-1345-03
 ;;9002226.02101,"734,55045-1345-03 ",.02)
 ;;55045-1345-03
 ;;9002226.02101,"734,55045-1373-08 ",.01)
 ;;55045-1373-08
 ;;9002226.02101,"734,55045-1373-08 ",.02)
 ;;55045-1373-08
 ;;9002226.02101,"734,55045-1381-06 ",.01)
 ;;55045-1381-06
 ;;9002226.02101,"734,55045-1381-06 ",.02)
 ;;55045-1381-06
 ;;9002226.02101,"734,55045-1415-01 ",.01)
 ;;55045-1415-01
 ;;9002226.02101,"734,55045-1415-01 ",.02)
 ;;55045-1415-01
 ;;9002226.02101,"734,55045-1442-01 ",.01)
 ;;55045-1442-01
 ;;9002226.02101,"734,55045-1442-01 ",.02)
 ;;55045-1442-01
 ;;9002226.02101,"734,55045-1469-09 ",.01)
 ;;55045-1469-09
 ;;9002226.02101,"734,55045-1469-09 ",.02)
 ;;55045-1469-09
 ;;9002226.02101,"734,55045-1471-00 ",.01)
 ;;55045-1471-00
 ;;9002226.02101,"734,55045-1471-00 ",.02)
 ;;55045-1471-00
 ;;9002226.02101,"734,55045-1478-07 ",.01)
 ;;55045-1478-07
 ;;9002226.02101,"734,55045-1478-07 ",.02)
 ;;55045-1478-07
 ;;9002226.02101,"734,55045-1478-08 ",.01)
 ;;55045-1478-08
 ;;9002226.02101,"734,55045-1478-08 ",.02)
 ;;55045-1478-08
 ;;9002226.02101,"734,55045-1494-03 ",.01)
 ;;55045-1494-03
 ;;9002226.02101,"734,55045-1494-03 ",.02)
 ;;55045-1494-03
 ;;9002226.02101,"734,55045-1494-05 ",.01)
 ;;55045-1494-05
 ;;9002226.02101,"734,55045-1494-05 ",.02)
 ;;55045-1494-05
 ;;9002226.02101,"734,55045-1494-08 ",.01)
 ;;55045-1494-08
 ;;9002226.02101,"734,55045-1494-08 ",.02)
 ;;55045-1494-08
 ;;9002226.02101,"734,55045-1494-09 ",.01)
 ;;55045-1494-09
 ;;9002226.02101,"734,55045-1494-09 ",.02)
 ;;55045-1494-09
 ;;9002226.02101,"734,55045-1500-09 ",.01)
 ;;55045-1500-09
 ;;9002226.02101,"734,55045-1500-09 ",.02)
 ;;55045-1500-09
 ;;9002226.02101,"734,55045-1514-06 ",.01)
 ;;55045-1514-06
 ;;9002226.02101,"734,55045-1514-06 ",.02)
 ;;55045-1514-06
 ;;9002226.02101,"734,55045-1546-02 ",.01)
 ;;55045-1546-02
 ;;9002226.02101,"734,55045-1546-02 ",.02)
 ;;55045-1546-02
 ;;9002226.02101,"734,55045-1546-03 ",.01)
 ;;55045-1546-03
 ;;9002226.02101,"734,55045-1546-03 ",.02)
 ;;55045-1546-03
 ;;9002226.02101,"734,55045-1546-05 ",.01)
 ;;55045-1546-05
 ;;9002226.02101,"734,55045-1546-05 ",.02)
 ;;55045-1546-05
 ;;9002226.02101,"734,55045-1546-07 ",.01)
 ;;55045-1546-07
 ;;9002226.02101,"734,55045-1546-07 ",.02)
 ;;55045-1546-07
 ;;9002226.02101,"734,55045-1650-02 ",.01)
 ;;55045-1650-02
 ;;9002226.02101,"734,55045-1650-02 ",.02)
 ;;55045-1650-02
 ;;9002226.02101,"734,55045-1843-03 ",.01)
 ;;55045-1843-03
 ;;9002226.02101,"734,55045-1843-03 ",.02)
 ;;55045-1843-03
 ;;9002226.02101,"734,55045-1848-03 ",.01)
 ;;55045-1848-03
 ;;9002226.02101,"734,55045-1848-03 ",.02)
 ;;55045-1848-03
 ;;9002226.02101,"734,55045-1865-07 ",.01)
 ;;55045-1865-07
 ;;9002226.02101,"734,55045-1865-07 ",.02)
 ;;55045-1865-07
 ;;9002226.02101,"734,55045-1918-00 ",.01)
 ;;55045-1918-00
 ;;9002226.02101,"734,55045-1918-00 ",.02)
 ;;55045-1918-00
 ;;9002226.02101,"734,55045-1918-01 ",.01)
 ;;55045-1918-01
 ;;9002226.02101,"734,55045-1918-01 ",.02)
 ;;55045-1918-01
 ;;9002226.02101,"734,55045-1918-02 ",.01)
 ;;55045-1918-02
 ;;9002226.02101,"734,55045-1918-02 ",.02)
 ;;55045-1918-02
 ;;9002226.02101,"734,55045-1918-03 ",.01)
 ;;55045-1918-03
 ;;9002226.02101,"734,55045-1918-03 ",.02)
 ;;55045-1918-03
 ;;9002226.02101,"734,55045-1918-06 ",.01)
 ;;55045-1918-06
 ;;9002226.02101,"734,55045-1918-06 ",.02)
 ;;55045-1918-06
 ;;9002226.02101,"734,55045-1918-07 ",.01)
 ;;55045-1918-07
 ;;9002226.02101,"734,55045-1918-07 ",.02)
 ;;55045-1918-07
 ;;9002226.02101,"734,55045-1918-08 ",.01)
 ;;55045-1918-08
 ;;9002226.02101,"734,55045-1918-08 ",.02)
 ;;55045-1918-08
 ;;9002226.02101,"734,55045-1918-09 ",.01)
 ;;55045-1918-09
 ;;9002226.02101,"734,55045-1918-09 ",.02)
 ;;55045-1918-09
 ;;9002226.02101,"734,55045-2004-00 ",.01)
 ;;55045-2004-00
 ;;9002226.02101,"734,55045-2004-00 ",.02)
 ;;55045-2004-00
 ;;9002226.02101,"734,55045-2004-04 ",.01)
 ;;55045-2004-04
 ;;9002226.02101,"734,55045-2004-04 ",.02)
 ;;55045-2004-04
 ;;9002226.02101,"734,55045-2004-05 ",.01)
 ;;55045-2004-05
 ;;9002226.02101,"734,55045-2004-05 ",.02)
 ;;55045-2004-05
 ;;9002226.02101,"734,55045-2004-06 ",.01)
 ;;55045-2004-06
 ;;9002226.02101,"734,55045-2004-06 ",.02)
 ;;55045-2004-06
 ;;9002226.02101,"734,55045-2004-08 ",.01)
 ;;55045-2004-08
 ;;9002226.02101,"734,55045-2004-08 ",.02)
 ;;55045-2004-08
 ;;9002226.02101,"734,55045-2006-00 ",.01)
 ;;55045-2006-00
 ;;9002226.02101,"734,55045-2006-00 ",.02)
 ;;55045-2006-00
 ;;9002226.02101,"734,55045-2006-01 ",.01)
 ;;55045-2006-01
 ;;9002226.02101,"734,55045-2006-01 ",.02)
 ;;55045-2006-01
 ;;9002226.02101,"734,55045-2006-02 ",.01)
 ;;55045-2006-02
 ;;9002226.02101,"734,55045-2006-02 ",.02)
 ;;55045-2006-02
 ;;9002226.02101,"734,55045-2006-03 ",.01)
 ;;55045-2006-03
 ;;9002226.02101,"734,55045-2006-03 ",.02)
 ;;55045-2006-03
 ;;9002226.02101,"734,55045-2006-04 ",.01)
 ;;55045-2006-04
 ;;9002226.02101,"734,55045-2006-04 ",.02)
 ;;55045-2006-04
 ;;9002226.02101,"734,55045-2006-05 ",.01)
 ;;55045-2006-05
 ;;9002226.02101,"734,55045-2006-05 ",.02)
 ;;55045-2006-05
 ;;9002226.02101,"734,55045-2006-06 ",.01)
 ;;55045-2006-06
 ;;9002226.02101,"734,55045-2006-06 ",.02)
 ;;55045-2006-06
 ;;9002226.02101,"734,55045-2006-07 ",.01)
 ;;55045-2006-07
 ;;9002226.02101,"734,55045-2006-07 ",.02)
 ;;55045-2006-07
 ;;9002226.02101,"734,55045-2006-08 ",.01)
 ;;55045-2006-08
 ;;9002226.02101,"734,55045-2006-08 ",.02)
 ;;55045-2006-08
 ;;9002226.02101,"734,55045-2006-09 ",.01)
 ;;55045-2006-09
 ;;9002226.02101,"734,55045-2006-09 ",.02)
 ;;55045-2006-09
 ;;9002226.02101,"734,55045-2012-02 ",.01)
 ;;55045-2012-02
 ;;9002226.02101,"734,55045-2012-02 ",.02)
 ;;55045-2012-02
 ;;9002226.02101,"734,55045-2012-05 ",.01)
 ;;55045-2012-05
 ;;9002226.02101,"734,55045-2012-05 ",.02)
 ;;55045-2012-05
 ;;9002226.02101,"734,55045-2012-08 ",.01)
 ;;55045-2012-08
 ;;9002226.02101,"734,55045-2012-08 ",.02)
 ;;55045-2012-08
 ;;9002226.02101,"734,55045-2012-09 ",.01)
 ;;55045-2012-09
 ;;9002226.02101,"734,55045-2012-09 ",.02)
 ;;55045-2012-09
 ;;9002226.02101,"734,55045-2067-07 ",.01)
 ;;55045-2067-07
 ;;9002226.02101,"734,55045-2067-07 ",.02)
 ;;55045-2067-07
 ;;9002226.02101,"734,55045-2076-02 ",.01)
 ;;55045-2076-02
 ;;9002226.02101,"734,55045-2076-02 ",.02)
 ;;55045-2076-02
 ;;9002226.02101,"734,55045-2076-03 ",.01)
 ;;55045-2076-03
 ;;9002226.02101,"734,55045-2076-03 ",.02)
 ;;55045-2076-03
 ;;9002226.02101,"734,55045-2076-04 ",.01)
 ;;55045-2076-04
 ;;9002226.02101,"734,55045-2076-04 ",.02)
 ;;55045-2076-04
 ;;9002226.02101,"734,55045-2076-06 ",.01)
 ;;55045-2076-06
 ;;9002226.02101,"734,55045-2076-06 ",.02)
 ;;55045-2076-06
 ;;9002226.02101,"734,55045-2155-03 ",.01)
 ;;55045-2155-03
 ;;9002226.02101,"734,55045-2155-03 ",.02)
 ;;55045-2155-03
 ;;9002226.02101,"734,55045-2162-04 ",.01)
 ;;55045-2162-04
 ;;9002226.02101,"734,55045-2162-04 ",.02)
 ;;55045-2162-04
 ;;9002226.02101,"734,55045-2162-07 ",.01)
 ;;55045-2162-07
 ;;9002226.02101,"734,55045-2162-07 ",.02)
 ;;55045-2162-07
 ;;9002226.02101,"734,55045-2162-08 ",.01)
 ;;55045-2162-08
 ;;9002226.02101,"734,55045-2162-08 ",.02)
 ;;55045-2162-08
 ;;9002226.02101,"734,55045-2302-03 ",.01)
 ;;55045-2302-03
 ;;9002226.02101,"734,55045-2302-03 ",.02)
 ;;55045-2302-03
 ;;9002226.02101,"734,55045-2372-05 ",.01)
 ;;55045-2372-05
 ;;9002226.02101,"734,55045-2372-05 ",.02)
 ;;55045-2372-05
 ;;9002226.02101,"734,55045-2373-05 ",.01)
 ;;55045-2373-05
 ;;9002226.02101,"734,55045-2373-05 ",.02)
 ;;55045-2373-05
 ;;9002226.02101,"734,55045-2373-06 ",.01)
 ;;55045-2373-06
 ;;9002226.02101,"734,55045-2373-06 ",.02)
 ;;55045-2373-06
 ;;9002226.02101,"734,55045-2373-08 ",.01)
 ;;55045-2373-08
 ;;9002226.02101,"734,55045-2373-08 ",.02)
 ;;55045-2373-08
 ;;9002226.02101,"734,55045-2426-01 ",.01)
 ;;55045-2426-01
 ;;9002226.02101,"734,55045-2426-01 ",.02)
 ;;55045-2426-01
 ;;9002226.02101,"734,55045-2426-02 ",.01)
 ;;55045-2426-02
 ;;9002226.02101,"734,55045-2426-02 ",.02)
 ;;55045-2426-02
 ;;9002226.02101,"734,55045-2426-03 ",.01)
 ;;55045-2426-03
 ;;9002226.02101,"734,55045-2426-03 ",.02)
 ;;55045-2426-03
 ;;9002226.02101,"734,55045-2426-06 ",.01)
 ;;55045-2426-06
 ;;9002226.02101,"734,55045-2426-06 ",.02)
 ;;55045-2426-06
 ;;9002226.02101,"734,55045-2426-07 ",.01)
 ;;55045-2426-07
 ;;9002226.02101,"734,55045-2426-07 ",.02)
 ;;55045-2426-07
 ;;9002226.02101,"734,55045-2426-08 ",.01)
 ;;55045-2426-08
 ;;9002226.02101,"734,55045-2426-08 ",.02)
 ;;55045-2426-08