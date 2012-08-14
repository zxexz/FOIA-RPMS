BGP06D8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"978,00247-0120-01 ",.01)
 ;;00247-0120-01
 ;;9002226.02101,"978,00247-0120-01 ",.02)
 ;;00247-0120-01
 ;;9002226.02101,"978,00247-0120-02 ",.01)
 ;;00247-0120-02
 ;;9002226.02101,"978,00247-0120-02 ",.02)
 ;;00247-0120-02
 ;;9002226.02101,"978,00247-0120-03 ",.01)
 ;;00247-0120-03
 ;;9002226.02101,"978,00247-0120-03 ",.02)
 ;;00247-0120-03
 ;;9002226.02101,"978,00247-0120-04 ",.01)
 ;;00247-0120-04
 ;;9002226.02101,"978,00247-0120-04 ",.02)
 ;;00247-0120-04
 ;;9002226.02101,"978,00247-0120-05 ",.01)
 ;;00247-0120-05
 ;;9002226.02101,"978,00247-0120-05 ",.02)
 ;;00247-0120-05
 ;;9002226.02101,"978,00247-0120-06 ",.01)
 ;;00247-0120-06
 ;;9002226.02101,"978,00247-0120-06 ",.02)
 ;;00247-0120-06
 ;;9002226.02101,"978,00247-0120-07 ",.01)
 ;;00247-0120-07
 ;;9002226.02101,"978,00247-0120-07 ",.02)
 ;;00247-0120-07
 ;;9002226.02101,"978,00247-0120-08 ",.01)
 ;;00247-0120-08
 ;;9002226.02101,"978,00247-0120-08 ",.02)
 ;;00247-0120-08
 ;;9002226.02101,"978,00247-0120-10 ",.01)
 ;;00247-0120-10
 ;;9002226.02101,"978,00247-0120-10 ",.02)
 ;;00247-0120-10
 ;;9002226.02101,"978,00247-0120-12 ",.01)
 ;;00247-0120-12
 ;;9002226.02101,"978,00247-0120-12 ",.02)
 ;;00247-0120-12
 ;;9002226.02101,"978,00247-0120-14 ",.01)
 ;;00247-0120-14
 ;;9002226.02101,"978,00247-0120-14 ",.02)
 ;;00247-0120-14
 ;;9002226.02101,"978,00247-0120-15 ",.01)
 ;;00247-0120-15
 ;;9002226.02101,"978,00247-0120-15 ",.02)
 ;;00247-0120-15
 ;;9002226.02101,"978,00247-0120-20 ",.01)
 ;;00247-0120-20
 ;;9002226.02101,"978,00247-0120-20 ",.02)
 ;;00247-0120-20
 ;;9002226.02101,"978,00247-0120-24 ",.01)
 ;;00247-0120-24
 ;;9002226.02101,"978,00247-0120-24 ",.02)
 ;;00247-0120-24
 ;;9002226.02101,"978,00247-0120-30 ",.01)
 ;;00247-0120-30
 ;;9002226.02101,"978,00247-0120-30 ",.02)
 ;;00247-0120-30
 ;;9002226.02101,"978,00247-0127-03 ",.01)
 ;;00247-0127-03
 ;;9002226.02101,"978,00247-0127-03 ",.02)
 ;;00247-0127-03
 ;;9002226.02101,"978,00247-0127-10 ",.01)
 ;;00247-0127-10
 ;;9002226.02101,"978,00247-0127-10 ",.02)
 ;;00247-0127-10
 ;;9002226.02101,"978,00247-0127-12 ",.01)
 ;;00247-0127-12
 ;;9002226.02101,"978,00247-0127-12 ",.02)
 ;;00247-0127-12
 ;;9002226.02101,"978,00247-0127-15 ",.01)
 ;;00247-0127-15
 ;;9002226.02101,"978,00247-0127-15 ",.02)
 ;;00247-0127-15
 ;;9002226.02101,"978,00247-0127-20 ",.01)
 ;;00247-0127-20
 ;;9002226.02101,"978,00247-0127-20 ",.02)
 ;;00247-0127-20
 ;;9002226.02101,"978,00247-0127-30 ",.01)
 ;;00247-0127-30
 ;;9002226.02101,"978,00247-0127-30 ",.02)
 ;;00247-0127-30
 ;;9002226.02101,"978,00247-0127-50 ",.01)
 ;;00247-0127-50
 ;;9002226.02101,"978,00247-0127-50 ",.02)
 ;;00247-0127-50
 ;;9002226.02101,"978,00247-0130-00 ",.01)
 ;;00247-0130-00
 ;;9002226.02101,"978,00247-0130-00 ",.02)
 ;;00247-0130-00
 ;;9002226.02101,"978,00247-0130-02 ",.01)
 ;;00247-0130-02
 ;;9002226.02101,"978,00247-0130-02 ",.02)
 ;;00247-0130-02
 ;;9002226.02101,"978,00247-0130-03 ",.01)
 ;;00247-0130-03
 ;;9002226.02101,"978,00247-0130-03 ",.02)
 ;;00247-0130-03
 ;;9002226.02101,"978,00247-0130-04 ",.01)
 ;;00247-0130-04
 ;;9002226.02101,"978,00247-0130-04 ",.02)
 ;;00247-0130-04
 ;;9002226.02101,"978,00247-0130-05 ",.01)
 ;;00247-0130-05
 ;;9002226.02101,"978,00247-0130-05 ",.02)
 ;;00247-0130-05
 ;;9002226.02101,"978,00247-0130-06 ",.01)
 ;;00247-0130-06
 ;;9002226.02101,"978,00247-0130-06 ",.02)
 ;;00247-0130-06
 ;;9002226.02101,"978,00247-0130-07 ",.01)
 ;;00247-0130-07
 ;;9002226.02101,"978,00247-0130-07 ",.02)
 ;;00247-0130-07
 ;;9002226.02101,"978,00247-0130-08 ",.01)
 ;;00247-0130-08
 ;;9002226.02101,"978,00247-0130-08 ",.02)
 ;;00247-0130-08
 ;;9002226.02101,"978,00247-0130-10 ",.01)
 ;;00247-0130-10
 ;;9002226.02101,"978,00247-0130-10 ",.02)
 ;;00247-0130-10
 ;;9002226.02101,"978,00247-0130-12 ",.01)
 ;;00247-0130-12
 ;;9002226.02101,"978,00247-0130-12 ",.02)
 ;;00247-0130-12
 ;;9002226.02101,"978,00247-0130-14 ",.01)
 ;;00247-0130-14
 ;;9002226.02101,"978,00247-0130-14 ",.02)
 ;;00247-0130-14
 ;;9002226.02101,"978,00247-0130-15 ",.01)
 ;;00247-0130-15
 ;;9002226.02101,"978,00247-0130-15 ",.02)
 ;;00247-0130-15
 ;;9002226.02101,"978,00247-0130-20 ",.01)
 ;;00247-0130-20
 ;;9002226.02101,"978,00247-0130-20 ",.02)
 ;;00247-0130-20
 ;;9002226.02101,"978,00247-0130-24 ",.01)
 ;;00247-0130-24
 ;;9002226.02101,"978,00247-0130-24 ",.02)
 ;;00247-0130-24
 ;;9002226.02101,"978,00247-0130-30 ",.01)
 ;;00247-0130-30
 ;;9002226.02101,"978,00247-0130-30 ",.02)
 ;;00247-0130-30
 ;;9002226.02101,"978,00247-0130-40 ",.01)
 ;;00247-0130-40
 ;;9002226.02101,"978,00247-0130-40 ",.02)
 ;;00247-0130-40
 ;;9002226.02101,"978,00247-0198-05 ",.01)
 ;;00247-0198-05
 ;;9002226.02101,"978,00247-0198-05 ",.02)
 ;;00247-0198-05
 ;;9002226.02101,"978,00247-0198-10 ",.01)
 ;;00247-0198-10
 ;;9002226.02101,"978,00247-0198-10 ",.02)
 ;;00247-0198-10
 ;;9002226.02101,"978,00247-0198-20 ",.01)
 ;;00247-0198-20
 ;;9002226.02101,"978,00247-0198-20 ",.02)
 ;;00247-0198-20
 ;;9002226.02101,"978,00247-0198-30 ",.01)
 ;;00247-0198-30
 ;;9002226.02101,"978,00247-0198-30 ",.02)
 ;;00247-0198-30
 ;;9002226.02101,"978,00247-0198-60 ",.01)
 ;;00247-0198-60
 ;;9002226.02101,"978,00247-0198-60 ",.02)
 ;;00247-0198-60
 ;;9002226.02101,"978,00247-0198-77 ",.01)
 ;;00247-0198-77
 ;;9002226.02101,"978,00247-0198-77 ",.02)
 ;;00247-0198-77
 ;;9002226.02101,"978,00247-0231-52 ",.01)
 ;;00247-0231-52
 ;;9002226.02101,"978,00247-0231-52 ",.02)
 ;;00247-0231-52
 ;;9002226.02101,"978,00247-0231-59 ",.01)
 ;;00247-0231-59
 ;;9002226.02101,"978,00247-0231-59 ",.02)
 ;;00247-0231-59
 ;;9002226.02101,"978,00247-0332-05 ",.01)
 ;;00247-0332-05
 ;;9002226.02101,"978,00247-0332-05 ",.02)
 ;;00247-0332-05
 ;;9002226.02101,"978,00247-0332-10 ",.01)
 ;;00247-0332-10
 ;;9002226.02101,"978,00247-0332-10 ",.02)
 ;;00247-0332-10
 ;;9002226.02101,"978,00247-0332-38 ",.01)
 ;;00247-0332-38
 ;;9002226.02101,"978,00247-0332-38 ",.02)
 ;;00247-0332-38
 ;;9002226.02101,"978,00247-0332-52 ",.01)
 ;;00247-0332-52
 ;;9002226.02101,"978,00247-0332-52 ",.02)
 ;;00247-0332-52
 ;;9002226.02101,"978,00247-0332-60 ",.01)
 ;;00247-0332-60
 ;;9002226.02101,"978,00247-0332-60 ",.02)
 ;;00247-0332-60
 ;;9002226.02101,"978,00247-0623-20 ",.01)
 ;;00247-0623-20
 ;;9002226.02101,"978,00247-0623-20 ",.02)
 ;;00247-0623-20
 ;;9002226.02101,"978,00247-0623-77 ",.01)
 ;;00247-0623-77
 ;;9002226.02101,"978,00247-0623-77 ",.02)
 ;;00247-0623-77
 ;;9002226.02101,"978,00247-0968-04 ",.01)
 ;;00247-0968-04
 ;;9002226.02101,"978,00247-0968-04 ",.02)
 ;;00247-0968-04
 ;;9002226.02101,"978,00247-0968-05 ",.01)
 ;;00247-0968-05
 ;;9002226.02101,"978,00247-0968-05 ",.02)
 ;;00247-0968-05
 ;;9002226.02101,"978,00247-0968-10 ",.01)
 ;;00247-0968-10
 ;;9002226.02101,"978,00247-0968-10 ",.02)
 ;;00247-0968-10
 ;;9002226.02101,"978,00247-0968-12 ",.01)
 ;;00247-0968-12
 ;;9002226.02101,"978,00247-0968-12 ",.02)
 ;;00247-0968-12
 ;;9002226.02101,"978,00247-0968-30 ",.01)
 ;;00247-0968-30
 ;;9002226.02101,"978,00247-0968-30 ",.02)
 ;;00247-0968-30
 ;;9002226.02101,"978,00247-1071-12 ",.01)
 ;;00247-1071-12
 ;;9002226.02101,"978,00247-1071-12 ",.02)
 ;;00247-1071-12
 ;;9002226.02101,"978,00247-1074-01 ",.01)
 ;;00247-1074-01
 ;;9002226.02101,"978,00247-1074-01 ",.02)
 ;;00247-1074-01
 ;;9002226.02101,"978,00247-1074-02 ",.01)
 ;;00247-1074-02
 ;;9002226.02101,"978,00247-1074-02 ",.02)
 ;;00247-1074-02
 ;;9002226.02101,"978,00247-1074-03 ",.01)
 ;;00247-1074-03
 ;;9002226.02101,"978,00247-1074-03 ",.02)
 ;;00247-1074-03
 ;;9002226.02101,"978,00247-1074-06 ",.01)
 ;;00247-1074-06
 ;;9002226.02101,"978,00247-1074-06 ",.02)
 ;;00247-1074-06
 ;;9002226.02101,"978,00247-1074-20 ",.01)
 ;;00247-1074-20
 ;;9002226.02101,"978,00247-1074-20 ",.02)
 ;;00247-1074-20
 ;;9002226.02101,"978,00247-1074-30 ",.01)
 ;;00247-1074-30
 ;;9002226.02101,"978,00247-1074-30 ",.02)
 ;;00247-1074-30
 ;;9002226.02101,"978,00247-1167-01 ",.01)
 ;;00247-1167-01
 ;;9002226.02101,"978,00247-1167-01 ",.02)
 ;;00247-1167-01
 ;;9002226.02101,"978,00247-1167-02 ",.01)
 ;;00247-1167-02
 ;;9002226.02101,"978,00247-1167-02 ",.02)
 ;;00247-1167-02
 ;;9002226.02101,"978,00247-1167-03 ",.01)
 ;;00247-1167-03
 ;;9002226.02101,"978,00247-1167-03 ",.02)
 ;;00247-1167-03
 ;;9002226.02101,"978,00247-1167-04 ",.01)
 ;;00247-1167-04
 ;;9002226.02101,"978,00247-1167-04 ",.02)
 ;;00247-1167-04
 ;;9002226.02101,"978,00247-1167-06 ",.01)
 ;;00247-1167-06
 ;;9002226.02101,"978,00247-1167-06 ",.02)
 ;;00247-1167-06
 ;;9002226.02101,"978,00247-1167-10 ",.01)
 ;;00247-1167-10
 ;;9002226.02101,"978,00247-1167-10 ",.02)
 ;;00247-1167-10
 ;;9002226.02101,"978,00247-1167-12 ",.01)
 ;;00247-1167-12
 ;;9002226.02101,"978,00247-1167-12 ",.02)
 ;;00247-1167-12
 ;;9002226.02101,"978,00247-1167-15 ",.01)
 ;;00247-1167-15
 ;;9002226.02101,"978,00247-1167-15 ",.02)
 ;;00247-1167-15
 ;;9002226.02101,"978,00247-1167-24 ",.01)
 ;;00247-1167-24
 ;;9002226.02101,"978,00247-1167-24 ",.02)
 ;;00247-1167-24
 ;;9002226.02101,"978,00247-1167-30 ",.01)
 ;;00247-1167-30
 ;;9002226.02101,"978,00247-1167-30 ",.02)
 ;;00247-1167-30
 ;;9002226.02101,"978,00247-1168-01 ",.01)
 ;;00247-1168-01
 ;;9002226.02101,"978,00247-1168-01 ",.02)
 ;;00247-1168-01
 ;;9002226.02101,"978,00247-1168-02 ",.01)
 ;;00247-1168-02
 ;;9002226.02101,"978,00247-1168-02 ",.02)
 ;;00247-1168-02
 ;;9002226.02101,"978,00247-1168-04 ",.01)
 ;;00247-1168-04
 ;;9002226.02101,"978,00247-1168-04 ",.02)
 ;;00247-1168-04
 ;;9002226.02101,"978,00247-1168-20 ",.01)
 ;;00247-1168-20
 ;;9002226.02101,"978,00247-1168-20 ",.02)
 ;;00247-1168-20
 ;;9002226.02101,"978,00247-1168-30 ",.01)
 ;;00247-1168-30
 ;;9002226.02101,"978,00247-1168-30 ",.02)
 ;;00247-1168-30
 ;;9002226.02101,"978,00247-1322-10 ",.01)
 ;;00247-1322-10
 ;;9002226.02101,"978,00247-1322-10 ",.02)
 ;;00247-1322-10
 ;;9002226.02101,"978,00247-1322-12 ",.01)
 ;;00247-1322-12
 ;;9002226.02101,"978,00247-1322-12 ",.02)
 ;;00247-1322-12
 ;;9002226.02101,"978,00247-1350-30 ",.01)
 ;;00247-1350-30
 ;;9002226.02101,"978,00247-1350-30 ",.02)
 ;;00247-1350-30
 ;;9002226.02101,"978,00247-1350-52 ",.01)
 ;;00247-1350-52
 ;;9002226.02101,"978,00247-1350-52 ",.02)
 ;;00247-1350-52
 ;;9002226.02101,"978,00247-1350-60 ",.01)
 ;;00247-1350-60
 ;;9002226.02101,"978,00247-1350-60 ",.02)
 ;;00247-1350-60
 ;;9002226.02101,"978,00247-1350-77 ",.01)
 ;;00247-1350-77
 ;;9002226.02101,"978,00247-1350-77 ",.02)
 ;;00247-1350-77
 ;;9002226.02101,"978,00247-1597-52 ",.01)
 ;;00247-1597-52
 ;;9002226.02101,"978,00247-1597-52 ",.02)
 ;;00247-1597-52
 ;;9002226.02101,"978,00247-1597-77 ",.01)
 ;;00247-1597-77
 ;;9002226.02101,"978,00247-1597-77 ",.02)
 ;;00247-1597-77
 ;;9002226.02101,"978,00247-1598-15 ",.01)
 ;;00247-1598-15
 ;;9002226.02101,"978,00247-1598-15 ",.02)
 ;;00247-1598-15
 ;;9002226.02101,"978,00247-2020-01 ",.01)
 ;;00247-2020-01
 ;;9002226.02101,"978,00247-2020-01 ",.02)
 ;;00247-2020-01
 ;;9002226.02101,"978,00247-2020-02 ",.01)
 ;;00247-2020-02
 ;;9002226.02101,"978,00247-2020-02 ",.02)
 ;;00247-2020-02
 ;;9002226.02101,"978,00247-2236-00 ",.01)
 ;;00247-2236-00
 ;;9002226.02101,"978,00247-2236-00 ",.02)
 ;;00247-2236-00
 ;;9002226.02101,"978,00247-2236-50 ",.01)
 ;;00247-2236-50
 ;;9002226.02101,"978,00247-2236-50 ",.02)
 ;;00247-2236-50
 ;;9002226.02101,"978,00280-8070-20 ",.01)
 ;;00280-8070-20
 ;;9002226.02101,"978,00280-8070-20 ",.02)
 ;;00280-8070-20
 ;;9002226.02101,"978,00363-0235-06 ",.01)
 ;;00363-0235-06
 ;;9002226.02101,"978,00363-0235-06 ",.02)
 ;;00363-0235-06
 ;;9002226.02101,"978,00363-0235-15 ",.01)
 ;;00363-0235-15
 ;;9002226.02101,"978,00363-0235-15 ",.02)
 ;;00363-0235-15
 ;;9002226.02101,"978,00363-0246-15 ",.01)
 ;;00363-0246-15
 ;;9002226.02101,"978,00363-0246-15 ",.02)
 ;;00363-0246-15
 ;;9002226.02101,"978,00363-0360-50 ",.01)
 ;;00363-0360-50
 ;;9002226.02101,"978,00363-0360-50 ",.02)
 ;;00363-0360-50
 ;;9002226.02101,"978,00364-0117-01 ",.01)
 ;;00364-0117-01
 ;;9002226.02101,"978,00364-0117-01 ",.02)
 ;;00364-0117-01
 ;;9002226.02101,"978,00364-0484-01 ",.01)
 ;;00364-0484-01
 ;;9002226.02101,"978,00364-0484-01 ",.02)
 ;;00364-0484-01
 ;;9002226.02101,"978,00364-0484-05 ",.01)
 ;;00364-0484-05
 ;;9002226.02101,"978,00364-0484-05 ",.02)
 ;;00364-0484-05
 ;;9002226.02101,"978,00364-0494-01 ",.01)
 ;;00364-0494-01
 ;;9002226.02101,"978,00364-0494-01 ",.02)
 ;;00364-0494-01
 ;;9002226.02101,"978,00364-0494-05 ",.01)
 ;;00364-0494-05
 ;;9002226.02101,"978,00364-0494-05 ",.02)
 ;;00364-0494-05
 ;;9002226.02101,"978,00364-0495-01 ",.01)
 ;;00364-0495-01
 ;;9002226.02101,"978,00364-0495-01 ",.02)
 ;;00364-0495-01
 ;;9002226.02101,"978,00364-0495-02 ",.01)
 ;;00364-0495-02
 ;;9002226.02101,"978,00364-0495-02 ",.02)
 ;;00364-0495-02
 ;;9002226.02101,"978,00364-0495-05 ",.01)
 ;;00364-0495-05
 ;;9002226.02101,"978,00364-0495-05 ",.02)
 ;;00364-0495-05
 ;;9002226.02101,"978,00364-0496-01 ",.01)
 ;;00364-0496-01
 ;;9002226.02101,"978,00364-0496-01 ",.02)
 ;;00364-0496-01
 ;;9002226.02101,"978,00364-0496-05 ",.01)
 ;;00364-0496-05
 ;;9002226.02101,"978,00364-0496-05 ",.02)
 ;;00364-0496-05
 ;;9002226.02101,"978,00364-0586-01 ",.01)
 ;;00364-0586-01
 ;;9002226.02101,"978,00364-0586-01 ",.02)
 ;;00364-0586-01
 ;;9002226.02101,"978,00372-0047-08 ",.01)
 ;;00372-0047-08
 ;;9002226.02101,"978,00372-0047-08 ",.02)
 ;;00372-0047-08
 ;;9002226.02101,"978,00372-0047-16 ",.01)
 ;;00372-0047-16
 ;;9002226.02101,"978,00372-0047-16 ",.02)
 ;;00372-0047-16