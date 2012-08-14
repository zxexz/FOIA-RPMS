BGP12XC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-5397-00 ")
 ;;432
 ;;21,"54868-5397-01 ")
 ;;433
 ;;21,"54868-5407-00 ")
 ;;1067
 ;;21,"54868-5407-01 ")
 ;;1068
 ;;21,"54868-5470-00 ")
 ;;21
 ;;21,"54868-5470-01 ")
 ;;22
 ;;21,"54868-5479-00 ")
 ;;274
 ;;21,"54868-5479-01 ")
 ;;275
 ;;21,"54868-5544-00 ")
 ;;1069
 ;;21,"54868-5544-01 ")
 ;;1070
 ;;21,"54868-5544-02 ")
 ;;1071
 ;;21,"54868-5720-00 ")
 ;;1072
 ;;21,"54868-5720-01 ")
 ;;1073
 ;;21,"54868-5832-00 ")
 ;;530
 ;;21,"54868-5832-01 ")
 ;;531
 ;;21,"54868-6029-00 ")
 ;;146
 ;;21,"54868-6033-00 ")
 ;;147
 ;;21,"54868-6034-00 ")
 ;;148
 ;;21,"55045-1264-08 ")
 ;;913
 ;;21,"55045-1283-00 ")
 ;;324
 ;;21,"55045-1283-08 ")
 ;;325
 ;;21,"55045-1689-08 ")
 ;;914
 ;;21,"55045-1745-06 ")
 ;;189
 ;;21,"55045-1745-08 ")
 ;;190
 ;;21,"55045-2954-08 ")
 ;;619
 ;;21,"55045-3817-08 ")
 ;;620
 ;;21,"55289-0158-90 ")
 ;;160
 ;;21,"55289-0300-07 ")
 ;;621
 ;;21,"55289-0302-07 ")
 ;;687
 ;;21,"55289-0302-14 ")
 ;;688
 ;;21,"55289-0302-28 ")
 ;;689
 ;;21,"55289-0302-30 ")
 ;;690
 ;;21,"55289-0313-07 ")
 ;;915
 ;;21,"55289-0313-14 ")
 ;;916
 ;;21,"55289-0313-16 ")
 ;;917
 ;;21,"55289-0313-21 ")
 ;;918
 ;;21,"55289-0313-28 ")
 ;;919
 ;;21,"55289-0313-30 ")
 ;;920
 ;;21,"55289-0313-60 ")
 ;;921
 ;;21,"55289-0368-07 ")
 ;;375
 ;;21,"55289-0368-14 ")
 ;;376
 ;;21,"55289-0368-30 ")
 ;;377
 ;;21,"55289-0379-30 ")
 ;;62
 ;;21,"55289-0432-28 ")
 ;;287
 ;;21,"55289-0432-56 ")
 ;;288
 ;;21,"55289-0432-60 ")
 ;;289
 ;;21,"55289-0432-90 ")
 ;;290
 ;;21,"55289-0537-30 ")
 ;;191
 ;;21,"55289-0624-07 ")
 ;;922
 ;;21,"55289-0624-14 ")
 ;;923
 ;;21,"55289-0624-28 ")
 ;;924
 ;;21,"55289-0624-30 ")
 ;;925
 ;;21,"55289-0680-60 ")
 ;;115
 ;;21,"55289-0680-90 ")
 ;;116
 ;;21,"55289-0700-30 ")
 ;;117
 ;;21,"55289-0700-60 ")
 ;;118
 ;;21,"55289-0700-90 ")
 ;;119
 ;;21,"55289-0701-07 ")
 ;;926
 ;;21,"55289-0701-14 ")
 ;;927
 ;;21,"55289-0701-15 ")
 ;;928
 ;;21,"55289-0701-21 ")
 ;;929
 ;;21,"55289-0701-28 ")
 ;;930
 ;;21,"55289-0701-30 ")
 ;;931
 ;;21,"55289-0701-45 ")
 ;;932
 ;;21,"55289-0701-60 ")
 ;;933
 ;;21,"55289-0701-90 ")
 ;;934
 ;;21,"55289-0701-98 ")
 ;;935
 ;;21,"55289-0722-60 ")
 ;;120
 ;;21,"55289-0722-90 ")
 ;;121
 ;;21,"55289-0791-07 ")
 ;;936
 ;;21,"55289-0791-14 ")
 ;;937
 ;;21,"55289-0791-15 ")
 ;;938
 ;;21,"55289-0791-21 ")
 ;;939
 ;;21,"55289-0791-28 ")
 ;;940
 ;;21,"55289-0791-30 ")
 ;;941
 ;;21,"55289-0791-60 ")
 ;;942
 ;;21,"55289-0794-01 ")
 ;;326
 ;;21,"55289-0794-07 ")
 ;;327
 ;;21,"55289-0794-14 ")
 ;;328
 ;;21,"55289-0794-21 ")
 ;;329
 ;;21,"55289-0794-28 ")
 ;;330
 ;;21,"55289-0794-30 ")
 ;;331
 ;;21,"55289-0794-56 ")
 ;;332
 ;;21,"55289-0794-93 ")
 ;;333
 ;;21,"55289-0819-30 ")
 ;;532
 ;;21,"55289-0819-60 ")
 ;;533
 ;;21,"55289-0819-90 ")
 ;;534
 ;;21,"55289-0829-30 ")
 ;;535
 ;;21,"55289-0829-60 ")
 ;;536
 ;;21,"55289-0829-90 ")
 ;;537
 ;;21,"55289-0834-07 ")
 ;;622
 ;;21,"55289-0834-14 ")
 ;;623
 ;;21,"55289-0834-21 ")
 ;;624
 ;;21,"55289-0834-28 ")
 ;;625
 ;;21,"55289-0834-30 ")
 ;;626
 ;;21,"55289-0834-56 ")
 ;;627
 ;;21,"55289-0834-60 ")
 ;;628
 ;;21,"55289-0834-84 ")
 ;;629
 ;;21,"55289-0834-86 ")
 ;;630
 ;;21,"55289-0834-88 ")
 ;;631
 ;;21,"55289-0834-89 ")
 ;;632
 ;;21,"55289-0834-90 ")
 ;;633
 ;;21,"55289-0834-93 ")
 ;;634
 ;;21,"55289-0834-98 ")
 ;;635
 ;;21,"55289-0834-99 ")
 ;;636
 ;;21,"55289-0835-30 ")
 ;;228
 ;;21,"55289-0835-90 ")
 ;;229
 ;;21,"55289-0854-30 ")
 ;;230
 ;;21,"55289-0854-90 ")
 ;;231
 ;;21,"55289-0859-30 ")
 ;;232
 ;;21,"55289-0859-90 ")
 ;;233
 ;;21,"55289-0975-90 ")
 ;;234
 ;;21,"55499-1082-01 ")
 ;;417
 ;;21,"55887-0080-07 ")
 ;;943
 ;;21,"55887-0080-30 ")
 ;;944
 ;;21,"55887-0080-60 ")
 ;;945
 ;;21,"55887-0224-15 ")
 ;;691
 ;;21,"55887-0224-30 ")
 ;;692
 ;;21,"55887-0225-14 ")
 ;;637
 ;;21,"55887-0225-15 ")
 ;;638
 ;;21,"55887-0225-21 ")
 ;;639
 ;;21,"55887-0225-28 ")
 ;;640
 ;;21,"55887-0225-30 ")
 ;;641
 ;;21,"55887-0225-42 ")
 ;;642
 ;;21,"55887-0225-60 ")
 ;;643
 ;;21,"55887-0225-90 ")
 ;;644
 ;;21,"55887-0654-07 ")
 ;;378
 ;;21,"55887-0654-14 ")
 ;;379
 ;;21,"55887-0654-15 ")
 ;;380
 ;;21,"55887-0654-30 ")
 ;;381
 ;;21,"55887-0654-60 ")
 ;;382
 ;;21,"55887-0669-15 ")
 ;;334
 ;;21,"55887-0669-21 ")
 ;;335
 ;;21,"55887-0669-30 ")
 ;;336
 ;;21,"55887-0669-60 ")
 ;;337
 ;;21,"55887-0669-90 ")
 ;;338
 ;;21,"55887-0712-14 ")
 ;;946
 ;;21,"55887-0712-30 ")
 ;;947
 ;;21,"55887-0712-60 ")
 ;;948
 ;;21,"55887-0762-07 ")
 ;;949
 ;;21,"55887-0762-14 ")
 ;;950
 ;;21,"55887-0762-15 ")
 ;;951
 ;;21,"55887-0762-30 ")
 ;;952
 ;;21,"55887-0762-60 ")
 ;;953
 ;;21,"55887-0840-01 ")
 ;;954
 ;;21,"55887-0840-07 ")
 ;;955
 ;;21,"55887-0840-14 ")
 ;;956
 ;;21,"55887-0840-15 ")
 ;;957
 ;;21,"55887-0840-20 ")
 ;;958
 ;;21,"55887-0840-23 ")
 ;;959
 ;;21,"55887-0840-30 ")
 ;;960
 ;;21,"55887-0840-45 ")
 ;;961
 ;;21,"55887-0840-60 ")
 ;;962
 ;;21,"55887-0840-90 ")
 ;;963
 ;;21,"55887-0891-01 ")
 ;;964
 ;;21,"55887-0891-14 ")
 ;;965
 ;;21,"55887-0891-15 ")
 ;;966
 ;;21,"55887-0891-30 ")
 ;;967
 ;;21,"55887-0891-60 ")
 ;;968
 ;;21,"57664-0504-18 ")
 ;;969
 ;;21,"57664-0504-88 ")
 ;;970
 ;;21,"57844-0009-01 ")
 ;;63
 ;;21,"57844-0019-01 ")
 ;;64
 ;;21,"57866-9029-01 ")
 ;;971
 ;;21,"57866-9030-01 ")
 ;;972
 ;;21,"58016-0043-00 ")
 ;;65
 ;;21,"58016-0043-30 ")
 ;;66
 ;;21,"58016-0043-60 ")
 ;;67
 ;;21,"58016-0043-90 ")
 ;;68
 ;;21,"58016-0310-00 ")
 ;;973
 ;;21,"58016-0310-30 ")
 ;;974
 ;;21,"58016-0310-60 ")
 ;;975
 ;;21,"58016-0310-90 ")
 ;;976
 ;;21,"58016-0836-07 ")
 ;;383
 ;;21,"58016-0836-14 ")
 ;;384
 ;;21,"58016-0836-15 ")
 ;;385
 ;;21,"58016-0836-30 ")
 ;;386
 ;;21,"58016-0856-00 ")
 ;;339
 ;;21,"58016-0856-15 ")
 ;;340
 ;;21,"58016-0856-21 ")
 ;;341
 ;;21,"58016-0856-42 ")
 ;;342
 ;;21,"58177-0311-04 ")
 ;;276
 ;;21,"58177-0312-04 ")
 ;;277
 ;;21,"58521-0333-05 ")
 ;;559
 ;;21,"59630-0750-50 ")
 ;;448
 ;;21,"59630-0755-50 ")
 ;;449
 ;;21,"59630-0760-10 ")
 ;;450
 ;;21,"59630-0761-10 ")
 ;;451
 ;;21,"59630-0762-10 ")
 ;;452
 ;;21,"60793-0009-01 ")
 ;;977
 ;;21,"63304-0908-01 ")
 ;;122
 ;;21,"63304-0909-01 ")
 ;;123
 ;;21,"63304-0910-01 ")
 ;;124
 ;;21,"63304-0911-01 ")
 ;;125
 ;;21,"63629-1584-01 ")
 ;;978
 ;;21,"63629-1584-02 ")
 ;;979
 ;;21,"63629-1584-03 ")
 ;;980
 ;;21,"63629-1584-04 ")
 ;;981
 ;;21,"63629-1584-05 ")
 ;;982
 ;;21,"63629-1604-01 ")
 ;;645
 ;;21,"63629-1604-02 ")
 ;;646
 ;;21,"63629-1604-03 ")
 ;;647
 ;;21,"63629-1604-04 ")
 ;;648
 ;;21,"63629-2949-01 ")
 ;;983
 ;;21,"63629-2949-02 ")
 ;;984
 ;;21,"63629-2949-03 ")
 ;;985
 ;;21,"63629-2949-04 ")
 ;;986
 ;;21,"63629-2950-01 ")
 ;;987
 ;;21,"63629-2950-02 ")
 ;;988
 ;;21,"63629-2950-03 ")
 ;;989
 ;;21,"63629-2950-04 ")
 ;;990
 ;;21,"63629-3051-01 ")
 ;;693
 ;;21,"63629-3065-01 ")
 ;;558
 ;;21,"63629-3166-01 ")
 ;;538
 ;;21,"63629-3166-02 ")
 ;;539
 ;;21,"63629-3768-01 ")
 ;;126
 ;;21,"63629-3769-01 ")
 ;;127
 ;;21,"63874-0260-01 ")
 ;;991
 ;;21,"63874-0260-02 ")
 ;;992
 ;;21,"63874-0260-07 ")
 ;;993
 ;;21,"63874-0260-14 ")
 ;;994
 ;;21,"63874-0260-20 ")
 ;;995
 ;;21,"63874-0260-30 ")
 ;;996
 ;;21,"63874-0260-50 ")
 ;;997
 ;;21,"63874-0265-01 ")
 ;;387
 ;;21,"63874-0265-20 ")
 ;;388
 ;;21,"63874-0269-01 ")
 ;;649
 ;;21,"63874-0269-02 ")
 ;;650
 ;;21,"63874-0269-03 ")
 ;;651
 ;;21,"63874-0269-07 ")
 ;;652
 ;;21,"63874-0269-10 ")
 ;;653
 ;;21,"63874-0269-12 ")
 ;;654
 ;;21,"63874-0269-14 ")
 ;;655
 ;;21,"63874-0269-15 ")
 ;;656
 ;;21,"63874-0269-20 ")
 ;;657
 ;;21,"63874-0269-21 ")
 ;;658
 ;;21,"63874-0269-24 ")
 ;;659
 ;;21,"63874-0269-30 ")
 ;;660
 ;;21,"63874-0269-40 ")
 ;;661
 ;;21,"63874-0269-60 ")
 ;;662
 ;;21,"63874-0270-01 ")
 ;;998
 ;;21,"63874-0270-07 ")
 ;;999
 ;;21,"63874-0270-30 ")
 ;;1000
 ;;21,"63874-0271-01 ")
 ;;1001
 ;;21,"63874-0271-07 ")
 ;;1002
 ;;21,"63874-0271-14 ")
 ;;1003
 ;;21,"63874-0271-15 ")
 ;;1004
 ;;21,"63874-0271-30 ")
 ;;1005
 ;;21,"63874-0282-01 ")
 ;;1006
 ;;21,"63874-0282-02 ")
 ;;1007
 ;;21,"63874-0282-10 ")
 ;;1008
 ;;21,"63874-0282-14 ")
 ;;1009
 ;;21,"63874-0282-15 ")
 ;;1010
 ;;21,"63874-0282-30 ")
 ;;1011
 ;;21,"64376-0650-01 ")
 ;;161
 ;;21,"64376-0650-05 ")
 ;;162
 ;;21,"64376-0650-31 ")
 ;;163
 ;;21,"64376-0650-90 ")
 ;;164
 ;;21,"64720-0130-10 ")
 ;;128
 ;;21,"64720-0132-10 ")
 ;;129
 ;;21,"64720-0135-10 ")
 ;;130
 ;;21,"64720-0136-10 ")
 ;;131
 ;;21,"64720-0194-01 ")
 ;;165
 ;;21,"64720-0194-10 ")
 ;;166
 ;;21,"64720-0194-50 ")
 ;;167
 ;;21,"64720-0208-10 ")
 ;;343
 ;;21,"64980-0145-01 ")
 ;;168
 ;;21,"65234-0047-10 ")
 ;;192
 ;;21,"65234-0048-10 ")
 ;;176
 ;;21,"65234-0048-90 ")
 ;;177
 ;;21,"66267-0166-07 ")
 ;;1012
 ;;21,"66267-0166-30 ")
 ;;1013
 ;;21,"66267-0166-45 ")
 ;;1014
 ;;21,"66267-0166-60 ")
 ;;1015
 ;;21,"66267-0166-90 ")
 ;;1016
 ;;21,"66336-0133-07 ")
 ;;1017
 ;;21,"66336-0133-14 ")
 ;;1018
 ;;21,"66336-0133-28 ")
 ;;1019
 ;;21,"66336-0133-30 ")
 ;;1020
 ;;21,"66336-0185-07 ")
 ;;1021
 ;;21,"66336-0185-14 ")
 ;;1022
 ;;21,"66336-0185-28 ")
 ;;1023
 ;;21,"66336-0185-30 ")
 ;;1024
 ;;21,"66336-0185-42 ")
 ;;1025
 ;;21,"66336-0191-21 ")
 ;;663
 ;;21,"66336-0191-28 ")
 ;;664
 ;;21,"66336-0191-30 ")
 ;;665
 ;;21,"66336-0191-42 ")
 ;;666
 ;;21,"66336-0191-56 ")
 ;;667
 ;;21,"66336-0191-84 ")
 ;;668
 ;;21,"66336-0344-07 ")
 ;;1026
 ;;21,"66336-0344-14 ")
 ;;1027
 ;;21,"66336-0344-28 ")
 ;;1028
 ;;21,"66336-0344-30 ")
 ;;1029
 ;;21,"66336-0344-56 ")
 ;;1030
 ;;21,"66336-0344-84 ")
 ;;1031
 ;;21,"66336-0426-30 ")
 ;;1032
 ;;21,"66336-0562-07 ")
 ;;694
 ;;21,"66336-0678-21 ")
 ;;291
 ;;21,"66336-0689-07 ")
 ;;389
 ;;21,"66336-0689-14 ")
 ;;390
 ;;21,"66336-0689-28 ")
 ;;391
 ;;21,"66336-0689-30 ")
 ;;392
 ;;21,"66336-0763-07 ")
 ;;1033
 ;;21,"66336-0763-14 ")
 ;;1034
 ;;21,"66336-0763-28 ")
 ;;1035
 ;;21,"66336-0763-30 ")
 ;;1036
 ;;21,"66336-0779-07 ")
 ;;193
 ;;21,"66336-0779-14 ")
 ;;194
 ;;21,"66336-0779-28 ")
 ;;195
 ;;21,"66336-0864-14 ")
 ;;344
 ;;21,"66336-0864-28 ")
 ;;345
 ;;21,"66336-0864-30 ")
 ;;346
 ;;21,"66336-0864-42 ")
 ;;347
 ;;21,"66336-0864-60 ")
 ;;348
 ;;21,"66336-0864-84 ")
 ;;349
 ;;21,"66336-0992-30 ")
 ;;169
 ;;21,"67386-0102-01 ")
 ;;243
 ;;21,"67767-0103-01 ")
 ;;132
 ;;21,"67767-0106-01 ")
 ;;133
 ;;21,"68115-0050-07 ")
 ;;178
 ;;21,"68115-0050-14 ")
 ;;179
 ;;21,"68115-0050-28 ")
 ;;180
 ;;21,"68115-0050-90 ")
 ;;196
 ;;21,"68115-0051-14 ")
 ;;197
 ;;21,"68115-0051-21 ")
 ;;198
 ;;21,"68115-0051-30 ")
 ;;199
 ;;21,"68115-0108-21 ")
 ;;292
 ;;21,"68115-0108-30 ")
 ;;293
 ;;21,"68115-0109-14 ")
 ;;350
 ;;21,"68115-0109-21 ")
 ;;351
 ;;21,"68115-0109-30 ")
 ;;352
 ;;21,"68115-0110-28 ")
 ;;393
 ;;21,"68115-0273-14 ")
 ;;669
 ;;21,"68115-0273-21 ")
 ;;670
 ;;21,"68115-0273-60 ")
 ;;671
 ;;21,"68115-0277-14 ")
 ;;1037
 ;;21,"68115-0277-30 ")
 ;;1038
 ;;21,"68115-0278-14 ")
 ;;1039
 ;;21,"68115-0278-30 ")
 ;;1040
 ;;21,"68115-0279-00 ")
 ;;1041
 ;;21,"68115-0279-30 ")
 ;;1042
 ;;21,"68115-0757-00 ")
 ;;415
 ;;21,"68188-0132-01 ")
 ;;453
 ;;21,"68188-0135-01 ")
 ;;454
 ;;21,"68188-0137-01 ")
 ;;455
 ;;21,"68188-0881-50 ")
 ;;456
 ;;21,"68188-0882-50 ")
 ;;457
 ;;21,"68387-0690-30 ")
 ;;1043
 ;;9002226,686,.01)
 ;;BGP HEDIS AMPHETAMINE NDC
 ;;9002226,686,.02)
 ;;@
 ;;9002226,686,.04)
 ;;n
 ;;9002226,686,.06)
 ;;@
 ;;9002226,686,.08)
 ;;@
 ;;9002226,686,.09)
 ;;@
 ;;9002226,686,.11)
 ;;@
 ;;9002226,686,.12)
 ;;@
 ;;9002226,686,.13)
 ;;1
 ;;9002226,686,.14)
 ;;@
 ;;9002226,686,.15)
 ;;@
 ;;9002226,686,.16)
 ;;@
 ;;9002226,686,.17)
 ;;@
 ;;9002226,686,3101)
 ;;@
 ;;9002226.02101,"686,00007-3512-20 ",.01)
 ;;00007-3512-20
 ;;9002226.02101,"686,00007-3512-20 ",.02)
 ;;00007-3512-20
 ;;9002226.02101,"686,00007-3512-59 ",.01)
 ;;00007-3512-59
 ;;9002226.02101,"686,00007-3512-59 ",.02)
 ;;00007-3512-59