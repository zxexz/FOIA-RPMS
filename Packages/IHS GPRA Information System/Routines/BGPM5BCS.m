BGPM5BCS ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON SEP 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1044,54868614001 ",.01)
 ;;54868614001
 ;;9002226.02101,"1044,54868614001 ",.02)
 ;;54868614001
 ;;9002226.02101,"1044,54868614100 ",.01)
 ;;54868614100
 ;;9002226.02101,"1044,54868614100 ",.02)
 ;;54868614100
 ;;9002226.02101,"1044,54868614101 ",.01)
 ;;54868614101
 ;;9002226.02101,"1044,54868614101 ",.02)
 ;;54868614101
 ;;9002226.02101,"1044,54868614102 ",.01)
 ;;54868614102
 ;;9002226.02101,"1044,54868614102 ",.02)
 ;;54868614102
 ;;9002226.02101,"1044,54868617800 ",.01)
 ;;54868617800
 ;;9002226.02101,"1044,54868617800 ",.02)
 ;;54868617800
 ;;9002226.02101,"1044,54868624700 ",.01)
 ;;54868624700
 ;;9002226.02101,"1044,54868624700 ",.02)
 ;;54868624700
 ;;9002226.02101,"1044,55045071506 ",.01)
 ;;55045071506
 ;;9002226.02101,"1044,55045071506 ",.02)
 ;;55045071506
 ;;9002226.02101,"1044,55045146300 ",.01)
 ;;55045146300
 ;;9002226.02101,"1044,55045146300 ",.02)
 ;;55045146300
 ;;9002226.02101,"1044,55045146301 ",.01)
 ;;55045146301
 ;;9002226.02101,"1044,55045146301 ",.02)
 ;;55045146301
 ;;9002226.02101,"1044,55045146302 ",.01)
 ;;55045146302
 ;;9002226.02101,"1044,55045146302 ",.02)
 ;;55045146302
 ;;9002226.02101,"1044,55045146303 ",.01)
 ;;55045146303
 ;;9002226.02101,"1044,55045146303 ",.02)
 ;;55045146303
 ;;9002226.02101,"1044,55045146304 ",.01)
 ;;55045146304
 ;;9002226.02101,"1044,55045146304 ",.02)
 ;;55045146304
 ;;9002226.02101,"1044,55045146306 ",.01)
 ;;55045146306
 ;;9002226.02101,"1044,55045146306 ",.02)
 ;;55045146306
 ;;9002226.02101,"1044,55045146307 ",.01)
 ;;55045146307
 ;;9002226.02101,"1044,55045146307 ",.02)
 ;;55045146307
 ;;9002226.02101,"1044,55045146308 ",.01)
 ;;55045146308
 ;;9002226.02101,"1044,55045146308 ",.02)
 ;;55045146308
 ;;9002226.02101,"1044,55045146309 ",.01)
 ;;55045146309
 ;;9002226.02101,"1044,55045146309 ",.02)
 ;;55045146309
 ;;9002226.02101,"1044,55045159200 ",.01)
 ;;55045159200
 ;;9002226.02101,"1044,55045159200 ",.02)
 ;;55045159200
 ;;9002226.02101,"1044,55045159201 ",.01)
 ;;55045159201
 ;;9002226.02101,"1044,55045159201 ",.02)
 ;;55045159201
 ;;9002226.02101,"1044,55045159205 ",.01)
 ;;55045159205
 ;;9002226.02101,"1044,55045159205 ",.02)
 ;;55045159205
 ;;9002226.02101,"1044,55045159206 ",.01)
 ;;55045159206
 ;;9002226.02101,"1044,55045159206 ",.02)
 ;;55045159206
 ;;9002226.02101,"1044,55045159208 ",.01)
 ;;55045159208
 ;;9002226.02101,"1044,55045159208 ",.02)
 ;;55045159208
 ;;9002226.02101,"1044,55045159209 ",.01)
 ;;55045159209
 ;;9002226.02101,"1044,55045159209 ",.02)
 ;;55045159209
 ;;9002226.02101,"1044,55045168200 ",.01)
 ;;55045168200
 ;;9002226.02101,"1044,55045168200 ",.02)
 ;;55045168200
 ;;9002226.02101,"1044,55045168201 ",.01)
 ;;55045168201
 ;;9002226.02101,"1044,55045168201 ",.02)
 ;;55045168201
 ;;9002226.02101,"1044,55045168202 ",.01)
 ;;55045168202
 ;;9002226.02101,"1044,55045168202 ",.02)
 ;;55045168202
 ;;9002226.02101,"1044,55045168203 ",.01)
 ;;55045168203
 ;;9002226.02101,"1044,55045168203 ",.02)
 ;;55045168203
 ;;9002226.02101,"1044,55045168204 ",.01)
 ;;55045168204
 ;;9002226.02101,"1044,55045168204 ",.02)
 ;;55045168204
 ;;9002226.02101,"1044,55045168205 ",.01)
 ;;55045168205
 ;;9002226.02101,"1044,55045168205 ",.02)
 ;;55045168205
 ;;9002226.02101,"1044,55045168206 ",.01)
 ;;55045168206
 ;;9002226.02101,"1044,55045168206 ",.02)
 ;;55045168206
 ;;9002226.02101,"1044,55045168208 ",.01)
 ;;55045168208
 ;;9002226.02101,"1044,55045168208 ",.02)
 ;;55045168208
 ;;9002226.02101,"1044,55045168209 ",.01)
 ;;55045168209
 ;;9002226.02101,"1044,55045168209 ",.02)
 ;;55045168209
 ;;9002226.02101,"1044,55045171500 ",.01)
 ;;55045171500
 ;;9002226.02101,"1044,55045171500 ",.02)
 ;;55045171500
 ;;9002226.02101,"1044,55045171501 ",.01)
 ;;55045171501
 ;;9002226.02101,"1044,55045171501 ",.02)
 ;;55045171501
 ;;9002226.02101,"1044,55045171502 ",.01)
 ;;55045171502
 ;;9002226.02101,"1044,55045171502 ",.02)
 ;;55045171502
 ;;9002226.02101,"1044,55045171503 ",.01)
 ;;55045171503
 ;;9002226.02101,"1044,55045171503 ",.02)
 ;;55045171503
 ;;9002226.02101,"1044,55045171507 ",.01)
 ;;55045171507
 ;;9002226.02101,"1044,55045171507 ",.02)
 ;;55045171507
 ;;9002226.02101,"1044,55045171508 ",.01)
 ;;55045171508
 ;;9002226.02101,"1044,55045171508 ",.02)
 ;;55045171508
 ;;9002226.02101,"1044,55045171509 ",.01)
 ;;55045171509
 ;;9002226.02101,"1044,55045171509 ",.02)
 ;;55045171509
 ;;9002226.02101,"1044,55045172100 ",.01)
 ;;55045172100
 ;;9002226.02101,"1044,55045172100 ",.02)
 ;;55045172100
 ;;9002226.02101,"1044,55045172108 ",.01)
 ;;55045172108
 ;;9002226.02101,"1044,55045172108 ",.02)
 ;;55045172108
 ;;9002226.02101,"1044,55045172201 ",.01)
 ;;55045172201
 ;;9002226.02101,"1044,55045172201 ",.02)
 ;;55045172201
 ;;9002226.02101,"1044,55045172208 ",.01)
 ;;55045172208
 ;;9002226.02101,"1044,55045172208 ",.02)
 ;;55045172208
 ;;9002226.02101,"1044,55045172400 ",.01)
 ;;55045172400
 ;;9002226.02101,"1044,55045172400 ",.02)
 ;;55045172400
 ;;9002226.02101,"1044,55045172401 ",.01)
 ;;55045172401
 ;;9002226.02101,"1044,55045172401 ",.02)
 ;;55045172401
 ;;9002226.02101,"1044,55045172406 ",.01)
 ;;55045172406
 ;;9002226.02101,"1044,55045172406 ",.02)
 ;;55045172406
 ;;9002226.02101,"1044,55045172408 ",.01)
 ;;55045172408
 ;;9002226.02101,"1044,55045172408 ",.02)
 ;;55045172408
 ;;9002226.02101,"1044,55045172409 ",.01)
 ;;55045172409
 ;;9002226.02101,"1044,55045172409 ",.02)
 ;;55045172409
 ;;9002226.02101,"1044,55045174100 ",.01)
 ;;55045174100
 ;;9002226.02101,"1044,55045174100 ",.02)
 ;;55045174100
 ;;9002226.02101,"1044,55045174101 ",.01)
 ;;55045174101
 ;;9002226.02101,"1044,55045174101 ",.02)
 ;;55045174101
 ;;9002226.02101,"1044,55045174102 ",.01)
 ;;55045174102
 ;;9002226.02101,"1044,55045174102 ",.02)
 ;;55045174102
 ;;9002226.02101,"1044,55045174103 ",.01)
 ;;55045174103
 ;;9002226.02101,"1044,55045174103 ",.02)
 ;;55045174103
 ;;9002226.02101,"1044,55045174105 ",.01)
 ;;55045174105
 ;;9002226.02101,"1044,55045174105 ",.02)
 ;;55045174105
 ;;9002226.02101,"1044,55045174106 ",.01)
 ;;55045174106
 ;;9002226.02101,"1044,55045174106 ",.02)
 ;;55045174106
 ;;9002226.02101,"1044,55045174108 ",.01)
 ;;55045174108
 ;;9002226.02101,"1044,55045174108 ",.02)
 ;;55045174108
 ;;9002226.02101,"1044,55045174109 ",.01)
 ;;55045174109
 ;;9002226.02101,"1044,55045174109 ",.02)
 ;;55045174109
 ;;9002226.02101,"1044,55045174202 ",.01)
 ;;55045174202
 ;;9002226.02101,"1044,55045174202 ",.02)
 ;;55045174202
 ;;9002226.02101,"1044,55045179401 ",.01)
 ;;55045179401
 ;;9002226.02101,"1044,55045179401 ",.02)
 ;;55045179401
 ;;9002226.02101,"1044,55045179408 ",.01)
 ;;55045179408
 ;;9002226.02101,"1044,55045179408 ",.02)
 ;;55045179408
 ;;9002226.02101,"1044,55045180008 ",.01)
 ;;55045180008
 ;;9002226.02101,"1044,55045180008 ",.02)
 ;;55045180008
 ;;9002226.02101,"1044,55045192001 ",.01)
 ;;55045192001
 ;;9002226.02101,"1044,55045192001 ",.02)
 ;;55045192001
 ;;9002226.02101,"1044,55045192002 ",.01)
 ;;55045192002
 ;;9002226.02101,"1044,55045192002 ",.02)
 ;;55045192002
 ;;9002226.02101,"1044,55045192006 ",.01)
 ;;55045192006
 ;;9002226.02101,"1044,55045192006 ",.02)
 ;;55045192006
 ;;9002226.02101,"1044,55045192008 ",.01)
 ;;55045192008
 ;;9002226.02101,"1044,55045192008 ",.02)
 ;;55045192008
 ;;9002226.02101,"1044,55045192009 ",.01)
 ;;55045192009
 ;;9002226.02101,"1044,55045192009 ",.02)
 ;;55045192009
 ;;9002226.02101,"1044,55045195601 ",.01)
 ;;55045195601
 ;;9002226.02101,"1044,55045195601 ",.02)
 ;;55045195601
 ;;9002226.02101,"1044,55045195602 ",.01)
 ;;55045195602
 ;;9002226.02101,"1044,55045195602 ",.02)
 ;;55045195602
 ;;9002226.02101,"1044,55045195604 ",.01)
 ;;55045195604
 ;;9002226.02101,"1044,55045195604 ",.02)
 ;;55045195604
 ;;9002226.02101,"1044,55045195606 ",.01)
 ;;55045195606
 ;;9002226.02101,"1044,55045195606 ",.02)
 ;;55045195606
 ;;9002226.02101,"1044,55045195608 ",.01)
 ;;55045195608
 ;;9002226.02101,"1044,55045195608 ",.02)
 ;;55045195608
 ;;9002226.02101,"1044,55045195609 ",.01)
 ;;55045195609
 ;;9002226.02101,"1044,55045195609 ",.02)
 ;;55045195609
 ;;9002226.02101,"1044,55045198202 ",.01)
 ;;55045198202
 ;;9002226.02101,"1044,55045198202 ",.02)
 ;;55045198202
 ;;9002226.02101,"1044,55045198208 ",.01)
 ;;55045198208
 ;;9002226.02101,"1044,55045198208 ",.02)
 ;;55045198208
 ;;9002226.02101,"1044,55045198209 ",.01)
 ;;55045198209
 ;;9002226.02101,"1044,55045198209 ",.02)
 ;;55045198209
 ;;9002226.02101,"1044,55045215301 ",.01)
 ;;55045215301
 ;;9002226.02101,"1044,55045215301 ",.02)
 ;;55045215301
 ;;9002226.02101,"1044,55045215308 ",.01)
 ;;55045215308
 ;;9002226.02101,"1044,55045215308 ",.02)
 ;;55045215308
 ;;9002226.02101,"1044,55045236008 ",.01)
 ;;55045236008
 ;;9002226.02101,"1044,55045236008 ",.02)
 ;;55045236008
 ;;9002226.02101,"1044,55045250900 ",.01)
 ;;55045250900
 ;;9002226.02101,"1044,55045250900 ",.02)
 ;;55045250900
 ;;9002226.02101,"1044,55045250901 ",.01)
 ;;55045250901
 ;;9002226.02101,"1044,55045250901 ",.02)
 ;;55045250901
 ;;9002226.02101,"1044,55045250906 ",.01)
 ;;55045250906
 ;;9002226.02101,"1044,55045250906 ",.02)
 ;;55045250906
 ;;9002226.02101,"1044,55045250908 ",.01)
 ;;55045250908
 ;;9002226.02101,"1044,55045250908 ",.02)
 ;;55045250908
 ;;9002226.02101,"1044,55045250909 ",.01)
 ;;55045250909
 ;;9002226.02101,"1044,55045250909 ",.02)
 ;;55045250909
 ;;9002226.02101,"1044,55045269806 ",.01)
 ;;55045269806
 ;;9002226.02101,"1044,55045269806 ",.02)
 ;;55045269806
 ;;9002226.02101,"1044,55045269808 ",.01)
 ;;55045269808
 ;;9002226.02101,"1044,55045269808 ",.02)
 ;;55045269808
 ;;9002226.02101,"1044,55045279506 ",.01)
 ;;55045279506
 ;;9002226.02101,"1044,55045279506 ",.02)
 ;;55045279506
 ;;9002226.02101,"1044,55045290700 ",.01)
 ;;55045290700
 ;;9002226.02101,"1044,55045290700 ",.02)
 ;;55045290700
 ;;9002226.02101,"1044,55045290702 ",.01)
 ;;55045290702
 ;;9002226.02101,"1044,55045290702 ",.02)
 ;;55045290702
 ;;9002226.02101,"1044,55045290706 ",.01)
 ;;55045290706
 ;;9002226.02101,"1044,55045290706 ",.02)
 ;;55045290706
 ;;9002226.02101,"1044,55045290708 ",.01)
 ;;55045290708
 ;;9002226.02101,"1044,55045290708 ",.02)
 ;;55045290708
 ;;9002226.02101,"1044,55045290709 ",.01)
 ;;55045290709
 ;;9002226.02101,"1044,55045290709 ",.02)
 ;;55045290709
 ;;9002226.02101,"1044,55045290800 ",.01)
 ;;55045290800
 ;;9002226.02101,"1044,55045290800 ",.02)
 ;;55045290800
 ;;9002226.02101,"1044,55045290802 ",.01)
 ;;55045290802
 ;;9002226.02101,"1044,55045290802 ",.02)
 ;;55045290802
 ;;9002226.02101,"1044,55045290806 ",.01)
 ;;55045290806
 ;;9002226.02101,"1044,55045290806 ",.02)
 ;;55045290806
 ;;9002226.02101,"1044,55045290808 ",.01)
 ;;55045290808
 ;;9002226.02101,"1044,55045290808 ",.02)
 ;;55045290808
 ;;9002226.02101,"1044,55045290809 ",.01)
 ;;55045290809
 ;;9002226.02101,"1044,55045290809 ",.02)
 ;;55045290809
 ;;9002226.02101,"1044,55045313708 ",.01)
 ;;55045313708
 ;;9002226.02101,"1044,55045313708 ",.02)
 ;;55045313708
 ;;9002226.02101,"1044,55045317108 ",.01)
 ;;55045317108
 ;;9002226.02101,"1044,55045317108 ",.02)
 ;;55045317108
 ;;9002226.02101,"1044,55045317208 ",.01)
 ;;55045317208
 ;;9002226.02101,"1044,55045317208 ",.02)
 ;;55045317208
 ;;9002226.02101,"1044,55045317209 ",.01)
 ;;55045317209
 ;;9002226.02101,"1044,55045317209 ",.02)
 ;;55045317209
 ;;9002226.02101,"1044,55045318506 ",.01)
 ;;55045318506
 ;;9002226.02101,"1044,55045318506 ",.02)
 ;;55045318506
 ;;9002226.02101,"1044,55045334100 ",.01)
 ;;55045334100
 ;;9002226.02101,"1044,55045334100 ",.02)
 ;;55045334100
 ;;9002226.02101,"1044,55045334106 ",.01)
 ;;55045334106