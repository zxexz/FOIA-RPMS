BGPM5AEP ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"881,51138033330 ",.01)
 ;;51138033330
 ;;9002226.02101,"881,51138033330 ",.02)
 ;;51138033330
 ;;9002226.02101,"881,51138033430 ",.01)
 ;;51138033430
 ;;9002226.02101,"881,51138033430 ",.02)
 ;;51138033430
 ;;9002226.02101,"881,51138033530 ",.01)
 ;;51138033530
 ;;9002226.02101,"881,51138033530 ",.02)
 ;;51138033530
 ;;9002226.02101,"881,51138033630 ",.01)
 ;;51138033630
 ;;9002226.02101,"881,51138033630 ",.02)
 ;;51138033630
 ;;9002226.02101,"881,51138034830 ",.01)
 ;;51138034830
 ;;9002226.02101,"881,51138034830 ",.02)
 ;;51138034830
 ;;9002226.02101,"881,51138034930 ",.01)
 ;;51138034930
 ;;9002226.02101,"881,51138034930 ",.02)
 ;;51138034930
 ;;9002226.02101,"881,51138035030 ",.01)
 ;;51138035030
 ;;9002226.02101,"881,51138035030 ",.02)
 ;;51138035030
 ;;9002226.02101,"881,51138035130 ",.01)
 ;;51138035130
 ;;9002226.02101,"881,51138035130 ",.02)
 ;;51138035130
 ;;9002226.02101,"881,51138035730 ",.01)
 ;;51138035730
 ;;9002226.02101,"881,51138035730 ",.02)
 ;;51138035730
 ;;9002226.02101,"881,51138035810 ",.01)
 ;;51138035810
 ;;9002226.02101,"881,51138035810 ",.02)
 ;;51138035810
 ;;9002226.02101,"881,51138035830 ",.01)
 ;;51138035830
 ;;9002226.02101,"881,51138035830 ",.02)
 ;;51138035830
 ;;9002226.02101,"881,51138035930 ",.01)
 ;;51138035930
 ;;9002226.02101,"881,51138035930 ",.02)
 ;;51138035930
 ;;9002226.02101,"881,51138042430 ",.01)
 ;;51138042430
 ;;9002226.02101,"881,51138042430 ",.02)
 ;;51138042430
 ;;9002226.02101,"881,51138042530 ",.01)
 ;;51138042530
 ;;9002226.02101,"881,51138042530 ",.02)
 ;;51138042530
 ;;9002226.02101,"881,51138042610 ",.01)
 ;;51138042610
 ;;9002226.02101,"881,51138042610 ",.02)
 ;;51138042610
 ;;9002226.02101,"881,51138042630 ",.01)
 ;;51138042630
 ;;9002226.02101,"881,51138042630 ",.02)
 ;;51138042630
 ;;9002226.02101,"881,51138042710 ",.01)
 ;;51138042710
 ;;9002226.02101,"881,51138042710 ",.02)
 ;;51138042710
 ;;9002226.02101,"881,51138042730 ",.01)
 ;;51138042730
 ;;9002226.02101,"881,51138042730 ",.02)
 ;;51138042730
 ;;9002226.02101,"881,51138044330 ",.01)
 ;;51138044330
 ;;9002226.02101,"881,51138044330 ",.02)
 ;;51138044330
 ;;9002226.02101,"881,51138044430 ",.01)
 ;;51138044430
 ;;9002226.02101,"881,51138044430 ",.02)
 ;;51138044430
 ;;9002226.02101,"881,51655023224 ",.01)
 ;;51655023224
 ;;9002226.02101,"881,51655023224 ",.02)
 ;;51655023224
 ;;9002226.02101,"881,51655023252 ",.01)
 ;;51655023252
 ;;9002226.02101,"881,51655023252 ",.02)
 ;;51655023252
 ;;9002226.02101,"881,51655023253 ",.01)
 ;;51655023253
 ;;9002226.02101,"881,51655023253 ",.02)
 ;;51655023253
 ;;9002226.02101,"881,51655023284 ",.01)
 ;;51655023284
 ;;9002226.02101,"881,51655023284 ",.02)
 ;;51655023284
 ;;9002226.02101,"881,51655028024 ",.01)
 ;;51655028024
 ;;9002226.02101,"881,51655028024 ",.02)
 ;;51655028024
 ;;9002226.02101,"881,51655028050 ",.01)
 ;;51655028050
 ;;9002226.02101,"881,51655028050 ",.02)
 ;;51655028050
 ;;9002226.02101,"881,51655028052 ",.01)
 ;;51655028052
 ;;9002226.02101,"881,51655028052 ",.02)
 ;;51655028052
 ;;9002226.02101,"881,51655028053 ",.01)
 ;;51655028053
 ;;9002226.02101,"881,51655028053 ",.02)
 ;;51655028053
 ;;9002226.02101,"881,51655029224 ",.01)
 ;;51655029224
 ;;9002226.02101,"881,51655029224 ",.02)
 ;;51655029224
 ;;9002226.02101,"881,51655029252 ",.01)
 ;;51655029252
 ;;9002226.02101,"881,51655029252 ",.02)
 ;;51655029252
 ;;9002226.02101,"881,51655029253 ",.01)
 ;;51655029253
 ;;9002226.02101,"881,51655029253 ",.02)
 ;;51655029253
 ;;9002226.02101,"881,51655062024 ",.01)
 ;;51655062024
 ;;9002226.02101,"881,51655062024 ",.02)
 ;;51655062024
 ;;9002226.02101,"881,51655067924 ",.01)
 ;;51655067924
 ;;9002226.02101,"881,51655067924 ",.02)
 ;;51655067924
 ;;9002226.02101,"881,51655067925 ",.01)
 ;;51655067925
 ;;9002226.02101,"881,51655067925 ",.02)
 ;;51655067925
 ;;9002226.02101,"881,51655067952 ",.01)
 ;;51655067952
 ;;9002226.02101,"881,51655067952 ",.02)
 ;;51655067952
 ;;9002226.02101,"881,51655067953 ",.01)
 ;;51655067953
 ;;9002226.02101,"881,51655067953 ",.02)
 ;;51655067953
 ;;9002226.02101,"881,51655067984 ",.01)
 ;;51655067984
 ;;9002226.02101,"881,51655067984 ",.02)
 ;;51655067984
 ;;9002226.02101,"881,51655072324 ",.01)
 ;;51655072324
 ;;9002226.02101,"881,51655072324 ",.02)
 ;;51655072324
 ;;9002226.02101,"881,51655072352 ",.01)
 ;;51655072352
 ;;9002226.02101,"881,51655072352 ",.02)
 ;;51655072352
 ;;9002226.02101,"881,51655072353 ",.01)
 ;;51655072353
 ;;9002226.02101,"881,51655072353 ",.02)
 ;;51655072353
 ;;9002226.02101,"881,51660016130 ",.01)
 ;;51660016130
 ;;9002226.02101,"881,51660016130 ",.02)
 ;;51660016130
 ;;9002226.02101,"881,51660016190 ",.01)
 ;;51660016190
 ;;9002226.02101,"881,51660016190 ",.02)
 ;;51660016190
 ;;9002226.02101,"881,51660016230 ",.01)
 ;;51660016230
 ;;9002226.02101,"881,51660016230 ",.02)
 ;;51660016230
 ;;9002226.02101,"881,51660016290 ",.01)
 ;;51660016290
 ;;9002226.02101,"881,51660016290 ",.02)
 ;;51660016290
 ;;9002226.02101,"881,51660016330 ",.01)
 ;;51660016330
 ;;9002226.02101,"881,51660016330 ",.02)
 ;;51660016330
 ;;9002226.02101,"881,51660016390 ",.01)
 ;;51660016390
 ;;9002226.02101,"881,51660016390 ",.02)
 ;;51660016390
 ;;9002226.02101,"881,51660052201 ",.01)
 ;;51660052201
 ;;9002226.02101,"881,51660052201 ",.02)
 ;;51660052201
 ;;9002226.02101,"881,51660052210 ",.01)
 ;;51660052210
 ;;9002226.02101,"881,51660052210 ",.02)
 ;;51660052210
 ;;9002226.02101,"881,51660052301 ",.01)
 ;;51660052301
 ;;9002226.02101,"881,51660052301 ",.02)
 ;;51660052301
 ;;9002226.02101,"881,51660052310 ",.01)
 ;;51660052310
 ;;9002226.02101,"881,51660052310 ",.02)
 ;;51660052310
 ;;9002226.02101,"881,51660052401 ",.01)
 ;;51660052401
 ;;9002226.02101,"881,51660052401 ",.02)
 ;;51660052401
 ;;9002226.02101,"881,51660052410 ",.01)
 ;;51660052410
 ;;9002226.02101,"881,51660052410 ",.02)
 ;;51660052410
 ;;9002226.02101,"881,51660052501 ",.01)
 ;;51660052501
 ;;9002226.02101,"881,51660052501 ",.02)
 ;;51660052501
 ;;9002226.02101,"881,51660052510 ",.01)
 ;;51660052510
 ;;9002226.02101,"881,51660052510 ",.02)
 ;;51660052510
 ;;9002226.02101,"881,51660053101 ",.01)
 ;;51660053101
 ;;9002226.02101,"881,51660053101 ",.02)
 ;;51660053101
 ;;9002226.02101,"881,51660053201 ",.01)
 ;;51660053201
 ;;9002226.02101,"881,51660053201 ",.02)
 ;;51660053201
 ;;9002226.02101,"881,51660053210 ",.01)
 ;;51660053210
 ;;9002226.02101,"881,51660053210 ",.02)
 ;;51660053210
 ;;9002226.02101,"881,51660053301 ",.01)
 ;;51660053301
 ;;9002226.02101,"881,51660053301 ",.02)
 ;;51660053301
 ;;9002226.02101,"881,51660053310 ",.01)
 ;;51660053310
 ;;9002226.02101,"881,51660053310 ",.02)
 ;;51660053310
 ;;9002226.02101,"881,51660053401 ",.01)
 ;;51660053401
 ;;9002226.02101,"881,51660053401 ",.02)
 ;;51660053401
 ;;9002226.02101,"881,51660053410 ",.01)
 ;;51660053410
 ;;9002226.02101,"881,51660053410 ",.02)
 ;;51660053410
 ;;9002226.02101,"881,51660053501 ",.01)
 ;;51660053501
 ;;9002226.02101,"881,51660053501 ",.02)
 ;;51660053501
 ;;9002226.02101,"881,51660053510 ",.01)
 ;;51660053510
 ;;9002226.02101,"881,51660053510 ",.02)
 ;;51660053510
 ;;9002226.02101,"881,51660053601 ",.01)
 ;;51660053601
 ;;9002226.02101,"881,51660053601 ",.02)
 ;;51660053601
 ;;9002226.02101,"881,51660053701 ",.01)
 ;;51660053701
 ;;9002226.02101,"881,51660053701 ",.02)
 ;;51660053701
 ;;9002226.02101,"881,51660053801 ",.01)
 ;;51660053801
 ;;9002226.02101,"881,51660053801 ",.02)
 ;;51660053801
 ;;9002226.02101,"881,51660054890 ",.01)
 ;;51660054890
 ;;9002226.02101,"881,51660054890 ",.02)
 ;;51660054890
 ;;9002226.02101,"881,51660054990 ",.01)
 ;;51660054990
 ;;9002226.02101,"881,51660054990 ",.02)
 ;;51660054990
 ;;9002226.02101,"881,51660055090 ",.01)
 ;;51660055090
 ;;9002226.02101,"881,51660055090 ",.02)
 ;;51660055090
 ;;9002226.02101,"881,51660055190 ",.01)
 ;;51660055190
 ;;9002226.02101,"881,51660055190 ",.02)
 ;;51660055190
 ;;9002226.02101,"881,51672403701 ",.01)
 ;;51672403701
 ;;9002226.02101,"881,51672403701 ",.02)
 ;;51672403701
 ;;9002226.02101,"881,51672403703 ",.01)
 ;;51672403703
 ;;9002226.02101,"881,51672403703 ",.02)
 ;;51672403703
 ;;9002226.02101,"881,51672403801 ",.01)
 ;;51672403801
 ;;9002226.02101,"881,51672403801 ",.02)
 ;;51672403801
 ;;9002226.02101,"881,51672403803 ",.01)
 ;;51672403803
 ;;9002226.02101,"881,51672403803 ",.02)
 ;;51672403803
 ;;9002226.02101,"881,51672403901 ",.01)
 ;;51672403901
 ;;9002226.02101,"881,51672403901 ",.02)
 ;;51672403901
 ;;9002226.02101,"881,51672403903 ",.01)
 ;;51672403903
 ;;9002226.02101,"881,51672403903 ",.02)
 ;;51672403903
 ;;9002226.02101,"881,51672404001 ",.01)
 ;;51672404001
 ;;9002226.02101,"881,51672404001 ",.02)
 ;;51672404001
 ;;9002226.02101,"881,51672404003 ",.01)
 ;;51672404003
 ;;9002226.02101,"881,51672404003 ",.02)
 ;;51672404003
 ;;9002226.02101,"881,51672404501 ",.01)
 ;;51672404501
 ;;9002226.02101,"881,51672404501 ",.02)
 ;;51672404501
 ;;9002226.02101,"881,51672404503 ",.01)
 ;;51672404503
 ;;9002226.02101,"881,51672404503 ",.02)
 ;;51672404503
 ;;9002226.02101,"881,51672404601 ",.01)
 ;;51672404601
 ;;9002226.02101,"881,51672404601 ",.02)
 ;;51672404601
 ;;9002226.02101,"881,51672404603 ",.01)
 ;;51672404603
 ;;9002226.02101,"881,51672404603 ",.02)
 ;;51672404603
 ;;9002226.02101,"881,51875095502 ",.01)
 ;;51875095502
 ;;9002226.02101,"881,51875095502 ",.02)
 ;;51875095502
 ;;9002226.02101,"881,51875095505 ",.01)
 ;;51875095505
 ;;9002226.02101,"881,51875095505 ",.02)
 ;;51875095505
 ;;9002226.02101,"881,52544066801 ",.01)
 ;;52544066801
 ;;9002226.02101,"881,52544066801 ",.02)
 ;;52544066801
 ;;9002226.02101,"881,52544066805 ",.01)
 ;;52544066805
 ;;9002226.02101,"881,52544066805 ",.02)
 ;;52544066805
 ;;9002226.02101,"881,52544066901 ",.01)
 ;;52544066901
 ;;9002226.02101,"881,52544066901 ",.02)
 ;;52544066901
 ;;9002226.02101,"881,52544066905 ",.01)
 ;;52544066905
 ;;9002226.02101,"881,52544066905 ",.02)
 ;;52544066905
 ;;9002226.02101,"881,52544067001 ",.01)
 ;;52544067001
 ;;9002226.02101,"881,52544067001 ",.02)
 ;;52544067001
 ;;9002226.02101,"881,52544067005 ",.01)
 ;;52544067005
 ;;9002226.02101,"881,52544067005 ",.02)
 ;;52544067005
 ;;9002226.02101,"881,52544067101 ",.01)
 ;;52544067101
 ;;9002226.02101,"881,52544067101 ",.02)
 ;;52544067101
 ;;9002226.02101,"881,52544068801 ",.01)
 ;;52544068801
 ;;9002226.02101,"881,52544068801 ",.02)
 ;;52544068801
 ;;9002226.02101,"881,52544068805 ",.01)
 ;;52544068805
 ;;9002226.02101,"881,52544068805 ",.02)
 ;;52544068805
 ;;9002226.02101,"881,52544068901 ",.01)
 ;;52544068901
 ;;9002226.02101,"881,52544068901 ",.02)
 ;;52544068901
 ;;9002226.02101,"881,52544068905 ",.01)
 ;;52544068905
 ;;9002226.02101,"881,52544068905 ",.02)
 ;;52544068905
 ;;9002226.02101,"881,52544069101 ",.01)
 ;;52544069101
 ;;9002226.02101,"881,52544069101 ",.02)
 ;;52544069101
 ;;9002226.02101,"881,52549403901 ",.01)
 ;;52549403901
 ;;9002226.02101,"881,52549403901 ",.02)
 ;;52549403901
 ;;9002226.02101,"881,52549403902 ",.01)
 ;;52549403902
 ;;9002226.02101,"881,52549403902 ",.02)
 ;;52549403902
 ;;9002226.02101,"881,52549403903 ",.01)
 ;;52549403903
 ;;9002226.02101,"881,52549403903 ",.02)
 ;;52549403903
 ;;9002226.02101,"881,52549404001 ",.01)
 ;;52549404001
 ;;9002226.02101,"881,52549404001 ",.02)
 ;;52549404001
 ;;9002226.02101,"881,52549404002 ",.01)
 ;;52549404002
 ;;9002226.02101,"881,52549404002 ",.02)
 ;;52549404002
 ;;9002226.02101,"881,52549404003 ",.01)
 ;;52549404003
 ;;9002226.02101,"881,52549404003 ",.02)
 ;;52549404003