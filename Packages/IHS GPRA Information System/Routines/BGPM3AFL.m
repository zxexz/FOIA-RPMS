BGPM3AFL ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"791,65841006410 ",.02)
 ;;65841006410
 ;;9002226.02101,"791,66267026820 ",.01)
 ;;66267026820
 ;;9002226.02101,"791,66267026820 ",.02)
 ;;66267026820
 ;;9002226.02101,"791,66267026830 ",.01)
 ;;66267026830
 ;;9002226.02101,"791,66267026830 ",.02)
 ;;66267026830
 ;;9002226.02101,"791,66267027730 ",.01)
 ;;66267027730
 ;;9002226.02101,"791,66267027730 ",.02)
 ;;66267027730
 ;;9002226.02101,"791,66267067230 ",.01)
 ;;66267067230
 ;;9002226.02101,"791,66267067230 ",.02)
 ;;66267067230
 ;;9002226.02101,"791,66336024930 ",.01)
 ;;66336024930
 ;;9002226.02101,"791,66336024930 ",.02)
 ;;66336024930
 ;;9002226.02101,"791,66336025030 ",.01)
 ;;66336025030
 ;;9002226.02101,"791,66336025030 ",.02)
 ;;66336025030
 ;;9002226.02101,"791,66336025130 ",.01)
 ;;66336025130
 ;;9002226.02101,"791,66336025130 ",.02)
 ;;66336025130
 ;;9002226.02101,"791,66336025230 ",.01)
 ;;66336025230
 ;;9002226.02101,"791,66336025230 ",.02)
 ;;66336025230
 ;;9002226.02101,"791,67544031815 ",.01)
 ;;67544031815
 ;;9002226.02101,"791,67544031815 ",.02)
 ;;67544031815
 ;;9002226.02101,"791,67544031830 ",.01)
 ;;67544031830
 ;;9002226.02101,"791,67544031830 ",.02)
 ;;67544031830
 ;;9002226.02101,"791,67544031831 ",.01)
 ;;67544031831
 ;;9002226.02101,"791,67544031831 ",.02)
 ;;67544031831
 ;;9002226.02101,"791,67544031845 ",.01)
 ;;67544031845
 ;;9002226.02101,"791,67544031845 ",.02)
 ;;67544031845
 ;;9002226.02101,"791,67544031853 ",.01)
 ;;67544031853
 ;;9002226.02101,"791,67544031853 ",.02)
 ;;67544031853
 ;;9002226.02101,"791,67544085932 ",.01)
 ;;67544085932
 ;;9002226.02101,"791,67544085932 ",.02)
 ;;67544085932
 ;;9002226.02101,"791,67544086032 ",.01)
 ;;67544086032
 ;;9002226.02101,"791,67544086032 ",.02)
 ;;67544086032
 ;;9002226.02101,"791,67544091719 ",.01)
 ;;67544091719
 ;;9002226.02101,"791,67544091719 ",.02)
 ;;67544091719
 ;;9002226.02101,"791,67544097132 ",.01)
 ;;67544097132
 ;;9002226.02101,"791,67544097132 ",.02)
 ;;67544097132
 ;;9002226.02101,"791,67544099030 ",.01)
 ;;67544099030
 ;;9002226.02101,"791,67544099030 ",.02)
 ;;67544099030
 ;;9002226.02101,"791,68071020230 ",.01)
 ;;68071020230
 ;;9002226.02101,"791,68071020230 ",.02)
 ;;68071020230
 ;;9002226.02101,"791,68080402777 ",.01)
 ;;68080402777
 ;;9002226.02101,"791,68080402777 ",.02)
 ;;68080402777
 ;;9002226.02101,"791,68080414677 ",.01)
 ;;68080414677
 ;;9002226.02101,"791,68080414677 ",.02)
 ;;68080414677
 ;;9002226.02101,"791,68080414877 ",.01)
 ;;68080414877
 ;;9002226.02101,"791,68080414877 ",.02)
 ;;68080414877
 ;;9002226.02101,"791,68084002701 ",.01)
 ;;68084002701
 ;;9002226.02101,"791,68084002701 ",.02)
 ;;68084002701
 ;;9002226.02101,"791,68084002711 ",.01)
 ;;68084002711
 ;;9002226.02101,"791,68084002711 ",.02)
 ;;68084002711
 ;;9002226.02101,"791,68084014677 ",.01)
 ;;68084014677
 ;;9002226.02101,"791,68084014677 ",.02)
 ;;68084014677
 ;;9002226.02101,"791,68084402777 ",.01)
 ;;68084402777
 ;;9002226.02101,"791,68084402777 ",.02)
 ;;68084402777
 ;;9002226.02101,"791,68084414777 ",.01)
 ;;68084414777
 ;;9002226.02101,"791,68084414777 ",.02)
 ;;68084414777
 ;;9002226.02101,"791,68115035930 ",.01)
 ;;68115035930
 ;;9002226.02101,"791,68115035930 ",.02)
 ;;68115035930
 ;;9002226.02101,"791,68115039930 ",.01)
 ;;68115039930
 ;;9002226.02101,"791,68115039930 ",.02)
 ;;68115039930
 ;;9002226.02101,"791,68115065900 ",.01)
 ;;68115065900
 ;;9002226.02101,"791,68115065900 ",.02)
 ;;68115065900
 ;;9002226.02101,"791,68382005201 ",.01)
 ;;68382005201
 ;;9002226.02101,"791,68382005201 ",.02)
 ;;68382005201
 ;;9002226.02101,"791,68382005210 ",.01)
 ;;68382005210
 ;;9002226.02101,"791,68382005210 ",.02)
 ;;68382005210
 ;;9002226.02101,"791,68382005301 ",.01)
 ;;68382005301
 ;;9002226.02101,"791,68382005301 ",.02)
 ;;68382005301
 ;;9002226.02101,"791,68382005310 ",.01)
 ;;68382005310
 ;;9002226.02101,"791,68382005310 ",.02)
 ;;68382005310
 ;;9002226.02101,"791,68382005401 ",.01)
 ;;68382005401
 ;;9002226.02101,"791,68382005401 ",.02)
 ;;68382005401
 ;;9002226.02101,"791,68382005410 ",.01)
 ;;68382005410
 ;;9002226.02101,"791,68382005410 ",.02)
 ;;68382005410
 ;;9002226.02101,"791,68382005501 ",.01)
 ;;68382005501
 ;;9002226.02101,"791,68382005501 ",.02)
 ;;68382005501
 ;;9002226.02101,"791,68382005510 ",.01)
 ;;68382005510
 ;;9002226.02101,"791,68382005510 ",.02)
 ;;68382005510
 ;;9002226.02101,"791,68382005601 ",.01)
 ;;68382005601
 ;;9002226.02101,"791,68382005601 ",.02)
 ;;68382005601
 ;;9002226.02101,"791,68382005610 ",.01)
 ;;68382005610
 ;;9002226.02101,"791,68382005610 ",.02)
 ;;68382005610
 ;;9002226.02101,"791,68382005701 ",.01)
 ;;68382005701
 ;;9002226.02101,"791,68382005701 ",.02)
 ;;68382005701
 ;;9002226.02101,"791,68382005710 ",.01)
 ;;68382005710
 ;;9002226.02101,"791,68382005710 ",.02)
 ;;68382005710
 ;;9002226.02101,"791,68382005901 ",.01)
 ;;68382005901
 ;;9002226.02101,"791,68382005901 ",.02)
 ;;68382005901
 ;;9002226.02101,"791,68382006401 ",.01)
 ;;68382006401
 ;;9002226.02101,"791,68382006401 ",.02)
 ;;68382006401
 ;;9002226.02101,"791,68382006410 ",.01)
 ;;68382006410
 ;;9002226.02101,"791,68382006410 ",.02)
 ;;68382006410