BGPM5BDL ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON SEP 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1044,60429073715 ",.01)
 ;;60429073715
 ;;9002226.02101,"1044,60429073715 ",.02)
 ;;60429073715
 ;;9002226.02101,"1044,60429073730 ",.01)
 ;;60429073730
 ;;9002226.02101,"1044,60429073730 ",.02)
 ;;60429073730
 ;;9002226.02101,"1044,60429073745 ",.01)
 ;;60429073745
 ;;9002226.02101,"1044,60429073745 ",.02)
 ;;60429073745
 ;;9002226.02101,"1044,60429073790 ",.01)
 ;;60429073790
 ;;9002226.02101,"1044,60429073790 ",.02)
 ;;60429073790
 ;;9002226.02101,"1044,60429075801 ",.01)
 ;;60429075801
 ;;9002226.02101,"1044,60429075801 ",.02)
 ;;60429075801
 ;;9002226.02101,"1044,60429075901 ",.01)
 ;;60429075901
 ;;9002226.02101,"1044,60429075901 ",.02)
 ;;60429075901
 ;;9002226.02101,"1044,60429075930 ",.01)
 ;;60429075930
 ;;9002226.02101,"1044,60429075930 ",.02)
 ;;60429075930
 ;;9002226.02101,"1044,60429075990 ",.01)
 ;;60429075990
 ;;9002226.02101,"1044,60429075990 ",.02)
 ;;60429075990
 ;;9002226.02101,"1044,60429076001 ",.01)
 ;;60429076001
 ;;9002226.02101,"1044,60429076001 ",.02)
 ;;60429076001
 ;;9002226.02101,"1044,60429076030 ",.01)
 ;;60429076030
 ;;9002226.02101,"1044,60429076030 ",.02)
 ;;60429076030
 ;;9002226.02101,"1044,60429076090 ",.01)
 ;;60429076090
 ;;9002226.02101,"1044,60429076090 ",.02)
 ;;60429076090
 ;;9002226.02101,"1044,60429093001 ",.01)
 ;;60429093001
 ;;9002226.02101,"1044,60429093001 ",.02)
 ;;60429093001
 ;;9002226.02101,"1044,60429093005 ",.01)
 ;;60429093005
 ;;9002226.02101,"1044,60429093005 ",.02)
 ;;60429093005
 ;;9002226.02101,"1044,60429093030 ",.01)
 ;;60429093030
 ;;9002226.02101,"1044,60429093030 ",.02)
 ;;60429093030
 ;;9002226.02101,"1044,60429093090 ",.01)
 ;;60429093090
 ;;9002226.02101,"1044,60429093090 ",.02)
 ;;60429093090
 ;;9002226.02101,"1044,60429098701 ",.01)
 ;;60429098701
 ;;9002226.02101,"1044,60429098701 ",.02)
 ;;60429098701
 ;;9002226.02101,"1044,60429098705 ",.01)
 ;;60429098705
 ;;9002226.02101,"1044,60429098705 ",.02)
 ;;60429098705
 ;;9002226.02101,"1044,60429098730 ",.01)
 ;;60429098730
 ;;9002226.02101,"1044,60429098730 ",.02)
 ;;60429098730
 ;;9002226.02101,"1044,60429098760 ",.01)
 ;;60429098760
 ;;9002226.02101,"1044,60429098760 ",.02)
 ;;60429098760
 ;;9002226.02101,"1044,60429098790 ",.01)
 ;;60429098790
 ;;9002226.02101,"1044,60429098790 ",.02)
 ;;60429098790
 ;;9002226.02101,"1044,60429098801 ",.01)
 ;;60429098801
 ;;9002226.02101,"1044,60429098801 ",.02)
 ;;60429098801
 ;;9002226.02101,"1044,60429098805 ",.01)
 ;;60429098805
 ;;9002226.02101,"1044,60429098805 ",.02)
 ;;60429098805
 ;;9002226.02101,"1044,60429098830 ",.01)
 ;;60429098830
 ;;9002226.02101,"1044,60429098830 ",.02)
 ;;60429098830
 ;;9002226.02101,"1044,60505005501 ",.01)
 ;;60505005501
 ;;9002226.02101,"1044,60505005501 ",.02)
 ;;60505005501
 ;;9002226.02101,"1044,60505005502 ",.01)
 ;;60505005502
 ;;9002226.02101,"1044,60505005502 ",.02)
 ;;60505005502
 ;;9002226.02101,"1044,60505005503 ",.01)
 ;;60505005503
 ;;9002226.02101,"1044,60505005503 ",.02)
 ;;60505005503
 ;;9002226.02101,"1044,60505008300 ",.01)
 ;;60505008300
 ;;9002226.02101,"1044,60505008300 ",.02)
 ;;60505008300
 ;;9002226.02101,"1044,60505008301 ",.01)
 ;;60505008301
 ;;9002226.02101,"1044,60505008301 ",.02)
 ;;60505008301
 ;;9002226.02101,"1044,60505008302 ",.01)
 ;;60505008302
 ;;9002226.02101,"1044,60505008302 ",.02)
 ;;60505008302
 ;;9002226.02101,"1044,60505008304 ",.01)
 ;;60505008304
 ;;9002226.02101,"1044,60505008304 ",.02)
 ;;60505008304
 ;;9002226.02101,"1044,60505008305 ",.01)
 ;;60505008305
 ;;9002226.02101,"1044,60505008305 ",.02)
 ;;60505008305
 ;;9002226.02101,"1044,60505008309 ",.01)
 ;;60505008309
 ;;9002226.02101,"1044,60505008309 ",.02)
 ;;60505008309
 ;;9002226.02101,"1044,60505008401 ",.01)
 ;;60505008401
 ;;9002226.02101,"1044,60505008401 ",.02)
 ;;60505008401
 ;;9002226.02101,"1044,60505008402 ",.01)
 ;;60505008402
 ;;9002226.02101,"1044,60505008402 ",.02)
 ;;60505008402
 ;;9002226.02101,"1044,60505008404 ",.01)
 ;;60505008404
 ;;9002226.02101,"1044,60505008404 ",.02)
 ;;60505008404
 ;;9002226.02101,"1044,60505009701 ",.01)
 ;;60505009701
 ;;9002226.02101,"1044,60505009701 ",.02)
 ;;60505009701
 ;;9002226.02101,"1044,60505009702 ",.01)
 ;;60505009702
 ;;9002226.02101,"1044,60505009702 ",.02)
 ;;60505009702
 ;;9002226.02101,"1044,60505009704 ",.01)
 ;;60505009704
 ;;9002226.02101,"1044,60505009704 ",.02)
 ;;60505009704
 ;;9002226.02101,"1044,60505009705 ",.01)
 ;;60505009705
 ;;9002226.02101,"1044,60505009705 ",.02)
 ;;60505009705
 ;;9002226.02101,"1044,60505009707 ",.01)
 ;;60505009707
 ;;9002226.02101,"1044,60505009707 ",.02)
 ;;60505009707
 ;;9002226.02101,"1044,60505009709 ",.01)
 ;;60505009709
 ;;9002226.02101,"1044,60505009709 ",.02)
 ;;60505009709
 ;;9002226.02101,"1044,60505010101 ",.01)
 ;;60505010101
 ;;9002226.02101,"1044,60505010101 ",.02)
 ;;60505010101
 ;;9002226.02101,"1044,60505010102 ",.01)
 ;;60505010102
 ;;9002226.02101,"1044,60505010102 ",.02)
 ;;60505010102
 ;;9002226.02101,"1044,60505010104 ",.01)
 ;;60505010104
 ;;9002226.02101,"1044,60505010104 ",.02)
 ;;60505010104
 ;;9002226.02101,"1044,60505010105 ",.01)
 ;;60505010105
 ;;9002226.02101,"1044,60505010105 ",.02)
 ;;60505010105
 ;;9002226.02101,"1044,60505010107 ",.01)
 ;;60505010107
 ;;9002226.02101,"1044,60505010107 ",.02)
 ;;60505010107
 ;;9002226.02101,"1044,60505010109 ",.01)
 ;;60505010109
 ;;9002226.02101,"1044,60505010109 ",.02)
 ;;60505010109
 ;;9002226.02101,"1044,60505016401 ",.01)
 ;;60505016401
 ;;9002226.02101,"1044,60505016401 ",.02)
 ;;60505016401
 ;;9002226.02101,"1044,60505016402 ",.01)
 ;;60505016402
 ;;9002226.02101,"1044,60505016402 ",.02)
 ;;60505016402
 ;;9002226.02101,"1044,60505016501 ",.01)
 ;;60505016501
 ;;9002226.02101,"1044,60505016501 ",.02)
 ;;60505016501
 ;;9002226.02101,"1044,60505016502 ",.01)
 ;;60505016502
 ;;9002226.02101,"1044,60505016502 ",.02)
 ;;60505016502
 ;;9002226.02101,"1044,60505016601 ",.01)
 ;;60505016601
 ;;9002226.02101,"1044,60505016601 ",.02)
 ;;60505016601
 ;;9002226.02101,"1044,60505016602 ",.01)
 ;;60505016602
 ;;9002226.02101,"1044,60505016602 ",.02)
 ;;60505016602
 ;;9002226.02101,"1044,60505018002 ",.01)
 ;;60505018002
 ;;9002226.02101,"1044,60505018002 ",.02)
 ;;60505018002
 ;;9002226.02101,"1044,60505018003 ",.01)
 ;;60505018003
 ;;9002226.02101,"1044,60505018003 ",.02)
 ;;60505018003
 ;;9002226.02101,"1044,60505018006 ",.01)
 ;;60505018006
 ;;9002226.02101,"1044,60505018006 ",.02)
 ;;60505018006
 ;;9002226.02101,"1044,60505018007 ",.01)
 ;;60505018007
 ;;9002226.02101,"1044,60505018007 ",.02)
 ;;60505018007
 ;;9002226.02101,"1044,60505018008 ",.01)
 ;;60505018008
 ;;9002226.02101,"1044,60505018008 ",.02)
 ;;60505018008
 ;;9002226.02101,"1044,60505018009 ",.01)
 ;;60505018009
 ;;9002226.02101,"1044,60505018009 ",.02)
 ;;60505018009
 ;;9002226.02101,"1044,60505018102 ",.01)
 ;;60505018102
 ;;9002226.02101,"1044,60505018102 ",.02)
 ;;60505018102
 ;;9002226.02101,"1044,60505018103 ",.01)
 ;;60505018103
 ;;9002226.02101,"1044,60505018103 ",.02)
 ;;60505018103
 ;;9002226.02101,"1044,60505018106 ",.01)
 ;;60505018106
 ;;9002226.02101,"1044,60505018106 ",.02)
 ;;60505018106
 ;;9002226.02101,"1044,60505018107 ",.01)
 ;;60505018107
 ;;9002226.02101,"1044,60505018107 ",.02)
 ;;60505018107
 ;;9002226.02101,"1044,60505018108 ",.01)
 ;;60505018108
 ;;9002226.02101,"1044,60505018108 ",.02)
 ;;60505018108
 ;;9002226.02101,"1044,60505018109 ",.01)
 ;;60505018109
 ;;9002226.02101,"1044,60505018109 ",.02)
 ;;60505018109
 ;;9002226.02101,"1044,60505018202 ",.01)
 ;;60505018202
 ;;9002226.02101,"1044,60505018202 ",.02)
 ;;60505018202
 ;;9002226.02101,"1044,60505018203 ",.01)
 ;;60505018203
 ;;9002226.02101,"1044,60505018203 ",.02)
 ;;60505018203
 ;;9002226.02101,"1044,60505018206 ",.01)
 ;;60505018206
 ;;9002226.02101,"1044,60505018206 ",.02)
 ;;60505018206
 ;;9002226.02101,"1044,60505018207 ",.01)
 ;;60505018207
 ;;9002226.02101,"1044,60505018207 ",.02)
 ;;60505018207
 ;;9002226.02101,"1044,60505018208 ",.01)
 ;;60505018208
 ;;9002226.02101,"1044,60505018208 ",.02)
 ;;60505018208
 ;;9002226.02101,"1044,60505018209 ",.01)
 ;;60505018209
 ;;9002226.02101,"1044,60505018209 ",.02)
 ;;60505018209
 ;;9002226.02101,"1044,60505024701 ",.01)
 ;;60505024701
 ;;9002226.02101,"1044,60505024701 ",.02)
 ;;60505024701
 ;;9002226.02101,"1044,60505024703 ",.01)
 ;;60505024703
 ;;9002226.02101,"1044,60505024703 ",.02)
 ;;60505024703
 ;;9002226.02101,"1044,60505024705 ",.01)
 ;;60505024705
 ;;9002226.02101,"1044,60505024705 ",.02)
 ;;60505024705
 ;;9002226.02101,"1044,60505024708 ",.01)
 ;;60505024708
 ;;9002226.02101,"1044,60505024708 ",.02)
 ;;60505024708
 ;;9002226.02101,"1044,60505024801 ",.01)
 ;;60505024801
 ;;9002226.02101,"1044,60505024801 ",.02)
 ;;60505024801
 ;;9002226.02101,"1044,60505024803 ",.01)
 ;;60505024803
 ;;9002226.02101,"1044,60505024803 ",.02)
 ;;60505024803
 ;;9002226.02101,"1044,60505024805 ",.01)
 ;;60505024805
 ;;9002226.02101,"1044,60505024805 ",.02)
 ;;60505024805
 ;;9002226.02101,"1044,60505024808 ",.01)
 ;;60505024808
 ;;9002226.02101,"1044,60505024808 ",.02)
 ;;60505024808
 ;;9002226.02101,"1044,60505024901 ",.01)
 ;;60505024901
 ;;9002226.02101,"1044,60505024901 ",.02)
 ;;60505024901
 ;;9002226.02101,"1044,60505024903 ",.01)
 ;;60505024903
 ;;9002226.02101,"1044,60505024903 ",.02)
 ;;60505024903
 ;;9002226.02101,"1044,60505024905 ",.01)
 ;;60505024905
 ;;9002226.02101,"1044,60505024905 ",.02)
 ;;60505024905
 ;;9002226.02101,"1044,60505024908 ",.01)
 ;;60505024908
 ;;9002226.02101,"1044,60505024908 ",.02)
 ;;60505024908
 ;;9002226.02101,"1044,60505037401 ",.01)
 ;;60505037401
 ;;9002226.02101,"1044,60505037401 ",.02)
 ;;60505037401
 ;;9002226.02101,"1044,60505251801 ",.01)
 ;;60505251801
 ;;9002226.02101,"1044,60505251801 ",.02)
 ;;60505251801
 ;;9002226.02101,"1044,60505251803 ",.01)
 ;;60505251803
 ;;9002226.02101,"1044,60505251803 ",.02)
 ;;60505251803
 ;;9002226.02101,"1044,60505251804 ",.01)
 ;;60505251804
 ;;9002226.02101,"1044,60505251804 ",.02)
 ;;60505251804
 ;;9002226.02101,"1044,60505251808 ",.01)
 ;;60505251808
 ;;9002226.02101,"1044,60505251808 ",.02)
 ;;60505251808
 ;;9002226.02101,"1044,60505251901 ",.01)
 ;;60505251901
 ;;9002226.02101,"1044,60505251901 ",.02)
 ;;60505251901
 ;;9002226.02101,"1044,60505251903 ",.01)
 ;;60505251903
 ;;9002226.02101,"1044,60505251903 ",.02)
 ;;60505251903
 ;;9002226.02101,"1044,60505251904 ",.01)
 ;;60505251904
 ;;9002226.02101,"1044,60505251904 ",.02)
 ;;60505251904
 ;;9002226.02101,"1044,60505251908 ",.01)
 ;;60505251908
 ;;9002226.02101,"1044,60505251908 ",.02)
 ;;60505251908
 ;;9002226.02101,"1044,60505252001 ",.01)
 ;;60505252001
 ;;9002226.02101,"1044,60505252001 ",.02)
 ;;60505252001
 ;;9002226.02101,"1044,60505252003 ",.01)
 ;;60505252003
 ;;9002226.02101,"1044,60505252003 ",.02)
 ;;60505252003
 ;;9002226.02101,"1044,60505252004 ",.01)
 ;;60505252004
 ;;9002226.02101,"1044,60505252004 ",.02)
 ;;60505252004
 ;;9002226.02101,"1044,60505252008 ",.01)
 ;;60505252008
 ;;9002226.02101,"1044,60505252008 ",.02)
 ;;60505252008
 ;;9002226.02101,"1044,60505265300 ",.01)
 ;;60505265300
 ;;9002226.02101,"1044,60505265300 ",.02)
 ;;60505265300
 ;;9002226.02101,"1044,60505265301 ",.01)
 ;;60505265301
 ;;9002226.02101,"1044,60505265301 ",.02)
 ;;60505265301
 ;;9002226.02101,"1044,60505265305 ",.01)
 ;;60505265305
 ;;9002226.02101,"1044,60505265305 ",.02)
 ;;60505265305
 ;;9002226.02101,"1044,60505265307 ",.01)
 ;;60505265307
 ;;9002226.02101,"1044,60505265307 ",.02)
 ;;60505265307
 ;;9002226.02101,"1044,60505265400 ",.01)
 ;;60505265400