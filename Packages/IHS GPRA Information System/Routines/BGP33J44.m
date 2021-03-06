BGP33J44 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,44567-0103-10 ",.01)
 ;;44567-0103-10
 ;;9002226.02101,"734,44567-0103-10 ",.02)
 ;;44567-0103-10
 ;;9002226.02101,"734,44567-0104-10 ",.01)
 ;;44567-0104-10
 ;;9002226.02101,"734,44567-0104-10 ",.02)
 ;;44567-0104-10
 ;;9002226.02101,"734,45469-2928-00 ",.01)
 ;;45469-2928-00
 ;;9002226.02101,"734,45469-2928-00 ",.02)
 ;;45469-2928-00
 ;;9002226.02101,"734,45469-2930-00 ",.01)
 ;;45469-2930-00
 ;;9002226.02101,"734,45469-2930-00 ",.02)
 ;;45469-2930-00
 ;;9002226.02101,"734,45469-2953-00 ",.01)
 ;;45469-2953-00
 ;;9002226.02101,"734,45469-2953-00 ",.02)
 ;;45469-2953-00
 ;;9002226.02101,"734,45565-0031-03 ",.01)
 ;;45565-0031-03
 ;;9002226.02101,"734,45565-0031-03 ",.02)
 ;;45565-0031-03
 ;;9002226.02101,"734,45809-0401-20 ",.01)
 ;;45809-0401-20
 ;;9002226.02101,"734,45809-0401-20 ",.02)
 ;;45809-0401-20
 ;;9002226.02101,"734,45809-0801-12 ",.01)
 ;;45809-0801-12
 ;;9002226.02101,"734,45809-0801-12 ",.02)
 ;;45809-0801-12
 ;;9002226.02101,"734,45809-0801-30 ",.01)
 ;;45809-0801-30
 ;;9002226.02101,"734,45809-0801-30 ",.02)
 ;;45809-0801-30
 ;;9002226.02101,"734,45809-0801-60 ",.01)
 ;;45809-0801-60
 ;;9002226.02101,"734,45809-0801-60 ",.02)
 ;;45809-0801-60
 ;;9002226.02101,"734,45809-0801-90 ",.01)
 ;;45809-0801-90
 ;;9002226.02101,"734,45809-0801-90 ",.02)
 ;;45809-0801-90
 ;;9002226.02101,"734,47781-0266-03 ",.01)
 ;;47781-0266-03
 ;;9002226.02101,"734,47781-0266-03 ",.02)
 ;;47781-0266-03
 ;;9002226.02101,"734,47781-0267-03 ",.01)
 ;;47781-0267-03
 ;;9002226.02101,"734,47781-0267-03 ",.02)
 ;;47781-0267-03
 ;;9002226.02101,"734,49884-0007-05 ",.01)
 ;;49884-0007-05
 ;;9002226.02101,"734,49884-0007-05 ",.02)
 ;;49884-0007-05
 ;;9002226.02101,"734,49884-0041-01 ",.01)
 ;;49884-0041-01
 ;;9002226.02101,"734,49884-0041-01 ",.02)
 ;;49884-0041-01
 ;;9002226.02101,"734,49884-0041-05 ",.01)
 ;;49884-0041-05
 ;;9002226.02101,"734,49884-0041-05 ",.02)
 ;;49884-0041-05
 ;;9002226.02101,"734,49884-0041-07 ",.01)
 ;;49884-0041-07
 ;;9002226.02101,"734,49884-0041-07 ",.02)
 ;;49884-0041-07
 ;;9002226.02101,"734,49884-0073-27 ",.01)
 ;;49884-0073-27
 ;;9002226.02101,"734,49884-0073-27 ",.02)
 ;;49884-0073-27
 ;;9002226.02101,"734,49884-0073-28 ",.01)
 ;;49884-0073-28
 ;;9002226.02101,"734,49884-0073-28 ",.02)
 ;;49884-0073-28
 ;;9002226.02101,"734,49884-0073-47 ",.01)
 ;;49884-0073-47
 ;;9002226.02101,"734,49884-0073-47 ",.02)
 ;;49884-0073-47
 ;;9002226.02101,"734,49884-0091-01 ",.01)
 ;;49884-0091-01
 ;;9002226.02101,"734,49884-0091-01 ",.02)
 ;;49884-0091-01
 ;;9002226.02101,"734,49884-0092-01 ",.01)
 ;;49884-0092-01
 ;;9002226.02101,"734,49884-0092-01 ",.02)
 ;;49884-0092-01
 ;;9002226.02101,"734,49884-0092-05 ",.01)
 ;;49884-0092-05
 ;;9002226.02101,"734,49884-0092-05 ",.02)
 ;;49884-0092-05
 ;;9002226.02101,"734,49884-0093-03 ",.01)
 ;;49884-0093-03
 ;;9002226.02101,"734,49884-0093-03 ",.02)
 ;;49884-0093-03
 ;;9002226.02101,"734,49884-0093-04 ",.01)
 ;;49884-0093-04
 ;;9002226.02101,"734,49884-0093-04 ",.02)
 ;;49884-0093-04
 ;;9002226.02101,"734,49884-0096-01 ",.01)
 ;;49884-0096-01
 ;;9002226.02101,"734,49884-0096-01 ",.02)
 ;;49884-0096-01
 ;;9002226.02101,"734,49884-0097-01 ",.01)
 ;;49884-0097-01
 ;;9002226.02101,"734,49884-0097-01 ",.02)
 ;;49884-0097-01
 ;;9002226.02101,"734,49884-0098-03 ",.01)
 ;;49884-0098-03
 ;;9002226.02101,"734,49884-0098-03 ",.02)
 ;;49884-0098-03
 ;;9002226.02101,"734,49884-0168-27 ",.01)
 ;;49884-0168-27
 ;;9002226.02101,"734,49884-0168-27 ",.02)
 ;;49884-0168-27
 ;;9002226.02101,"734,49884-0168-28 ",.01)
 ;;49884-0168-28
 ;;9002226.02101,"734,49884-0168-28 ",.02)
 ;;49884-0168-28
 ;;9002226.02101,"734,49884-0168-47 ",.01)
 ;;49884-0168-47
 ;;9002226.02101,"734,49884-0168-47 ",.02)
 ;;49884-0168-47
 ;;9002226.02101,"734,49884-0201-28 ",.01)
 ;;49884-0201-28
 ;;9002226.02101,"734,49884-0201-28 ",.02)
 ;;49884-0201-28
 ;;9002226.02101,"734,49884-0201-49 ",.01)
 ;;49884-0201-49
 ;;9002226.02101,"734,49884-0201-49 ",.02)
 ;;49884-0201-49
 ;;9002226.02101,"734,49884-0201-70 ",.01)
 ;;49884-0201-70
 ;;9002226.02101,"734,49884-0201-70 ",.02)
 ;;49884-0201-70
 ;;9002226.02101,"734,49884-0236-11 ",.01)
 ;;49884-0236-11
 ;;9002226.02101,"734,49884-0236-11 ",.02)
 ;;49884-0236-11
 ;;9002226.02101,"734,49884-0298-07 ",.01)
 ;;49884-0298-07
 ;;9002226.02101,"734,49884-0298-07 ",.02)
 ;;49884-0298-07
 ;;9002226.02101,"734,49884-0298-12 ",.01)
 ;;49884-0298-12
 ;;9002226.02101,"734,49884-0298-12 ",.02)
 ;;49884-0298-12
 ;;9002226.02101,"734,49884-0299-07 ",.01)
 ;;49884-0299-07
 ;;9002226.02101,"734,49884-0299-07 ",.02)
 ;;49884-0299-07
 ;;9002226.02101,"734,49884-0299-12 ",.01)
 ;;49884-0299-12
 ;;9002226.02101,"734,49884-0299-12 ",.02)
 ;;49884-0299-12
 ;;9002226.02101,"734,49884-0305-02 ",.01)
 ;;49884-0305-02
 ;;9002226.02101,"734,49884-0305-02 ",.02)
 ;;49884-0305-02
 ;;9002226.02101,"734,49884-0313-02 ",.01)
 ;;49884-0313-02
 ;;9002226.02101,"734,49884-0313-02 ",.02)
 ;;49884-0313-02
 ;;9002226.02101,"734,49884-0369-69 ",.01)
 ;;49884-0369-69
 ;;9002226.02101,"734,49884-0369-69 ",.02)
 ;;49884-0369-69
 ;;9002226.02101,"734,49884-0511-01 ",.01)
 ;;49884-0511-01
 ;;9002226.02101,"734,49884-0511-01 ",.02)
 ;;49884-0511-01
 ;;9002226.02101,"734,49884-0512-01 ",.01)
 ;;49884-0512-01
 ;;9002226.02101,"734,49884-0512-01 ",.02)
 ;;49884-0512-01
 ;;9002226.02101,"734,49884-0512-10 ",.01)
 ;;49884-0512-10
 ;;9002226.02101,"734,49884-0512-10 ",.02)
 ;;49884-0512-10
 ;;9002226.02101,"734,49884-0513-03 ",.01)
 ;;49884-0513-03
 ;;9002226.02101,"734,49884-0513-03 ",.02)
 ;;49884-0513-03
 ;;9002226.02101,"734,49884-0637-05 ",.01)
 ;;49884-0637-05
 ;;9002226.02101,"734,49884-0637-05 ",.02)
 ;;49884-0637-05
 ;;9002226.02101,"734,49884-0637-74 ",.01)
 ;;49884-0637-74
 ;;9002226.02101,"734,49884-0637-74 ",.02)
 ;;49884-0637-74
 ;;9002226.02101,"734,49884-0638-74 ",.01)
 ;;49884-0638-74
 ;;9002226.02101,"734,49884-0638-74 ",.02)
 ;;49884-0638-74
 ;;9002226.02101,"734,49884-0639-05 ",.01)
 ;;49884-0639-05
 ;;9002226.02101,"734,49884-0639-05 ",.02)
 ;;49884-0639-05
 ;;9002226.02101,"734,49884-0684-01 ",.01)
 ;;49884-0684-01
 ;;9002226.02101,"734,49884-0684-01 ",.02)
 ;;49884-0684-01
 ;;9002226.02101,"734,49884-0726-01 ",.01)
 ;;49884-0726-01
 ;;9002226.02101,"734,49884-0726-01 ",.02)
 ;;49884-0726-01
 ;;9002226.02101,"734,49884-0727-03 ",.01)
 ;;49884-0727-03
 ;;9002226.02101,"734,49884-0727-03 ",.02)
 ;;49884-0727-03
 ;;9002226.02101,"734,49884-0727-04 ",.01)
 ;;49884-0727-04
 ;;9002226.02101,"734,49884-0727-04 ",.02)
 ;;49884-0727-04
 ;;9002226.02101,"734,49999-0001-28 ",.01)
 ;;49999-0001-28
 ;;9002226.02101,"734,49999-0001-28 ",.02)
 ;;49999-0001-28
 ;;9002226.02101,"734,49999-0001-40 ",.01)
 ;;49999-0001-40
 ;;9002226.02101,"734,49999-0001-40 ",.02)
 ;;49999-0001-40
 ;;9002226.02101,"734,49999-0002-06 ",.01)
 ;;49999-0002-06
 ;;9002226.02101,"734,49999-0002-06 ",.02)
 ;;49999-0002-06
 ;;9002226.02101,"734,49999-0002-20 ",.01)
 ;;49999-0002-20
 ;;9002226.02101,"734,49999-0002-20 ",.02)
 ;;49999-0002-20
 ;;9002226.02101,"734,49999-0002-24 ",.01)
 ;;49999-0002-24
 ;;9002226.02101,"734,49999-0002-24 ",.02)
 ;;49999-0002-24
 ;;9002226.02101,"734,49999-0002-30 ",.01)
 ;;49999-0002-30
 ;;9002226.02101,"734,49999-0002-30 ",.02)
 ;;49999-0002-30
 ;;9002226.02101,"734,49999-0002-40 ",.01)
 ;;49999-0002-40
 ;;9002226.02101,"734,49999-0002-40 ",.02)
 ;;49999-0002-40
 ;;9002226.02101,"734,49999-0007-00 ",.01)
 ;;49999-0007-00
 ;;9002226.02101,"734,49999-0007-00 ",.02)
 ;;49999-0007-00
 ;;9002226.02101,"734,49999-0007-10 ",.01)
 ;;49999-0007-10
 ;;9002226.02101,"734,49999-0007-10 ",.02)
 ;;49999-0007-10
 ;;9002226.02101,"734,49999-0007-12 ",.01)
 ;;49999-0007-12
 ;;9002226.02101,"734,49999-0007-12 ",.02)
 ;;49999-0007-12
 ;;9002226.02101,"734,49999-0007-14 ",.01)
 ;;49999-0007-14
 ;;9002226.02101,"734,49999-0007-14 ",.02)
 ;;49999-0007-14
 ;;9002226.02101,"734,49999-0007-15 ",.01)
 ;;49999-0007-15
 ;;9002226.02101,"734,49999-0007-15 ",.02)
 ;;49999-0007-15
 ;;9002226.02101,"734,49999-0007-20 ",.01)
 ;;49999-0007-20
 ;;9002226.02101,"734,49999-0007-20 ",.02)
 ;;49999-0007-20
 ;;9002226.02101,"734,49999-0007-21 ",.01)
 ;;49999-0007-21
 ;;9002226.02101,"734,49999-0007-21 ",.02)
 ;;49999-0007-21
 ;;9002226.02101,"734,49999-0007-28 ",.01)
 ;;49999-0007-28
 ;;9002226.02101,"734,49999-0007-28 ",.02)
 ;;49999-0007-28
 ;;9002226.02101,"734,49999-0007-30 ",.01)
 ;;49999-0007-30
 ;;9002226.02101,"734,49999-0007-30 ",.02)
 ;;49999-0007-30
 ;;9002226.02101,"734,49999-0007-40 ",.01)
 ;;49999-0007-40
 ;;9002226.02101,"734,49999-0007-40 ",.02)
 ;;49999-0007-40
 ;;9002226.02101,"734,49999-0007-60 ",.01)
 ;;49999-0007-60
 ;;9002226.02101,"734,49999-0007-60 ",.02)
 ;;49999-0007-60
 ;;9002226.02101,"734,49999-0007-90 ",.01)
 ;;49999-0007-90
 ;;9002226.02101,"734,49999-0007-90 ",.02)
 ;;49999-0007-90
 ;;9002226.02101,"734,49999-0011-00 ",.01)
 ;;49999-0011-00
 ;;9002226.02101,"734,49999-0011-00 ",.02)
 ;;49999-0011-00
 ;;9002226.02101,"734,49999-0011-04 ",.01)
 ;;49999-0011-04
 ;;9002226.02101,"734,49999-0011-04 ",.02)
 ;;49999-0011-04
 ;;9002226.02101,"734,49999-0011-15 ",.01)
 ;;49999-0011-15
 ;;9002226.02101,"734,49999-0011-15 ",.02)
 ;;49999-0011-15
 ;;9002226.02101,"734,49999-0011-18 ",.01)
 ;;49999-0011-18
 ;;9002226.02101,"734,49999-0011-18 ",.02)
 ;;49999-0011-18
 ;;9002226.02101,"734,49999-0011-20 ",.01)
 ;;49999-0011-20
 ;;9002226.02101,"734,49999-0011-20 ",.02)
 ;;49999-0011-20
 ;;9002226.02101,"734,49999-0011-28 ",.01)
 ;;49999-0011-28
 ;;9002226.02101,"734,49999-0011-28 ",.02)
 ;;49999-0011-28
 ;;9002226.02101,"734,49999-0012-00 ",.01)
 ;;49999-0012-00
 ;;9002226.02101,"734,49999-0012-00 ",.02)
 ;;49999-0012-00
 ;;9002226.02101,"734,49999-0012-14 ",.01)
 ;;49999-0012-14
 ;;9002226.02101,"734,49999-0012-14 ",.02)
 ;;49999-0012-14
 ;;9002226.02101,"734,49999-0012-20 ",.01)
 ;;49999-0012-20
 ;;9002226.02101,"734,49999-0012-20 ",.02)
 ;;49999-0012-20
 ;;9002226.02101,"734,49999-0012-28 ",.01)
 ;;49999-0012-28
 ;;9002226.02101,"734,49999-0012-28 ",.02)
 ;;49999-0012-28
 ;;9002226.02101,"734,49999-0012-30 ",.01)
 ;;49999-0012-30
 ;;9002226.02101,"734,49999-0012-30 ",.02)
 ;;49999-0012-30
 ;;9002226.02101,"734,49999-0012-40 ",.01)
 ;;49999-0012-40
 ;;9002226.02101,"734,49999-0012-40 ",.02)
 ;;49999-0012-40
 ;;9002226.02101,"734,49999-0014-00 ",.01)
 ;;49999-0014-00
 ;;9002226.02101,"734,49999-0014-00 ",.02)
 ;;49999-0014-00
 ;;9002226.02101,"734,49999-0014-10 ",.01)
 ;;49999-0014-10
 ;;9002226.02101,"734,49999-0014-10 ",.02)
 ;;49999-0014-10
 ;;9002226.02101,"734,49999-0014-21 ",.01)
 ;;49999-0014-21
 ;;9002226.02101,"734,49999-0014-21 ",.02)
 ;;49999-0014-21
 ;;9002226.02101,"734,49999-0014-30 ",.01)
 ;;49999-0014-30
 ;;9002226.02101,"734,49999-0014-30 ",.02)
 ;;49999-0014-30
 ;;9002226.02101,"734,49999-0015-00 ",.01)
 ;;49999-0015-00
 ;;9002226.02101,"734,49999-0015-00 ",.02)
 ;;49999-0015-00
 ;;9002226.02101,"734,49999-0015-06 ",.01)
 ;;49999-0015-06
 ;;9002226.02101,"734,49999-0015-06 ",.02)
 ;;49999-0015-06
 ;;9002226.02101,"734,49999-0015-08 ",.01)
 ;;49999-0015-08
 ;;9002226.02101,"734,49999-0015-08 ",.02)
 ;;49999-0015-08
 ;;9002226.02101,"734,49999-0015-12 ",.01)
 ;;49999-0015-12
 ;;9002226.02101,"734,49999-0015-12 ",.02)
 ;;49999-0015-12
 ;;9002226.02101,"734,49999-0015-14 ",.01)
 ;;49999-0015-14
 ;;9002226.02101,"734,49999-0015-14 ",.02)
 ;;49999-0015-14
 ;;9002226.02101,"734,49999-0015-15 ",.01)
 ;;49999-0015-15
 ;;9002226.02101,"734,49999-0015-15 ",.02)
 ;;49999-0015-15
 ;;9002226.02101,"734,49999-0015-20 ",.01)
 ;;49999-0015-20
 ;;9002226.02101,"734,49999-0015-20 ",.02)
 ;;49999-0015-20
 ;;9002226.02101,"734,49999-0015-21 ",.01)
 ;;49999-0015-21
 ;;9002226.02101,"734,49999-0015-21 ",.02)
 ;;49999-0015-21
 ;;9002226.02101,"734,49999-0015-28 ",.01)
 ;;49999-0015-28
 ;;9002226.02101,"734,49999-0015-28 ",.02)
 ;;49999-0015-28
 ;;9002226.02101,"734,49999-0015-30 ",.01)
 ;;49999-0015-30
 ;;9002226.02101,"734,49999-0015-30 ",.02)
 ;;49999-0015-30
 ;;9002226.02101,"734,49999-0015-40 ",.01)
 ;;49999-0015-40
 ;;9002226.02101,"734,49999-0015-40 ",.02)
 ;;49999-0015-40
 ;;9002226.02101,"734,49999-0015-42 ",.01)
 ;;49999-0015-42
 ;;9002226.02101,"734,49999-0015-42 ",.02)
 ;;49999-0015-42
 ;;9002226.02101,"734,49999-0015-45 ",.01)
 ;;49999-0015-45
 ;;9002226.02101,"734,49999-0015-45 ",.02)
 ;;49999-0015-45
 ;;9002226.02101,"734,49999-0016-04 ",.01)
 ;;49999-0016-04
 ;;9002226.02101,"734,49999-0016-04 ",.02)
 ;;49999-0016-04
 ;;9002226.02101,"734,49999-0016-21 ",.01)
 ;;49999-0016-21
 ;;9002226.02101,"734,49999-0016-21 ",.02)
 ;;49999-0016-21
 ;;9002226.02101,"734,49999-0016-30 ",.01)
 ;;49999-0016-30
 ;;9002226.02101,"734,49999-0016-30 ",.02)
 ;;49999-0016-30
 ;;9002226.02101,"734,49999-0016-40 ",.01)
 ;;49999-0016-40
 ;;9002226.02101,"734,49999-0016-40 ",.02)
 ;;49999-0016-40
 ;;9002226.02101,"734,49999-0020-00 ",.01)
 ;;49999-0020-00
 ;;9002226.02101,"734,49999-0020-00 ",.02)
 ;;49999-0020-00
 ;;9002226.02101,"734,49999-0020-14 ",.01)
 ;;49999-0020-14
 ;;9002226.02101,"734,49999-0020-14 ",.02)
 ;;49999-0020-14
 ;;9002226.02101,"734,49999-0020-20 ",.01)
 ;;49999-0020-20
 ;;9002226.02101,"734,49999-0020-20 ",.02)
 ;;49999-0020-20
 ;;9002226.02101,"734,49999-0020-28 ",.01)
 ;;49999-0020-28
 ;;9002226.02101,"734,49999-0020-28 ",.02)
 ;;49999-0020-28
 ;;9002226.02101,"734,49999-0020-30 ",.01)
 ;;49999-0020-30
 ;;9002226.02101,"734,49999-0020-30 ",.02)
 ;;49999-0020-30
