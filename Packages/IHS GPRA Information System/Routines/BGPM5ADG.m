BGPM5ADG ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"846,65862002930 ",.02)
 ;;65862002930
 ;;9002226.02101,"846,65862002999 ",.01)
 ;;65862002999
 ;;9002226.02101,"846,65862002999 ",.02)
 ;;65862002999
 ;;9002226.02101,"846,65862003000 ",.01)
 ;;65862003000
 ;;9002226.02101,"846,65862003000 ",.02)
 ;;65862003000
 ;;9002226.02101,"846,65862003001 ",.01)
 ;;65862003001
 ;;9002226.02101,"846,65862003001 ",.02)
 ;;65862003001
 ;;9002226.02101,"846,65862003005 ",.01)
 ;;65862003005
 ;;9002226.02101,"846,65862003005 ",.02)
 ;;65862003005
 ;;9002226.02101,"846,65862003030 ",.01)
 ;;65862003030
 ;;9002226.02101,"846,65862003030 ",.02)
 ;;65862003030
 ;;9002226.02101,"846,65862003075 ",.01)
 ;;65862003075
 ;;9002226.02101,"846,65862003075 ",.02)
 ;;65862003075
 ;;9002226.02101,"846,65862003099 ",.01)
 ;;65862003099
 ;;9002226.02101,"846,65862003099 ",.02)
 ;;65862003099
 ;;9002226.02101,"846,65862008001 ",.01)
 ;;65862008001
 ;;9002226.02101,"846,65862008001 ",.02)
 ;;65862008001
 ;;9002226.02101,"846,65862008005 ",.01)
 ;;65862008005
 ;;9002226.02101,"846,65862008005 ",.02)
 ;;65862008005
 ;;9002226.02101,"846,65862008030 ",.01)
 ;;65862008030
 ;;9002226.02101,"846,65862008030 ",.02)
 ;;65862008030
 ;;9002226.02101,"846,65862008036 ",.01)
 ;;65862008036
 ;;9002226.02101,"846,65862008036 ",.02)
 ;;65862008036
 ;;9002226.02101,"846,65862008101 ",.01)
 ;;65862008101
 ;;9002226.02101,"846,65862008101 ",.02)
 ;;65862008101
 ;;9002226.02101,"846,65862008105 ",.01)
 ;;65862008105
 ;;9002226.02101,"846,65862008105 ",.02)
 ;;65862008105
 ;;9002226.02101,"846,65862008118 ",.01)
 ;;65862008118
 ;;9002226.02101,"846,65862008118 ",.02)
 ;;65862008118
 ;;9002226.02101,"846,65862008130 ",.01)
 ;;65862008130
 ;;9002226.02101,"846,65862008130 ",.02)
 ;;65862008130
 ;;9002226.02101,"846,65862008201 ",.01)
 ;;65862008201
 ;;9002226.02101,"846,65862008201 ",.02)
 ;;65862008201
 ;;9002226.02101,"846,65862008205 ",.01)
 ;;65862008205
 ;;9002226.02101,"846,65862008205 ",.02)
 ;;65862008205
 ;;9002226.02101,"846,65862008218 ",.01)
 ;;65862008218
 ;;9002226.02101,"846,65862008218 ",.02)
 ;;65862008218
 ;;9002226.02101,"846,65862008230 ",.01)
 ;;65862008230
 ;;9002226.02101,"846,65862008230 ",.02)
 ;;65862008230
 ;;9002226.02101,"846,66105075402 ",.01)
 ;;66105075402
 ;;9002226.02101,"846,66105075402 ",.02)
 ;;66105075402
 ;;9002226.02101,"846,66105075403 ",.01)
 ;;66105075403
 ;;9002226.02101,"846,66105075403 ",.02)
 ;;66105075403
 ;;9002226.02101,"846,66105075406 ",.01)
 ;;66105075406
 ;;9002226.02101,"846,66105075406 ",.02)
 ;;66105075406
 ;;9002226.02101,"846,66105075409 ",.01)
 ;;66105075409
 ;;9002226.02101,"846,66105075409 ",.02)
 ;;66105075409
 ;;9002226.02101,"846,66105075410 ",.01)
 ;;66105075410
 ;;9002226.02101,"846,66105075410 ",.02)
 ;;66105075410
 ;;9002226.02101,"846,66105075602 ",.01)
 ;;66105075602
 ;;9002226.02101,"846,66105075602 ",.02)
 ;;66105075602
 ;;9002226.02101,"846,66105075603 ",.01)
 ;;66105075603
 ;;9002226.02101,"846,66105075603 ",.02)
 ;;66105075603
 ;;9002226.02101,"846,66105075606 ",.01)
 ;;66105075606
 ;;9002226.02101,"846,66105075606 ",.02)
 ;;66105075606
 ;;9002226.02101,"846,66105075609 ",.01)
 ;;66105075609
 ;;9002226.02101,"846,66105075609 ",.02)
 ;;66105075609
 ;;9002226.02101,"846,66105075610 ",.01)
 ;;66105075610
 ;;9002226.02101,"846,66105075610 ",.02)
 ;;66105075610
 ;;9002226.02101,"846,66105098402 ",.01)
 ;;66105098402
 ;;9002226.02101,"846,66105098402 ",.02)
 ;;66105098402
 ;;9002226.02101,"846,66105098403 ",.01)
 ;;66105098403
 ;;9002226.02101,"846,66105098403 ",.02)
 ;;66105098403
 ;;9002226.02101,"846,66105098406 ",.01)
 ;;66105098406
 ;;9002226.02101,"846,66105098406 ",.02)
 ;;66105098406
 ;;9002226.02101,"846,66105098409 ",.01)
 ;;66105098409
 ;;9002226.02101,"846,66105098409 ",.02)
 ;;66105098409
 ;;9002226.02101,"846,66105098410 ",.01)
 ;;66105098410
 ;;9002226.02101,"846,66105098410 ",.02)
 ;;66105098410
 ;;9002226.02101,"846,66105098411 ",.01)
 ;;66105098411
 ;;9002226.02101,"846,66105098411 ",.02)
 ;;66105098411
 ;;9002226.02101,"846,66105098450 ",.01)
 ;;66105098450
 ;;9002226.02101,"846,66105098450 ",.02)
 ;;66105098450
 ;;9002226.02101,"846,66105098502 ",.01)
 ;;66105098502
 ;;9002226.02101,"846,66105098502 ",.02)
 ;;66105098502
 ;;9002226.02101,"846,66105098503 ",.01)
 ;;66105098503
 ;;9002226.02101,"846,66105098503 ",.02)
 ;;66105098503
 ;;9002226.02101,"846,66105098506 ",.01)
 ;;66105098506
 ;;9002226.02101,"846,66105098506 ",.02)
 ;;66105098506
 ;;9002226.02101,"846,66105098509 ",.01)
 ;;66105098509
 ;;9002226.02101,"846,66105098509 ",.02)
 ;;66105098509
 ;;9002226.02101,"846,66105098510 ",.01)
 ;;66105098510
 ;;9002226.02101,"846,66105098510 ",.02)
 ;;66105098510
 ;;9002226.02101,"846,66105098511 ",.01)
 ;;66105098511
 ;;9002226.02101,"846,66105098511 ",.02)
 ;;66105098511
 ;;9002226.02101,"846,66105098550 ",.01)
 ;;66105098550
 ;;9002226.02101,"846,66105098550 ",.02)
 ;;66105098550
 ;;9002226.02101,"846,66105098602 ",.01)
 ;;66105098602
 ;;9002226.02101,"846,66105098602 ",.02)
 ;;66105098602
 ;;9002226.02101,"846,66105098603 ",.01)
 ;;66105098603
 ;;9002226.02101,"846,66105098603 ",.02)
 ;;66105098603
 ;;9002226.02101,"846,66105098606 ",.01)
 ;;66105098606
 ;;9002226.02101,"846,66105098606 ",.02)
 ;;66105098606
 ;;9002226.02101,"846,66105098609 ",.01)
 ;;66105098609
 ;;9002226.02101,"846,66105098609 ",.02)
 ;;66105098609
 ;;9002226.02101,"846,66105098610 ",.01)
 ;;66105098610
 ;;9002226.02101,"846,66105098610 ",.02)
 ;;66105098610
 ;;9002226.02101,"846,66105098611 ",.01)
 ;;66105098611
 ;;9002226.02101,"846,66105098611 ",.02)
 ;;66105098611
 ;;9002226.02101,"846,66105098650 ",.01)
 ;;66105098650
 ;;9002226.02101,"846,66105098650 ",.02)
 ;;66105098650
 ;;9002226.02101,"846,66116036060 ",.01)
 ;;66116036060
 ;;9002226.02101,"846,66116036060 ",.02)
 ;;66116036060
 ;;9002226.02101,"846,66116044030 ",.01)
 ;;66116044030
 ;;9002226.02101,"846,66116044030 ",.02)
 ;;66116044030
 ;;9002226.02101,"846,66116044060 ",.01)
 ;;66116044060
 ;;9002226.02101,"846,66116044060 ",.02)
 ;;66116044060
 ;;9002226.02101,"846,66116080560 ",.01)
 ;;66116080560
 ;;9002226.02101,"846,66116080560 ",.02)
 ;;66116080560
 ;;9002226.02101,"846,66116080660 ",.01)
 ;;66116080660
 ;;9002226.02101,"846,66116080660 ",.02)
 ;;66116080660
 ;;9002226.02101,"846,66116082760 ",.01)
 ;;66116082760
 ;;9002226.02101,"846,66116082760 ",.02)
 ;;66116082760
 ;;9002226.02101,"846,66116082860 ",.01)
 ;;66116082860
 ;;9002226.02101,"846,66116082860 ",.02)
 ;;66116082860
 ;;9002226.02101,"846,66267005460 ",.01)
 ;;66267005460
 ;;9002226.02101,"846,66267005460 ",.02)
 ;;66267005460
 ;;9002226.02101,"846,66267010010 ",.01)
 ;;66267010010
 ;;9002226.02101,"846,66267010010 ",.02)
 ;;66267010010
 ;;9002226.02101,"846,66267010020 ",.01)
 ;;66267010020
 ;;9002226.02101,"846,66267010020 ",.02)
 ;;66267010020
 ;;9002226.02101,"846,66267010030 ",.01)
 ;;66267010030
 ;;9002226.02101,"846,66267010030 ",.02)
 ;;66267010030
 ;;9002226.02101,"846,66267010060 ",.01)
 ;;66267010060
 ;;9002226.02101,"846,66267010060 ",.02)
 ;;66267010060
 ;;9002226.02101,"846,66267010090 ",.01)
 ;;66267010090
 ;;9002226.02101,"846,66267010090 ",.02)
 ;;66267010090
 ;;9002226.02101,"846,66267010205 ",.01)
 ;;66267010205
 ;;9002226.02101,"846,66267010205 ",.02)
 ;;66267010205
 ;;9002226.02101,"846,66267010230 ",.01)
 ;;66267010230
 ;;9002226.02101,"846,66267010230 ",.02)
 ;;66267010230
 ;;9002226.02101,"846,66267010312 ",.01)
 ;;66267010312
 ;;9002226.02101,"846,66267010312 ",.02)
 ;;66267010312
 ;;9002226.02101,"846,66267010330 ",.01)
 ;;66267010330
 ;;9002226.02101,"846,66267010330 ",.02)
 ;;66267010330
 ;;9002226.02101,"846,66267010360 ",.01)
 ;;66267010360
 ;;9002226.02101,"846,66267010360 ",.02)
 ;;66267010360
 ;;9002226.02101,"846,66267023110 ",.01)
 ;;66267023110
 ;;9002226.02101,"846,66267023110 ",.02)
 ;;66267023110
 ;;9002226.02101,"846,66267023115 ",.01)
 ;;66267023115
 ;;9002226.02101,"846,66267023115 ",.02)
 ;;66267023115
 ;;9002226.02101,"846,66267023120 ",.01)
 ;;66267023120
 ;;9002226.02101,"846,66267023120 ",.02)
 ;;66267023120
 ;;9002226.02101,"846,66267023130 ",.01)
 ;;66267023130
 ;;9002226.02101,"846,66267023130 ",.02)
 ;;66267023130
 ;;9002226.02101,"846,66267023140 ",.01)
 ;;66267023140
 ;;9002226.02101,"846,66267023140 ",.02)
 ;;66267023140
 ;;9002226.02101,"846,66267031630 ",.01)
 ;;66267031630
 ;;9002226.02101,"846,66267031630 ",.02)
 ;;66267031630
 ;;9002226.02101,"846,66336002830 ",.01)
 ;;66336002830
 ;;9002226.02101,"846,66336002830 ",.02)
 ;;66336002830
 ;;9002226.02101,"846,66336026930 ",.01)
 ;;66336026930
 ;;9002226.02101,"846,66336026930 ",.02)
 ;;66336026930
 ;;9002226.02101,"846,66336066230 ",.01)
 ;;66336066230
 ;;9002226.02101,"846,66336066230 ",.02)
 ;;66336066230
 ;;9002226.02101,"846,66336066260 ",.01)
 ;;66336066260
 ;;9002226.02101,"846,66336066260 ",.02)
 ;;66336066260
 ;;9002226.02101,"846,66336066294 ",.01)
 ;;66336066294
 ;;9002226.02101,"846,66336066294 ",.02)
 ;;66336066294
 ;;9002226.02101,"846,66336073030 ",.01)
 ;;66336073030
 ;;9002226.02101,"846,66336073030 ",.02)
 ;;66336073030
 ;;9002226.02101,"846,66336073060 ",.01)
 ;;66336073060
 ;;9002226.02101,"846,66336073060 ",.02)
 ;;66336073060
 ;;9002226.02101,"846,66336078430 ",.01)
 ;;66336078430
 ;;9002226.02101,"846,66336078430 ",.02)
 ;;66336078430
 ;;9002226.02101,"846,66336093830 ",.01)
 ;;66336093830
 ;;9002226.02101,"846,66336093830 ",.02)
 ;;66336093830
 ;;9002226.02101,"846,66336093860 ",.01)
 ;;66336093860
 ;;9002226.02101,"846,66336093860 ",.02)
 ;;66336093860
 ;;9002226.02101,"846,66993016202 ",.01)
 ;;66993016202
 ;;9002226.02101,"846,66993016202 ",.02)
 ;;66993016202
 ;;9002226.02101,"846,66993016247 ",.01)
 ;;66993016247
 ;;9002226.02101,"846,66993016247 ",.02)
 ;;66993016247
 ;;9002226.02101,"846,66993016302 ",.01)
 ;;66993016302
 ;;9002226.02101,"846,66993016302 ",.02)
 ;;66993016302
 ;;9002226.02101,"846,66993016347 ",.01)
 ;;66993016347
 ;;9002226.02101,"846,66993016347 ",.02)
 ;;66993016347
 ;;9002226.02101,"846,66993016402 ",.01)
 ;;66993016402
 ;;9002226.02101,"846,66993016402 ",.02)
 ;;66993016402
 ;;9002226.02101,"846,67046023530 ",.01)
 ;;67046023530
 ;;9002226.02101,"846,67046023530 ",.02)
 ;;67046023530
 ;;9002226.02101,"846,67046024030 ",.01)
 ;;67046024030
 ;;9002226.02101,"846,67046024030 ",.02)
 ;;67046024030
 ;;9002226.02101,"846,67046024060 ",.01)
 ;;67046024060
 ;;9002226.02101,"846,67046024060 ",.02)
 ;;67046024060
 ;;9002226.02101,"846,67228024203 ",.01)
 ;;67228024203
 ;;9002226.02101,"846,67228024203 ",.02)
 ;;67228024203
 ;;9002226.02101,"846,67228024206 ",.01)
 ;;67228024206
 ;;9002226.02101,"846,67228024206 ",.02)
 ;;67228024206
 ;;9002226.02101,"846,67228024303 ",.01)
 ;;67228024303
 ;;9002226.02101,"846,67228024303 ",.02)
 ;;67228024303
 ;;9002226.02101,"846,67228024306 ",.01)
 ;;67228024306
 ;;9002226.02101,"846,67228024306 ",.02)
 ;;67228024306
 ;;9002226.02101,"846,67251046011 ",.01)
 ;;67251046011
 ;;9002226.02101,"846,67251046011 ",.02)
 ;;67251046011
 ;;9002226.02101,"846,67251046050 ",.01)
 ;;67251046050
 ;;9002226.02101,"846,67251046050 ",.02)
 ;;67251046050
 ;;9002226.02101,"846,67253046010 ",.01)
 ;;67253046010
 ;;9002226.02101,"846,67253046010 ",.02)
 ;;67253046010
 ;;9002226.02101,"846,67253046011 ",.01)
 ;;67253046011
 ;;9002226.02101,"846,67253046011 ",.02)
 ;;67253046011
 ;;9002226.02101,"846,67253046050 ",.01)
 ;;67253046050
 ;;9002226.02101,"846,67253046050 ",.02)
 ;;67253046050
 ;;9002226.02101,"846,67253046110 ",.01)
 ;;67253046110