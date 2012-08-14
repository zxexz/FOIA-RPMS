BGP9SXAE ; IHS/CMI/LAB - AB-CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"723,00083-0003-30 ",.02)
 ;;00083-0003-30
 ;;9002226.02101,"723,00083-0007-30 ",.01)
 ;;00083-0007-30
 ;;9002226.02101,"723,00083-0007-30 ",.02)
 ;;00083-0007-30
 ;;9002226.02101,"723,00083-0016-30 ",.01)
 ;;00083-0016-30
 ;;9002226.02101,"723,00083-0016-30 ",.02)
 ;;00083-0016-30
 ;;9002226.02101,"723,00083-0034-30 ",.01)
 ;;00083-0034-30
 ;;9002226.02101,"723,00083-0034-30 ",.02)
 ;;00083-0034-30
 ;;9002226.02101,"723,00086-0047-10 ",.01)
 ;;00086-0047-10
 ;;9002226.02101,"723,00086-0047-10 ",.02)
 ;;00086-0047-10
 ;;9002226.02101,"723,00086-0048-10 ",.01)
 ;;00086-0048-10
 ;;9002226.02101,"723,00086-0048-10 ",.02)
 ;;00086-0048-10
 ;;9002226.02101,"723,00086-0048-90 ",.01)
 ;;00086-0048-90
 ;;9002226.02101,"723,00086-0048-90 ",.02)
 ;;00086-0048-90
 ;;9002226.02101,"723,00093-9472-01 ",.01)
 ;;00093-9472-01
 ;;9002226.02101,"723,00093-9472-01 ",.02)
 ;;00093-9472-01
 ;;9002226.02101,"723,00093-9524-01 ",.01)
 ;;00093-9524-01
 ;;9002226.02101,"723,00093-9524-01 ",.02)
 ;;00093-9524-01
 ;;9002226.02101,"723,00093-9541-01 ",.01)
 ;;00093-9541-01
 ;;9002226.02101,"723,00093-9541-01 ",.02)
 ;;00093-9541-01
 ;;9002226.02101,"723,00093-9577-01 ",.01)
 ;;00093-9577-01
 ;;9002226.02101,"723,00093-9577-01 ",.02)
 ;;00093-9577-01
 ;;9002226.02101,"723,00144-0740-01 ",.01)
 ;;00144-0740-01
 ;;9002226.02101,"723,00144-0740-01 ",.02)
 ;;00144-0740-01
 ;;9002226.02101,"723,00147-0102-20 ",.01)
 ;;00147-0102-20
 ;;9002226.02101,"723,00147-0102-20 ",.02)
 ;;00147-0102-20
 ;;9002226.02101,"723,00147-0103-10 ",.01)
 ;;00147-0103-10
 ;;9002226.02101,"723,00147-0103-10 ",.02)
 ;;00147-0103-10
 ;;9002226.02101,"723,00147-0103-20 ",.01)
 ;;00147-0103-20
 ;;9002226.02101,"723,00147-0103-20 ",.02)
 ;;00147-0103-20
 ;;9002226.02101,"723,00147-0103-30 ",.01)
 ;;00147-0103-30
 ;;9002226.02101,"723,00147-0103-30 ",.02)
 ;;00147-0103-30
 ;;9002226.02101,"723,00147-0105-10 ",.01)
 ;;00147-0105-10
 ;;9002226.02101,"723,00147-0105-10 ",.02)
 ;;00147-0105-10
 ;;9002226.02101,"723,00147-0105-20 ",.01)
 ;;00147-0105-20
 ;;9002226.02101,"723,00147-0105-20 ",.02)
 ;;00147-0105-20
 ;;9002226.02101,"723,00147-0105-30 ",.01)
 ;;00147-0105-30
 ;;9002226.02101,"723,00147-0105-30 ",.02)
 ;;00147-0105-30
 ;;9002226.02101,"723,00147-0106-10 ",.01)
 ;;00147-0106-10
 ;;9002226.02101,"723,00147-0106-10 ",.02)
 ;;00147-0106-10
 ;;9002226.02101,"723,00147-0106-20 ",.01)
 ;;00147-0106-20
 ;;9002226.02101,"723,00147-0106-20 ",.02)
 ;;00147-0106-20
 ;;9002226.02101,"723,00147-0106-30 ",.01)
 ;;00147-0106-30
 ;;9002226.02101,"723,00147-0106-30 ",.02)
 ;;00147-0106-30
 ;;9002226.02101,"723,00147-0107-10 ",.01)
 ;;00147-0107-10
 ;;9002226.02101,"723,00147-0107-10 ",.02)
 ;;00147-0107-10
 ;;9002226.02101,"723,00147-0107-20 ",.01)
 ;;00147-0107-20
 ;;9002226.02101,"723,00147-0107-20 ",.02)
 ;;00147-0107-20
 ;;9002226.02101,"723,00147-0107-30 ",.01)
 ;;00147-0107-30
 ;;9002226.02101,"723,00147-0107-30 ",.02)
 ;;00147-0107-30
 ;;9002226.02101,"723,00147-0109-10 ",.01)
 ;;00147-0109-10
 ;;9002226.02101,"723,00147-0109-10 ",.02)
 ;;00147-0109-10
 ;;9002226.02101,"723,00147-0109-20 ",.01)
 ;;00147-0109-20
 ;;9002226.02101,"723,00147-0109-20 ",.02)
 ;;00147-0109-20
 ;;9002226.02101,"723,00147-0132-20 ",.01)
 ;;00147-0132-20
 ;;9002226.02101,"723,00147-0132-20 ",.02)
 ;;00147-0132-20
 ;;9002226.02101,"723,00147-0135-20 ",.01)
 ;;00147-0135-20
 ;;9002226.02101,"723,00147-0135-20 ",.02)
 ;;00147-0135-20
 ;;9002226.02101,"723,00147-0136-10 ",.01)
 ;;00147-0136-10
 ;;9002226.02101,"723,00147-0136-10 ",.02)
 ;;00147-0136-10
 ;;9002226.02101,"723,00147-0136-20 ",.01)
 ;;00147-0136-20
 ;;9002226.02101,"723,00147-0136-20 ",.02)
 ;;00147-0136-20
 ;;9002226.02101,"723,00147-0198-10 ",.01)
 ;;00147-0198-10
 ;;9002226.02101,"723,00147-0198-10 ",.02)
 ;;00147-0198-10
 ;;9002226.02101,"723,00147-0198-20 ",.01)
 ;;00147-0198-20
 ;;9002226.02101,"723,00147-0198-20 ",.02)
 ;;00147-0198-20
 ;;9002226.02101,"723,00147-0201-10 ",.01)
 ;;00147-0201-10
 ;;9002226.02101,"723,00147-0201-10 ",.02)
 ;;00147-0201-10
 ;;9002226.02101,"723,00147-0201-20 ",.01)
 ;;00147-0201-20
 ;;9002226.02101,"723,00147-0201-20 ",.02)
 ;;00147-0201-20
 ;;9002226.02101,"723,00147-0202-10 ",.01)
 ;;00147-0202-10
 ;;9002226.02101,"723,00147-0202-10 ",.02)
 ;;00147-0202-10
 ;;9002226.02101,"723,00147-0202-20 ",.01)
 ;;00147-0202-20
 ;;9002226.02101,"723,00147-0202-20 ",.02)
 ;;00147-0202-20
 ;;9002226.02101,"723,00147-0231-10 ",.01)
 ;;00147-0231-10
 ;;9002226.02101,"723,00147-0231-10 ",.02)
 ;;00147-0231-10
 ;;9002226.02101,"723,00147-0231-20 ",.01)
 ;;00147-0231-20
 ;;9002226.02101,"723,00147-0231-20 ",.02)
 ;;00147-0231-20
 ;;9002226.02101,"723,00147-0232-10 ",.01)
 ;;00147-0232-10
 ;;9002226.02101,"723,00147-0232-10 ",.02)
 ;;00147-0232-10
 ;;9002226.02101,"723,00147-0232-20 ",.01)
 ;;00147-0232-20
 ;;9002226.02101,"723,00147-0232-20 ",.02)
 ;;00147-0232-20
 ;;9002226.02101,"723,00147-0234-10 ",.01)
 ;;00147-0234-10
 ;;9002226.02101,"723,00147-0234-10 ",.02)
 ;;00147-0234-10
 ;;9002226.02101,"723,00147-0234-20 ",.01)
 ;;00147-0234-20
 ;;9002226.02101,"723,00147-0234-20 ",.02)
 ;;00147-0234-20
 ;;9002226.02101,"723,00147-0235-10 ",.01)
 ;;00147-0235-10