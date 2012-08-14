BGP14C19 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1105,68180-0481-02 ",.01)
 ;;68180-0481-02
 ;;9002226.02101,"1105,68180-0481-02 ",.02)
 ;;68180-0481-02
 ;;9002226.02101,"1105,68180-0481-03 ",.01)
 ;;68180-0481-03
 ;;9002226.02101,"1105,68180-0481-03 ",.02)
 ;;68180-0481-03
 ;;9002226.02101,"1105,68180-0482-06 ",.01)
 ;;68180-0482-06
 ;;9002226.02101,"1105,68180-0482-06 ",.02)
 ;;68180-0482-06
 ;;9002226.02101,"1105,68180-0482-09 ",.01)
 ;;68180-0482-09
 ;;9002226.02101,"1105,68180-0482-09 ",.02)
 ;;68180-0482-09
 ;;9002226.02101,"1105,68180-0485-02 ",.01)
 ;;68180-0485-02
 ;;9002226.02101,"1105,68180-0485-02 ",.02)
 ;;68180-0485-02
 ;;9002226.02101,"1105,68180-0485-09 ",.01)
 ;;68180-0485-09
 ;;9002226.02101,"1105,68180-0485-09 ",.02)
 ;;68180-0485-09
 ;;9002226.02101,"1105,68180-0486-02 ",.01)
 ;;68180-0486-02
 ;;9002226.02101,"1105,68180-0486-02 ",.02)
 ;;68180-0486-02
 ;;9002226.02101,"1105,68180-0486-09 ",.01)
 ;;68180-0486-09
 ;;9002226.02101,"1105,68180-0486-09 ",.02)
 ;;68180-0486-09
 ;;9002226.02101,"1105,68180-0487-02 ",.01)
 ;;68180-0487-02
 ;;9002226.02101,"1105,68180-0487-02 ",.02)
 ;;68180-0487-02
 ;;9002226.02101,"1105,68180-0487-09 ",.01)
 ;;68180-0487-09
 ;;9002226.02101,"1105,68180-0487-09 ",.02)
 ;;68180-0487-09
 ;;9002226.02101,"1105,68180-0488-02 ",.01)
 ;;68180-0488-02
 ;;9002226.02101,"1105,68180-0488-02 ",.02)
 ;;68180-0488-02
 ;;9002226.02101,"1105,68180-0488-09 ",.01)
 ;;68180-0488-09
 ;;9002226.02101,"1105,68180-0488-09 ",.02)
 ;;68180-0488-09
 ;;9002226.02101,"1105,68258-1040-01 ",.01)
 ;;68258-1040-01
 ;;9002226.02101,"1105,68258-1040-01 ",.02)
 ;;68258-1040-01
 ;;9002226.02101,"1105,68258-1057-01 ",.01)
 ;;68258-1057-01
 ;;9002226.02101,"1105,68258-1057-01 ",.02)
 ;;68258-1057-01
 ;;9002226.02101,"1105,68258-6000-03 ",.01)
 ;;68258-6000-03
 ;;9002226.02101,"1105,68258-6000-03 ",.02)
 ;;68258-6000-03
 ;;9002226.02101,"1105,68258-6000-09 ",.01)
 ;;68258-6000-09
 ;;9002226.02101,"1105,68258-6000-09 ",.02)
 ;;68258-6000-09
 ;;9002226.02101,"1105,68258-6001-03 ",.01)
 ;;68258-6001-03
 ;;9002226.02101,"1105,68258-6001-03 ",.02)
 ;;68258-6001-03
 ;;9002226.02101,"1105,68258-6001-09 ",.01)
 ;;68258-6001-09
 ;;9002226.02101,"1105,68258-6001-09 ",.02)
 ;;68258-6001-09
 ;;9002226.02101,"1105,68258-6002-03 ",.01)
 ;;68258-6002-03
 ;;9002226.02101,"1105,68258-6002-03 ",.02)
 ;;68258-6002-03
 ;;9002226.02101,"1105,68258-6002-09 ",.01)
 ;;68258-6002-09
 ;;9002226.02101,"1105,68258-6002-09 ",.02)
 ;;68258-6002-09
 ;;9002226.02101,"1105,68258-6009-03 ",.01)
 ;;68258-6009-03
 ;;9002226.02101,"1105,68258-6009-03 ",.02)
 ;;68258-6009-03
 ;;9002226.02101,"1105,68258-6013-03 ",.01)
 ;;68258-6013-03
 ;;9002226.02101,"1105,68258-6013-03 ",.02)
 ;;68258-6013-03
 ;;9002226.02101,"1105,68258-9001-01 ",.01)
 ;;68258-9001-01
 ;;9002226.02101,"1105,68258-9001-01 ",.02)
 ;;68258-9001-01
 ;;9002226.02101,"1105,68258-9128-01 ",.01)
 ;;68258-9128-01
 ;;9002226.02101,"1105,68258-9128-01 ",.02)
 ;;68258-9128-01
 ;;9002226.02101,"1105,68258-9154-01 ",.01)
 ;;68258-9154-01
 ;;9002226.02101,"1105,68258-9154-01 ",.02)
 ;;68258-9154-01
 ;;9002226.02101,"1105,68382-0065-05 ",.01)
 ;;68382-0065-05
 ;;9002226.02101,"1105,68382-0065-05 ",.02)
 ;;68382-0065-05
 ;;9002226.02101,"1105,68382-0065-06 ",.01)
 ;;68382-0065-06
 ;;9002226.02101,"1105,68382-0065-06 ",.02)
 ;;68382-0065-06
 ;;9002226.02101,"1105,68382-0065-10 ",.01)
 ;;68382-0065-10
 ;;9002226.02101,"1105,68382-0065-10 ",.02)
 ;;68382-0065-10
 ;;9002226.02101,"1105,68382-0065-14 ",.01)
 ;;68382-0065-14
 ;;9002226.02101,"1105,68382-0065-14 ",.02)
 ;;68382-0065-14
 ;;9002226.02101,"1105,68382-0065-16 ",.01)
 ;;68382-0065-16
 ;;9002226.02101,"1105,68382-0065-16 ",.02)
 ;;68382-0065-16
 ;;9002226.02101,"1105,68382-0066-05 ",.01)
 ;;68382-0066-05
 ;;9002226.02101,"1105,68382-0066-05 ",.02)
 ;;68382-0066-05
 ;;9002226.02101,"1105,68382-0066-06 ",.01)
 ;;68382-0066-06
 ;;9002226.02101,"1105,68382-0066-06 ",.02)
 ;;68382-0066-06
 ;;9002226.02101,"1105,68382-0066-10 ",.01)
 ;;68382-0066-10
 ;;9002226.02101,"1105,68382-0066-10 ",.02)
 ;;68382-0066-10
 ;;9002226.02101,"1105,68382-0066-14 ",.01)
 ;;68382-0066-14
 ;;9002226.02101,"1105,68382-0066-14 ",.02)
 ;;68382-0066-14
 ;;9002226.02101,"1105,68382-0066-16 ",.01)
 ;;68382-0066-16
 ;;9002226.02101,"1105,68382-0066-16 ",.02)
 ;;68382-0066-16
 ;;9002226.02101,"1105,68382-0066-24 ",.01)
 ;;68382-0066-24
 ;;9002226.02101,"1105,68382-0066-24 ",.02)
 ;;68382-0066-24
 ;;9002226.02101,"1105,68382-0067-05 ",.01)
 ;;68382-0067-05
 ;;9002226.02101,"1105,68382-0067-05 ",.02)
 ;;68382-0067-05
 ;;9002226.02101,"1105,68382-0067-06 ",.01)
 ;;68382-0067-06
 ;;9002226.02101,"1105,68382-0067-06 ",.02)
 ;;68382-0067-06
 ;;9002226.02101,"1105,68382-0067-10 ",.01)
 ;;68382-0067-10
 ;;9002226.02101,"1105,68382-0067-10 ",.02)
 ;;68382-0067-10
 ;;9002226.02101,"1105,68382-0067-14 ",.01)
 ;;68382-0067-14
 ;;9002226.02101,"1105,68382-0067-14 ",.02)
 ;;68382-0067-14
 ;;9002226.02101,"1105,68382-0067-16 ",.01)
 ;;68382-0067-16
 ;;9002226.02101,"1105,68382-0067-16 ",.02)
 ;;68382-0067-16
 ;;9002226.02101,"1105,68382-0067-24 ",.01)
 ;;68382-0067-24
 ;;9002226.02101,"1105,68382-0067-24 ",.02)
 ;;68382-0067-24
 ;;9002226.02101,"1105,68382-0068-05 ",.01)
 ;;68382-0068-05
 ;;9002226.02101,"1105,68382-0068-05 ",.02)
 ;;68382-0068-05
 ;;9002226.02101,"1105,68382-0068-06 ",.01)
 ;;68382-0068-06
 ;;9002226.02101,"1105,68382-0068-06 ",.02)
 ;;68382-0068-06
 ;;9002226.02101,"1105,68382-0068-10 ",.01)
 ;;68382-0068-10
 ;;9002226.02101,"1105,68382-0068-10 ",.02)
 ;;68382-0068-10
 ;;9002226.02101,"1105,68382-0068-14 ",.01)
 ;;68382-0068-14
 ;;9002226.02101,"1105,68382-0068-14 ",.02)
 ;;68382-0068-14
 ;;9002226.02101,"1105,68382-0068-16 ",.01)
 ;;68382-0068-16
 ;;9002226.02101,"1105,68382-0068-16 ",.02)
 ;;68382-0068-16
 ;;9002226.02101,"1105,68382-0068-40 ",.01)
 ;;68382-0068-40
 ;;9002226.02101,"1105,68382-0068-40 ",.02)
 ;;68382-0068-40
 ;;9002226.02101,"1105,68382-0069-05 ",.01)
 ;;68382-0069-05
 ;;9002226.02101,"1105,68382-0069-05 ",.02)
 ;;68382-0069-05
 ;;9002226.02101,"1105,68382-0069-06 ",.01)
 ;;68382-0069-06
 ;;9002226.02101,"1105,68382-0069-06 ",.02)
 ;;68382-0069-06
 ;;9002226.02101,"1105,68382-0069-10 ",.01)
 ;;68382-0069-10
 ;;9002226.02101,"1105,68382-0069-10 ",.02)
 ;;68382-0069-10
 ;;9002226.02101,"1105,68382-0069-14 ",.01)
 ;;68382-0069-14
 ;;9002226.02101,"1105,68382-0069-14 ",.02)
 ;;68382-0069-14
 ;;9002226.02101,"1105,68382-0069-16 ",.01)
 ;;68382-0069-16
 ;;9002226.02101,"1105,68382-0069-16 ",.02)
 ;;68382-0069-16
 ;;9002226.02101,"1105,68382-0070-16 ",.01)
 ;;68382-0070-16
 ;;9002226.02101,"1105,68382-0070-16 ",.02)
 ;;68382-0070-16
 ;;9002226.02101,"1105,68382-0071-16 ",.01)
 ;;68382-0071-16
 ;;9002226.02101,"1105,68382-0071-16 ",.02)
 ;;68382-0071-16
 ;;9002226.02101,"1105,68382-0072-16 ",.01)
 ;;68382-0072-16
 ;;9002226.02101,"1105,68382-0072-16 ",.02)
 ;;68382-0072-16
 ;;9002226.02101,"1105,68382-0073-16 ",.01)
 ;;68382-0073-16
 ;;9002226.02101,"1105,68382-0073-16 ",.02)
 ;;68382-0073-16
 ;;9002226.02101,"1105,68462-0195-05 ",.01)
 ;;68462-0195-05
 ;;9002226.02101,"1105,68462-0195-05 ",.02)
 ;;68462-0195-05
 ;;9002226.02101,"1105,68462-0195-90 ",.01)
 ;;68462-0195-90
 ;;9002226.02101,"1105,68462-0195-90 ",.02)
 ;;68462-0195-90
 ;;9002226.02101,"1105,68462-0196-05 ",.01)
 ;;68462-0196-05
 ;;9002226.02101,"1105,68462-0196-05 ",.02)
 ;;68462-0196-05
 ;;9002226.02101,"1105,68462-0196-90 ",.01)
 ;;68462-0196-90
 ;;9002226.02101,"1105,68462-0196-90 ",.02)
 ;;68462-0196-90
 ;;9002226.02101,"1105,68462-0197-05 ",.01)
 ;;68462-0197-05
 ;;9002226.02101,"1105,68462-0197-05 ",.02)
 ;;68462-0197-05
 ;;9002226.02101,"1105,68462-0197-90 ",.01)
 ;;68462-0197-90
 ;;9002226.02101,"1105,68462-0197-90 ",.02)
 ;;68462-0197-90
 ;;9002226.02101,"1105,68462-0198-05 ",.01)
 ;;68462-0198-05
 ;;9002226.02101,"1105,68462-0198-05 ",.02)
 ;;68462-0198-05
 ;;9002226.02101,"1105,68462-0198-90 ",.01)
 ;;68462-0198-90
 ;;9002226.02101,"1105,68462-0198-90 ",.02)
 ;;68462-0198-90
 ;;9002226.02101,"1105,68645-0262-54 ",.01)
 ;;68645-0262-54
 ;;9002226.02101,"1105,68645-0262-54 ",.02)
 ;;68645-0262-54